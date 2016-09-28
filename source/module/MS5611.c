/****************************************************************************** 
 *       MS5611.c ----- The Driver Function of MS5611(digital pressure sensor)          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  MS5611.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/2 9:20:03                                                       *
 ******************************************************************************/

#include "MS5611.h"

MS5611_DataStruct MS5611_data_struct;

/************************************************************************
 * Function         InitMS5611                                              
 * Usage            To Initialize MS5611(pressure sensor)                           
 * Argument         NONE
 * Return value     NONE                                                        
 * Modification History:                                                  
 * 01a 2014/4/2 9:24:51   
 *
 ************************************************************************/
void InitMS5611 (void) 
{
    I2C_InitTypeDef MS5611_I2C_init_struct = {0};
    MS5611_I2C_init_struct.I2C_I2Cx = MS5611_I2C_PORT;
    MS5611_I2C_init_struct.I2C_ICR = MS5611_SCL_400KHZ;
    MS5611_I2C_init_struct.I2C_IntEnable = FALSE;
    MS5611_I2C_init_struct.I2C_SclPin = MS5611_I2C_SCLPIN;
    MS5611_I2C_init_struct.I2C_SdaPin = MS5611_I2C_SDAPIN;
    MS5611_I2C_init_struct.I2C_Isr = NULL;
    MS5611_I2C_init_struct.I2C_OpenDrainEnable = TRUE;    
    LPLD_I2C_Init(MS5611_I2C_init_struct);

    GPIO_InitTypeDef MS5611_CSB_pin_init_struct = {0};
    MS5611_CSB_pin_init_struct.GPIO_PTx = MS5611_CSB_PIN_PORT;
    MS5611_CSB_pin_init_struct.GPIO_Pins = PinNum2GpioPin(MS5611_CSB_PIN_NUM);
    MS5611_CSB_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
    MS5611_CSB_pin_init_struct.GPIO_Output = OUTPUT_L;
    LPLD_GPIO_Init(MS5611_CSB_pin_init_struct);

    MS5611_WriteCommand(MS5611_RESET);
    delayms(10);

    MS5611_ReadROM(& MS5611_data_struct);
    delayms(10);

    MS5611_ConvADC(MS5611_D1_OSR_4096);
    delayms(10);
    MS5611_ReadADC(& MS5611_data_struct, MS5611_ADC_D1);

    MS5611_ConvADC(MS5611_D2_OSR_4096);
    delayms(10);
    MS5611_ReadADC(& MS5611_data_struct, MS5611_ADC_D2);

    MS5611_Calculate(& MS5611_data_struct);
}		/* -----  end of function InitMS5611  ----- */

void MS5611_WriteCommand (uint8 command) 
{
  //发送从机地址
  //I2C产生start信号
  LPLD_I2C_Start(MS5611_I2C_PORT);
  //将从机地址写入
  LPLD_I2C_WriteByte(MS5611_I2C_PORT, MS5611_ADRESS << 1);
  LPLD_I2C_WaitAck(MS5611_I2C_PORT, I2C_ACK_ON);
  
  //写MMA7660寄存器地址
  LPLD_I2C_WriteByte(MS5611_I2C_PORT, command);
  LPLD_I2C_WaitAck(MS5611_I2C_PORT, I2C_ACK_ON);

  LPLD_I2C_Stop(MS5611_I2C_PORT);

  delayus(MS5611_I2C_DELAY_TIME);  
}		/* -----  end of function MS5611_SingleWriteReg  ----- */

void MS5611_ReadROM(MS5611_DataStruct * COEFF)
{
    uint8 i = 0;

    for(i = 0; i < 6; i++)
    {
        COEFF->C[i+1] = MS5611_ReadROM_1(i);
    }
}

uint16 MS5611_ReadROM_1(uint8 rom_num)
{
    uint8 buf[2]={0,0};
    uint16 ret = 0;
    MS5611_WriteCommand(MS5611_PROM_COEFF_1 + rom_num * 2);
    MS5611_MultiRead(buf, 2);
    ret = ((uint16)buf[0] << 8) + buf[1];
    
    return ret;
}

