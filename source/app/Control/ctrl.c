/****************************************************************************** 
 *       ctrl.c ----- The basic Control Function of Quad          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  ctrl.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/14 15:34:07                                                       *
 ******************************************************************************/
#include "ctrl.h"

static CtrlParameter s_sControlParameter;
static CtrlData s_sControlData;

extern const float gc_f32LowerLimitThrottle = 0.04;
extern const float gc_f32UpperLimitThrottle = 1;
extern const float gc_f32HoverThrottle = 0.45;
extern const float gc_f32BaseHeight = 0.1;

PID_Parameters g_sXYZPidPara[3] = {0};// = {{0.45, 0.0025, 15}, {0.45, 0.0025, 15}, (0.25, 0, 0)};
PID_Parameters g_sHeightPidPara = {0.2, 0.005, 1.0};
PID_Parameters g_sPositionPidPara[2] = {0};

void InitControl(void)
{
    int i = 0;

    s_sControlParameter.mode = 0;

    for(i = 0; i < 2; i++)
    {
        g_sXYZPidPara[i].p = 0.45;
        g_sXYZPidPara[i].i = 0.0025;
        g_sXYZPidPara[i].d = 15;
        g_sXYZPidPara[i].i_output_limit = 0.05;
        g_sXYZPidPara[i].i_limit = g_sXYZPidPara[i].i_output_limit / g_sXYZPidPara[i].i;
    }
    g_sXYZPidPara[2].p = 0.45;//0.25;
    g_sXYZPidPara[2].i = 0.0025;//0;
    g_sXYZPidPara[2].d = 30;//0;
    g_sXYZPidPara[2].i_output_limit = 0.05;//0;
    g_sXYZPidPara[2].i_limit = g_sXYZPidPara[2].i_output_limit / g_sXYZPidPara[2].i;
    InitPID(g_sXYZPidPara);
    g_sHeightPidPara.p = 0.2;
    g_sHeightPidPara.i = 0.005;
    g_sHeightPidPara.d = 1.0;
    g_sHeightPidPara.i_output_limit = 0.35;
    g_sHeightPidPara.i_limit = g_sHeightPidPara.i_output_limit / g_sHeightPidPara.i;
    InitHeightPID(g_sHeightPidPara);
    for(i = 0; i < 2; i++)
    {
        g_sPositionPidPara[i].p = 5.5;
        g_sPositionPidPara[i].i = 0;
        g_sPositionPidPara[i].d = 50;//550/25;
        g_sPositionPidPara[i].i_output_limit = 1;
        g_sPositionPidPara[i].i_limit = g_sPositionPidPara[i].i_output_limit / g_sPositionPidPara[i].i;
    }
    InitPositionPID(g_sPositionPidPara);

    for(i = 0; i < 4; i++)
    {
        s_sControlParameter.throttle[i] = 0;
    }

    quaternion_loadIdentity( &(s_sControlParameter.lock_attitude_struct.targetAttitude));
}

void CtrlLockTargetAttitude(void)
{
    if(s_sControlParameter.lock_attitude_struct.baseThrottle < gc_f32LowerLimitThrottle)
    {
        CtrlOutputSameThrottle(0);
    }
    else
    {
        CtrlOutputByTargetAttitude(&(s_sControlParameter.lock_attitude_struct.targetAttitude), s_sControlParameter.lock_attitude_struct.baseThrottle);
    }
}

void CtrlOutputSameThrottle(float esc_throttle)
{
    int i = 0;

    for(i = 0; i < 6; i ++)
    {
        s_sControlParameter.throttle[i] = esc_throttle;
    }

    CtrlOutputThrottle();
}

void CtrlOutputThrottle(void)
{
    ThrottleOutSixESC(s_sControlParameter.throttle);
}

