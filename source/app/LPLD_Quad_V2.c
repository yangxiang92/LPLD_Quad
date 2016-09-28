/**
 * --------------基于"拉普兰德K60底层库V3"的工程（LPLD_Quad_V2）-----------------
 * @file LPLD_Quad_V2.c
 * @version 0.0
 * @date 2013-9-29
 * @brief 关于该工程的描述
 *
 * 版权所有:北京拉普兰德电子技术有限公司
 * http://www.lpld.cn
 * mail:support@lpld.cn
 * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
 *
 * 本工程基于"拉普兰德K60底层库V3"开发，
 * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
 * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
 * 底层库使用方法见相关文档。 
 *
 */
#include "LPLD_Quad_V2.h"

void Test(void);
void InitHW(void);

void main (void)
{
    int i = 0;

    InitHW();
    Test();
    
    GetAccGyrOffsetOpe();

    MPU6050_InitRawData();
    AK8975C_InitRawData();
    AttitudeInit();    
    miniAHRS_InitUartQueue();
    float yaw, pitch, roll;    
    while(1)
    {
        while(g_u32ProgramPeriodTimerCnt < PROGRAM_PERIOD_MS)
        {

        }
        g_u32ProgramPeriodTimerCnt = 0;
        
        TriggerBatteryADC();
        MPU6050_RefreshRawData(); 
        AK8975C_RefreshRawData();
        MS5611_RefreshData();
        RefreshAttitude();
       
        yaw = GetEulerAttitude()->yaw * 10; 
        pitch = GetEulerAttitude()->pitch * 10; 
        roll = GetEulerAttitude()->roll * 10;

        PWMOutOneESC(1, g_u32DebugPWM[0]);
        PWMOutOneESC(2, g_u32DebugPWM[1]);
        PWMOutOneESC(3, g_u32DebugPWM[2]);
        PWMOutOneESC(4, g_u32DebugPWM[3]);



#ifdef MINIAHRS_CLIENT_USE
        if(!miniAHRS_IsUartQueueEmpty())
        {
            for(i = 0; i < 5; i ++)
            {
                if(!miniAHRS_IsUartQueueEmpty())
                {
                    miniAHRS_SendOneByte(miniAHRS_PopUartQueue());            
                }
            }
        }
        else
        {
           miniAHRS_ReportIMU_Queue((int)(GetEulerAttitude()->yaw * 10), (int)(GetEulerAttitude()->pitch * 10), (int)(GetEulerAttitude()->roll * 10), (int)g_sMS5611DataCopy.High, (int)(g_sMS5611DataCopy.Temp * 10), (int)(g_sMS5611DataCopy.Press * 10), 200); 
           miniAHRS_ReportMotion_Queue(g_sMPU6050RawData.acc[0], g_sMPU6050RawData.acc[1], g_sMPU6050RawData.acc[2], g_sMPU6050RawData.gyr[0], g_sMPU6050RawData.gyr[1], g_sMPU6050RawData.gyr[2], g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);
        }
#endif
       
    }    
}

