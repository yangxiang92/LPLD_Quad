/******************************************************************************
 *       MPU6050data.h ----- The header of MPU6050data.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  MPU6050data.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 8:52:45                                                       *
 ******************************************************************************/
#ifndef _MPU6505DATA_H_
#define _MPU6505DATA_H_

#include "common.h"
   
#define MPU6050_ACC_GAIN 0.0005981445f
//#define MPU6050_GYR_GAIN 0.001064225f  // 这里所采用的是角度制
#define MPU6050_GYR_GAIN 0.001065264f
   
typedef struct
{
    int16 acc[3];
    int16 tem;
    int16 gyr[3];
}MPU6050_RawDataType;   

#include "module.h"
#include "signalprocess.h"
#include "others.h"


void MPU6050_InitRawData(void);
void MPU6050_RefreshRawData(void);
void MPU6050_GetCalibratedAcc(float * acc);
void MPU6050_GetCalibratedGyr(float * gyr);

extern MPU6050_RawDataType g_sMPU6050RawData;
extern float g_f32AccGain[3];
extern float g_f32GyrGain[3];
#endif
