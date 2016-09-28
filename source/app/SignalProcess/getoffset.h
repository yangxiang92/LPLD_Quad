/******************************************************************************
 *       getoffset.h ----- The header of getoffset.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  getoffset.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/4 20:31:46                                                       *
 ******************************************************************************/
#ifndef _GETOFFSET_H_
#define _GETOFFSET_H_

#include "common.h"   

#define ACC_OFFSET_SAMPLE_PERIOD_MS 10
#define ACC_OFFSET_SAMPLE_AMOUNT    200

#define GYR_OFFSET_SAMPLE_PERIOD_MS 10
#define GYR_OFFSET_SAMPLE_AMOUNT    200

#ifndef GET_OFFSET_WITH_BUZZER_HINT
#define GET_OFFSET_WITH_BUZZER_HINT
#endif
#define GET_OFFSET_HINT_TIME_MS     3000
#define GET_OFFSET_WARNING_TIME_MS  1000
   
#include "module.h"

void GetAccOffset(void);
void GetGyrOffset(void);
void GetAccGyrOffset(void);
void GetAccGyrOffsetOpe(void);
void GetAccOffsetOpe(void);
void GetGyrOffsetOpe(void);

extern int16 g_i16AccOffset[3];
extern int16 g_i16GyrOffset[3];
extern int16 g_i16MagOffset[3];

#endif