void Test(void)
{
    int i = 0;
    int8 str_buff[128];
    int program_running_count = 0;
    int max_program_period_time = 0;

    //ADNS3080_ImageTest(DEBUG_UART);
    
    //////////////////////////////////////////////////////////////////////////////////////
    GetSystemSettingOnSwitch();

    if(!CheckLastSystemSettingTheSame())
    {
        g_sQuadSystemFlag.switch_setting_unvalid = 1;
    }

    if(g_sQuadSystemFlag.switch_setting_unvalid)
    {
        SetBuzzerMode(4);
        while(!!ReadSwitches(WAITTING_COMFIRM_SYSTEM_SETTING_SWITCH_BIT_MASK))
        {
            SetLightsOnOff(ReadSwitches(0x7F));
        }
        while(!ReadSwitches(WAITTING_COMFIRM_SYSTEM_SETTING_SWITCH_BIT_MASK))
        {
            SetLightsOnOff(ReadSwitches(0x7F));
        }
        SetBuzzerMode(0);
    }
    else
    {
        SetBuzzerMode(4);
        while(!ReadSwitches(WAITTING_COMFIRM_SYSTEM_SETTING_SWITCH_BIT_MASK))
        {
            SetLightsOnOff(ReadSwitches(0x7F));
        }
        SetBuzzerMode(0);
        GetSystemSettingOnSwitch(); 
    }

    SetLightsOnOff(0x00);

    GetSystemSettingOnSwitch(); 
    g_sQuadSystemFlag.switch_setting_unvalid = 0;

    if(!SaveThisSystemSettingToFlash())
    {
        g_sQuadSystemFlag.save_system_setting_error = 1;
    }
    else
    {
        g_sQuadSystemFlag.save_system_setting_error = 0;
    }

    //////////////////////////////////////////////////////////////////////////////
    
    if(!InitQuadParam())
    {
        g_sQuadSystemFlag.flash_param_error = 1;
    }    
    
    if(g_sQuadSystemFlag.flash_param_error && g_sQuadSystemFlag.sys_setting.save_default_param_to_flash)
    {
        SetLightsOnOff(WAITTING_SAVE_DEFAULT_PARAM_TO_FLASH_LED_HINT);
        SetBuzzerMode(4);
        while(ReadSwitches(SAVE_DEFAULT_PARAM_TO_FLASH_SWITCH_BIT_MASK));
        SaveQuadParamToFlash(*GetQuadParamInRam());
        SetBuzzerMode(0);        
    }
   
    if(g_sQuadSystemFlag.sys_setting.acc_getoffset && g_sQuadSystemFlag.sys_setting.gyr_getoffset)
    {
        SetLightsOnOff(WAITTING_START_GET_ACC_GYR_OFFSET_OPE_LED_HINT);
        SetBuzzerMode(4);
        while(ReadSwitches(GET_ACC_OFFSET_SWITCH_BIT_MASK) || ReadSwitches(GET_GYR_OFFSET_SWITCH_BIT_MASK));
        GetAccGyrOffsetOpe();
        for(i = 0; i < 3; i++)
        {
            GetQuadParamInRam()->acc_offset[i] = g_i16AccOffset[i];
            GetQuadParamInRam()->gyr_offset[i] = g_i16GyrOffset[i];
        }
        SaveQuadParamToFlash(*GetQuadParamInRam());
        SetBuzzerMode(0);
    }
    else if(g_sQuadSystemFlag.sys_setting.acc_getoffset)
    {
        SetLightsOnOff(WAITTING_START_GET_ACC_OFFSET_OPE_LED_HINT);
        SetBuzzerMode(4);
        while(ReadSwitches(GET_ACC_OFFSET_SWITCH_BIT_MASK));
        GetAccOffsetOpe();
        for(i = 0; i < 3; i++)
        {
            GetQuadParamInRam()->acc_offset[i] = g_i16AccOffset[i];
        }        
        SaveQuadParamToFlash(*GetQuadParamInRam());
        SetBuzzerMode(0);
    }
    else if(g_sQuadSystemFlag.sys_setting.gyr_getoffset)
    {
        SetLightsOnOff(WAITTING_START_GET_GYR_OFFSET_OPE_LED_HINT);
        SetBuzzerMode(4);
        while(ReadSwitches(GET_GYR_OFFSET_SWITCH_BIT_MASK));
        GetGyrOffsetOpe();
        for(i = 0; i < 3; i++)
        {
            GetQuadParamInRam()->gyr_offset[i] = g_i16GyrOffset[i];
        }
        SaveQuadParamToFlash(*GetQuadParamInRam());
        SetBuzzerMode(0);        
    }
    
    if(g_sQuadSystemFlag.sys_setting.WFLY_RC_getoffset)
    {
        SetLightsOnOff(WAITTING_START_GET_WFLY_RC_OFFSET_LED_HINT);
        SetBuzzerMode(4);
        while(ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK));
        WFLY_RC_GetOffsetOpe();
        while(!ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK));
        SetBuzzerMode(2);
        delayms(400);
        while(ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK));
        WFLY_RC_GetMaxRangeOpe();
        for(i = 0; i < 4; i++)
        {
            GetQuadParamInRam()->WFLY_RC_offset[i] = g_u32WFLY_RC_offset[i];
            GetQuadParamInRam()->WFLY_RC_max_range[i] = g_u32WFLY_RC_max_range[i];
        }     
        SaveQuadParamToFlash(*GetQuadParamInRam());
        SetBuzzerMode(0);
    }

    ApplyQuadParam(*GetQuadParamInRam());

    SetLightsOnOff(0x00);

    ///////////////////////////////////////////////////////////////////////////////////////

    InitUartQueue(GPS_UART, 128);
    InitUartQueue(COMMUNICATE_UART, 128);
    InitUartQueue(DEBUG_UART, 128);
    InitUartRecvQueue(GPS_UART, 64);
    miniAHRS_InitUartQueue();

    MPU6050_InitRawData();
    if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
    {
        AK8975C_InitRawData();
    }
    AttitudeInit();    
    InitAltitude();
    InitControl();

    if(g_sQuadSystemFlag.flash_param_error)
    {
        TurnOnLights(FLASH_PARAM_ERROR_LED_LIGHT_BIT_MASK);
    } 

    float yaw, pitch, roll; 
    g_u32ProgramPeriodTimerCnt = 0;
    while(1)
    {
        if(g_sQuadSystemFlag.flash_param_error)
        {
            TurnOnLights(FLASH_PARAM_ERROR_LED_LIGHT_BIT_MASK);
        }
        if(g_u32ProgramPeriodTimerCnt >= PROGRAM_PERIOD_MS)
        {
            TurnOnLights(PROGRAM_RUNNING_OVER_TIME_LIGHT_BIT_MASK);
        }
        else
        {
            //TurnOffLights(PROGRAM_RUNNING_OVER_TIME_LIGHT_BIT_MASK);
        }        
        if(g_u32ProgramPeriodTimerCnt > max_program_period_time)
        {
            max_program_period_time = g_u32ProgramPeriodTimerCnt;
        }               
        while(g_u32ProgramPeriodTimerCnt < PROGRAM_PERIOD_MS)
        {

        }
        g_u32ProgramPeriodTimerCnt = 0;

        if(program_running_count < PROGRAM_RUNNING_PERIOD_MS / PROGRAM_PERIOD_MS)
        {
            program_running_count ++;
        }
        else
        {
            ToggleLights(PROGRAM_RUNNING_LED_LIGHT_BIT_MASK);
            program_running_count = 0;
        }
        
        TriggerBatteryADC();
        MS5611_RefreshData();
        MPU6050_RefreshRawData(); 
        if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
        {
            AK8975C_RefreshRawData();
        }
//        Flow_RefreshRawData();
        RefreshAttitude();
        ADNS3080_RefreshRawData();
        ADNS3080_IntegratePixel(ADNS3080_GetRawData()->delta_x, ADNS3080_GetRawData()->delta_y);
        //ADNS3080_IntegratePosition(ADNS3080_GetRawData()->delta_x, ADNS3080_GetRawData()->delta_y, ((float)g_sonar_measure_distance_mm / 1000));
        float gyr[3]; 
        MPU6050_GetCalibratedGyr(gyr);
        ADNS3080_IntergratePositionWithGyrAttitude(ADNS3080_GetRawData()->delta_x, ADNS3080_GetRawData()->delta_y, gyr[0], gyr[1], GetEulerAttitude()->yaw/57.2957795f, ((float)g_sonar_measure_distance_mm / 1000));
       
        yaw = GetEulerAttitude()->yaw * 10; 
        pitch = GetEulerAttitude()->pitch * 10; 
        roll = GetEulerAttitude()->roll * 10;

        /*float ypr[3];
        if(((int)fabs(GetEulerAttitude()->pitch) >= 30) || ((int)fabs(GetEulerAttitude()->roll) >= 30) || (g_sQuadSystemFlag.incline_halt_flag == 1))
        {
            SetBuzzerMode(1);
            g_sQuadSystemFlag.incline_halt_flag = 1;
            for(i = 0; i < 3; i++)
            {
                ypr[i] = 0;
            }  
            GetControlParameter()->lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);
            GetControlParameter()->lock_attitude_struct.baseThrottle = 0;
        }
        else if((g_u32LostSignalTimerCnt > LOST_SIGNAL_LIMIT_TIME_MS) && (g_sQuadSystemFlag.sys_setting.use_WFLY_RC == 0))
        {
            SetBuzzerMode(2);
            for(i = 0; i < 3; i++)
            {
                ypr[i] = 0;
            }
            GetControlParameter()->lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);    
            GetControlParameter()->lock_attitude_struct.baseThrottle = 0.4;            
        }
        else
        {
            SetBuzzerMode(0);
            if(g_sQuadSystemFlag.sys_setting.use_WFLY_RC == 0)
            {
                ypr[0] = g_f32DebugYaw;
                ypr[1] = g_f32DebugPitch;
                ypr[2] = g_f32DebugRoll;  
                GetControlParameter()->lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);
                GetControlParameter()->lock_attitude_struct.baseThrottle = g_f32DebugThrottle; 
            }
            else
            {
                ypr[0] = WFLY_RC_GetYawRatio() * 10;
                ypr[1] = WFLY_RC_GetPitchRatio() * 10;
                ypr[2] = WFLY_RC_GetRollRatio() * 10;  
                if(g_sQuadSystemFlag.sys_setting.lock_height)
                {
                    GetControlParameter()->lock_attitude_struct.baseThrottle = CtrlGetLockTargetHeightThrottle(0);
                }
                else
                {
                    GetControlParameter()->lock_attitude_struct.baseThrottle = WFLY_RC_GetThrottleRatio() * 0.60; 
                }
                GetControlParameter()->lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);                
            }
        }
        CtrlLockTargetAttitude();*/

        if(g_sQuadSystemFlag.sys_setting.use_WFLY_RC == 0)
        {
            if((g_u32LostSignalTimerCnt > LOST_SIGNAL_LIMIT_TIME_MS) && (g_u32LostSignalTimerCnt < (LOST_SIGNAL_LIMIT_TIME_MS + LANDING_TIME_MS)))
            {
                SetBuzzerMode(2);
                g_sQuadSystemFlag.lost_signal = 1;
                CtrlSetTargetEulerAttitude(0, 0, 0);
                CtrlSetBaseThrottle(gc_f32LandingThrottle);
                CtrlSetMode(CTRL_MODE_LOCK_ATTITUDE);
            }
            else if(g_u32LostSignalTimerCnt > (LOST_SIGNAL_LIMIT_TIME_MS + LANDING_TIME_MS))
            {
                SetBuzzerMode(2);
                g_sQuadSystemFlag.lost_signal = 1;
                GetControlParameter()->mode = CTRL_MODE_HALT;
            }
            else
            {
                SetBuzzerMode(0);
                g_sQuadSystemFlag.lost_signal = 0;
                CtrlSetTargetEulerAttitude(g_f32DebugYaw, g_f32DebugPitch, g_f32DebugRoll); 
                if(g_sQuadSystemFlag.sys_setting.lock_height)
                {
                    CtrlSetTargetHeight(g_f32DebugThrottle);
                    CtrlSetMode(CTRL_MODE_LOCK_HEIGHT_ATTITUDE);
                }
                else
                {
                    CtrlSetBaseThrottle(g_f32DebugThrottle);
                    CtrlSetMode(CTRL_MODE_LOCK_ATTITUDE);
                }
            }
        }
        else
        {
            SetBuzzerMode(0);
            static float s_f32LastYawAngle = 0;
            float target_yaw_angle, target_pitch_angle, target_roll_angle;

            target_yaw_angle = WFLY_RC_GetYawRatio() * gc_f32MaxRCYawAngle;
            target_pitch_angle = WFLY_RC_GetPitchRatio() * gc_f32MaxRCPitchAngle;
            target_roll_angle = WFLY_RC_GetRollRatio() * gc_f32MaxRCRollAngle;
            if((WFLY_RC_GetYawRatio() < 0.1) && (WFLY_RC_GetYawRatio() > -0.1))
            {
                target_yaw_angle = s_f32LastYawAngle;
            }
            else
            {
                target_yaw_angle = target_yaw_angle + s_f32LastYawAngle;
                s_f32LastYawAngle = GetEulerAttitude()->yaw;
            }
            CtrlSetTargetEulerAttitude(target_yaw_angle, target_pitch_angle, target_roll_angle); 

            if(g_sQuadSystemFlag.sys_setting.lock_height)
            {
                if((WFLY_RC_GetThrottleRatio() * gc_f32MaxRCHeight) < gc_f32RCThrottleDeadZone)
                {
                    CtrlSetBaseThrottle(0);
                    CtrlSetMode(CTRL_MODE_LOCK_ATTITUDE);
                }
                else
                {
                    CtrlSetTargetHeight((WFLY_RC_GetThrottleRatio() - gc_f32RCThrottleDeadZone) * (gc_f32MaxRCHeight / (1 - gc_f32RCThrottleDeadZone)));
                    CtrlSetMode(CTRL_MODE_LOCK_HEIGHT_ATTITUDE);
                }
            }
            else
            {
                CtrlSetBaseThrottle(WFLY_RC_GetThrottleRatio() * gc_f32MaxRCThrottle);
                CtrlSetMode(CTRL_MODE_LOCK_ATTITUDE);
            }

            if(WFLY_RC_GetCH5OnOff() == 0)
            {
                CtrlSetModeWithMask(CTRL_MODE_MASK_POSITION);
            }
            else
            {
                CtrlSetTargetPosition(g_f32ADNS3080PixelPosition[0], g_f32ADNS3080PixelPosition[1]);
                CtrlCancelModeWithMask(CTRL_MODE_MASK_POSITION);
            }
        }
        CtrlEvent();
        
        //CtrlOutputSameThrottle(WFLY_RC_GetThrottleRatio());

        //PWMOutOneESC(0, g_u32DebugPWM[0]);
        //PWMOutOneESC(1, g_u32DebugPWM[1]);
        //PWMOutOneESC(2, g_u32DebugPWM[2]);
        //PWMOutOneESC(3, g_u32DebugPWM[3]);
        
//        PWMOutOneESC_1000Scale(0, g_u32DebugPWM[0] * 10);
//        PWMOutOneESC_1000Scale(1, g_u32DebugPWM[1] * 10);
//        PWMOutOneESC_1000Scale(2, g_u32DebugPWM[2] * 10);
//        PWMOutOneESC_1000Scale(3, g_u32DebugPWM[3] * 10);

        if(IsUartQueueEmpty(GPS_UART))
        {
            sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * GetControlParameter()->throttle[0]), (int)(100 * GetControlParameter()->throttle[1]), (int)(100 * GetControlParameter()->throttle[2]), (int)(100 * GetControlParameter()->throttle[3]));
            //PutStringUartQueue(GPS_UART, str_buff);
            sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * GetAttitude()->w), (int)(100 * GetAttitude()->x), (int)(100 * GetAttitude()->y), (int)(100 * GetAttitude()->z));
            //PutStringUartQueue(GPS_UART, str_buff);
            sprintf(str_buff, "\n\r");
            //PutStringUartQueue(GPS_UART, str_buff);
        }

