/******************************************************************************
 *       magfilter.h ----- The header of magfilter.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  magfilter.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 11:06:40                                                       *
 ******************************************************************************/
#ifndef _MAGFILTER_H_
#define _MAGFILTER_H_

void InitMagFilter(void);
void MagFilterInput(float mag[3]);
float * MagFilterGetCurrent(void);

#endif
