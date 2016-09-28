/******************************************************************************
 *       MS5611data.h ----- The header of MS5611data.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  MS5611data.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/8 19:56:04                                                       *
 ******************************************************************************/
#ifndef _MS5611DATA_H_
#define _MS5611DATA_H_

#include "common.h"
#include "MS5611.h"
   
#define MS5611_SAMPLE_PERIOD_MS 20
#define ALTITUDE_FILTER_SAMPLE_AMOUNT 16
   
#include "module.h"

void MS5611_RefreshData(void);
float RefreshAltitude(void);
void InitAltitude(void);
float GetHighByAltitude(void);

extern MS5611_DataStruct g_sMS5611DataCopy;
extern float g_f32RawAltitude;
extern float g_f32FiltedAltitude;

#endif 
