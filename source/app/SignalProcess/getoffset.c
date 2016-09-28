/****************************************************************************** 
 *       getoffset.c ----- Get the offset of sensors          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  getoffset.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/4 20:31:16                                                       *
 ******************************************************************************/
#include "getoffset.h"

int16 g_i16AccOffset[3] = {-200, 180, 0};
int16 g_i16GyrOffset[3] = {3,42,-16};
int16 g_i16MagOffset[3] = {0,0,0};

void GetAccOffset(void)
{
    int i = 0;
    int j = 0;
    int32 acc_offset_record_sum[3] = {0,0,0};

    for(i = 0; i < ACC_OFFSET_SAMPLE_AMOUNT; i++)
    {
        g_u32TimerMsCnt = 0;        
        acc_offset_record_sum[0] = MPU6050_GetData(MPU6050_ACCEL_XOUT_H);
        acc_offset_record_sum[1] = MPU6050_GetData(MPU6050_ACCEL_YOUT_H);
        acc_offset_record_sum[2] = MPU6050_GetData(MPU6050_ACCEL_ZOUT_H);
        while(g_u32TimerMsCnt < ACC_OFFSET_SAMPLE_PERIOD_MS);
    }

    for(j = 0; j < 3; j++)
    {
        g_i16AccOffset[j] = acc_offset_record_sum[j] / ACC_OFFSET_SAMPLE_AMOUNT;
    }
}

void GetGyrOffset(void)
{
    int i = 0;
    int j = 0;
    int32 gyr_offset_record_sum[3] = {0,0,0};

    for(i = 0; i < ACC_OFFSET_SAMPLE_AMOUNT; i++)
    {
        g_u32TimerMsCnt = 0;            
        gyr_offset_record_sum[0] += MPU6050_GetData(MPU6050_GYRO_XOUT_H);
        gyr_offset_record_sum[1] += MPU6050_GetData(MPU6050_GYRO_YOUT_H);
        gyr_offset_record_sum[2] += MPU6050_GetData(MPU6050_GYRO_ZOUT_H);
        while(g_u32TimerMsCnt < GYR_OFFSET_SAMPLE_PERIOD_MS);
    }

    for(j = 0; j < 3; j++)
    {
        g_i16GyrOffset[j] = gyr_offset_record_sum[j] / GYR_OFFSET_SAMPLE_AMOUNT;
    }
}

void GetAccGyrOffset(void)
{
    int i = 0;
    int j = 0;
    int32 acc_offset_record_sum[3] = {0,0,0};
    int32 gyr_offset_record_sum[3] = {0,0,0};

    for(i = 0; i < (ACC_OFFSET_SAMPLE_AMOUNT>GYR_OFFSET_SAMPLE_AMOUNT?ACC_OFFSET_SAMPLE_AMOUNT:GYR_OFFSET_SAMPLE_AMOUNT) ; i++)
    {
        g_u32TimerMsCnt = 0;        
        if(i < ACC_OFFSET_SAMPLE_AMOUNT)
        {
            acc_offset_record_sum[0] += MPU6050_GetData(MPU6050_ACCEL_XOUT_H);
            acc_offset_record_sum[1] += MPU6050_GetData(MPU6050_ACCEL_YOUT_H);
            acc_offset_record_sum[2] += MPU6050_GetData(MPU6050_ACCEL_ZOUT_H);
        }
        if(i < GYR_OFFSET_SAMPLE_AMOUNT)
        {
            gyr_offset_record_sum[0] += MPU6050_GetData(MPU6050_GYRO_XOUT_H);
            gyr_offset_record_sum[1] += MPU6050_GetData(MPU6050_GYRO_YOUT_H);
            gyr_offset_record_sum[2] += MPU6050_GetData(MPU6050_GYRO_ZOUT_H);   
        }
        while(g_u32TimerMsCnt < (ACC_OFFSET_SAMPLE_PERIOD_MS>GYR_OFFSET_SAMPLE_PERIOD_MS?ACC_OFFSET_SAMPLE_PERIOD_MS:GYR_OFFSET_SAMPLE_PERIOD_MS) );
    }

    for(j = 0; j < 3; j++)
    {
        g_i16AccOffset[j] = acc_offset_record_sum[j] / ACC_OFFSET_SAMPLE_AMOUNT;
        g_i16GyrOffset[j] = gyr_offset_record_sum[j] / GYR_OFFSET_SAMPLE_AMOUNT;        
    }
}

void GetAccGyrOffsetOpe(void)
{
#ifdef GET_OFFSET_WITH_BUZZER_HINT
    SetBuzzerMode(2);
    DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
    SetBuzzerMode(1);
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);
    GetAccGyrOffset();
    SetBuzzerMode(1);
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);        
#else
    DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
    GetAccGyrOffset();
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
#endif
}

void GetAccOffsetOpe(void)
{
#ifdef GET_OFFSET_WITH_BUZZER_HINT
    SetBuzzerMode(2);
    DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
    SetBuzzerMode(1);
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);
    GetAccGyrOffset();
    SetBuzzerMode(1);
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);        
#else
    DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
    GetAccOffset();
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
#endif
}

void GetGyrOffsetOpe(void)
{
#ifdef GET_OFFSET_WITH_BUZZER_HINT
    SetBuzzerMode(2);
    DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
    SetBuzzerMode(1);
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);
    GetAccGyrOffset();
    SetBuzzerMode(1);
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
    SetBuzzerMode(0);        
#else
    DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
    GetGyrOffset();
    DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
#endif
}
