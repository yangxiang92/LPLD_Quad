#include "dataframe.h"

uint16 CalculateCrc16_HalfByte(void * data, uint16 len)
{
    uint16 crc = 0;
    const static uint16 crc_tab[16] =
    {
        0x0000 , 0x1021 , 0x2042 , 0x3063 , 0x4084 , 0x50A5 , 0x60C6 , 0x70E7 ,
        0x8108 , 0x9129 , 0xA14A , 0xB16B , 0xC18C , 0xD1AD , 0xE1CE , 0xF1EF
    };
    uint8 h_crc;
    const uint8 * ptr = (const uint8 *)data;
    //
    while(len --)
    {
        h_crc = (uint8)(crc >> 12);                 //暂存CRC 的高四位
        crc <<= 4;                                  //CRC 右移4 位，相当于取CRC 的低12 位）
        crc ^= crc_tab[h_crc ^ ((*ptr) >> 4)];      //CRC 的高4 位和本字节的前半字节相加后查表计算CRC，然后加上上一次CRC 的余数
        //
        h_crc = crc >> 12;                          //暂存CRC 的高4 位
        crc <<= 4;                                  //CRC 右移4 位， 相当于CRC 的低12 位）
        crc ^= crc_tab[h_crc ^ ((*ptr) & 0x0F)];       //CRC 的高4 位和本字节的后半字节相加后查表计算CRC，然后再加上上一次CRC 的余数
        //
        ptr ++;
    }
    //
    return crc;
}

void ExchangeUint16Bytes(uint16 * num)
{
    int i = 0;
    uint8 temp[2];

    for(i = 0; i < 2; i++)
    {
        temp[i] = ((uint8 *)num)[i];
    }

    for(i = 0; i < 2; i++)
    {
        ((uint8 *)num)[1-i] = temp[i];
    }
}
