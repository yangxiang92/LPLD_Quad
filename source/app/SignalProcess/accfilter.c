/****************************************************************************** 
 *       accfilter.c ----- The acc data filter          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  accfilter.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 10:36:23                                                       *
 ******************************************************************************/
#include "accfilter.h"

static float s_fAccFilterHistory[ACCFILTER_AVG_NUM][3]; //@保存采样16次的三轴加速度
static float s_fAccFilterCurrent[3];//@滤波后的加速度
static uint8 s_u8AccFilterIndex;	//@单次采样的加速度，accfilter_index为具体的次数，总数为16，大于16时即清0

void InitAccFilter(void)
{
    int i = 0;
    int j = 0;

    for(i = 0; i < ACCFILTER_AVG_NUM; i ++)
    {
        for(j = 0; j < 3; j++)
        {
            s_fAccFilterHistory[i][j] = 0;
        }
    }

    for(i = 0; i < 3; i++)
    {
        s_fAccFilterCurrent[i] = 0;
    }
}

void AccFilterInput(float acc[3])
{
    int i = 0;
    int j = 0;

    for(i = 0; i < 3; i++)
    {
        s_fAccFilterHistory[s_u8AccFilterIndex][i] = acc[i];
    }

    if(s_u8AccFilterIndex >= ACCFILTER_AVG_NUM)
    {
        s_u8AccFilterIndex = 0;
    }

    float sum[3] = {0,0,0};
    for(i = 0; i < ACCFILTER_AVG_NUM; i++)
    {
        for(j = 0; j < 3; j ++)
        {
            sum[j] += s_fAccFilterHistory[i][j];
        }
    }

    for(i = 0; i < 3; i++)
    {
        s_fAccFilterCurrent[i] = sum[i] * (1.0f/ACCFILTER_AVG_NUM);
    }
}

float * AccFilterGetCurrent(void)
{
    return s_fAccFilterCurrent;
}
