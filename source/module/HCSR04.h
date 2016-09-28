/******************************************************************************
 *       HCSR04.h ----- The header of HCSR04.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  HCSR04.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/1 11:22:52                                                       *
 ******************************************************************************/
#ifndef _HCSR04_H_
#define _HCSR04_H_

#include "common.h"

#define HCSR04_PLUSE_SIGNAL_TIMER_PITX PIT1
#define HCSR04_PLUSE_SIGNAL_PERIOD_MS 60
#define HCSR04_PLUSE_SIGNAL_WIDTH_US 20
#define HCSR04_ECHO_PIN_PORT PTC
#define HCSR04_ECHO_PIN_NUM 0
#define HCSR04_ECHO_PIN_INPUT PTC0_I
#define HSCR04_TRLG_PIN_PORT PTB
#define HSCR04_TRLG_PIN_NUM 23
#define HCSR04_TRLG_PIN_OUTPUT PTB23_O


void InitHCSR04(void);
void HCSR04_PluseTriggerIsr(void);
void HCSR04_InputPluseMeasureIsr(void);


extern uint16 g_sonar_measure_distance_mm;
extern uint8 g_sonar_measure_error_flag;

#endif
