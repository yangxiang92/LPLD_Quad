/******************************************************************************
 *       delay.h ----- The header of delay.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  delay.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/30 19:51:52                                                       *
 ******************************************************************************/
#ifndef _DELAY_H_
#define _DELAY_H_

#include "common.h"

void  delayms(uint32  ms);
void delayus(uint32 us);
void Pause(void);
void Delay5us();
#endif
