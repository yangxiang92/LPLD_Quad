/****************************************************************************** 
 *       WFLY_RCdata.c ----- The Program to process the data from the WFLY RC       *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  WFLY_RCdata.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/28 20:03:04                                                       *
 ******************************************************************************/
#include "WFLY_RCdata.h"

uint32 g_u32WFLY_RC_offset[4] = {1520, 1520, 1520, 1520};
uint32 g_u32WFLY_RC_max_range[4] = {798, 736, 760, 754};

extern const float gc_f32MaxRCYawAngle = 10;
extern const float gc_f32MaxRCPitchAngle = 10;
extern const float gc_f32MaxRCRollAngle = 10;
extern const float gc_f32MaxRCThrottle = 0.7;
extern const float gc_f32MaxRCHeight = 1.5;

extern const float gc_f32RCThrottleDeadZone = 0.1;

void WFLY_RC_GetOffset(void)
{
    int i = 0;
    int j = 0;
    uint32 WFLY_RC_offset_sum[4] = {0,0,0,0};

    for(i = 0; i < WFLY_RC_OFFSET_SAMPLE_AMOUNT; i++)
    {
        g_u32TimerMsCnt = 0;
        for(j = 0; j < 4; j++)
        {
            WFLY_RC_offset_sum[j] += g_WFLY_RC_pluse_width_us[j];
        }
        while(g_u32TimerMsCnt < WFLY_RC_OFFSET_SAMPLE_PERIOD_MS);
    }

    for(j = 0; j < 4; j++)
    {
        g_u32WFLY_RC_offset[j] = WFLY_RC_offset_sum[j] / WFLY_RC_OFFSET_SAMPLE_AMOUNT;
    }
}

void WFLY_RC_GetMaxRange(void)
{
    int i = 0;

    int32 positive_max_range[4] = {0,0,0,0};
    int32 negative_max_range[4] = {0,0,0,0};

    int32 pluse_width_err[4] = {0,0,0,0};

    SetLightsOnOff(GETTING_WFLY_RC_MAX_RANGE_LED_HINT);

    while(!ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK))
    {
        for(i = 0; i < 4; i++)
        {
            pluse_width_err[i] = (int32)g_WFLY_RC_pluse_width_us[i] - (int32)g_u32WFLY_RC_offset[i];
            if(pluse_width_err[i] > positive_max_range[i])
            {
                positive_max_range[i] = pluse_width_err[i];
            }
            if(pluse_width_err[i] < negative_max_range[i])
            {
                negative_max_range[i] = pluse_width_err[i];
            }
        }
    }

    for(i = 0; i < 4; i++)
    {
        if(positive_max_range[i] >= (-negative_max_range[i]))
        {
            g_u32WFLY_RC_max_range[i] = (-negative_max_range[i]) * 2;
        }
        else
        {
            g_u32WFLY_RC_max_range[i] = positive_max_range[i] * 2;
        }
    }

    g_u32WFLY_RC_max_range[THROTTLE_CHANNEL] = positive_max_range[THROTTLE_CHANNEL]; 
}

void WFLY_RC_GetOffsetOpe(void)
{
#ifdef GET_WFLY_RC_OFFSET_WITH_BUZZER_HINT
    SetBuzzerMode(1);
    DelayWithTimer(GET_WFLY_RC_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);
    WFLY_RC_GetOffset();
    SetBuzzerMode(1);
    DelayWithTimer(GET_WFLY_RC_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);           
#else
    WFLY_RC_GetOffset();
#endif
    while(!WFLY_RC_CheckOffsetValid())
    {
        SetBuzzerMode(1);
    }
}

void WFLY_RC_GetMaxRangeOpe(void)
{
#ifdef GET_WFLY_RC_OFFSET_WITH_BUZZER_HINT
    SetBuzzerMode(1);
    DelayWithTimer(GET_WFLY_RC_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);
    WFLY_RC_GetMaxRange();
    SetBuzzerMode(1);
    DelayWithTimer(GET_WFLY_RC_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);           
#else
    WFLY_RC_GetMaxRange();
#endif
    while(!WFLY_RC_CheckMaxRangeValid())
    {
        SetBuzzerMode(1);
    }    
}

