/****************************************************************************** 
 *       flowfilter.c ----- The code to filter the data from the pix4flow          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  flowdata.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/7/7 20:45:04                                                       *
 ******************************************************************************/
#include "flowfilter.h"

static float s_f32FlowFilterHistroy[FLOWFILTER_AVG_NUM][4] = {0};
static float s_f32FlowFilterCurrent[4] = {0};

void InitFlowFilter(void)
{
    int i = 0;
    int j = 0;

    for(i = 0; i < FLOWFILTER_AVG_NUM; i++)
    {
        for(j = 0; j < 4; j++)
        {
            s_f32FlowFilterHistroy[i][j] = 0;
        }
    }

    for(i = 0; i < 4; i++)
    {
        s_f32FlowFilterCurrent[i] = 0;
    }
}

void FlowFilterInput(float flowdata[4])
{
    int i = 0; 
    int j = 0;

    for(i = 0; i < FLOWFILTER_AVG_NUM - 1; i++)
    {
        for(j = 0; j < 4; j++)
        {
            s_f32FlowFilterHistroy[i][j] = s_f32FlowFilterHistroy[i+1][j];
        }
    }

    for(j = 0; j < 4; j++)
    {
        s_f32FlowFilterHistroy[FLOWFILTER_AVG_NUM - 1][j] = flowdata[j];
    }

    float sum[4] = {0,0,0,0};
    for(i = 0; i < FLOWFILTER_AVG_NUM; i++)
    {
        for(j = 0; j < 4; j++)
        {
            sum[j] += s_f32FlowFilterHistroy[i][j];
        }
    }

    for(j = 0; j < 4; j++)
    {
        s_f32FlowFilterCurrent[j] = sum[j] * (1.0f/FLOWFILTER_AVG_NUM);
    }
}

float * FlowFilterGetCurrent(void)
{
    return s_f32FlowFilterCurrent;
}

float * FlowFilterGetCurrentFlow(void)
{
    return &(s_f32FlowFilterCurrent[0]);
}

float * FlowFilterGetCurrentFlowComp(void)
{
    return &(s_f32FlowFilterCurrent[2]);
}
