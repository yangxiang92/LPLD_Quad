/******************************************************************************
 *       WFLY_RC.h ----- The header of WFLY_RC.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  WFLY_RC.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/28 13:39:01                                                       *
 ******************************************************************************/
#ifndef _WFLY_RC_H
#define _WFLY_RC_H

#include "common.h"

#define WFLY_RC_CHANNEL_NUM 6

#define WFLY_RC_CH0_PWM_INPUT_PIN_PORT PTA
#define WFLY_RC_CH0_PWM_INPUT_PIN_NUM  26

#define WFLY_RC_CH1_PWM_INPUT_PIN_PORT PTA
#define WFLY_RC_CH1_PWM_INPUT_PIN_NUM  27

#define WFLY_RC_CH2_PWM_INPUT_PIN_PORT PTA
#define WFLY_RC_CH2_PWM_INPUT_PIN_NUM  28

#define WFLY_RC_CH3_PWM_INPUT_PIN_PORT PTA
#define WFLY_RC_CH3_PWM_INPUT_PIN_NUM  29

#define WFLY_RC_CH4_PWM_INPUT_PIN_PORT PTB
#define WFLY_RC_CH4_PWM_INPUT_PIN_NUM  5 

#define WFLY_RC_CH5_PWM_INPUT_PIN_PORT PTB
#define WFLY_RC_CH5_PWM_INPUT_PIN_NUM  6 

#define WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX PIT3
#define WFLY_RC_PWM_WIDTH_MEASURE_PERIOD_MS  100

#define WFLY_RC_CH0_INPUT PTA26_I
#define WFLY_RC_CH1_INPUT PTA27_I
#define WFLY_RC_CH2_INPUT PTA28_I
#define WFLY_RC_CH3_INPUT PTA29_I
#define WFLY_RC_CH4_INPUT PTB5_I
#define WFLY_RC_CH5_INPUT PTB6_I

#include "timer.h"

void InitWFLY_RC(void);
void PORTA_ExtIsr(void);
void PORTB_ExtIsr(void);
void WFLY_RC_TimerOutIsr(void);
void WFLY_RC_CHX_InputPWMMeasureIsr(uint8 channel_num);
void WFLY_RC_ResetTimer(void);

extern uint8 g_WFLY_RC_timer_out_flag;
extern uint32 g_WFLY_RC_pluse_width_us[WFLY_RC_CHANNEL_NUM];
#endif