#ifdef MINIAHRS_CLIENT_USE
        if(!miniAHRS_IsUartQueueEmpty())
        {
            for(i = 0; i < 5; i ++)
            {
                if(!miniAHRS_IsUartQueueEmpty())
                {
                    miniAHRS_SendOneByte(miniAHRS_PopUartQueue());            
                }
            }
        }
        else
        {
           miniAHRS_ReportIMU_Queue((int)(GetEulerAttitude()->yaw * 10), (int)(GetEulerAttitude()->pitch * 10), (int)(GetEulerAttitude()->roll * 10), (int)(g_f32FiltedAltitude * 10), (int)(g_sMS5611DataCopy.Temp * 10), (int)(g_sMS5611DataCopy.Press * 10), 200); 
           miniAHRS_ReportMotion_Queue(g_sMPU6050RawData.acc[0], g_sMPU6050RawData.acc[1], g_sMPU6050RawData.acc[2], g_sMPU6050RawData.gyr[0], g_sMPU6050RawData.gyr[1], g_sMPU6050RawData.gyr[2], g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);
           //miniAHRS_ReportMotion_Queue((int)(100 * FlowFilterGetCurrent()[0]), (int)(100 * FlowFilterGetCurrent()[1]), 0, (int)(100 * FlowFilterGetCurrent()[2]), (int)(100 * FlowFilterGetCurrent()[3]), 0, g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);
        }