void MS5611_MultiRead(uint8* buf, uint8 data_num)
{
    int i = 0;
    //发送从机地址
    //I2C产生start信号
    LPLD_I2C_Start(MS5611_I2C_PORT);
    //将从机地址写入
    LPLD_I2C_WriteByte(MS5611_I2C_PORT, (MS5611_ADRESS << 1) + 1);
    LPLD_I2C_WaitAck(MS5611_I2C_PORT, I2C_ACK_ON);    

    //转换主机模式为读
    LPLD_I2C_SetMasterWR(MS5611_I2C_PORT, I2C_MRSW);

    for(i = 0; i < data_num; i++)
    {
        if(i < (data_num-1))
        {
            /* Turn on ACK */
            MS5611_I2C_PORT->C1 &= (~I2C_C1_TXAK_MASK);
        }
        else
        {
            /* Turn off ACK */
            MS5611_I2C_PORT->C1 |= I2C_C1_TXAK_MASK;  // ACK NO 
        }

        //读IIC数据
        if(i == 0)
        {
            LPLD_I2C_ReadByte(MS5611_I2C_PORT);
        }
        else
        {
            *buf =LPLD_I2C_ReadByte(MS5611_I2C_PORT);
            buf ++;
        }
        LPLD_I2C_WaitAck(MS5611_I2C_PORT, I2C_ACK_ON);
    }
    //发送停止信号
    LPLD_I2C_Stop(MS5611_I2C_PORT);
    *buf = LPLD_I2C_ReadByte(MS5611_I2C_PORT);

    LPLD_I2C_Stop(MS5611_I2C_PORT);

    delayus(MS5611_I2C_DELAY_TIME);
}

void MS5611_ConvADC(uint8 ADC_conv_mode)
{
    MS5611_WriteCommand(ADC_conv_mode);
}

void MS5611_ReadADC(MS5611_DataStruct * COEFF, uint8 ADC_sel)
{
    uint8 buf[3] = {0};

    MS5611_WriteCommand(MS5611_ADC);
    MS5611_MultiRead(buf, 3);

    COEFF->D[ADC_sel] = ((uint32)buf[0] << 16) | ((uint32)buf[1] << 8) | ((uint32)buf[2]);
}

void MS5611_Calculate( MS5611_DataStruct* COEFF )
{
  COEFF->dT = (int32)(COEFF->D[2] - (COEFF->C[5]*POW_2_8));          // dT = D2 - C5*2^8
  COEFF->rTemp = (int32)(2000 + ((int64_t)COEFF->dT*COEFF->C[6])/POW_2_23);   // Temp = 2000 + dT*C6/2^23

  COEFF->OFF = (uint64_t)((uint64_t)COEFF->C[2]*POW_2_16 + ((uint64_t)COEFF->C[4]*COEFF->dT)/POW_2_7);   // OFF = C2*2^16 + (C4*dT)/2^7
  COEFF->SENS = (uint64_t)((uint64_t)COEFF->C[1]*POW_2_15 + ((uint64_t)COEFF->C[3]*COEFF->dT)/POW_2_8);  // SENS = C1*2^15 + (C3*dT)/2^8
  COEFF->rPress = (uint32)((COEFF->D[1]*COEFF->SENS)/POW_2_21 - COEFF->OFF)/POW_2_15;  // Press = (D1*SENS/2^21 - OFF)/2^15

  COEFF->Temp  = (float)(COEFF->rTemp/100.0f);
  COEFF->Press = (float)(COEFF->rPress/100.0f);
  COEFF->High  = (float)((101333-COEFF->rPress)*9.5238f);

  COEFF->HighReady = 1;
}

/*=====================================================================================================*/
/*=====================================================================================================*
**函數 : MS5611_Read
**功能 : MS5611 Read
**輸入 : Baro, ADC_ConvMode
**輸出 : None
**使用 : MS5611_Read(&Baro, MS5611_D1_OSR_4096);
**=====================================================================================================*/
/*=====================================================================================================*/
void MS5611_Read( MS5611_DataStruct* COEFF, uint8 ADC_ConvMode )
{
  uint8 ReadFlag = ERROR;
  static MS5611_Status ReadSta = MS5611_ConvInit;

  switch(ReadSta) {
    case MS5611_ConvInit:
      MS5611_ConvADC(ADC_ConvMode);
      ReadSta = MS5611_ConvD1;
      break;
    case MS5611_ConvD1:
      MS5611_ReadADC(COEFF, MS5611_ADC_D1);
      MS5611_ConvADC(ADC_ConvMode | 0x10);
      ReadSta = MS5611_ConvD2;
      break;
    case MS5611_ConvD2:
      MS5611_ReadADC(COEFF, MS5611_ADC_D2);
      MS5611_ConvADC(ADC_ConvMode);
      ReadFlag = SUCCESS;
      ReadSta = MS5611_ConvD1;
      break;
  }

  if(ReadFlag == SUCCESS)
    MS5611_Calculate(COEFF);
}
/*=====================================================================================================*/
/*=====================================================================================================*/


