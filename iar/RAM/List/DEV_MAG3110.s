///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    20/Mar/2014  08:44:52 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_MAG3110.c                                        /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_MAG3110.c -D LPLD_K60 -lCN                       /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\RAM\Li /
//                    st\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\ia /
//                    r\RAM\List\ -o E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V2\iar\RAM\Obj\ --no_cse --no_unroll --no_inline      /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\app /
//                    \ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\. /
//                    .\lib\CPU\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad /
//                    _V2\iar\..\lib\common\ -I E:\ShawnDocuments\IAR_WorkSpa /
//                    ce\LPLD_Quad_V2\iar\..\lib\LPLD\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \LPLD\HW\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_ /
//                    V2\iar\..\lib\LPLD\DEV\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \uCOS-II\Ports\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V2\iar\..\lib\uCOS-II\Source\ -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2 /
//                    \iar\..\lib\FatFs\option\ -I                            /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qu /
//                    ad_V2\iar\..\lib\USB\driver\ -I                         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \USB\descriptor\ -I E:\ShawnDocuments\IAR_WorkSpace\LPL /
//                    D_Quad_V2\iar\..\lib\USB\class\ -Ol -I "D:\Program      /
//                    Files\IAR Systems\Embedded Workbench                    /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\RAM\Li /
//                    st\DEV_MAG3110.s                                        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME DEV_MAG3110

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_I2C_Init
        EXTERN LPLD_I2C_ReStart
        EXTERN LPLD_I2C_ReadByte
        EXTERN LPLD_I2C_SetMasterWR
        EXTERN LPLD_I2C_StartTrans
        EXTERN LPLD_I2C_Stop
        EXTERN LPLD_I2C_WaitAck
        EXTERN LPLD_I2C_WriteByte

        PUBLIC LPLD_MAG3110_GetResult
        PUBLIC LPLD_MAG3110_Init
        PUBLIC LPLD_MAG3110_ReadReg
        PUBLIC LPLD_MAG3110_WriteReg

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\DEV\DEV_MAG3110.c
//    1 /**
//    2  * @file DEV_MAG3110.c
//    3  * @version 0.2[By LPLD]
//    4  * @date 2013-10-3
//    5  * @brief MAG3110����شŴ������豸��������
//    6  *
//    7  * ���Ľ���:�ɸ���ʵ��Ӳ���޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "DEV_MAG3110.h"
//   23 
//   24 static void MAG3110_Delay(void);
//   25 
//   26 /*
//   27  *   LPLD_MAG3110_Init
//   28  *   ��ʼ��MAG3110��������ʼ��3110�����I2C�ӿ��Լ�3110�ļĴ���
//   29  *
//   30  *   ������
//   31  *    ��
//   32  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 uint8 LPLD_MAG3110_Init(void)
//   34 {
LPLD_MAG3110_Init:
        PUSH     {R0-R4,LR}