#endif        

        /* 发送串口队列的一定数量的数据 */
        SendSeveralUartQueueData(GPS_UART, 5);
        SendSeveralUartQueueData(DEBUG_UART, 10);
        SendSeveralUartQueueData(COMMUNICATE_UART, 5);   
        
        if(IsUartQueueEmpty(DEBUG_UART))
        {
            float ypr[3] = {0,0,0};
            quaternion_converQuaternionToYawPitchRoll(GetControlParameter()->lock_attitude_struct.targetAttitude, ypr);
            sprintf(str_buff, "%d\t%d\t%d\t", (int)(100 * ypr[0]), (int)(ypr[1] * 100), (int)(ypr[2] * 100));
            PutStringUartQueue(DEBUG_UART, str_buff);
            sprintf(str_buff, "%d\t%d\t", (int)((GetControlData()->lock_position_err[0]) * 1000), (int)((GetControlData()->lock_position_err[1]) * 1000));
            PutStringUartQueue(DEBUG_UART, str_buff);        
            sprintf(str_buff, "%d\t%d\t", (int)(100 * (GetControlData()->lock_position_pid_output[0])), (int)(100 * (GetControlData()->lock_position_pid_output[1])));
            PutStringUartQueue(DEBUG_UART, str_buff);              
//            sprintf(str_buff, "%d\t%d\t%d\t%d\t%d\t%d\t", GetPWMData()->ESC_PWM[0], GetPWMData()->ESC_PWM[1], GetPWMData()->ESC_PWM[2], GetPWMData()->ESC_PWM[3], GetPWMData()->ESC_PWM[4], GetPWMData()->ESC_PWM[5]);
//            PutStringUartQueue(DEBUG_UART, str_buff);
//            sprintf(str_buff, "%d\t%d\t%d\t%d\t%d\t%d\t", g_WFLY_RC_pluse_width_us[0], g_WFLY_RC_pluse_width_us[1], g_WFLY_RC_pluse_width_us[2], g_WFLY_RC_pluse_width_us[3], g_WFLY_RC_pluse_width_us[4], g_WFLY_RC_pluse_width_us[5]);
//            PutStringUartQueue(DEBUG_UART, str_buff);            
//            sprintf(str_buff, "%d\t%d\t%d\t", (int)(100 * GetControlData()->pid_output[0]), (int)(100 * GetControlData()->pid_output[1]), (int)(100 * GetControlData()->pid_output[2]));
//            PutStringUartQueue(DEBUG_UART, str_buff);            
//            sprintf(str_buff, "%d\t%d\t%d\t", (int)(GetEulerAttitude()->roll * 100), (int)(GetEulerAttitude()->pitch * 100), (int)(GetEulerAttitude()->yaw * 100));
            //PutStringUartQueue(DEBUG_UART, str_buff);               
//            sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * GetAttitude()->w), (int)(100 * GetAttitude()->x), (int)(100 * GetAttitude()->y), (int)(100 * GetAttitude()->z));
//            PutStringUartQueue(DEBUG_UART, str_buff);                  
//            sprintf(str_buff, "%d\t%d\t%d\t", g_sMPU6050RawData.acc[0], g_sMPU6050RawData.acc[1], g_sMPU6050RawData.acc[2]);
//            PutStringUartQueue(DEBUG_UART, str_buff); 
//            sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * WFLY_RC_GetThrottleRatio()), (int)(100 * WFLY_RC_GetYawRatio()), (int)(100 * WFLY_RC_GetPitchRatio()), (int)(100 * WFLY_RC_GetRollRatio()));
//            PutStringUartQueue(DEBUG_UART, str_buff); 
//            sprintf(str_buff, "%d\t%d\t%d\t%d\t%d\t", (int)(100 * g_sPx4flowData.pixel_flow_x), (int)(100 * g_sPx4flowData.pixel_flow_y), (int)(100 * g_sPx4flowData.flow_comp_m_x), (int)(100 * g_sPx4flowData.flow_comp_m_y), (int)(100 * g_sPx4flowData.ground_distance));
//            PutStringUartQueue(DEBUG_UART, str_buff); 
//            sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * FlowFilterGetCurrent()[2] / g_sPx4flowData.ground_distance), (int)(100 * FlowFilterGetCurrent()[3] / g_sPx4flowData.ground_distance), (int)(100 * FlowFilterGetCurrent()[2]), (int)(100 * FlowFilterGetCurrent()[3]));
//            PutStringUartQueue(DEBUG_UART, str_buff);          
//            sprintf(str_buff, "%d\t%d\t", (long)(100 * g_f32XPosition), (long)(100 * g_f32YPosition));
//            PutStringUartQueue(DEBUG_UART, str_buff);                 
            //sprintf(str_buff, "\n\r");
            //PutStringUartQueue(DEBUG_UART, str_buff);          
            //sprintf(str_buff, "%d\t%d\t%d\t", (int)(yaw), (int)(pitch), (int)(roll) );
            //PutStringUartQueue(DEBUG_UART, str_buff);
            sprintf(str_buff, "%d\t%d\t%d\t%d\t", ADNS3080_GetRawData()->delta_x, ADNS3080_GetRawData()->delta_y, g_i32ADNS3080PixelSum[0], g_i32ADNS3080PixelSum[1]);
            PutStringUartQueue(DEBUG_UART, str_buff);
            sprintf(str_buff, "%d\t%d\t", (int)(g_f32ADNS3080PixelPosition[0] * 100), (int)(g_f32ADNS3080PixelPosition[1] * 100));
            PutStringUartQueue(DEBUG_UART, str_buff);
//            sprintf(str_buff, "%d\t", (int)(WFLY_RC_GetThrottleRatio() * 100));
//            PutStringUartQueue(DEBUG_UART, str_buff);             
//            sprintf(str_buff, "%d\t", (int)(g_f32FiltedAltitude * 1000));
//            PutStringUartQueue(DEBUG_UART, str_buff);
            sprintf(str_buff, "%d\t", max_program_period_time);
            PutStringUartQueue(DEBUG_UART, str_buff);
            sprintf(str_buff, "%d\t", g_timer_cnt);
            PutStringUartQueue(DEBUG_UART, str_buff);          
            sprintf(str_buff, "%d\t", g_sonar_measure_distance_mm);
            PutStringUartQueue(DEBUG_UART, str_buff);     
//            sprintf(str_buff, "%d\t", (int)(GetControlParameter()->lock_attitude_struct.targetHeight*1000));
//            PutStringUartQueue(DEBUG_UART, str_buff);              
//            sprintf(str_buff, "%d\t", (int)(100 * GetHighByAltitude()));
//            PutStringUartQueue(DEBUG_UART, str_buff);               
            sprintf(str_buff, "%d\t", (int)(100 * GetControlData()->lock_height_pid_output));
            PutStringUartQueue(DEBUG_UART, str_buff); 
//            sprintf(str_buff, "%d\t", g_ulFlowTime);
//            PutStringUartQueue(DEBUG_UART, str_buff);                     
            sprintf(str_buff, "\n\r");
            PutStringUartQueue(DEBUG_UART, str_buff);
            max_program_period_time = 0;
        }      
    } 
    
    //DestoryMyQueue(UART5_queue);

    //int8 recv;
    //uint32 counts = 0;
    //uint32 time_tag[2] = {0,0};
    //int i = 0;
    //uint8 temp = 0x01;
    //uint8 data[4] = {1,2,3,4};
    //uint8 buf[4] = {0,0,0,0};
    //int16 raw_data[7];

    //MPU6050_DMP_MultiWriteReg(0x68, 0x63, 4,data);

    /*GetAccGyrOffsetOpe();

    MPU6050_InitRawData();
    AK8975C_InitRawData();
    AttitudeInit();

    float yaw, pitch, roll;

    while(1)
    {
        while(g_u32ProgramPeriodTimerCnt < PROGRAM_PERIOD_MS)
        {

        }
        g_u32ProgramPeriodTimerCnt = 0;

        TriggerBatteryADC();
        MPU6050_RefreshRawData(); 
        AK8975C_RefreshRawData();
        MS5611_RefreshData();
        RefreshAttitude();
        
        yaw = GetEulerAttitude()->yaw * 10; 
        pitch = GetEulerAttitude()->pitch * 10; 
        roll = GetEulerAttitude()->roll * 10;

        miniAHRS_ReportIMU((int)yaw, (int)pitch, (int)roll, (int)g_sMS5611Data.High, (int)(g_sMS5611Data.Temp * 10), (int)(g_sMS5611Data.Press * 10), 200);
        miniAHRS_ReportMotion(g_sMPU6050RawData.acc[0], g_sMPU6050RawData.acc[1], g_sMPU6050RawData.acc[2], g_sMPU6050RawData.gyr[0], g_sMPU6050RawData.gyr[1], g_sMPU6050RawData.gyr[2], g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);
        
//        printf("%d\t%d\t%d\t", (int)(yaw), (int)(pitch), (int)(roll) );
//        printf("%d\t%d\t%d\t", g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);        
//        printf("%d\t%d\t%d\t", (int)g_sMS5611Data.Temp, (int)g_sMS5611Data.Press, (int)g_sMS5611Data.High);
//        printf("%d\t", g_u32ProgramPeriodTimerCnt);
//        printf("\n\r");
    }*/

