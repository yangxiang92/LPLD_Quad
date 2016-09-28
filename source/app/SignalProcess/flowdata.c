/****************************************************************************** 
 *       flowdata.c ----- The code to handle the data from the px4flow          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  flowdata.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/7/7 21:18:31                                                       *
 ******************************************************************************/
#include "flowdata.h"

uint8 Flow_RefreshRawData(void)
{
    uint8 ret = 0;

    if(g_u8FlowNewData == 1)
    {
        float flowdata[4];
        flowdata[0] = g_sPx4flowData.pixel_flow_x;
        flowdata[1] = g_sPx4flowData.pixel_flow_y;
        if(CheckFloatUnvalid(g_sPx4flowData.flow_comp_m_x) == 0)
        {
            flowdata[2] = g_sPx4flowData.flow_comp_m_x;
        }
        else
        {
            flowdata[2] = 0;
        }
        if(CheckFloatUnvalid(g_sPx4flowData.flow_comp_m_y) == 0)
        {
            flowdata[3] = g_sPx4flowData.flow_comp_m_y;
        }
        else
        {
            flowdata[3] = 0;
        }
        FlowFilterInput(flowdata);
        g_u8FlowNewData = 0;
        ret = 1;
    }
    else
    {
        ret = 0;
    }

    return ret;
}

void AddSpeedToPosition(float x_speed, float y_speed, float yaw_angle, float int_time, float * p_x_position, float * p_y_position)
{
    float yaw_angle_rad = yaw_angle / 57.2957795f;
    float x_position_change = x_speed * int_time;
    float y_position_change = y_speed * int_time;

    *p_x_position += x_position_change * cos(yaw_angle_rad);
    *p_y_position += x_position_change * sin(yaw_angle_rad);
    *p_x_position -= y_position_change * sin(yaw_angle_rad);
    *p_y_position += y_position_change * cos(yaw_angle_rad);
}

int8 CheckFloatUnvalid(float data)
{
    uint32* data_men = (uint32*)&data;
    if(((*data_men)&0xFFC00000) == 0x7FC00000)
    {
        return 1;
    }
    else if(((*data_men)&0xFFC00000) == 0xFFC00000)
    {
        return -1;
    }
    else
    {
        return 0;
    }
}
