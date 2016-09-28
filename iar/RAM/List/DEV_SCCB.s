///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    20/Mar/2014  08:44:52 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_SCCB.c                                           /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_SCCB.c -D LPLD_K60 -lCN                          /
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
//                    st\DEV_SCCB.s                                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME DEV_SCCB

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4

        PUBLIC LPLD_SCCB_Init
        PUBLIC LPLD_SCCB_ReadReg
        PUBLIC LPLD_SCCB_WriteReg

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\DEV\DEV_SCCB.c
//    1 /**
//    2 * @file DEV_SCCB.c
//    3 * @version 0.1[By LPLD]
//    4 * @date 2013-09-24
//    5 * @brief SCCB�豸��������
//    6 *
//    7 * ���Ľ���:�ɸ���ʵ��Ӳ���޸�
//    8 *
//    9 * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10 * http://www.lpld.cn
//   11 * mail:support@lpld.cn
//   12 *
//   13 * @par
//   14 * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15 * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16 * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17 * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18 * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19 * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20 * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21 */
//   22 #include "DEV_SCCB.h"
//   23 
//   24 static uint8 LPLD_SCCB_Start(void);
//   25 static void LPLD_SCCB_Stop(void);
//   26 static void LPLD_SCCB_Ack(void);
//   27 static void LPLD_SCCB_NoAck(void);
//   28 static uint8 LPLD_SCCB_WaitAck(void);
//   29 static void LPLD_SCCB_SendByte(uint8);
//   30 static uint8 LPLD_SCCB_ReceiveByte(void);
//   31 static void LPLD_SCCB_Delay(uint16);
//   32 
//   33 /*
//   34  * LPLD_SCCB_Init
//   35  * ��ʼ��SCCB��������
//   36  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 void LPLD_SCCB_Init(void)
//   38 {
LPLD_SCCB_Init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   39   GPIO_InitTypeDef ptb;
//   40   /********�û����޸�ֵ ��ʼ***********/
//   41   ptb.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable7  ;; 0x400ff040
        STR      R0,[SP, #+4]
//   42   ptb.GPIO_Pins = GPIO_Pin0 | GPIO_Pin1;
        MOVS     R0,#+3
        STR      R0,[SP, #+8]
//   43   /********�û����޸�ֵ ����***********/
//   44   ptb.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   45   ptb.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   46   ptb.GPIO_PinControl = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   47   LPLD_GPIO_Init(ptb);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   48 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   49 
//   50 /*
//   51  * LPLD_SCCB_WriteReg
//   52  * дSCCB�豸�Ĵ���
//   53  * 
//   54  * ����:
//   55  *    reg_addr--�Ĵ�����ַ
//   56  *    data--��д���� 
//   57  *
//   58  * ���:
//   59  *    1-�ɹ�
//   60  *    0-ʧ��
//   61  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 uint8 LPLD_SCCB_WriteReg(uint16 reg_addr , uint8 data)
//   63 {		
LPLD_SCCB_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   64   if(!LPLD_SCCB_Start())
        BL       LPLD_SCCB_Start
        CMP      R0,#+0
        BNE.N    ??LPLD_SCCB_WriteReg_0
//   65   {
//   66     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_SCCB_WriteReg_1
//   67   }
//   68   LPLD_SCCB_SendByte( SCCB_DEV_ADR );         
??LPLD_SCCB_WriteReg_0:
        MOVS     R0,#+66
        BL       LPLD_SCCB_SendByte
//   69   if( !LPLD_SCCB_WaitAck() )
        BL       LPLD_SCCB_WaitAck
        CMP      R0,#+0
        BNE.N    ??LPLD_SCCB_WriteReg_2
//   70   {
//   71     LPLD_SCCB_Stop(); 
        BL       LPLD_SCCB_Stop
//   72     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_SCCB_WriteReg_1
//   73   }
//   74   LPLD_SCCB_SendByte((uint8)(reg_addr & 0x00FF));   
??LPLD_SCCB_WriteReg_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_SCCB_SendByte
//   75   LPLD_SCCB_WaitAck();	
        BL       LPLD_SCCB_WaitAck
//   76   LPLD_SCCB_SendByte(data);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_SCCB_SendByte
//   77   LPLD_SCCB_WaitAck();   
        BL       LPLD_SCCB_WaitAck
//   78   LPLD_SCCB_Stop(); 
        BL       LPLD_SCCB_Stop
//   79   return 1;
        MOVS     R0,#+1
??LPLD_SCCB_WriteReg_1:
        POP      {R1,R4,R5,PC}    ;; return
//   80 }									 
//   81 
//   82 
//   83 
//   84 
//   85 /******************************************************************************************************************
//   86 * ��������SCCB_ReadByte
//   87 * ����  ����ȡһ������
//   88 * ����  ��- data: ��Ŷ������� 	- length: ����������	- reg_addr: ��������ַ		 - DeviceAddress: ��������
//   89 * ���  ������Ϊ:=1�ɹ�����,=0ʧ��
//   90 * ע��  ����        
//   91 **********************************************************************************************************************/ 
//   92 /*
//   93  * LPLD_SCCB_ReadReg
//   94  * ��SCCB�豸�Ĵ���
//   95  * 
//   96  * ����:
//   97  *    reg_addr--�Ĵ�����ַ
//   98  *    *data--����������ݵ�ַ
//   99  *    length--��ȡ����
//  100  *
//  101  * ���:
//  102  *    1-�ɹ�
//  103  *    0-ʧ��
//  104  */          

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 uint8 LPLD_SCCB_ReadReg(uint8 reg_addr, uint8* data, uint16 length)
//  106 {	
LPLD_SCCB_ReadReg:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  107   if(!LPLD_SCCB_Start())
        BL       LPLD_SCCB_Start
        CMP      R0,#+0
        BNE.N    ??LPLD_SCCB_ReadReg_0
//  108   {
//  109     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_SCCB_ReadReg_1
//  110   }
//  111   LPLD_SCCB_SendByte( SCCB_DEV_ADR ); 
??LPLD_SCCB_ReadReg_0:
        MOVS     R0,#+66
        BL       LPLD_SCCB_SendByte
//  112   if( !LPLD_SCCB_WaitAck() )
        BL       LPLD_SCCB_WaitAck
        CMP      R0,#+0
        BNE.N    ??LPLD_SCCB_ReadReg_2
//  113   {
//  114     LPLD_SCCB_Stop(); 
        BL       LPLD_SCCB_Stop
//  115     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_SCCB_ReadReg_1
//  116   }
//  117   LPLD_SCCB_SendByte( reg_addr ); 
??LPLD_SCCB_ReadReg_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_SCCB_SendByte
//  118   LPLD_SCCB_WaitAck();	
        BL       LPLD_SCCB_WaitAck
//  119   LPLD_SCCB_Stop(); 
        BL       LPLD_SCCB_Stop
//  120   
//  121   if(!LPLD_SCCB_Start())
        BL       LPLD_SCCB_Start
        CMP      R0,#+0
        BNE.N    ??LPLD_SCCB_ReadReg_3
//  122   {
//  123     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_SCCB_ReadReg_1
//  124   }
//  125   LPLD_SCCB_SendByte( SCCB_DEV_ADR + 1 ); 
??LPLD_SCCB_ReadReg_3:
        MOVS     R0,#+67
        BL       LPLD_SCCB_SendByte
//  126   if(!LPLD_SCCB_WaitAck())
        BL       LPLD_SCCB_WaitAck
        CMP      R0,#+0
        BNE.N    ??LPLD_SCCB_ReadReg_4
//  127   {
//  128     LPLD_SCCB_Stop(); 
        BL       LPLD_SCCB_Stop
//  129     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_SCCB_ReadReg_1
//  130   }
//  131   while(length)
//  132   {
//  133     *data = LPLD_SCCB_ReceiveByte();
//  134     if(length == 1)
//  135     {
//  136       LPLD_SCCB_NoAck();
//  137     }
//  138     else
//  139     {
//  140       LPLD_SCCB_Ack(); 
??LPLD_SCCB_ReadReg_5:
        BL       LPLD_SCCB_Ack
//  141     }
//  142     data++;
??LPLD_SCCB_ReadReg_6:
        ADDS     R5,R5,#+1
//  143     length--;
        SUBS     R6,R6,#+1
??LPLD_SCCB_ReadReg_4:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??LPLD_SCCB_ReadReg_7
        BL       LPLD_SCCB_ReceiveByte
        STRB     R0,[R5, #+0]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1
        BNE.N    ??LPLD_SCCB_ReadReg_5
        BL       LPLD_SCCB_NoAck
        B.N      ??LPLD_SCCB_ReadReg_6
//  144   }
//  145   LPLD_SCCB_Stop();
??LPLD_SCCB_ReadReg_7:
        BL       LPLD_SCCB_Stop
//  146   return 1;
        MOVS     R0,#+1
??LPLD_SCCB_ReadReg_1:
        POP      {R4-R6,PC}       ;; return
//  147 }
//  148 
//  149 /*
//  150  * LPLD_SCCB_Start
//  151  * SCCB��ʼ�źţ��ڲ�����
//  152  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 static uint8 LPLD_SCCB_Start(void)
//  154 {
LPLD_SCCB_Start:
        PUSH     {R7,LR}
//  155   SCCB_SDA_O=1;
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  156   SCCB_SCL=1;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  157   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  158   
//  159   SCCB_SDA_IN();
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  160   if(!SCCB_SDA_I)
        LDR.N    R0,??DataTable7_4  ;; 0x43fe0a04
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??LPLD_SCCB_Start_0
//  161   {
//  162     SCCB_SDA_OUT();	
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  163     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_SCCB_Start_1
//  164   }
//  165   SCCB_SDA_OUT();	
??LPLD_SCCB_Start_0:
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  166   SCCB_SDA_O=0;
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  167   
//  168   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  169   
//  170   SCCB_SDA_IN();
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  171   if(SCCB_SDA_I) 
        LDR.N    R0,??DataTable7_4  ;; 0x43fe0a04
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SCCB_Start_2
//  172   {
//  173     SCCB_SDA_OUT();
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  174     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_SCCB_Start_1
//  175   }
//  176   SCCB_SDA_OUT();
??LPLD_SCCB_Start_2:
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  177   SCCB_SDA_O=0;
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  178 
//  179   return 1;
        MOVS     R0,#+1
??LPLD_SCCB_Start_1:
        POP      {R1,PC}          ;; return
//  180 }
//  181 
//  182 /*
//  183  * LPLD_SCCB_Stop
//  184  * SCCBֹͣ�źţ��ڲ�����
//  185  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 static void LPLD_SCCB_Stop(void)
//  187 {
LPLD_SCCB_Stop:
        PUSH     {R7,LR}
//  188   SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  189   SCCB_SDA_O=0;
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  190   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  191   
//  192   SCCB_SCL=1;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  193   SCCB_SDA_O=1;
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  194   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  195 }
        POP      {R0,PC}          ;; return
//  196 
//  197 /*
//  198  * LPLD_SCCB_Stop
//  199  * SCCBӦ���źţ��ڲ�����
//  200  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 static void LPLD_SCCB_Ack(void)
//  202 {	
LPLD_SCCB_Ack:
        PUSH     {R7,LR}
//  203   SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  204   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  205   
//  206   SCCB_SDA_O=0;
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  207   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  208   
//  209   SCCB_SCL=1;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  210   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  211   
//  212   SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  213   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  214 }
        POP      {R0,PC}          ;; return
//  215 
//  216 /*
//  217  * LPLD_SCCB_NoAck
//  218  * SCCB��Ӧ���źţ��ڲ�����
//  219  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  220 static void LPLD_SCCB_NoAck(void)
//  221 {	
LPLD_SCCB_NoAck:
        PUSH     {R7,LR}
//  222   SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  223   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  224   SCCB_SDA_O=1;
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  225   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  226   SCCB_SCL=1;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  227   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  228   SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  229   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  230 }
        POP      {R0,PC}          ;; return
//  231 
//  232 /*
//  233  * LPLD_SCCB_WaitAck
//  234  * SCCB�ȴ�Ӧ���źţ��ڲ�����
//  235  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  236 static uint8 LPLD_SCCB_WaitAck(void) 	
//  237 {
LPLD_SCCB_WaitAck:
        PUSH     {R7,LR}
//  238   SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  239   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  240   SCCB_SDA_O=1;	
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  241   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  242   
//  243   SCCB_SCL=1;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  244   
//  245   SCCB_SDA_IN();
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  246   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  247   
//  248   if(SCCB_SDA_I)
        LDR.N    R0,??DataTable7_4  ;; 0x43fe0a04
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SCCB_WaitAck_0
//  249   {
//  250     SCCB_SDA_OUT();
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  251     SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  252     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_SCCB_WaitAck_1
//  253   }
//  254   SCCB_SDA_OUT();
??LPLD_SCCB_WaitAck_0:
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  255   SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  256   return 1;
        MOVS     R0,#+1
??LPLD_SCCB_WaitAck_1:
        POP      {R1,PC}          ;; return
//  257 }
//  258 
//  259 /*
//  260  * LPLD_SCCB_SendByte
//  261  * SCCB�������ݣ��ڲ�����
//  262  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  263 static void LPLD_SCCB_SendByte(uint8 data) 
//  264 {
LPLD_SCCB_SendByte:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  265   uint8 i=8;
        MOVS     R5,#+8
        B.N      ??LPLD_SCCB_SendByte_0
//  266   while(i--)
//  267   {
//  268     SCCB_SCL=0;
//  269     SCCB_DELAY();
//  270     if(data&0x80)
//  271     {
//  272       SCCB_SDA_O=1; 
//  273     }
//  274     else 
//  275     {
//  276       SCCB_SDA_O=0;   
??LPLD_SCCB_SendByte_1:
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  277     }
//  278     data<<=1;
??LPLD_SCCB_SendByte_2:
        LSLS     R4,R4,#+1