/*    AK8975C_StartMeasure();
    while(1)
    {
        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_XOUT_H)-g_u32AccOffset[0]);
        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_YOUT_H)-g_u32AccOffset[1]);
        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_ZOUT_H));
        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_ZOUT_H)-g_u32AccOffset[2]);
        printf("%d\t", MPU6050_GetData(MPU6050_GYRO_XOUT_H)-g_u32GyrOffset[0]);
        printf("%d\t", MPU6050_GetData(MPU6050_GYRO_YOUT_H)-g_u32GyrOffset[1]);
        printf("%d\t", MPU6050_GetData(MPU6050_GYRO_ZOUT_H)-g_u32GyrOffset[2]);
        printf("%d\t", g_timer_cnt);        
        if(i >= 10)
        {
            printf("%d\t", AK8975C_GetData(AK8975C_HXL));
            printf("%d\t", AK8975C_GetData(AK8975C_HYL));
            printf("%d\t", AK8975C_GetData(AK8975C_HZL));          
            AK8975C_StartMeasure();
            i = 0;
        }        
        printf("\n\r");
        if(i < 10)
        {
            DelayWithTimer(1);
        }
        i++;
    }
    */
  
    /* while(1)
    {
        if(counts > 50)
        {
            ToggleLights(ReadSwitches(0xff));
            //ToggleBuzzer();
            counts = 0;
            i++;
            //SetBuzzerMode(i);
            if(i > 4)
            {
              i = 0;
            }
            
        }
        time_tag[0] = g_timer_cnt;
        TriggerBatteryADC();
        MS5611_Read(&MS5611_data_struct, MS5611_D1_OSR_4096);
        time_tag[1] = g_timer_cnt;
        MPU6050_GetRawData(raw_data);
        printf("%d\t", raw_data[0]);
        printf("%d\t", raw_data[1]);
        printf("%d\t", raw_data[2]);
        printf("%d\t", raw_data[3]);
        printf("%d\t", raw_data[4]);
        printf("%d\t", raw_data[5]);
        printf("%d\t", raw_data[6]);
//        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_XOUT_H)-g_u32AccOffset[0]);
//        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_YOUT_H)-g_u32AccOffset[1]);
//        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_ZOUT_H));
//        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_ZOUT_H)-g_u32AccOffset[2]);
//        printf("%d\t", MPU6050_GetData(MPU6050_GYRO_XOUT_H)-g_u32GyrOffset[0]);
//        printf("%d\t", MPU6050_GetData(MPU6050_GYRO_YOUT_H)-g_u32GyrOffset[1]);
//        printf("%d\t", MPU6050_GetData(MPU6050_GYRO_ZOUT_H)-g_u32GyrOffset[2]);
        AK8975C_StartMeasure();
        AK8975C_WaitMeasureComplete(); 
        DelayWithTimer(0);
        printf("%d\t", AK8975C_GetData(AK8975C_HXL));
        printf("%d\t", AK8975C_GetData(AK8975C_HYL));
        printf("%d\t", AK8975C_GetData(AK8975C_HZL));          
        MPU6050_DMP_MultiReadReg(0x68, 0x63, 4,buf);
        //printf("%d\t", buf[0]);
        //printf("%d\t", buf[1]);
        //printf("%d\t", buf[2]);
        //printf("%d\t", buf[3]);
        printf("%d\t", g_u32AccOffset[0]);
        printf("%d\t", g_u32AccOffset[1]);
        printf("%d\t", g_u32AccOffset[2]);            
        printf("%d\t", g_u32GyrOffset[0]);
        printf("%d\t", g_u32GyrOffset[1]);
        printf("%d\t", g_u32GyrOffset[2]);        
        printf("%d\t", (int)MS5611_data_struct.rPress);
        //printf("%d\t", MPU6050_SingleReadReg(0x63));
        //printf("%d\t", MPU6050_SingleReadReg(0x64));
        //printf("%d\t", MPU6050_SingleReadReg(0x65));
        //printf("%d\t", MPU6050_SingleReadReg(0x66));        
        //printf("%d\t", g_sonar_measure_distance_cm);
        printf("%d\t", g_battery_voltage);
        printf("%d\t%d\t", time_tag[0], time_tag[1]);
        printf("\n\r");
        //printf("Hello Wrold!!!\n\r");
        temp = 0x01;
//        for(i = 0; i < 8; i++)
//        {
//            recv = (!!ReadSwitches(temp)) + '0';
//            LPLD_UART_PutChar(DEBUG_UART, recv);
//            temp = temp << 1;
//        }
//        LPLD_UART_PutChar(DEBUG_UART, '\n');
//        LPLD_UART_PutChar(DEBUG_UART, '\r');
//        //recv = LPLD_UART_GetChar(DEBUG_UART);
//        //LPLD_UART_PutChar(DEBUG_UART, recv);
//        PWMOutOneRotor(1, 7);
//        PWMOutOneRotor(2, 30);
//        PWMOutOneRotor(3, 7);
//        PWMOutOneRotor(4, 7);
        counts ++;
    }     */
}

void InitHW(void)
{
    DisableInterrupts;

    InitDebugUart();
    InitCommunicateUart();
    InitGPSUart();
    InitADNS3080_SPI();                          // SPI的初始化必须在灯的端口初始化之前，不然会出现未知问题… 
    InitLight();
    InitBuzzer();
    InitSixRotorPWM();
    InitSwitches();
    InitMPU9150();
    InitHCSR04();
    InitTimer();
    InitWFLY_RC();
    InitMS5611();
    InitBatteryVoltageMeasurement();
    InitFlashRom();
    
    EnableInterrupts;    
}
