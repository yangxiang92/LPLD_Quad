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
  //���ʹӻ���ַ
  //I2C����start�ź�
  LPLD_I2C_Start(i2cx);
  //���ӻ���ַд��
  LPLD_I2C_WriteByte(i2cx, dev_address << 1);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
  
  //дMMA7660�Ĵ�����ַ
  LPLD_I2C_WriteByte(i2cx, reg_address);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
  
  //��Ĵ�����д��������
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
  //���ʹӻ���ַ
  //I2C����start�ź�
  LPLD_I2C_Start(i2cx);
  //���ӻ���ַд��
  LPLD_I2C_WriteByte(i2cx, dev_address << 1);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
  
  //дMMA7660�Ĵ�����ַ
  LPLD_I2C_WriteByte(i2cx, reg_address);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
  
  //��Ĵ�����д��������
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
      //���ʹӻ���ַ
      //I2C����start�ź�
      LPLD_I2C_Start(i2cx);
      //���ӻ���ַд��
      LPLD_I2C_WriteByte(i2cx, dev_address << 1);
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

      //дMMA7660�Ĵ�����ַ
      LPLD_I2C_WriteByte(i2cx, reg_address + i);
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

      //�ٴβ�����ʼ�ź�
      LPLD_I2C_ReStart(i2cx);

      //���ʹӻ���ַ�Ͷ�ȡλ
      LPLD_I2C_WriteByte(i2cx, (dev_address << 1) + 1);
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

      //ת������ģʽΪ��
      LPLD_I2C_SetMasterWR(i2cx, I2C_MRSW);

      //�ر�Ӧ��ACK
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_OFF);//�ر�ACK

      //��IIC����
      *buf =LPLD_I2C_ReadByte(i2cx);
      LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

      //����ֹͣ�ź�
      LPLD_I2C_Stop(i2cx);

      //��IIC����
      *buf = LPLD_I2C_ReadByte(i2cx);

      buf++;

      delayus(delay_time);
    }*/

    //���ʹӻ���ַ
    //I2C����start�ź�
    LPLD_I2C_Start(i2cx);
    //���ӻ���ַд��
    LPLD_I2C_WriteByte(i2cx, dev_address << 1);
    LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

    //дMMA7660�Ĵ�����ַ
    LPLD_I2C_WriteByte(i2cx, reg_address + i);
    LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

    //�ٴβ�����ʼ�ź�
    LPLD_I2C_ReStart(i2cx);

    //���ʹӻ���ַ�Ͷ�ȡλ
    LPLD_I2C_WriteByte(i2cx, (dev_address << 1) + 1);
    LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

    //ת������ģʽΪ��
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

        //��IIC����
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
    //����ֹͣ�ź�
    LPLD_I2C_Stop(i2cx);
    *buf = LPLD_I2C_ReadByte(i2cx);

    delayus(delay_time); 
}  

uint8 I2C_ReadRegSingle(I2C_Type* i2cx, uint8 dev_address, uint8 reg_address, uint32 delay_time)
{
  uint8 result;

  //���ʹӻ���ַ
  //I2C����start�ź�
  LPLD_I2C_Start(i2cx);
  //���ӻ���ַд��
  LPLD_I2C_WriteByte(i2cx, dev_address << 1);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

  //дMMA7660�Ĵ�����ַ
  LPLD_I2C_WriteByte(i2cx, reg_address);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

  //�ٴβ�����ʼ�ź�
  LPLD_I2C_ReStart(i2cx);

  //���ʹӻ���ַ�Ͷ�ȡλ
  LPLD_I2C_WriteByte(i2cx, (dev_address << 1) | 0x01);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

  //ת������ģʽΪ��
  LPLD_I2C_SetMasterWR(i2cx, I2C_MRSW);

  //�ر�Ӧ��ACK
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_OFF);//�ر�ACK

  //��IIC����
  result =LPLD_I2C_ReadByte(i2cx);
  LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);

  //����ֹͣ�ź�
  LPLD_I2C_Stop(i2cx);

  //��IIC����
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
