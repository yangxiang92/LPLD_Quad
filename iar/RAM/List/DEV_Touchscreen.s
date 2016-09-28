///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    20/Mar/2014  08:44:53 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_Touchscreen.c                                    /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_Touchscreen.c -D LPLD_K60 -lCN                   /
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
//                    st\DEV_Touchscreen.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME DEV_Touchscreen

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_SPI_Init
        EXTERN LPLD_SPI_Master_WriteRead
        EXTERN __aeabi_memcpy4

        PUBLIC LPLD_Touchscreen_GetCovValue
        PUBLIC LPLD_Touchscreen_GetResult
        PUBLIC LPLD_Touchscreen_Init
        PUBLIC LPLD_Touchscreen_SendCmd

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\DEV\DEV_Touchscreen.c
//    1 /**
//    2  * @file DEV_Touchscreen.c
//    3  * @version 1.0[By LPLD]
//    4  * @date 2013-09-24
//    5  * @brief Touchscreen�豸��������
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
//   22 #include "DEV_Touchscreen.h"
//   23 
//   24 static void LPLD_Touchscreen_Delay(int i);
//   25 
//   26 /*
//   27  * LPLD_Touchscreen_Init
//   28  * ������ADS7843оƬ���ӵ�SPIģ��
//   29  * 
//   30  * ����:
//   31  *    ��
//   32  * �����
//   33  *    ��
//   34  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void LPLD_Touchscreen_Init (void)
//   36 {
LPLD_Touchscreen_Init:
        PUSH     {LR}
        SUB      SP,SP,#+92
