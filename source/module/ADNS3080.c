/****************************************************************************** 
 *       ADNS3080.c ----- The Optic Flow Sensor Driving Module          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  ADNS3080.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/7/10 14:08:12                                                       *
 ******************************************************************************/
#include "ADNS3080.h"

void InitADNS3080_SPI(void)
{
    SPI_InitTypeDef ADNS3080_spi_init_struct = {0};
    ADNS3080_spi_init_struct.SPI_SPIx = ADNS3080_SPIX;
    ADNS3080_spi_init_struct.SPI_SckDivider = SPI_SCK_DIV_32;
    ADNS3080_spi_init_struct.SPI_Pcs0Pin = ADNS3080_NCS;
    ADNS3080_spi_init_struct.SPI_SckPin = ADNS3080_SCLK;
    ADNS3080_spi_init_struct.SPI_MosiPin = ADNS3080_MOSI;
    ADNS3080_spi_init_struct.SPI_MisoPin = ADNS3080_MISO;

    ADNS3080_spi_init_struct.SPI_TxCompleteIntIsr = NULL;
    ADNS3080_spi_init_struct.SPI_QueueEndIntIsr = NULL;
    ADNS3080_spi_init_struct.SPI_TxFIFO_FillIntIsr = NULL;
    ADNS3080_spi_init_struct.SPI_TxFIFO_UnderflowIntIsr = NULL;
    ADNS3080_spi_init_struct.SPI_RxFIFO_DrainIntIsr = NULL;
    ADNS3080_spi_init_struct.SPI_RxFIFO_OverflowIntIsr = NULL;

    LPLD_SPI_Init(ADNS3080_spi_init_struct);
}

uint8 ADNS3080_SPI_WriteRead(uint8 data, uint8 pcs_state)
{
    uint8 ret = 0;
    if(pcs_state == 1)
    {
        ret = LPLD_SPI_Master_WriteRead(ADNS3080_SPIX, data, SPI_PCS0, SPI_PCS_ASSERTED);
    }
    else if(pcs_state == 0)
    {
        ret = LPLD_SPI_Master_WriteRead(ADNS3080_SPIX, data, SPI_PCS0, SPI_PCS_INACTIVE);
    }
    else
    {
        ret = 0;
    }
    return ret;
}

void ADNS3080_WriteOneReg(uint8 address, uint8 data)
{
    ADNS3080_SPI_WriteRead(address|0x80, 1);
    ADNS3080_SPI_WriteRead(data, 0);
    delayus(50);
}

uint8 ADNS3080_ReadOneReg(uint8 address)
{
    uint8 ret = 0;
    ADNS3080_SPI_WriteRead(address, 1);
    delayus(50);
    ret = ADNS3080_SPI_WriteRead(0x00, 0);
    delayus(1);
    return ret;
}

void ADNS3080_MotionBurst(uint8 data[7])
{
    int i = 0;
    ADNS3080_SPI_WriteRead(0x50, 1);
    delayus(80);
    for(i = 0; i < 6; i++)
    {
        data[i] = ADNS3080_SPI_WriteRead(0x00, 1);
    }
    data[6] = ADNS3080_SPI_WriteRead(0x00, 0);
    delayus(1);
}

void ADNS3080_PixelBurst(uint8 data[900])
{
    int frame_count = 0;

    ADNS3080_WriteOneReg(0x13, 0x83);
    delayms(3);
    ADNS3080_SPI_WriteRead(0x40, 1);
    delayus(50);

    for(frame_count = 0; frame_count < 899; frame_count ++)
    {
        data[frame_count] = ADNS3080_SPI_WriteRead(0x00, 1);
        delayus(10);
    }

    data[frame_count] = ADNS3080_SPI_WriteRead(0x00, 0);
    delayus(20);
}
