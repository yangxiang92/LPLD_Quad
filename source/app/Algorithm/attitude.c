/****************************************************************************** 
 *       attitude.c ----- The attitude Caculation          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  attitude.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 11:20:46                                                       *
 ******************************************************************************/
#include "attitude.h"

static quaternion s_sAttitude;

static EulerAttitudeTypeDef s_sEulerAttitude;

void AttitudeInit(void)
{
    InitAccFilter();
    InitGyrFilter();
    InitMagFilter();

    InitEulerAttitude();

    quaternion_loadIdentity(&s_sAttitude);
}

quaternion * GetAttitude(void)
{
    return & s_sAttitude;
}

void AttitudeInputAcc(float acc[3])
{
    AccFilterInput(acc);
}

void AttitudeInputGyr(float gyr[3])
{
    GyrFilterInput(gyr);
}

void AttitudeInputMag(float mag[3])
{
    MagFilterInput(mag);
}

void AttitudeMixGyrAccMag(void)
{
    FuseGyrAccMagCrossMethod(&s_sAttitude, GyrFilterGetCurrent(), AccFilterGetCurrent(), MagFilterGetCurrent(), PROGRAM_PERIOD_MS * 0.001f);
}

void AttitudeMixGyrAcc(void)
{
    FuseGyrAccCrossMethod(&s_sAttitude, GyrFilterGetCurrent(), AccFilterGetCurrent(), PROGRAM_PERIOD_MS * 0.001f);
}

void InitEulerAttitude(void)
{
    s_sEulerAttitude.yaw = 0;
    s_sEulerAttitude.pitch = 0;
    s_sEulerAttitude.roll = 0;
}

EulerAttitudeTypeDef * GetEulerAttitude(void)
{
    return & s_sEulerAttitude;
}

void RefreshAttitude(void)
{
    float acc[3], gyr[3], mag[3];
    float ypr[3];

    MPU6050_GetCalibratedAcc(acc);
    MPU6050_GetCalibratedGyr(gyr);
    if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
    {
        AK8975C_GetCalibratedMag(mag);
    }

    AttitudeInputAcc(acc);
    AttitudeInputGyr(gyr);
    if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
    {
        mag[0] = - mag[0];                       // 把坐标系转换成从下面观察的，这样一来才跟姿态结算出来的方向是一致的。 
        AttitudeInputMag(mag);
    }

    if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
    {
        AttitudeMixGyrAccMag();
    }
    else
    {
        AttitudeMixGyrAcc();
    }
    
    quaternion_converQuaternionToYawPitchRoll(*GetAttitude(), ypr);

    s_sEulerAttitude.yaw = ypr[0];
    s_sEulerAttitude.pitch = ypr[1];
    s_sEulerAttitude.roll = ypr[2];
}