//  279     SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  280     SCCB_SCL=1;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  281     SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
??LPLD_SCCB_SendByte_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LPLD_SCCB_SendByte_3
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
        LSLS     R0,R4,#+24
        BPL.N    ??LPLD_SCCB_SendByte_1
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??LPLD_SCCB_SendByte_2
//  282   }
//  283   SCCB_SCL=0;
??LPLD_SCCB_SendByte_3:
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  284 }
        POP      {R0,R4,R5,PC}    ;; return
//  285 
//  286 /*
//  287  * LPLD_SCCB_SendByte
//  288  * SCCB�������ݣ��ڲ�����
//  289  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  290 static uint8 LPLD_SCCB_ReceiveByte(void)  
//  291 { 
LPLD_SCCB_ReceiveByte:
        PUSH     {R3-R5,LR}
//  292   uint8 i=8;
        MOVS     R4,#+8
//  293   uint8 ReceiveByte=0;
        MOVS     R5,#+0
//  294   
//  295   SCCB_SDA_O=1;	
        LDR.N    R0,??DataTable7_1  ;; 0x43fe0804
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  296   SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  297   
//  298   SCCB_SDA_IN();	
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        B.N      ??LPLD_SCCB_ReceiveByte_0
//  299   
//  300   while(i--)
//  301   {
//  302     ReceiveByte<<=1;      
??LPLD_SCCB_ReceiveByte_1:
        LSLS     R5,R5,#+1
