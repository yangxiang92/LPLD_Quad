/******************************************************************************
 *       exception.h ----- The header of exception.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  exception.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/5/5 10:27:55                                                       *
 ******************************************************************************/
#ifndef _EXCEPTION_H_
#define _EXCEPTION_H_

#include "common.h"

#include "algorithm.h"

uint8 ExceptionCheckInclination(EulerAttitudeTypeDef euler_attitude);
uint8 ExceptionCheckBatteryVoltageTooLow(float voltage);

extern float g_f32HaltVoltage;
extern float g_f32HaltInclinationAngle;

extern const float gc_f32LandingThrottle;
#endif