void CtrlOutputByTargetAttitude(quaternion * targetAttitude, float baseThrottle)
{   
    //Pay Attention: If you are using this function to do the attitude control, the yaw pitch roll
    //               here is HALF the real yaw pitch roll. So, if you were using the euler attitude
    //               to do the control job, and now you want to use this function to do the control
    //               job, you have to DOUBLE your pid parameter to adapt to this algorithm!!!
    int i = 0;
    quaternion * cur = GetAttitude();

    quaternion cur_rev;
    quaternion delta;

    cur_rev = quaternion_getConjugateQuaternion(*cur);

    quaternion_mult(&delta, &cur_rev, targetAttitude);
    quaternion_normalize(&delta);
    
    s_sControlData.delta_quaternion = delta;

    float output[3] = {0,0,0};
    float input[3] = {0,0,0};
    float delta_ypr[3] = {0,0,0};
    /* To make it the same as using the euler angle to control */
//    input[0] = delta.x * 2;
//    input[1] = delta.y * 2;
//    input[2] = delta.z * 2;
    quaternion_converQuaternionToYawPitchRoll(delta, delta_ypr);
    for(i = 0; i < 3; i++)
    {
        if(delta_ypr[i] > 180)
        {
            delta_ypr[i] -= 360;
        }
        else if(delta_ypr[i] < -180)
        {
            delta_ypr[i] += 360;
        }
        input[2-i] = delta_ypr[i] / 57.2957795f;
    }
    //PIDInterate(input, output);
    SAS_PIDInterate(input, output);
    
    for(i = 0; i < 3; i++)
    {
        s_sControlData.pid_output[i] = output[i];
    }

#ifndef SIX_ROTORS
    /*
     * “+”控制模式
     */
    /* 
    s_sControlParameter.throttle[0] = baseThrottle             - output[1] - output[2];
    s_sControlParameter.throttle[1] = baseThrottle + output[0]             + output[2];
    s_sControlParameter.throttle[2] = baseThrottle             + output[1] - output[2];
    s_sControlParameter.throttle[3] = baseThrottle - output[0]             + output[2];
    */
    
    /* 
     * “X”控制模式
     * */
    s_sControlParameter.throttle[0] = baseThrottle + (output[0]/2) - (output[1]/2) - output[2];
    s_sControlParameter.throttle[1] = baseThrottle - (output[0]/2) - (output[1]/2) + output[2];
    s_sControlParameter.throttle[2] = baseThrottle - (output[0]/2) + (output[1]/2) - output[2];
    s_sControlParameter.throttle[3] = baseThrottle + (output[0]/2) + (output[1]/2) + output[2];    
#else
    for(i = 0; i < 3; i++)
    {
        output[i] = output[i] * 1.1;
    }
    s_sControlParameter.throttle[0] = baseThrottle - (output[0]/2) - ((output[1]*1.1547f)/2) - output[2];
    s_sControlParameter.throttle[1] = baseThrottle - (output[0]/2)                           + output[2];
    s_sControlParameter.throttle[2] = baseThrottle - (output[0]/2) + ((output[1]*1.1547f)/2) - output[2];
    s_sControlParameter.throttle[3] = baseThrottle + (output[0]/2) + ((output[1]*1.1547f)/2) + output[2];
    s_sControlParameter.throttle[4] = baseThrottle + (output[0]/2)                           - output[2];   
    s_sControlParameter.throttle[5] = baseThrottle + (output[0]/2) - ((output[1]*1.1547f)/2) + output[2];
#endif

    CtrlOutputThrottle();
}

CtrlParameter* GetControlParameter(void)
{
    return &s_sControlParameter;
}

CtrlData * GetControlData(void)
{
    return &s_sControlData;
}

float CtrlGetLockTargetHeightThrottle(float height)
{
    return 0;
}

void CtrlEvent(void)
{
    if(s_sControlParameter.mode != CTRL_MODE_HALT)
    {
        if(ExceptionCheckInclination(*GetEulerAttitude()))
        {
            g_sQuadSystemFlag.incline_halt = 1;
            CtrlEnterHaltMode();
        }
    }

    switch(s_sControlParameter.mode)
    {
        case CTRL_MODE_HALT:
            SetBuzzerMode(1);
            CtrlOutputSameThrottle(0);
            break;
        case CTRL_MODE_LOCK_ATTITUDE:
            CtrlLockTargetAttitude();
            break;
        case CTRL_MODE_LOCK_HEIGHT_ATTITUDE:
            CtrlLockHeightThrottle((float)g_sonar_measure_distance_mm / 1000);
            CtrlLockTargetAttitude();
            break;
        case CTRL_MODE_LOCK_POSITION_ATTITUDE:
            CtrlLockPositionEulerAngle(ADNS3080_GetIntegratedPosition()[0], ADNS3080_GetIntegratedPosition()[1]);
            CtrlLockTargetAttitude();
            break;
        case CTRL_MODE_LOCK_HEIGHT_POSITION_ATTITUDE:
            CtrlLockHeightThrottle((float)g_sonar_measure_distance_mm / 1000);
            CtrlLockPositionEulerAngle(ADNS3080_GetIntegratedPosition()[0], ADNS3080_GetIntegratedPosition()[1]);
            CtrlLockTargetAttitude();
            break;
        default:
            CtrlOutputSameThrottle(0);
            break;
    }
}

