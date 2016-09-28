/******************************************************************************
 *       attitude.h ----- The header of attitude.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  attitude.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 11:21:13                                                       *
 ******************************************************************************/
#ifndef _ATTITUDE_H_
#define _ATTITUDE_H_

typedef struct
{
    float yaw;
    float pitch;
    float roll;
}EulerAttitudeTypeDef;

#include <math.h>
#include "module.h"
#include "quaternion.h"
#include "sensorfusion.h"
#include "signalprocess.h"

void AttitudeInit(void);
quaternion * GetAttitude(void);
quaternion * GetConjAttitude(void);
void AttitudeInputAcc(float acc[3]);
void AttitudeInputGyr(float gyr[3]);
void AttitudeInputMag(float mag[3]);
void AttitudeMixGyrAccMag(void);
void AttitudeMixGyrAcc(void);
void InitEulerAttitude(void);
EulerAttitudeTypeDef * GetEulerAttitude(void);
void RefreshAttitude(void);
EulerAttitudeTypeDef * GetFlyingEulerAttitude(void);
void SeperateYawRotateAndPitchRollRotate(quaternion * yaw_rotate, quaternion * pitch_roll_rotate, quaternion * yaw_pitch_roll_rotate);
void ConverQuaternionToYawPitchRoll(quaternion source_quaternion, float ypr_result[3]);
quaternion ConverYawPitchRollToQuaternion(float ypr[3]);


#endif
