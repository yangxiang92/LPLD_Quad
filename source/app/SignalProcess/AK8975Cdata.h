/******************************************************************************
 *       AK8975Cdata.h ----- The header of AK8975Cdata.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  AK8975Cdata.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/8 18:57:33                                                       *
 ******************************************************************************/
#ifndef _AK8975CDATA_H_
#define _AK8975CDATA_H_

#include "common.h"

#define AK8975C_SAMPLE_PERIOD_MS 20
#define AK8975C_MAG_GAIN         3E-7f

typedef struct
{
    int16 mag[3];
}AK8975C_RawDataType;   
 
#include "module.h"
#include "getoffset.h"

void AK8975C_InitRawData(void);
void AK8975C_RefreshRawData(void);
void AK8975C_GetCalibratedMag(float * mag);

extern AK8975C_RawDataType g_sAK8975CRawData;
extern float g_f32MagGain[3];

#endif
