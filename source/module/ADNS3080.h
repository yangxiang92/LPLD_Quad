/******************************************************************************
 *       ADNS3080.h ----- The header of ADNS3080.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  ADNS3080.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/7/10 14:08:51                                                       *
 ******************************************************************************/
#ifndef _ADNS3080_H_
#define _ADNS3080_H_

#include "common.h"

#define ADNS3080_SPIX   SPI2
#define ADNS3080_NCS    PTD11
#define ADNS3080_SCLK   PTD12
#define ADNS3080_MOSI   PTD13
#define ADNS3080_MISO   PTD14

void InitADNS3080_SPI(void);
uint8 ADNS3080_SPI_WriteRead(uint8 data, uint8 pcs_state);
void ADNS3080_WriteOneReg(uint8 address, uint8 data);
uint8 ADNS3080_ReadOneReg(uint8 address);
void ADNS3080_MotionBurst(uint8 data[7]);
void ADNS3080_PixelBurst(uint8 data[900]);

#include "module.h"

#endif
