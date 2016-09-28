/****************************************************************************** 
 *       I2C_ope.c ----- The code to use I2C to read and write reg of device          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  I2C_ope.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/30 21:55:35                                                       *
 ******************************************************************************/
#include "I2C_ope.h"

void I2C_WriteRegMulti(I2C_Type * i2cx, uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data, uint32 delay_time)
{
    int i = 0;
  //发送从机地址
  //I2C产生start信号
  LPLD_I2C_Start(i2cx);
  //将从机地址写入
  LPLD_I2C_WriteByte(i2cx, dev_address << 1);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
  
  //写MMA7660寄存器地址
  LPLD_I2C_WriteByte(i2cx, reg_address);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
  
  //向寄存器中写具体数据
  for(i = 0; i < len; i ++)
  {
    LPLD_I2C_WriteByte(i2cx, data[i]);
    LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
  }

  LPLD_I2C_Stop(i2cx);

  delayus(delay_time);

}

void I2C_WriteRegSingle(I2C_Type * i2cx, uint8 dev_address, uint8 reg_address, uint8 data, uint32 delay_time)
{
  //发送从机地址
  //I2C产生start信号
  LPLD_I2C_Start(i2cx);
  //将从机地址写入
  LPLD_I2C_WriteByte(i2cx, dev_address << 1);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
  
  //写MMA7660寄存器地址
  LPLD_I2C_WriteByte(i2cx, reg_address);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
  
  //向寄存器中写具体数据
  LPLD_I2C_WriteByte(i2cx, data);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

  LPLD_I2C_Stop(i2cx);

  delayus(delay_time);
}

void I2C_ReadRegMulti(I2C_Type* i2cx, uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf, uint32 delay_time)
{
    int i =0;
/*     for(i = 0; i < len; i ++)
    {
      //发送从机地址
      //I2C产生start信号
      LPLD_I2C_Start(i2cx);
      //将从机地址写入
      LPLD_I2C_WriteByte(i2cx, dev_address << 1);
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

      //写MMA7660寄存器地址
      LPLD_I2C_WriteByte(i2cx, reg_address + i);
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

      //再次产生开始信号
      LPLD_I2C_ReStart(i2cx);

      //发送从机地址和读取位
      LPLD_I2C_WriteByte(i2cx, (dev_address << 1) + 1);
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

      //转换主机模式为读
      LPLD_I2C_SetMasterWR(i2cx, I2C_MRSW);

      //关闭应答ACK
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_OFF);//关闭ACK

      //读IIC数据
      *buf =LPLD_I2C_ReadByte(i2cx);
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

      //发送停止信号
      LPLD_I2C_Stop(i2cx);

      //读IIC数据
      *buf = LPLD_I2C_ReadByte(i2cx);

      buf++;

      delayus(delay_time);
    }*/

    //发送从机地址
    //I2C产生start信号
    LPLD_I2C_Start(i2cx);
    //将从机地址写入
    LPLD_I2C_WriteByte(i2cx, dev_address << 1);
    LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

    //写MMA7660寄存器地址
    LPLD_I2C_WriteByte(i2cx, reg_address + i);
    LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

    //再次产生开始信号
    LPLD_I2C_ReStart(i2cx);

    //发送从机地址和读取位
    LPLD_I2C_WriteByte(i2cx, (dev_address << 1) + 1);
    LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

    //转换主机模式为读
    LPLD_I2C_SetMasterWR(i2cx, I2C_MRSW);

    for(i = 0; i < len; i++)
    {
        if(i < (len-1))
        {
            /* Turn on ACK */
            i2cx->C1 &= (~I2C_C1_TXAK_MASK);
        }
        else
        {
            /* Turn off ACK */
            i2cx->C1 |= I2C_C1_TXAK_MASK;            
        }

        //读IIC数据
        if(i == 0)
        {
            LPLD_I2C_ReadByte(i2cx);
        }
        else
        {
            *buf =LPLD_I2C_ReadByte(i2cx);
            buf ++;
        }
        LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
    }
    //发送停止信号
    LPLD_I2C_Stop(i2cx);
    *buf = LPLD_I2C_ReadByte(i2cx);

    delayus(delay_time); 
}  

uint8 I2C_ReadRegSingle(I2C_Type* i2cx, uint8 dev_address, uint8 reg_address, uint32 delay_time)
{
  uint8 result;

  //发送从机地址
  //I2C产生start信号
  LPLD_I2C_Start(i2cx);
  //将从机地址写入
  LPLD_I2C_WriteByte(i2cx, dev_address << 1);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

  //写MMA7660寄存器地址
  LPLD_I2C_WriteByte(i2cx, reg_address);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

  //再次产生开始信号
  LPLD_I2C_ReStart(i2cx);

  //发送从机地址和读取位
  LPLD_I2C_WriteByte(i2cx, (dev_address << 1) | 0x01);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

  //转换主机模式为读
  LPLD_I2C_SetMasterWR(i2cx, I2C_MRSW);

  //关闭应答ACK
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_OFF);//关闭ACK

  //读IIC数据
  result =LPLD_I2C_ReadByte(i2cx);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

  //发送停止信号
  LPLD_I2C_Stop(i2cx);

  //读IIC数据
  result = LPLD_I2C_ReadByte(i2cx);

  delayus(delay_time);

  return result;

}  

void I2C0_WriteRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data, uint32 delay_time)
{
    I2C_WriteRegMulti(I2C0, dev_address, reg_address, len, data, delay_time);
}

void I2C1_WriteRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data, uint32 delay_time)
{
    I2C_WriteRegMulti(I2C1, dev_address, reg_address, len, data, delay_time);
}

void I2C0_WriteRegSingle(uint8 dev_address, uint8 reg_address, uint8 data, uint32 delay_time)
{
    I2C_WriteRegSingle(I2C0, dev_address, reg_address, data, delay_time);
}

void I2C1_WriteRegSingle(uint8 dev_address, uint8 reg_address, uint8 data, uint32 delay_time)
{
    I2C_WriteRegSingle(I2C1, dev_address, reg_address, data, delay_time);
}

void I2C0_ReadRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf, uint32 delay_time)
{
    I2C_ReadRegMulti(I2C0, dev_address, reg_address, len, buf, delay_time);
}

void I2C1_ReadRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf, uint32 delay_time)
{
    I2C_ReadRegMulti(I2C1, dev_address, reg_address, len, buf, delay_time);
}

uint8 I2C0_ReadRegSingle(uint8 dev_address, uint8 reg_address, uint32 delay_time)
{
    return I2C_ReadRegSingle(I2C0, dev_address, reg_address, delay_time);
}

uint8 I2C1_ReadRegSingle(uint8 dev_address, uint8 reg_address, uint32 delay_time)
{
    return I2C_ReadRegSingle(I2C1, dev_address, reg_address, delay_time);
}
