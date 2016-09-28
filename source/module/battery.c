/****************************************************************************** 
 *       battery.c ----- The AD Conversion of Battery Voltage          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  battery.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/4 9:42:47                                                       *
 ******************************************************************************/
#include "battery.h"

uint16 g_battery_voltage = 0;

void InitBatteryVoltageMeasurement(void)
{
    ADC_InitTypeDef battery_voltage_adc_init_struct = {0};
    battery_voltage_adc_init_struct.ADC_Adcx = BATTERY_ADC_PORT;
    battery_voltage_adc_init_struct.ADC_DiffMode = ADC_SE;
    battery_voltage_adc_init_struct.ADC_BitMode = BATTERY_ADC_BIT_MODE;
    battery_voltage_adc_init_struct.ADC_SampleTimeCfg = SAMTIME_LONG;
    battery_voltage_adc_init_struct.ADC_HwAvgSel = HW_4AVG;
    battery_voltage_adc_init_struct.ADC_CalEnable = TRUE;
    battery_voltage_adc_init_struct.ADC_Isr = BatteryVoltageADCIsr;

    LPLD_ADC_Init(battery_voltage_adc_init_struct);

    LPLD_ADC_Chn_Enable(BATTERY_ADC_PORT, BATTERY_ADC_PIN);

    LPLD_ADC_EnableIrq(battery_voltage_adc_init_struct);
    
    TriggerBatteryADC();
}

void BatteryVoltageADCIsr(void)
{
    uint16 adc_result = 0;

    adc_result = BATTERY_ADC_PORT->R[0];
    
    g_battery_voltage = (uint16)(((uint32)adc_result * REFERANCE_VOL * AMPLIFIED_RATE)/ BATTERY_ADC_MAX_VALUE);
}

void TriggerADC(ADC_Type *adcx, AdcChnEnum_Type chn)
{
    adcx->SC1[0] |= ADC_SC1_AIEN_MASK;
    adcx->SC1[0] &= ~(ADC_SC1_ADCH_MASK);
    adcx->SC1[0] |= ADC_SC1_ADCH(chn);    
}

void TriggerBatteryADC(void)
{
    TriggerADC(BATTERY_ADC_PORT, BATTERY_ADC_PIN);
}
