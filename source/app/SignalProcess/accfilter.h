/******************************************************************************
 *       accfilter.h ----- the header of accfilter.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  accfilter.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 10:36:38                                                       *
 ******************************************************************************/
#ifndef _ACCFILTER_H_
#define _ACCFILTER_H_

#include "common.h"

#define ACCFILTER_AVG_NUM 8 //@加速度均值滤波的采样次数，16次

void InitAccFilter(void);
void AccFilterInput(float acc[3]);
float * AccFilterGetCurrent(void);

#endif
