/****************************************************************************** 
 *       gyrfilter.c ----- The gyr Filter Function          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  gyrfilter.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 10:48:49                                                       *
 ******************************************************************************/
#include "gyrfilter.h"

static float s_fGyrFilterCurrent[3] = {0,0,0};

void InitGyrFilter(void)
{
    int i = 0;

    for(i = 0; i < 3; i++)
    {
        s_fGyrFilterCurrent[i] = 0;
    }
}

void GyrFilterInput(float gyr[3])
{
    int i = 0;
    float TH = 0.01;

    for(i = 0; i < 3; i ++)
    {
        if((gyr[i] > -TH) && (gyr[i] < TH))
        {
            gyr[i] = 0;
        }
        s_fGyrFilterCurrent[i] = gyr[i];
    }
}

float * GyrFilterGetCurrent()
{
    return s_fGyrFilterCurrent;
}
