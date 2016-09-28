///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:16 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\ADNS3080.c                                          /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\ADNS3080.c -D LPLD_K60 -lCN                         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\FLASH_ /
//                    MINE\List\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V3\iar\FLASH_MINE\List\ -o                            /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\FLASH_ /
//                    MINE\Obj\ --no_cse --no_unroll --no_inline              /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\app\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V /
//                    3\iar\..\source\app\Control\ -I                         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\app\Others\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V3\iar\..\source\app\Communicate\ -I              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\app\Algorithm\ -I E:\ShawnDocuments\IAR_WorkSpace\L /
//                    PLD_Quad_V3\iar\..\source\app\SignalProcess\ -I         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\module\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V3\iar\..\source\module\anbt_dmp\ -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\module\eMPL\ -I E:\ShawnDocuments\IAR_WorkSpace\LPL /
//                    D_Quad_V3\iar\..\source\lib\CPU\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\common\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V3\iar\..\source\lib\LPLD\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\LPLD\HW\ -I E:\ShawnDocuments\IAR_WorkSpace\LPL /
//                    D_Quad_V3\iar\..\source\lib\LPLD\DEV\ -I                /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\uCOS-II\Ports\ -I E:\ShawnDocuments\IAR_WorkSpa /
//                    ce\LPLD_Quad_V3\iar\..\source\lib\uCOS-II\Source\ -I    /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_ /
//                    Quad_V3\iar\..\source\lib\FatFs\option\ -I              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\ /
//                    LPLD_Quad_V3\iar\..\source\lib\USB\driver\ -I           /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\USB\descriptor\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\USB\class\ -I E:\ShawnDocuments\IAR_WorkSpace\L /
//                    PLD_Quad_V3\iar\..\source\lib\MyLib\ -On -I             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\FLASH_ /
//                    MINE\List\ADNS3080.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME ADNS3080

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_SPI_Init
        EXTERN LPLD_SPI_Master_WriteRead
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN delayms
        EXTERN delayus

        PUBLIC ADNS3080_MotionBurst
        PUBLIC ADNS3080_PixelBurst
        PUBLIC ADNS3080_ReadOneReg
        PUBLIC ADNS3080_SPI_WriteRead
        PUBLIC ADNS3080_WriteOneReg
        PUBLIC InitADNS3080_SPI

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\ADNS3080.c
//    1 /****************************************************************************** 
//    2  *       ADNS3080.c ----- The Optic Flow Sensor Driving Module          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  ADNS3080.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/7/10 14:08:12                                                       *
//   10  ******************************************************************************/
//   11 #include "ADNS3080.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void InitADNS3080_SPI(void)
//   14 {
InitADNS3080_SPI:
        PUSH     {LR}
        SUB      SP,SP,#+92
//   15     SPI_InitTypeDef ADNS3080_spi_init_struct = {0};
        ADD      R0,SP,#+36
        MOVS     R1,#+52
        BL       __aeabi_memclr4
