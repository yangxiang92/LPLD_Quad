/******************************************************************************
 *       pid.h ----- The header of pid.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  pid.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/14 14:05:08                                                       *
 ******************************************************************************/
#ifndef _PID_H_
#define _PID_H_

#include "common.h"

typedef struct
{
    float p;
    float i;
    float d;
    float i_limit;
    float i_output_limit;
}PID_Parameters;

typedef struct
{
    float pre_data;
    float integration;
}PID_Data;

#include "module.h"

void InitPID(PID_Parameters xyz_pid_para[3]);
void PIDInterate(float input[3], float output[3]);
void SAS_PIDInterate(float input[3], float output[3]);
void InitHeightPID(PID_Parameters height_pid_para);
float HeightPIDInterate(float height_err);
void InitPositionPID(PID_Parameters position_pid_para[2]);
void PositionPIDInterate(float input[2], float output[2]);

#endif
