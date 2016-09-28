/****************************************************************************** 
 *       pid.c ----- The PID Controller                                       *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  pid.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/14 14:04:21                                                       *
 ******************************************************************************/
#include "pid.h"
static PID_Parameters s_sXYZPidParameter[3];
static PID_Data s_sXYZPidData[3];
static PID_Parameters s_sHeightPidParameter;
static PID_Data s_sHeightPidData;
static PID_Parameters s_sPositionPidParameter[2];
static PID_Data s_sPositionPidData[2];

void InitPID(PID_Parameters xyz_pid_para[3])
{
    int i = 0;

    for(i = 0; i < 3; i++)
    {
        s_sXYZPidParameter[i] = xyz_pid_para[i];
        s_sXYZPidData[i].pre_data = 0;
        s_sXYZPidData[i].integration = 0;
    }
}

void PIDInterate(float input[3], float output[3])
{
    int i = 0;

    float p_output = 0;
    float i_output = 0;
    float d_output = 0;

    for(i = 0; i < 3; i++)
    {
        p_output = s_sXYZPidParameter[i].p * input[i];

        if(s_sXYZPidParameter[i].i == 0)
        {
            i_output = 0;
        }
        else
        {
            s_sXYZPidData[i].integration += input[i];
            if(s_sXYZPidData[i].integration > (s_sXYZPidParameter[i].i_limit))
            {
                s_sXYZPidData[i].integration = (s_sXYZPidParameter[i].i_limit);
            }
            if(s_sXYZPidData[i].integration < (-s_sXYZPidParameter[i].i_limit))
            {
                s_sXYZPidData[i].integration = (-s_sXYZPidParameter[i].i_limit);
            }
            i_output = s_sXYZPidParameter[i].i * s_sXYZPidData[i].integration;
            if(i_output < -s_sXYZPidParameter[i].i_output_limit)
            {
                i_output = -s_sXYZPidParameter[i].i_output_limit;
            }
            if(i_output > s_sXYZPidParameter[i].i_output_limit)
            {
                i_output = s_sXYZPidParameter[i].i_output_limit;
            }
        }

        d_output = s_sXYZPidParameter[i].d * (input[i] - s_sXYZPidData[i].pre_data);

        output[i] = p_output + i_output + d_output;

        s_sXYZPidData[i].pre_data = input[i];
    }
}

void SAS_PIDInterate(float input[3], float output[3])
{
    int i = 0;

    float p_output = 0;
    float i_output = 0;
    float d_output = 0;

    for(i = 0; i < 3; i++)
    {
        p_output = s_sXYZPidParameter[i].p * input[i];

        if(s_sXYZPidParameter[i].i == 0)
        {
            i_output = 0;
        }
        else
        {
            s_sXYZPidData[i].integration += input[i];
            if(s_sXYZPidData[i].integration > (s_sXYZPidParameter[i].i_limit))
            {
                s_sXYZPidData[i].integration = (s_sXYZPidParameter[i].i_limit);
            }
            if(s_sXYZPidData[i].integration < (-s_sXYZPidParameter[i].i_limit))
            {
                s_sXYZPidData[i].integration = (-s_sXYZPidParameter[i].i_limit);
            }
            i_output = s_sXYZPidParameter[i].i * s_sXYZPidData[i].integration;
            if(i_output < -s_sXYZPidParameter[i].i_output_limit)
            {
                i_output = -s_sXYZPidParameter[i].i_output_limit;
            }
            if(i_output > s_sXYZPidParameter[i].i_output_limit)
            {
                i_output = s_sXYZPidParameter[i].i_output_limit;
            }
        }

        d_output = - s_sXYZPidParameter[i].d * sin(GyrFilterGetCurrent()[i]) * 2 * (PROGRAM_PERIOD_MS * 0.001);

        output[i] = p_output + i_output + d_output;

        s_sXYZPidData[i].pre_data = input[i];
    }    
}

void InitHeightPID(PID_Parameters height_pid_para)
{
    s_sHeightPidParameter = height_pid_para;
    s_sHeightPidData.pre_data = 0;
    s_sHeightPidData.integration = 0;
}

float HeightPIDInterate(float height_err)
{
    float output = 0;

    float p_output = 0;
    float i_output = 0;
    float d_output = 0;

    p_output = s_sHeightPidParameter.p * height_err;

    if(s_sHeightPidParameter.i == 0)
    {
        i_output = 0;
    }
    else
    {
        s_sHeightPidData.integration += height_err;
        if(s_sHeightPidData.integration > (s_sHeightPidParameter.i_limit))
        {
            s_sHeightPidData.integration = (s_sHeightPidParameter.i_limit);
        }
        if(s_sHeightPidData.integration < (-s_sHeightPidParameter.i_limit))
        {
            s_sHeightPidData.integration = (-s_sHeightPidParameter.i_limit);
        }
        i_output = s_sHeightPidParameter.i * s_sHeightPidData.integration;
        if(i_output < -s_sHeightPidParameter.i_output_limit)
        {
            i_output = -s_sHeightPidParameter.i_output_limit;
        }
        if(i_output > s_sHeightPidParameter.i_output_limit)
        {
            i_output = s_sHeightPidParameter.i_output_limit;
        }
    }

    d_output = s_sHeightPidParameter.d * (height_err - s_sHeightPidData.pre_data);

    s_sHeightPidData.pre_data = height_err;

    output = p_output + i_output + d_output;

    return output;
}

void InitPositionPID(PID_Parameters position_pid_para[2])
{
    int i = 0;
    for(i = 0; i < 2; i++)
    {
        s_sPositionPidParameter[i] = position_pid_para[i];
        s_sPositionPidData[i].pre_data = 0;
        s_sPositionPidData[i].integration = 0;        
    }
}

void PositionPIDInterate(float input[2], float output[2])
{
    int i = 0;

    float p_output = 0;
    float i_output = 0;
    float d_output = 0;

    for(i = 0; i < 2; i++)
    {
        p_output = s_sPositionPidParameter[i].p * input[i];

        if(s_sPositionPidParameter[i].i == 0)
        {
            i_output = 0;
        }
        else
        {
            s_sPositionPidData[i].integration += input[i];
            if(s_sPositionPidData[i].integration > (s_sPositionPidParameter[i].i_limit))
            {
                s_sPositionPidData[i].integration = (s_sPositionPidParameter[i].i_limit);
            }
            if(s_sPositionPidData[i].integration < (-s_sPositionPidParameter[i].i_limit))
            {
                s_sPositionPidData[i].integration = (-s_sPositionPidParameter[i].i_limit);
            }
            i_output = s_sPositionPidParameter[i].i * s_sPositionPidData[i].integration;
            if(i_output < -s_sPositionPidParameter[i].i_output_limit)
            {
                i_output = -s_sPositionPidParameter[i].i_output_limit;
            }
            if(i_output > s_sPositionPidParameter[i].i_output_limit)
            {
                i_output = s_sPositionPidParameter[i].i_output_limit;
            }
        }

        d_output = s_sPositionPidParameter[i].d * (input[i] - s_sPositionPidData[i].pre_data);

        if(p_output > 10)
        {
            p_output = 10;
        }

        output[i] = p_output + i_output + d_output;

        s_sPositionPidData[i].pre_data = input[i];
    }        
}
