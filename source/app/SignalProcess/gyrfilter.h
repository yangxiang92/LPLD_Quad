/******************************************************************************
 *       gyrfilter.h ----- The header of gyrfilter.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  gyrfilter.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 10:49:11                                                       *
 ******************************************************************************/
#ifndef _GYRFILTER_H_
#define _GYRFILTER_H_

void InitGyrFilter(void);
void GyrFilterInput(float gyr[3]);
float * GyrFilterGetCurrent();

#endif