//  303     SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  304     SCCB_DELAY();
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  305     
//  306     SCCB_SCL=1;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  307     SCCB_DELAY();	
        MOVW     R0,#+5000
        BL       LPLD_SCCB_Delay
//  308     
//  309     if(SCCB_SDA_I)
        LDR.N    R0,??DataTable7_4  ;; 0x43fe0a04
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SCCB_ReceiveByte_0
//  310     {
//  311       ReceiveByte|=0x01;
        ORRS     R5,R5,#0x1
//  312     }
//  313     
//  314   }
??LPLD_SCCB_ReceiveByte_0:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_SCCB_ReceiveByte_1
//  315   SCCB_SDA_OUT();
        LDR.N    R0,??DataTable7_3  ;; 0x43fe0a84
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  316   SCCB_SCL=0;
        LDR.N    R0,??DataTable7_2  ;; 0x43fe0800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  317   
//  318   return ReceiveByte;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  319 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x43fe0804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x43fe0800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x43fe0a84

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x43fe0a04
//  320 
//  321 /*
//  322  * LPLD_SCCB_SendByte
//  323  * SCCB��ʱ�������ڲ�����
//  324  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  325 static void LPLD_SCCB_Delay(uint16 i)
//  326 {	
LPLD_SCCB_Delay:
        B.N      ??LPLD_SCCB_Delay_0
//  327   while(i) 
//  328     i--; 
??LPLD_SCCB_Delay_1:
        SUBS     R0,R0,#+1
??LPLD_SCCB_Delay_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??LPLD_SCCB_Delay_1
//  329 }
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
//  330 
//  331 
// 
// 826 bytes in section .text
// 
// 826 bytes of CODE memory
//
//Errors: none
//Warnings: none
