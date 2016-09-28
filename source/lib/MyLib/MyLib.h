/******************************************************************************
 *       MyLib.h ----- The header of mylib.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  MyLib.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/23 16:52:45                                                       *
 ******************************************************************************/
#ifndef _MYLIB_H_
#define _MYLIB_H_

// LPLD library
#include "common.h"

// Function Decleration
GpioPinsEnum_Type PinNum2GpioPin(uint8 pin_num);

#endif