//   35   uint8 device_id;
//   36   I2C_InitTypeDef i2c_init_param;
//   37     
//   38   //��ʼ��MAG3110_I2CX
//   39   i2c_init_param.I2C_I2Cx = MAG3110_I2CX;       //��DEV_MAG3110.h���޸ĸ�ֵ
        LDR.N    R0,??DataTable2  ;; 0x40066000
        STR      R0,[SP, #+0]
//   40   i2c_init_param.I2C_ICR = MAG3110_SCL_200KHZ;  //�ɸ���ʵ�ʵ�·����SCLƵ��
        MOVS     R0,#+35
        STRB     R0,[SP, #+4]
//   41   i2c_init_param.I2C_SclPin = MAG3110_SCLPIN;   //��DEV_MAG3110.h���޸ĸ�ֵ
        MOVS     R0,#+32
        STRB     R0,[SP, #+6]
//   42   i2c_init_param.I2C_SdaPin = MAG3110_SDAPIN;   //��DEV_MAG3110.h���޸ĸ�ֵ
        MOVS     R0,#+33
        STRB     R0,[SP, #+7]
//   43   i2c_init_param.I2C_IntEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   44   i2c_init_param.I2C_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   45   i2c_init_param.I2C_OpenDrainEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//   46   
//   47   LPLD_I2C_Init(i2c_init_param);
        ADD      R0,SP,#+0
        LDM      R0,{R0-R3}
        BL       LPLD_I2C_Init
//   48   
//   49   //��ȡ�豸ID
//   50   device_id = LPLD_MAG3110_ReadReg(MAG3110_WHO_AM_I);
        MOVS     R0,#+7
        BL       LPLD_MAG3110_ReadReg
        MOVS     R4,R0
//   51       
//   52   //����CTRL_REG2
//   53   //�Զ���λģʽ
//   54   LPLD_MAG3110_WriteReg(MAG3110_CTRL_REG2, CTRL_REG2_AUTO_MRST_EN_MARK); 
        MOVS     R1,#+128
        MOVS     R0,#+17
        BL       LPLD_MAG3110_WriteReg
//   55   //����CTRL_REG1 
//   56   LPLD_MAG3110_WriteReg(MAG3110_CTRL_REG1, CTRL_REG1_OS(0)|CTRL_REG1_AC_MARK);
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       LPLD_MAG3110_WriteReg
//   57   
//   58   return device_id;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+16
        POP      {R4,PC}          ;; return
//   59 }
//   60 
//   61 /*
//   62  *   LPLD_MAG3110_WriteReg
//   63  *   �ú�����������MAG3110�ļĴ���
//   64  *
//   65  *   ������
//   66  *   RegisterAddress 
//   67  *    |__ MAG3110�Ĵ�����ַ
//   68  *   Data
//   69  *    |__ ����д����ֽ������� 
//   70  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 void LPLD_MAG3110_WriteReg(uint8 RegisterAddress, uint8 Data)
//   72 {
LPLD_MAG3110_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   73   //���ʹӻ���ַ
//   74   LPLD_I2C_StartTrans(MAG3110_I2CX, MAG3110_DEV_ADDR, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+14
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_StartTrans
//   75   LPLD_I2C_WaitAck(MAG3110_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   76   
//   77   //дMAG3110�Ĵ�����ַ
//   78   LPLD_I2C_WriteByte(MAG3110_I2CX, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//   79   LPLD_I2C_WaitAck(MAG3110_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   80   
//   81   //��Ĵ�����д��������
//   82   LPLD_I2C_WriteByte(MAG3110_I2CX, Data);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//   83   LPLD_I2C_WaitAck(MAG3110_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   84 
//   85   LPLD_I2C_Stop(MAG3110_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_Stop
//   86 
//   87   //MAG3110_Delay();
//   88 }
        POP      {R0,R4,R5,PC}    ;; return
//   89 
//   90 /*
//   91  *   LPLD_MAG3110_WriteReg
//   92  *   �ú������ڶ�ȡMAG3110������
//   93  *
//   94  *   ������
//   95  *     RegisterAddress 
//   96  *        |__ MAG3110�Ĵ�����ַ
//   97  *   ����ֵ
//   98  *      ���ٴ������Ĳ���ֵ
//   99  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  100 uint8 LPLD_MAG3110_ReadReg(uint8 RegisterAddress)
//  101 {
LPLD_MAG3110_ReadReg:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  102   uint8 result;
//  103 
//  104   //���ʹӻ���ַ
//  105   LPLD_I2C_StartTrans(MAG3110_I2CX, MAG3110_DEV_ADDR, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+14
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_StartTrans
//  106   LPLD_I2C_WaitAck(MAG3110_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  107 
//  108   //дMAG3110�Ĵ�����ַ
//  109   LPLD_I2C_WriteByte(MAG3110_I2CX, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//  110   LPLD_I2C_WaitAck(MAG3110_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  111 
//  112   //�ٴβ�����ʼ�ź�
//  113   LPLD_I2C_ReStart(MAG3110_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReStart
//  114 
//  115   //���ʹӻ���ַ�Ͷ�ȡλ
//  116   LPLD_I2C_WriteByte(MAG3110_I2CX, MAG3110_DEV_READ);
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//  117   LPLD_I2C_WaitAck(MAG3110_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  118 
//  119   //ת������ģʽΪ��
//  120   LPLD_I2C_SetMasterWR(MAG3110_I2CX, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_SetMasterWR
//  121 
//  122   //�ر�Ӧ��ACK
//  123   LPLD_I2C_WaitAck(MAG3110_I2CX, I2C_ACK_OFF);//�ر�ACK
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  124 
//  125   //��IIC����
//  126   result =LPLD_I2C_ReadByte(MAG3110_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReadByte
        MOVS     R4,R0
//  127   LPLD_I2C_WaitAck(MAG3110_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  128 
//  129   //����ֹͣ�ź�
//  130   LPLD_I2C_Stop(MAG3110_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_Stop
//  131 
//  132    //��IIC����
//  133   result = LPLD_I2C_ReadByte(MAG3110_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReadByte
        MOVS     R4,R0
//  134 
//  135   MAG3110_Delay();
        BL       MAG3110_Delay
//  136   
//  137   return result;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  138 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40066000
//  139 
//  140 /*
//  141  * �������ܣ���MAA7660���ٶ����
//  142  * �����w
//  143  *       Status - ���ݼĴ���״̬
//  144  *       Regs_Addr - ���ݼĴ�����ַ
//  145  * ��������ֵ�����ٶ�ֵ��int8��
//  146  */   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  147 int16 LPLD_MAG3110_GetResult(uint8 Status, uint8 Regs_Addr) 
//  148 {
LPLD_MAG3110_GetResult:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  149   uint8 ret=0;
        MOVS     R0,#+0
//  150   uint16 cnt=0;
        MOVS     R6,#+0
//  151   int16 result,temp;
//  152   
//  153   if(Regs_Addr>MAG3110_OUT_Z_LSB)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BCC.N    ??LPLD_MAG3110_GetResult_0
//  154     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_MAG3110_GetResult_1
//  155   
//  156   // �ȴ�ת����ɲ�ȡ��ֵ 
//  157   while(!(ret&Status)) 
??LPLD_MAG3110_GetResult_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R4
        BNE.N    ??LPLD_MAG3110_GetResult_2
//  158   {
//  159     ret = LPLD_MAG3110_ReadReg( MAG3110_DR_STATUS);
        MOVS     R0,#+0
        BL       LPLD_MAG3110_ReadReg
//  160     if(++cnt>500)
        ADDS     R6,R6,#+1
        MOVS     R1,R6
        MOVW     R2,#+501
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BCC.N    ??LPLD_MAG3110_GetResult_0
//  161       break;
//  162   }
//  163   
//  164   result= LPLD_MAG3110_ReadReg( Regs_Addr);
??LPLD_MAG3110_GetResult_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_MAG3110_ReadReg
        MOVS     R4,R0
//  165   temp  = LPLD_MAG3110_ReadReg( Regs_Addr+1);
        ADDS     R0,R5,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_MAG3110_ReadReg
//  166   result=result<<8;
        LSLS     R4,R4,#+8
//  167   result=result|temp;
        ORRS     R4,R0,R4
//  168   
//  169   return result;
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
??LPLD_MAG3110_GetResult_1:
        POP      {R4-R6,PC}       ;; return
//  170 }
//  171 
//  172 
//  173 /*
//  174  * ��ʱ����
//  175  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  176 static void MAG3110_Delay(void){
//  177   int n;
//  178   for(n=1;n<200;n++) {
MAG3110_Delay:
        MOVS     R0,#+1
        B.N      ??MAG3110_Delay_0
//  179     asm("nop");
??MAG3110_Delay_1:
        nop
//  180   }
        ADDS     R0,R0,#+1
??MAG3110_Delay_0:
        CMP      R0,#+200
        BLT.N    ??MAG3110_Delay_1
//  181 }
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 358 bytes in section .text
// 
// 358 bytes of CODE memory
//
//Errors: none
//Warnings: none
