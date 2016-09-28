/****************************************************************************** 
 *       ADNS3080data.c ----- The code to handle with the data from the ADNS3080          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  ADNS3080data.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/7/12 15:03:31                                                       *
 ******************************************************************************/
#include "ADNS3080data.h"

static ADNS3080_RawDataStruct s_sADNS3080_raw_data;

int32 g_i32ADNS3080PixelSum[2] = {0,0};
float g_f32ADNS3080PixelPosition[2] = {0,0};

extern const float gc_f32PixelHeightToDistanceRate = 0.01314103;  // 测试得来 

void ADNS3080_RefreshRawData(void)
{
    uint8 reg_data[7];
    
    ADNS3080_MotionBurst(reg_data);
    s_sADNS3080_raw_data.motion = reg_data[0];
    s_sADNS3080_raw_data.delta_x = -reg_data[2];
    s_sADNS3080_raw_data.delta_y = reg_data[1];
    s_sADNS3080_raw_data.squal = reg_data[3];
    s_sADNS3080_raw_data.shutter = reg_data[4];
    s_sADNS3080_raw_data.shutter = (s_sADNS3080_raw_data.shutter << 8) | reg_data[5];
    s_sADNS3080_raw_data.maximum_pixel = reg_data[6];
}

ADNS3080_RawDataStruct * ADNS3080_GetRawData(void)
{
    return &s_sADNS3080_raw_data;
}

void ADNS3080_ImageTest(UART_Type * uartx)
{
    uint8 pixel_data[900];

    while(1)
    {
        LPLD_UART_PutChar(uartx, 0x5A);
        ADNS3080_PixelBurst(pixel_data);
        LPLD_UART_PutCharArr(uartx, (signed char *)pixel_data, 900);
    }
}

void ADNS3080_IntegratePixel(int8 delta_x, int8 delta_y)
{
    g_i32ADNS3080PixelSum[0] += delta_x;
    g_i32ADNS3080PixelSum[1] += delta_y;
}

void ADNS3080_IntegratePosition(int8 delta_x, int8 delta_y, float height)
{
    g_f32ADNS3080PixelPosition[0] += (delta_x * gc_f32PixelHeightToDistanceRate * height);
    g_f32ADNS3080PixelPosition[1] += (delta_y * gc_f32PixelHeightToDistanceRate * height);
}

void ADNS3080_IntergratePositionWithGyrAttitude(int8 delta_x, int8 delta_y, float gyr_x, float gyr_y, float yaw, float height)
{
    float x_move = 0;
    float y_move = 0;
    float x_rotate_move = 0;
    float y_rotate_move = 0;

    x_move = delta_x * gc_f32PixelHeightToDistanceRate * height;
    y_move = delta_y * gc_f32PixelHeightToDistanceRate * height;

    x_rotate_move = (gyr_y) * height * 0.001 * PROGRAM_PERIOD_MS;
    y_rotate_move = -(gyr_x) * height * 0.001 * PROGRAM_PERIOD_MS;

    x_move = x_move - x_rotate_move;
    y_move = y_move - y_rotate_move;

    g_f32ADNS3080PixelPosition[0] += ((x_move * cos(yaw)) - (y_move * sin(yaw)));
    g_f32ADNS3080PixelPosition[1] += ((x_move * sin(yaw)) + (y_move * cos(yaw)));
}

void ADNS3080_ResetIntegratedPixel(void)
{
    int i = 0;
    for(i = 0; i < 2; i++)
    {
        g_i32ADNS3080PixelSum[i] = 0;
    }
}

void ADNS3080_ResetIntergratedPosition(void)
{
    int i = 0; 
    for(i = 0; i < 2; i++)
    {
        g_f32ADNS3080PixelPosition[i] = 0;
    }
}

int32 * ADNS3080_GetIntegratedPixel(void)
{
    return g_i32ADNS3080PixelSum;
}

float * ADNS3080_GetIntegratedPosition(void)
{
    return g_f32ADNS3080PixelPosition;
}
