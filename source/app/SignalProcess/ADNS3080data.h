/******************************************************************************
 *       ADNS3080data.h ----- The header of the ADNS3080.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  ADNS3080data.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/7/12 15:04:09                                                       *
 ******************************************************************************/
#ifndef _ADNS3080DATA_H_
#define _ADNS3080DATA_H_

#include "common.h"

typedef struct
{
    uint8 motion;
    int8 delta_x;
    int8 delta_y;
    uint8 squal;
    uint16 shutter;
    uint8 maximum_pixel;
}ADNS3080_RawDataStruct;

void ADNS3080_RefreshRawData(void);
ADNS3080_RawDataStruct * ADNS3080_GetRawData(void);
void ADNS3080_ImageTest(UART_Type * uartx);
void ADNS3080_IntegratePixel(int8 delta_x, int8 delta_y);
void ADNS3080_IntegratePosition(int8 delta_x, int8 delta_y, float height);
void ADNS3080_IntergratePositionWithGyrAttitude(int8 delta_x, int8 delta_y, float gyr_x, float gyr_y, float yaw, float height);
void ADNS3080_ResetIntegratedPixel(void);
void ADNS3080_ResetIntergratedPosition(void);
int32 * ADNS3080_GetIntegratedPixel(void);
float * ADNS3080_GetIntegratedPosition(void);

extern int32 g_i32ADNS3080PixelSum[2];
extern float g_f32ADNS3080PixelPosition[2];

extern const float gc_f32PixelHeightToDistanceRate;

#include "module.h"

#endif
