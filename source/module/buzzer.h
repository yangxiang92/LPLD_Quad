/******************************************************************************
 *       buzzer.h ----- The header of buzzer.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  buzzer.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/22 15:22:40                                                       *
 ******************************************************************************/
#ifndef _BUZZER_H_
#define _BUZZER_H_

// The LPLD library
#include "common.h"

// Symbol Definition
#define BUZZER_PORT             PTB
#define BUZZER_PIN_NUM          9
#define BUZZER_OUTPUT           PTB9_O
#define BUZZER_GPIO_PIN         PinNum2GpioPin(BUZZER_PIN_NUM)
#define BUZZER_TIMER_PITX       PIT2
#define BUZZER_TIMER_PERIOD_MS  50

#include "sysflag.h"

// Function Decleration
void InitBuzzer(void);
void InitBuzzerTimer(void);
void TurnOnBuzzer(void);
void TrunOffBuzzer(void);
void SetBuzzerOnOff(uint8 state);
void ToggleBuzzer(void);
void SetBuzzerMode(uint8 buzzer_mode);
void BuzzerTimerIsr(void);

#endif