//   16     ADNS3080_spi_init_struct.SPI_SPIx = ADNS3080_SPIX;
        LDR.N    R0,??DataTable1  ;; 0x400ac000
        STR      R0,[SP, #+36]
//   17     ADNS3080_spi_init_struct.SPI_SckDivider = SPI_SCK_DIV_32;
        MOVS     R0,#+5
        STRB     R0,[SP, #+41]
//   18     ADNS3080_spi_init_struct.SPI_Pcs0Pin = ADNS3080_NCS;
        MOVS     R0,#+103
        STRB     R0,[SP, #+52]
//   19     ADNS3080_spi_init_struct.SPI_SckPin = ADNS3080_SCLK;
        MOVS     R0,#+104
        STRB     R0,[SP, #+58]
//   20     ADNS3080_spi_init_struct.SPI_MosiPin = ADNS3080_MOSI;
        MOVS     R0,#+105
        STRB     R0,[SP, #+59]
//   21     ADNS3080_spi_init_struct.SPI_MisoPin = ADNS3080_MISO;
        MOVS     R0,#+106
        STRB     R0,[SP, #+60]
//   22 
//   23     ADNS3080_spi_init_struct.SPI_TxCompleteIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+64]
//   24     ADNS3080_spi_init_struct.SPI_QueueEndIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+68]
//   25     ADNS3080_spi_init_struct.SPI_TxFIFO_FillIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+80]
//   26     ADNS3080_spi_init_struct.SPI_TxFIFO_UnderflowIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+72]
//   27     ADNS3080_spi_init_struct.SPI_RxFIFO_DrainIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+84]
//   28     ADNS3080_spi_init_struct.SPI_RxFIFO_OverflowIntIsr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+76]
//   29 
//   30     LPLD_SPI_Init(ADNS3080_spi_init_struct);
        ADD      R1,SP,#+36
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+52
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_SPI_Init
//   31 }
        ADD      SP,SP,#+92
        POP      {PC}             ;; return
//   32 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 uint8 ADNS3080_SPI_WriteRead(uint8 data, uint8 pcs_state)
//   34 {
ADNS3080_SPI_WriteRead:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   35     uint8 ret = 0;
        MOVS     R6,#+0
//   36     if(pcs_state == 1)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??ADNS3080_SPI_WriteRead_0
//   37     {
//   38         ret = LPLD_SPI_Master_WriteRead(ADNS3080_SPIX, data, SPI_PCS0, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable1  ;; 0x400ac000
        BL       LPLD_SPI_Master_WriteRead
        MOVS     R6,R0
        B.N      ??ADNS3080_SPI_WriteRead_1
//   39     }
//   40     else if(pcs_state == 0)
??ADNS3080_SPI_WriteRead_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??ADNS3080_SPI_WriteRead_2
//   41     {
//   42         ret = LPLD_SPI_Master_WriteRead(ADNS3080_SPIX, data, SPI_PCS0, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable1  ;; 0x400ac000
        BL       LPLD_SPI_Master_WriteRead
        MOVS     R6,R0
        B.N      ??ADNS3080_SPI_WriteRead_1
//   43     }
//   44     else
//   45     {
//   46         ret = 0;
??ADNS3080_SPI_WriteRead_2:
        MOVS     R0,#+0
        MOVS     R6,R0
//   47     }
//   48     return ret;
??ADNS3080_SPI_WriteRead_1:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//   49 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ac000
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void ADNS3080_WriteOneReg(uint8 address, uint8 data)
//   52 {
ADNS3080_WriteOneReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   53     ADNS3080_SPI_WriteRead(address|0x80, 1);
        MOVS     R1,#+1
        ORRS     R0,R4,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ADNS3080_SPI_WriteRead
//   54     ADNS3080_SPI_WriteRead(data, 0);
        MOVS     R1,#+0
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ADNS3080_SPI_WriteRead
//   55     delayus(50);
        MOVS     R0,#+50
        BL       delayus
//   56 }
        POP      {R0,R4,R5,PC}    ;; return
//   57 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 uint8 ADNS3080_ReadOneReg(uint8 address)
//   59 {
ADNS3080_ReadOneReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   60     uint8 ret = 0;
        MOVS     R5,#+0
//   61     ADNS3080_SPI_WriteRead(address, 1);
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ADNS3080_SPI_WriteRead
//   62     delayus(50);
        MOVS     R0,#+50
        BL       delayus
//   63     ret = ADNS3080_SPI_WriteRead(0x00, 0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       ADNS3080_SPI_WriteRead
        MOVS     R5,R0
//   64     delayus(1);
        MOVS     R0,#+1
        BL       delayus
//   65     return ret;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//   66 }
//   67 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 void ADNS3080_MotionBurst(uint8 data[7])
//   69 {
ADNS3080_MotionBurst:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   70     int i = 0;
        MOVS     R5,#+0
//   71     ADNS3080_SPI_WriteRead(0x50, 1);
        MOVS     R1,#+1
        MOVS     R0,#+80
        BL       ADNS3080_SPI_WriteRead
//   72     delayus(80);
        MOVS     R0,#+80
        BL       delayus
//   73     for(i = 0; i < 6; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??ADNS3080_MotionBurst_0:
        CMP      R5,#+6
        BGE.N    ??ADNS3080_MotionBurst_1
//   74     {
//   75         data[i] = ADNS3080_SPI_WriteRead(0x00, 1);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       ADNS3080_SPI_WriteRead
        STRB     R0,[R5, R4]
//   76     }
        ADDS     R5,R5,#+1
        B.N      ??ADNS3080_MotionBurst_0
//   77     data[6] = ADNS3080_SPI_WriteRead(0x00, 0);
??ADNS3080_MotionBurst_1:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       ADNS3080_SPI_WriteRead
        STRB     R0,[R4, #+6]
//   78     delayus(1);
        MOVS     R0,#+1
        BL       delayus
//   79 }
        POP      {R0,R4,R5,PC}    ;; return
//   80 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void ADNS3080_PixelBurst(uint8 data[900])
//   82 {
ADNS3080_PixelBurst:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   83     int frame_count = 0;
        MOVS     R5,#+0
//   84 
//   85     ADNS3080_WriteOneReg(0x13, 0x83);
        MOVS     R1,#+131
        MOVS     R0,#+19
        BL       ADNS3080_WriteOneReg
//   86     delayms(3);
        MOVS     R0,#+3
        BL       delayms
//   87     ADNS3080_SPI_WriteRead(0x40, 1);
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       ADNS3080_SPI_WriteRead
//   88     delayus(50);
        MOVS     R0,#+50
        BL       delayus
//   89 
//   90     for(frame_count = 0; frame_count < 899; frame_count ++)
        MOVS     R0,#+0
        MOVS     R5,R0
??ADNS3080_PixelBurst_0:
        MOVW     R0,#+899
        CMP      R5,R0
        BGE.N    ??ADNS3080_PixelBurst_1
//   91     {
//   92         data[frame_count] = ADNS3080_SPI_WriteRead(0x00, 1);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       ADNS3080_SPI_WriteRead
        STRB     R0,[R5, R4]
//   93         delayus(10);
        MOVS     R0,#+10
        BL       delayus
//   94     }
        ADDS     R5,R5,#+1
        B.N      ??ADNS3080_PixelBurst_0
//   95 
//   96     data[frame_count] = ADNS3080_SPI_WriteRead(0x00, 0);
??ADNS3080_PixelBurst_1:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       ADNS3080_SPI_WriteRead
        STRB     R0,[R5, R4]
//   97     delayus(20);
        MOVS     R0,#+20
        BL       delayus
//   98 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 
//  52 bytes in section .rodata
// 386 bytes in section .text
// 
// 386 bytes of CODE  memory
//  52 bytes of CONST memory
//
//Errors: none
//Warnings: none
