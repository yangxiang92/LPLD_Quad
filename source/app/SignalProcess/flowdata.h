/******************************************************************************
 *       flowdata.h ----- the header of the flowdata.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  flowdata.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/7/7 21:23:42                                                       *
 ******************************************************************************/
#ifndef _FLOWDATA_H_
#define _FLOWDATA_H_

#include "common.h"

uint8 Flow_RefreshRawData(void);
void AddSpeedToPosition(float x_speed, float y_speed, float yaw_angle, float int_time, float * p_x_position, float * p_y_position);
int8 CheckFloatUnvalid(float data);

#include "module.h"

#endif