//   37   SPI_InitTypeDef touch_spi_param;
//   38  
//   39   touch_spi_param.SPI_SPIx = TOUCHSCREEN_SPIX;
        LDR.N    R0,??DataTable2  ;; 0x400ac000
        STR      R0,[SP, #+36]
//   40   touch_spi_param.SPI_SckDivider = SPI_SCK_DIV_32;//1.56Mhz
        MOVS     R0,#+5
        STRB     R0,[SP, #+41]
//   41   touch_spi_param.SPI_Pcs0Pin = TOUCHSCREEN_PCS0;
        MOVS     R0,#+103
        STRB     R0,[SP, #+52]
//   42   touch_spi_param.SPI_SckPin  = TOUCHSCREEN_SCK;
        MOVS     R0,#+104
        STRB     R0,[SP, #+58]
//   43   touch_spi_param.SPI_MosiPin = TOUCHSCREEN_MOSI;
        MOVS     R0,#+105
        STRB     R0,[SP, #+59]
//   44   touch_spi_param.SPI_MisoPin = TOUCHSCREEN_MISO;
        MOVS     R0,#+106
        STRB     R0,[SP, #+60]
//   45   
//   46   touch_spi_param.SPI_TxCompleteIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+64]
//   47   touch_spi_param.SPI_QueueEndIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+68]
//   48   touch_spi_param.SPI_TxFIFO_FillIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+80]
//   49   touch_spi_param.SPI_TxFIFO_UnderflowIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+72]
//   50   touch_spi_param.SPI_RxFIFO_DrainIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+84]
//   51   touch_spi_param.SPI_RxFIFO_OverflowIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+76]
//   52   
//   53   LPLD_SPI_Init(touch_spi_param);
        ADD      R1,SP,#+36
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+52
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_SPI_Init
//   54 
//   55 }
        ADD      SP,SP,#+92
        POP      {PC}             ;; return
//   56 
//   57 /*
//   58  * LPLD_Touch_SendCmd
//   59  * ��ADS7843оƬ���Ϳ���ָ��
//   60  * 
//   61  * ����:
//   62  *    CMD--���������DEV_Touchscreen.h���ж���
//   63  *
//   64  *    pcs_state--ƬѡPCSx������һ֡����֮���״̬
//   65  *      |__0  ���ֵ͵�ƽ
//   66  *      |__1  �ɵ͵�ƽ���ߵ��ߵ�ƽ     
//   67  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 void LPLD_Touchscreen_SendCmd(uint8_t CMD,uint8_t pcs_state)
//   69 {
LPLD_Touchscreen_SendCmd:
        PUSH     {R7,LR}
//   70   LPLD_SPI_Master_WriteRead(TOUCHSCREEN_SPIX,CMD,SPI_PCS0,pcs_state);
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x400ac000
        BL       LPLD_SPI_Master_WriteRead
//   71 }
        POP      {R0,PC}          ;; return
//   72 
//   73 /*
//   74  * LPLD_Touchscreen_GetCovValue
//   75  * ��ADS7843оƬ�������
//   76  * 
//   77  * ����:
//   78  *    CMD--���������Touch.h���ж���
//   79  *
//   80  *    pcs_state--ƬѡPCSx������һ֡����֮���״̬
//   81  *      |__0  ���ֵ͵�ƽ
//   82  *      |__1  �ɵ͵�ƽ���ߵ��ߵ�ƽ     
//   83  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   84 uint8_t LPLD_Touchscreen_GetCovValue(uint8_t CMD,uint8_t pcs_state)
//   85 {
LPLD_Touchscreen_GetCovValue:
        PUSH     {R7,LR}
//   86   return LPLD_SPI_Master_WriteRead(TOUCHSCREEN_SPIX,CMD,SPI_PCS0,pcs_state);
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x400ac000
        BL       LPLD_SPI_Master_WriteRead
        POP      {R1,PC}          ;; return
//   87 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400ac000
//   88 
//   89 /*
//   90  * LPLD_Touchscreen_GetResult
//   91  * ��ô�����λ�õ�12λADת�����
//   92  * 
//   93  * ����:
//   94  *    CMD--���������Touch.h���ж���
//   95  *
//   96  *    pcs_state--ƬѡPCSx������һ֡����֮���״̬
//   97  *      |__0  ���ֵ͵�ƽ
//   98  *      |__1  �ɵ͵�ƽ���ߵ��ߵ�ƽ     
//   99  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  100 uint16_t LPLD_Touchscreen_GetResult(uint8_t Cmd)
//  101 {
LPLD_Touchscreen_GetResult:
        PUSH     {R4,LR}
//  102   uint16_t HI,LO,Data;
//  103   //�������CMD��CS�����ڵ͵�ƽ״̬
//  104   LPLD_Touchscreen_SendCmd(Cmd,SPI_PCS_ASSERTED);
        MOVS     R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_Touchscreen_SendCmd
//  105   //���б�Ҫ�ж�æ
//  106   //�ڴ�����ж�æ����������ʱ��������ʱ����125khz����
//  107   LPLD_Touchscreen_Delay(500);
        MOV      R0,#+500
        BL       LPLD_Touchscreen_Delay
//  108   //���12λ���ȵĸ�8λ
//  109   HI=LPLD_Touchscreen_GetCovValue(LPLD_CMD_DUMMY,SPI_PCS_ASSERTED);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LPLD_Touchscreen_GetCovValue
        MOVS     R4,R0
//  110   //���12λ���ȵĵ�4λ������CS����
//  111   LO=LPLD_Touchscreen_GetCovValue(LPLD_CMD_DUMMY,SPI_PCS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LPLD_Touchscreen_GetCovValue
//  112   //�ϳ�12λ��ת�����
//  113   //�ο�ADS7843�����ĵ�
//  114   Data = ((HI<<8)&0xFF00)|LO;
        ORRS     R0,R0,R4, LSL #+8
//  115   Data = Data>>4; 
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+4
//  116   return Data;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  117 }
//  118 
//  119 /*
//  120  * LPLD_Touchscreen_Delay
//  121  * Touchscreen��ʱ����
//  122  * 
//  123  * ����:
//  124  *    i--��ʱ
//  125  *    
//  126  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  127 static void LPLD_Touchscreen_Delay(int i)
//  128 {
//  129   int k;
//  130   for(k=0;k<i;k++)
LPLD_Touchscreen_Delay:
        MOVS     R1,#+0
        B.N      ??LPLD_Touchscreen_Delay_0
//  131     asm("nop");
??LPLD_Touchscreen_Delay_1:
        nop
        ADDS     R1,R1,#+1
??LPLD_Touchscreen_Delay_0:
        CMP      R1,R0
        BLT.N    ??LPLD_Touchscreen_Delay_1
//  132 }
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
//  133 /********************************************************************/
// 
// 190 bytes in section .text
// 
// 190 bytes of CODE memory
//
//Errors: none
//Warnings: none
