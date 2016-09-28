/******************************************************************************
 *       flowfilter.h ----- The header of flowfilter.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  flowdata.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/7/7 20:45:42                                                       *
 ******************************************************************************/
#ifndef _FLOWFILTER_H_
#define _FLOWFILTER_H_

#include "common.h"

#define FLOWFILTER_AVG_NUM 20

void InitFlowFilter(void);
void FlowFilterInput(float flowdata[4]);
float * FlowFilterGetCurrent(void);
float * FlowFilterGetCurrentFlow(void);
float * FlowFilterGetCurrentFlowComp(void);

#endif
