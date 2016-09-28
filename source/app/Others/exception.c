/****************************************************************************** 
 *       exception.c ----- The exception situation haldle          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  exception.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/5/5 10:27:30                                                       *
 ******************************************************************************/
#include "exception.h"

float g_f32HaltVoltage = 14.8;
float g_f32HaltInclinationAngle = 25;

extern const float gc_f32LandingThrottle = 0.4;

uint8 ExceptionCheckInclination(EulerAttitudeTypeDef euler_attitude)
{
    if((fabs(euler_attitude.roll) > g_f32HaltInclinationAngle) || (fabs(euler_attitude.pitch) > g_f32HaltInclinationAngle))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

uint8 ExceptionCheckBatteryVoltageTooLow(float voltage)
{
    if(voltage < g_f32HaltVoltage)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
