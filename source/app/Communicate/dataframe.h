#ifndef DATAFRAME_H
#define DATAFRAME_H

#include "common.h"

#pragma pack(push)
#pragma pack(1)
typedef struct
{
    int16 yaw;
    int16 pitch;
    int16 roll;
    int16 throttle;
}TransferControlParaData;

typedef struct
{
    uint8 header1;
    uint8 header2;
    uint8 frame_size;
    uint8 frame_type;
    TransferControlParaData data;
    uint16 CRC_code;
    uint8 ender;
}TransferControlParaDataFrame;

typedef struct
{
    float pixel_flow_x;
    float pixel_flow_y;
    float flow_comp_m_x;
    float flow_comp_m_y;
    float ground_distance;
}PX4FLOW_Data;

typedef struct
{
    uint8 header1;
    uint8 header2;
    uint8 frame_size;
    uint8 frame_type;
    PX4FLOW_Data data;
    uint16 CRC_code;
    uint8 ender;
}PX4FLOW_DataFrame;

#pragma pack(pop)

uint16 CalculateCrc16_HalfByte(void * data, uint16 len);
void ExchangeUint16Bytes(uint16 * num);

#endif // DATAFRAME_H
