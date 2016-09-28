/******************************************************************************
 *       includes.h ----- The header of global use                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  includes.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/21 9:42:27                                                       *
 ******************************************************************************/
#ifndef _INCLUDES_H_
#define _INCLUDES_H_

//LPLD library header
#include "common.h"

//Header for lights use
#include "lights.h"
#include "buzzer.h"
#include "uart.h"
#include "PWM.h"
#include "switches.h"
#include "MPU9150.h"
#include "MPU9150_IO.h"
#include "HCSR04.h"
#include "timer.h"
#include "MS5611.h"
#include "battery.h"
#include "WFLY_RC.h"
#include "flash_rom.h"

//
#include "getoffset.h"
#include "MPU6050data.h"
#include "AK8975Cdata.h"
#include "MS5611data.h"
#include "attitude.h"
#include "uploaddata.h"
#include "myqueue.h"
#include "uartqueue.h"
#include "WFLY_RCdata.h"

//
#include "pid.h"
#include "ctrl.h"

//
#include "param.h"
#include "sysflag.h"

//
#include "LPLD_Quad_V2.h"

//
#include <math.h>
#include <stdlib.h>

#endif 