void CtrlEnterHaltMode(void)
{
    s_sControlParameter.mode = CTRL_MODE_HALT;
    CtrlOutputSameThrottle(0);
}

void CtrlLockHeightThrottle(float height)
{
    float height_err = 0;
    static int control_period_cnt = 0;

    control_period_cnt ++;

    if(control_period_cnt >= 15)
    {

        if(g_sonar_measure_error_flag == 0)
        {
            height_err = s_sControlParameter.lock_attitude_struct.targetHeight - height;
        }
        else
        {
            height_err = -0.1;
        }

        CtrlSetBaseThrottle(s_sControlData.lock_height_pid_output = (HeightPIDInterate(height_err) + gc_f32HoverThrottle));//0.58
        
        control_period_cnt = 0;
    }
}

void CtrlLockPositionEulerAngle(float x_position, float y_position)
{
    static int control_period_cnt = 0;
    static float last_ypr_output[3] = {0,0,0};
    int i = 0;

    control_period_cnt ++;
    if(control_period_cnt < 25)
    {
        CtrlSetTargetEulerAttitude(last_ypr_output[0], last_ypr_output[1], last_ypr_output[2]);
        return;
    }
    else
    {
        control_period_cnt = 0;
    }

    float position_err[2] = {0,0};
    float output_pitch_roll[2] = {0,0};
    float target_yaw_pitch_roll[3] = {0,0,0};

    position_err[0] = s_sControlParameter.lock_attitude_struct.targetPosition[0] - x_position;
    position_err[1] = s_sControlParameter.lock_attitude_struct.targetPosition[1] - y_position;

    PositionPIDInterate(position_err, output_pitch_roll);
    output_pitch_roll[1] = -output_pitch_roll[1];
    
    quaternion_converQuaternionToYawPitchRoll(s_sControlParameter.lock_attitude_struct.targetAttitude, target_yaw_pitch_roll);

    float output_ypr[3];
    float yaw_rad;
    yaw_rad = GetEulerAttitude()->yaw / 57.2957795f;
    output_ypr[0] = target_yaw_pitch_roll[0];
    output_ypr[1] = output_pitch_roll[0] * cos(yaw_rad) - output_pitch_roll[1] * sin(yaw_rad); 
    output_ypr[2] = output_pitch_roll[0] * sin(yaw_rad) + output_pitch_roll[1] * cos(yaw_rad);
    CtrlSetTargetEulerAttitude(output_ypr[0], output_ypr[1], output_ypr[2]);
    last_ypr_output[0] = output_ypr[0];
    last_ypr_output[1] = output_ypr[1];
    last_ypr_output[2] = output_ypr[2];

    for(i = 0; i < 2; i++)
    {
        s_sControlData.lock_position_pid_output[i] = output_pitch_roll[i];
        s_sControlData.lock_position_err[i] = position_err[i];
    }
}

void CtrlSetTargetEulerAttitude(float yaw_angle, float pitch_angle, float roll_angle)
{
    float ypr[3] = {0, 0, 0};

    ypr[0] = yaw_angle;
    ypr[1] = pitch_angle;
    ypr[2] = roll_angle;

    s_sControlParameter.lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);
}

void CtrlSetBaseThrottle(float throttle)
{
    if(throttle > gc_f32UpperLimitThrottle)
    {
        throttle = gc_f32UpperLimitThrottle;
    }
    s_sControlParameter.lock_attitude_struct.baseThrottle = throttle;
}

void CtrlSetMode(uint8 mode_to_run)
{
    s_sControlParameter.mode = mode_to_run; 
}

void CtrlSetModeWithMask(uint8 mask)
{
    s_sControlParameter.mode = s_sControlParameter.mode | mask;
}

void CtrlCancelModeWithMask(uint8 mask)
{
    s_sControlParameter.mode = (s_sControlParameter.mode & (~mask));
}

void CtrlSetTargetHeight(float height)
{
    //s_sControlParameter.lock_attitude_struct.targetHeight = height;
    s_sControlParameter.lock_attitude_struct.targetHeight = gc_f32BaseHeight + height;
}

void CtrlSetTargetPosition(float x_position, float y_position)
{
    s_sControlParameter.lock_attitude_struct.targetPosition[0] = x_position;
    s_sControlParameter.lock_attitude_struct.targetPosition[1] = y_position;
}