uint8 WFLY_RC_CheckOffsetValid(void)
{
    uint8 success = 0;

    if((g_u32WFLY_RC_offset[THROTTLE_CHANNEL] <= WFLY_RC_MAX_THROTTLE_OFFSET) && (g_u32WFLY_RC_offset[THROTTLE_CHANNEL] >= WFLY_RC_MIN_THROTTLE_OFFSET))
    {
        success = 1;
    }
    else
    {
        success = 0;
    }

    if((g_u32WFLY_RC_offset[YAW_CHANNEL] <= WFLY_RC_MAX_YAW_OFFSET) && (g_u32WFLY_RC_offset[YAW_CHANNEL] >= WFLY_RC_MIN_YAW_OFFSET))
    {
        success = 1;
    }
    else
    {
        success = 0;
    }

    if((g_u32WFLY_RC_offset[PITCH_CHANNEL] <= WFLY_RC_MAX_PITCH_OFFSET) && (g_u32WFLY_RC_offset[PITCH_CHANNEL] >= WFLY_RC_MIN_PITCH_OFFSET))
    {
        success = 1;
    }
    else
    {
        success = 0;
    }

    if((g_u32WFLY_RC_offset[ROLL_CHANNEL] <= WFLY_RC_MAX_ROLL_OFFSET) && (g_u32WFLY_RC_offset[ROLL_CHANNEL] >= WFLY_RC_MIN_ROLL_OFFSET))
    {
        success = 1;
    }
    else
    {
        success = 0;
    }

    return success;
}

uint8 WFLY_RC_CheckMaxRangeValid(void)
{
    int i = 0;

    for(i = 0; i < 4; i++)
    {
        if(g_u32WFLY_RC_max_range[i] < 400)
        {
            return 0;
        }
    }

    return 1;
}

float WFLY_RC_GetThrottleRatio(void)
{
    float throttle_ratio = 0;

    throttle_ratio = ((float)g_WFLY_RC_pluse_width_us[THROTTLE_CHANNEL] - (float)g_u32WFLY_RC_offset[THROTTLE_CHANNEL]) / (float)g_u32WFLY_RC_max_range[THROTTLE_CHANNEL];

    throttle_ratio = WFLY_RC_CheckRatioValid(throttle_ratio);

    if(throttle_ratio < 0)
    {
        throttle_ratio = 0;
    }

    return throttle_ratio;
}

float WFLY_RC_GetYawRatio(void)
{
    float yaw_ratio = 0;

    yaw_ratio = ((float)g_WFLY_RC_pluse_width_us[YAW_CHANNEL] - (float)g_u32WFLY_RC_offset[YAW_CHANNEL]) / ((float)g_u32WFLY_RC_max_range[YAW_CHANNEL] / 2);

    yaw_ratio = WFLY_RC_CheckRatioValid(yaw_ratio);

    return yaw_ratio;
}

float WFLY_RC_GetPitchRatio(void)
{
    float pitch_ratio = 0;

    pitch_ratio = ((float)g_WFLY_RC_pluse_width_us[PITCH_CHANNEL] - (float)g_u32WFLY_RC_offset[PITCH_CHANNEL]) / ((float)g_u32WFLY_RC_max_range[PITCH_CHANNEL] / 2);

    pitch_ratio = WFLY_RC_CheckRatioValid(pitch_ratio);

    return pitch_ratio;
}

float WFLY_RC_GetRollRatio(void)
{
    float roll_ratio = 0;

    roll_ratio = ((float)g_WFLY_RC_pluse_width_us[ROLL_CHANNEL] - (float)g_u32WFLY_RC_offset[ROLL_CHANNEL]) / ((float)g_u32WFLY_RC_max_range[ROLL_CHANNEL] / 2);

    roll_ratio = WFLY_RC_CheckRatioValid(roll_ratio);

    return roll_ratio;
}

uint8 WFLY_RC_GetCH5OnOff(void)
{
    uint8 ret = 0;

    if(g_WFLY_RC_pluse_width_us[CHANNEL_5] > 1000)
    {
        ret = 1;
    }
    else
    {
        ret = 0;
    }

    return ret;
}

float WFLY_RC_CheckRatioValid(float ratio_to_check)
{
    float checked_ratio = 0;

    if(ratio_to_check > 1)
    {
        checked_ratio = 1;    
    }
    else if(ratio_to_check < -1)
    {
        checked_ratio = -1;
    }
    else
    {
        checked_ratio = ratio_to_check;
    }

    return checked_ratio;
}
