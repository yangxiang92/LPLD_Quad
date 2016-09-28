/****************************************************************************** 
 *       AK8975Cdata.c ----- The data processsing of AK8975C          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  AK8975Cdata.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/8 18:57:16                                                       *
 ******************************************************************************/
#include "AK8975Cdata.h"

AK8975C_RawDataType g_sAK8975CRawData;
float g_f32MagGain[3] = {3E-7f, 3E-7f, 3E-7f};

void AK8975C_InitRawData(void)
{
    int i = 0;

    for(i = 0; i < 3; i++)
    {
        g_sAK8975CRawData.mag[i] = 0;
    }

    AK8975C_StartMeasure();
}

void AK8975C_RefreshRawData(void)
{
    static uint32 convert_time_cnt = 0;
    convert_time_cnt ++;

    if(convert_time_cnt > (AK8975C_SAMPLE_PERIOD_MS / PROGRAM_PERIOD_MS))
    {
        AK8975C_WaitMeasureComplete();
        int16 buf[3];
        int i = 0;
        AK8975C_GetRawData(buf);
        for(i = 0; i < 3; i++)
        {
            g_sAK8975CRawData.mag[i] = buf[i];
        }
        /* 
        g_sAK8975CRawData.mag[0] = AK8975C_GetData(AK8975C_HXL);
        g_sAK8975CRawData.mag[1] = AK8975C_GetData(AK8975C_HYL);
        g_sAK8975CRawData.mag[2] = AK8975C_GetData(AK8975C_HZL);
        */
        AK8975C_StartMeasure();
        convert_time_cnt = 0;
    }
}

void AK8975C_GetCalibratedMag(float * mag)
{
    int i = 0;

    for(i = 0; i < 3; i++)
    {
        mag[i] = (float)(g_sAK8975CRawData.mag[i] - g_i16MagOffset[i]) * g_f32MagGain[i];
    }
}
