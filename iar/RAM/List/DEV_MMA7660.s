///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    20/Mar/2014  08:44:52 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_MMA7660.c                                        /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_MMA7660.c -D LPLD_K60 -lCN                       /
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
//                    st\DEV_MMA7660.s                                        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME DEV_MMA7660

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_I2C_Init
        EXTERN LPLD_I2C_ReStart
        EXTERN LPLD_I2C_ReadByte
        EXTERN LPLD_I2C_SetMasterWR
        EXTERN LPLD_I2C_StartTrans
        EXTERN LPLD_I2C_Stop
        EXTERN LPLD_I2C_WaitAck
        EXTERN LPLD_I2C_WriteByte

        PUBLIC LPLD_MMA7660_GetResult
        PUBLIC LPLD_MMA7660_Init
        PUBLIC LPLD_MMA7660_ReadReg
        PUBLIC LPLD_MMA7660_WriteReg

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\DEV\DEV_MMA7660.c
//    1 /**
//    2  * @file DEV_MMA7660.c
//    3  * @version 0.1[By LPLD]
//    4  * @date 2013-09-24
//    5  * @brief MMA7660������ٶȴ������豸��������
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
//   22 #include "DEV_MMA7660.h"
//   23 
//   24 static void MMA7660_Delay(void);
//   25 
//   26 /*
//   27  *   LPLD_MMA7660_Init
//   28  *   ��ʼ��MMA7660��������ʼ��7660�����I2C�ӿ��Լ�7660�ļĴ���
//   29  *
//   30  *   ������
//   31  *    ��
//   32  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 void LPLD_MMA7660_Init(void)
//   34 {
LPLD_MMA7660_Init:
        PUSH     {LR}
        SUB      SP,SP,#+20
