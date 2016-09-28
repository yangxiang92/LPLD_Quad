/******************************************************************************
 *       switches.h ----- The header of switches.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  switches.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/23 16:40:38                                                       *
 ******************************************************************************/
#ifndef _SWITCHES_H_
#define _SWITCHES_H_

// LPLD libraty
#include "common.h"

// Symbol definition

#define SWITCHES_AMOUNT     8

#define SWITCH0_PORT        PTE
#define SWITCH0_PIN_NUM     28
#define SWITCH0_GPIO_PIN    PinNum2GpioPin(SWITCH0_PIN_NUM)
#define SWITCH1_PORT        PTE
#define SWITCH1_PIN_NUM     27
#define SWITCH1_GPIO_PIN    PinNum2GpioPin(SWITCH1_PIN_NUM)
#define SWITCH2_PORT        PTE
#define SWITCH2_PIN_NUM     26
#define SWITCH2_GPIO_PIN    PinNum2GpioPin(SWITCH2_PIN_NUM)
#define SWITCH3_PORT        PTE
#define SWITCH3_PIN_NUM     12
#define SWITCH3_GPIO_PIN    PinNum2GpioPin(SWITCH3_PIN_NUM)
#define SWITCH4_PORT        PTE
#define SWITCH4_PIN_NUM     11
#define SWITCH4_GPIO_PIN    PinNum2GpioPin(SWITCH4_PIN_NUM)
#define SWITCH5_PORT        PTE
#define SWITCH5_PIN_NUM     10
#define SWITCH5_GPIO_PIN    PinNum2GpioPin(SWITCH5_PIN_NUM)
#define SWITCH6_PORT        PTE
#define SWITCH6_PIN_NUM     9
#define SWITCH6_GPIO_PIN    PinNum2GpioPin(SWITCH6_PIN_NUM)
#define SWITCH7_PORT        PTE
#define SWITCH7_PIN_NUM     8
#define SWITCH7_GPIO_PIN    PinNum2GpioPin(SWITCH7_PIN_NUM)

// Function decleration
void InitSwitches(void);
uint8 ReadSwitches(uint8 mask);

#endif
