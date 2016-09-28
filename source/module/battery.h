/******************************************************************************
 *       battery.h ----- The header of battery.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  battery.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/4 9:43:13                                                       *
 ******************************************************************************/
#ifndef _BATTERY_H_
#define _BATTERY_H_

#include "common.h"

#define BATTERY_ADC_PORT        ADC0
#define BATTERY_ADC_PIN         DAD1
#define BATTERY_ADC_BIT_MODE    SE_16BIT
#define BATTERY_ADC_MAX_VALUE   65536
#define REFERANCE_VOL           330
#define AMPLIFIED_RATE          6

void InitBatteryVoltageMeasurement(void);
void BatteryVoltageADCIsr(void);
void TriggerADC(ADC_Type *adcx, AdcChnEnum_Type chn);
void TriggerBatteryADC(void);

extern uint16 g_battery_voltage; 
#endif
