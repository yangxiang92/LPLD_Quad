/******************************************************************************
 *       MS5611.h ----- The header of MS5611.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  MS5611.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/2 9:20:58                                                       *
 ******************************************************************************/
#ifndef _MS5611_H_
#define _MS5611_H_

#include "common.h"

#define ERROR 0
#define SUCCESS 1

#define MS5611_I2C_PORT                     I2C1
#define MS5611_I2C_SCLPIN                   PTC10
#define MS5611_I2C_SDAPIN                   PTC11
#define MS5611_CSB_PIN_PORT                 PTC
#define MS5611_CSB_PIN_NUM                  12

#define MS5611_SCL_50KHZ                   (0x33) 
#define MS5611_SCL_100KHZ                  (0x2B)  
#define MS5611_SCL_150KHZ                  (0x28)
#define MS5611_SCL_200KHZ                  (0x23)
#define MS5611_SCL_250KHZ                  (0x21)
#define MS5611_SCL_300KHZ                  (0x20)
#define MS5611_SCL_400KHZ                  (0x17)  

#define MS5611_I2C_DELAY_TIME               5


/*=====================================================================================================*/
// 1010~1000  上升100m 下降10.5mbar
// 1000~900   上升100m 下降11.2mbar
// 900~800    上升100m 下降12.2mbar
// 800~700    上升100m 下降13.3mbar
// 700~600    上升100m 下降15mbar
/*=====================================================================================================*/
typedef struct {
  uint16 C[7];
  uint32 D[3];

  int32 dT;
  int32 rTemp;

  uint64_t OFF;
  uint64_t SENS;
  int32 rPress;

  float Temp;   // -4000~8500, 0.01'C/LSB
  float Press;  // 1000~120000, 0.01mbar/LSB, 以Pa为单位
  float High;   // 0.01mbar ~ 9.5238cm(10.5mbar/100m) or 8.92857(11.2mbar/100m)，以cm为单位

  uint8 HighReady;
} MS5611_DataStruct;

typedef __IO enum {
  MS5611_ConvInit,
  MS5611_ConvD1,
  MS5611_ConvD2
} MS5611_Status;

#include "I2C_ope.h"

#include "MS5611_reg_map.h"

void InitMS5611 (void);
void MS5611_WriteCommand (uint8 command); 
void MS5611_ReadROM(MS5611_DataStruct * COEFF);
uint16 MS5611_ReadROM_1(uint8 rom_num);
void MS5611_MultiRead(uint8* buf, uint8 data_num);
void MS5611_ConvADC(uint8 ADC_conv_mode);
void MS5611_ReadADC(MS5611_DataStruct * COEFF, uint8 ADC_sel);
void MS5611_Calculate( MS5611_DataStruct* COEFF );
void MS5611_Read( MS5611_DataStruct* COEFF, uint8 ADC_ConvMode )   ; 


extern MS5611_DataStruct MS5611_data_struct;
#endif
