/****************************************************************************** 
 *       magfilter.c ----- The filter of magnitude data          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  magfilter.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/7 11:06:19                                                       *
 ******************************************************************************/
static float s_fMagFilterCurrent[3] = {0,0,0};

void InitMagFilter(void)
{
    int i = 0;
    for(i = 0; i < 3; i++)
    {
        s_fMagFilterCurrent[i] = 0;
    }
}

void MagFilterInput(float mag[3])
{
    int i = 0;

    for(i = 0; i < 3; i++)
    {
        s_fMagFilterCurrent[i] = mag[i];
    }
}

float * MagFilterGetCurrent(void)
{
    return s_fMagFilterCurrent;
}
