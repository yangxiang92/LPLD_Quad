/******************************************************************************
 *       timer.h ----- The header of timer.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  timer.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/1 19:08:12                                                       *
 ******************************************************************************/
#ifndef _TIMER_H_
#define _TIMER_H_

#include "common.h"

#define TIMER_PITX PIT0
#define TIMER_PERIOD 1
#define PROGRAM_PERIOD_MS 4
#define PROGRAM_RUNNING_PERIOD_MS 250
#define LOST_SIGNAL_LIMIT_TIME_MS 1500
#define LANDING_TIME_MS           3000

void InitTimer(void);
void TimerIsr(void);
void DelayWithTimer(uint32 ms);
uint64_t GetSystemClockUs(void);
uint32 GetSystemClockMs(void);

extern volatile uint32 g_timer_cnt;
extern volatile uint32 g_u32TimerMsCnt;
extern volatile uint32 g_u32DelayTimerMsCnt;
extern volatile uint32 g_u32ProgramPeriodTimerCnt;
extern volatile uint32 g_u32LostSignalTimerCnt;
#endif
