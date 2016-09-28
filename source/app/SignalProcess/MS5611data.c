/****************************************************************************** 
 *       MS5611data.c ----- The data processing of MS5611          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  MS5611data.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/8 19:55:45                                                       *
 ******************************************************************************/
#include "MS5611data.h"

MS5611_DataStruct g_sMS5611DataCopy;
float g_f32RawAltitude = 0;
float g_f32FiltedAltitude = 0;
float g_f32ReferenceAltitude = 0;

void MS5611_RefreshData(void)
{
    static uint32 convert_time_cnt = 0;
    convert_time_cnt++;

    if(convert_time_cnt > (MS5611_SAMPLE_PERIOD_MS / PROGRAM_PERIOD_MS))
    {
        MS5611_Read(&MS5611_data_struct, MS5611_D1_OSR_4096); 
        g_sMS5611DataCopy = MS5611_data_struct;
        if(MS5611_data_struct.HighReady == 1)
        {
            RefreshAltitude();
            MS5611_data_struct.HighReady = 0;
        }
        convert_time_cnt = 0;
    }
}

float RefreshAltitude(void)
{
    static float history_altitude[ALTITUDE_FILTER_SAMPLE_AMOUNT] = {0};
    static int history_amount = 0;
    float filter_sum = 0;
    int i = 0;

    g_f32RawAltitude = g_sMS5611DataCopy.High / 100;
    
    if(history_amount < ALTITUDE_FILTER_SAMPLE_AMOUNT)
    {
        history_altitude[history_amount] = g_f32RawAltitude;
        for(i = 0; i < (history_amount + 1); i++)
        {
            filter_sum += history_altitude[i];
        }
        g_f32FiltedAltitude = filter_sum / (history_amount + 1);
        history_amount ++;
    }
    else
    {
        for(i = 0 ; i < (ALTITUDE_FILTER_SAMPLE_AMOUNT - 1); i++)
        {
            history_altitude[i] = history_altitude[i+1];
        }
        history_altitude[ALTITUDE_FILTER_SAMPLE_AMOUNT - 1] = g_f32RawAltitude;
        for(i = 0; i < ALTITUDE_FILTER_SAMPLE_AMOUNT; i++)
        {
            filter_sum += history_altitude[i];
        }
        g_f32FiltedAltitude = filter_sum / ALTITUDE_FILTER_SAMPLE_AMOUNT;
    }

    return g_f32FiltedAltitude;
}

void InitAltitude(void)
{
    g_f32ReferenceAltitude = MS5611_data_struct.High / 100;   
}

float GetHighByAltitude(void)
{
    return (g_f32FiltedAltitude - g_f32ReferenceAltitude);
}
