/****************************************************************************** 
 *       MPU6050data.c ----- The data process of the MPU6050          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  MPU6050data.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 8:52:25                                                       *
 ******************************************************************************/
#include "MPU6050data.h"

MPU6050_RawDataType g_sMPU6050RawData;
float g_f32AccGain[3] = {0.0005981445f, 0.0005981445f, 0.0005981445f};
float g_f32GyrGain[3] = {0.001065264f, 0.001065264f, 0.001065264f};

void MPU6050_InitRawData(void)
{
    int i = 0;
    for(i = 0; i < 3; i++)
    {
        g_sMPU6050RawData.acc[i] = 0;
        g_sMPU6050RawData.gyr[i] = 0;
    }
    g_sMPU6050RawData.tem = 0;
}

void MPU6050_RefreshRawData(void)
{
    int16 buf[7];
    int i = 0;

    MPU6050_GetRawData(buf);

    for(i = 0; i < 3; i++)
    {
        g_sMPU6050RawData.acc[i] = buf[i];
        g_sMPU6050RawData.gyr[i] = buf[4+i];
    }
    g_sMPU6050RawData.tem = buf[3];
}

void MPU6050_GetCalibratedAcc(float * acc)
{
    int i = 0;

    for(i = 0; i < 2; i++)
    {
        acc[i] = (g_sMPU6050RawData.acc[i] - g_i16AccOffset[i]) * g_f32AccGain[i];
    }

    if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
    {
        acc[2] = (g_sMPU6050RawData.acc[i] - 54) * g_f32AccGain[2];
    }
    else
    {
        acc[2] = (g_sMPU6050RawData.acc[i]) * g_f32AccGain[2];
    }
}

void MPU6050_GetCalibratedGyr(float * gyr)
{
    int i = 0;

    for(i = 0; i < 3; i++)
    {
        gyr[i] = (g_sMPU6050RawData.gyr[i] - g_i16GyrOffset[i]) * g_f32GyrGain[i];
    }
}
