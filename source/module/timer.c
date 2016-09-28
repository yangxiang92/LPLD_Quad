/****************************************************************************** 
 *       timer.c ----- The code to use 1ms timer          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  timer.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/1 19:07:27                                                       *
 ******************************************************************************/
#include "timer.h"

volatile uint32 g_timer_cnt = 0;
volatile uint32 g_u32TimerMsCnt = 0;
volatile uint32 g_u32DelayTimerMsCnt = 0;
volatile uint32 g_u32ProgramPeriodTimerCnt = 0;
volatile uint32 g_u32LostSignalTimerCnt = 0;
static volatile uint32 s_u32SystemClockTimerMsCnt = 0;
static volatile uint64_t s_u64SystemClockTimerUsCnt = 0;

void InitTimer(void)
{
    PIT_InitTypeDef timer_init_struct = {TIMER_PITX};

    timer_init_struct.PIT_Pitx = TIMER_PITX;
    timer_init_struct.PIT_PeriodS = 0;
    timer_init_struct.PIT_PeriodMs = TIMER_PERIOD;
    timer_init_struct.PIT_PeriodUs = 0;
    timer_init_struct.PIT_Isr = TimerIsr;
    LPLD_PIT_Init(timer_init_struct);
    LPLD_PIT_EnableIrq(timer_init_struct);
}

void TimerIsr(void)
{
    s_u32SystemClockTimerMsCnt ++;
    s_u64SystemClockTimerUsCnt = s_u32SystemClockTimerMsCnt * 1000;
    g_timer_cnt ++;
    g_u32TimerMsCnt ++;
    g_u32DelayTimerMsCnt ++;
    g_u32ProgramPeriodTimerCnt ++;
    g_u32LostSignalTimerCnt ++;
}

void DelayWithTimer(uint32 ms)
{
    g_u32DelayTimerMsCnt = 0;
    while(g_u32DelayTimerMsCnt < ms);
}

uint64_t GetSystemClockUs(void)
{
    uint64_t ret = 0;
    uint32 timer_us_cnt = 0;

    timer_us_cnt = PIT->CHANNEL[TIMER_PITX].LDVAL;
    timer_us_cnt = timer_us_cnt - PIT->CHANNEL[TIMER_PITX].CVAL;
    timer_us_cnt = timer_us_cnt / (g_bus_clock / 1000000);
    
    ret = (s_u64SystemClockTimerUsCnt) + (uint64_t)timer_us_cnt;

    return ret;
}

uint32 GetSystemClockMs(void)
{
    return s_u32SystemClockTimerMsCnt;
}