//   35   I2C_InitTypeDef i2c_init_param;
//   36     
//   37   //��ʼ��MMA7660_I2CX
//   38   i2c_init_param.I2C_I2Cx = MMA7660_I2CX;       //��DEV_MMA7660.h���޸ĸ�ֵ
        LDR.N    R0,??DataTable2  ;; 0x40066000
        STR      R0,[SP, #+0]
//   39   i2c_init_param.I2C_IntEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   40   i2c_init_param.I2C_ICR = MMA7660_SCL_200KHZ;  //�ɸ���ʵ�ʵ�·����SCLƵ��
        MOVS     R0,#+35
        STRB     R0,[SP, #+4]
//   41   i2c_init_param.I2C_SclPin = MMA7660_SCLPIN;   //��DEV_MMA7660.h���޸ĸ�ֵ
        MOVS     R0,#+100
        STRB     R0,[SP, #+6]
//   42   i2c_init_param.I2C_SdaPin = MMA7660_SDAPIN;   //��DEV_MMA7660.h���޸ĸ�ֵ
        MOVS     R0,#+101
        STRB     R0,[SP, #+7]
//   43   i2c_init_param.I2C_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   44   
//   45   LPLD_I2C_Init(i2c_init_param);
        ADD      R0,SP,#+0
        LDM      R0,{R0-R3}
        BL       LPLD_I2C_Init
//   46 
//   47   LPLD_MMA7660_WriteReg(MMA7660_MODE, 0x00); //Disable tap detection
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       LPLD_MMA7660_WriteReg
//   48   LPLD_MMA7660_WriteReg(MMA7660_SR, 0x02);   //Enable auto-sleep, auto-wake, and put in active mode
        MOVS     R1,#+2
        MOVS     R0,#+8
        BL       LPLD_MMA7660_WriteReg
//   49   LPLD_MMA7660_WriteReg(MMA7660_MODE, 0x11); //Disable tap detection
        MOVS     R1,#+17
        MOVS     R0,#+7
        BL       LPLD_MMA7660_WriteReg
//   50 }
        ADD      SP,SP,#+20
        POP      {PC}             ;; return
//   51 
//   52 /*
//   53  *   LPLD_MMA7660_WriteReg
//   54  *   �ú�����������MMA7660�ļĴ���
//   55  *
//   56  *   ������
//   57  *   RegisterAddress 
//   58  *    |__ MMA7660�Ĵ�����ַ
//   59  *   Data
//   60  *    |__ ����д����ֽ������� 
//   61  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void LPLD_MMA7660_WriteReg(uint8 RegisterAddress, uint8 Data)
//   63 {
LPLD_MMA7660_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   64   //���ʹӻ���ַ
//   65   LPLD_I2C_StartTrans(MMA7660_I2CX, MMA7660_DEV_ADDR, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+76
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_StartTrans
//   66   LPLD_I2C_WaitAck(MMA7660_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   67   
//   68   //дMMA7660�Ĵ�����ַ
//   69   LPLD_I2C_WriteByte(MMA7660_I2CX, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//   70   LPLD_I2C_WaitAck(MMA7660_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   71   
//   72   //��Ĵ�����д��������
//   73   LPLD_I2C_WriteByte(MMA7660_I2CX, Data);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//   74   LPLD_I2C_WaitAck(MMA7660_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   75 
//   76   LPLD_I2C_Stop(MMA7660_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_Stop
//   77 
//   78   //MMA7660_Delay();
//   79 }
        POP      {R0,R4,R5,PC}    ;; return
//   80 
//   81 /*
//   82  *   LPLD_MMA7660_WriteReg
//   83  *   �ú������ڶ�ȡMMA7660������
//   84  *
//   85  *   ������
//   86  *     RegisterAddress 
//   87  *        |__ MMA7660�Ĵ�����ַ
//   88  *   ����ֵ
//   89  *      ���ٴ������Ĳ���ֵ
//   90  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   91 uint8 LPLD_MMA7660_ReadReg(uint8 RegisterAddress)
//   92 {
LPLD_MMA7660_ReadReg:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   93   uint8 result;
//   94 
//   95   //���ʹӻ���ַ
//   96   LPLD_I2C_StartTrans(MMA7660_I2CX, MMA7660_DEV_ADDR, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+76
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_StartTrans
//   97   LPLD_I2C_WaitAck(MMA7660_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   98 
//   99   //дMMA7660�Ĵ�����ַ
//  100   LPLD_I2C_WriteByte(MMA7660_I2CX, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//  101   LPLD_I2C_WaitAck(MMA7660_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  102 
//  103   //�ٴβ�����ʼ�ź�
//  104   LPLD_I2C_ReStart(MMA7660_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReStart
//  105 
//  106   //���ʹӻ���ַ�Ͷ�ȡλ
//  107   LPLD_I2C_WriteByte(MMA7660_I2CX, MMA7660_DEV_READ);
        MOVS     R1,#+153
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//  108   LPLD_I2C_WaitAck(MMA7660_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  109 
//  110   //ת������ģʽΪ��
//  111   LPLD_I2C_SetMasterWR(MMA7660_I2CX, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_SetMasterWR
//  112 
//  113   //�ر�Ӧ��ACK
//  114   LPLD_I2C_WaitAck(MMA7660_I2CX, I2C_ACK_OFF);//�ر�ACK
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  115 
//  116   //��IIC����
//  117   result =LPLD_I2C_ReadByte(MMA7660_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReadByte
        MOVS     R4,R0
//  118   LPLD_I2C_WaitAck(MMA7660_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  119 
//  120   //����ֹͣ�ź�
//  121   LPLD_I2C_Stop(MMA7660_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_Stop
//  122 
//  123    //��IIC����
//  124   result = LPLD_I2C_ReadByte(MMA7660_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReadByte
        MOVS     R4,R0
//  125   
//  126   MMA7660_Delay();
        BL       MMA7660_Delay
//  127 
//  128   return result;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  129 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40066000
//  130 
//  131 /*
//  132  * �������ܣ���MAA7660���ٶ����
//  133  * �����w
//  134  *       Regs_Addr - ���ٶȼĴ�����ַ
//  135  * ��������ֵ�����ٶ�ֵ��int8��
//  136  */   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 int8 LPLD_MMA7660_GetResult(uint8 Regs_Addr) 
//  138 {
LPLD_MMA7660_GetResult:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  139    char ret;
//  140    
//  141    if(Regs_Addr>MMA7660_ZOUT)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BCC.N    ??LPLD_MMA7660_GetResult_0
//  142     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_MMA7660_GetResult_1
//  143    
//  144    // �ȴ�ת����ɲ�ȡ��ֵ   
//  145    ret=LPLD_MMA7660_ReadReg(Regs_Addr);
??LPLD_MMA7660_GetResult_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_MMA7660_ReadReg
        B.N      ??LPLD_MMA7660_GetResult_2
//  146    while(ret&0x40) {
//  147     ret=LPLD_MMA7660_ReadReg(Regs_Addr);
??LPLD_MMA7660_GetResult_3:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_MMA7660_ReadReg
//  148    }
??LPLD_MMA7660_GetResult_2:
        LSLS     R1,R0,#+25
        BMI.N    ??LPLD_MMA7660_GetResult_3
//  149  
//  150    return ret;
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
??LPLD_MMA7660_GetResult_1:
        POP      {R4,PC}          ;; return
//  151 
//  152 }
//  153 
//  154 
//  155 /*
//  156  * ��ʱ����
//  157  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  158 static void MMA7660_Delay(void){
//  159   int n;
//  160   for(n=1;n<200;n++) {
MMA7660_Delay:
        MOVS     R0,#+1
        B.N      ??MMA7660_Delay_0
//  161     asm("nop");
??MMA7660_Delay_1:
        nop
//  162   }
        ADDS     R0,R0,#+1
??MMA7660_Delay_0:
        CMP      R0,#+200
        BLT.N    ??MMA7660_Delay_1
//  163 }
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
// 316 bytes in section .text
// 
// 316 bytes of CODE memory
//
//Errors: none
//Warnings: none
