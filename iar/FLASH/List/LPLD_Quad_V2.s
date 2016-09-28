///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    21/Mar/2014  17:07:37 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\app /
//                    \LPLD_Quad_V2.c                                         /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\app /
//                    \LPLD_Quad_V2.c -D LPLD_K60 -lCN                        /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH\ /
//                    List\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\ /
//                    iar\FLASH\List\ -o E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V2\iar\FLASH\Obj\ --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\app\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V /
//                    2\iar\..\source\module\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\CPU\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qu /
//                    ad_V2\iar\..\source\lib\common\ -I                      /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\LPLD\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Q /
//                    uad_V2\iar\..\source\lib\LPLD\HW\ -I                    /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\LPLD\DEV\ -I E:\ShawnDocuments\IAR_WorkSpace\LP /
//                    LD_Quad_V2\iar\..\source\lib\uCOS-II\Ports\ -I          /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\uCOS-II\Source\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_ /
//                    Quad_V2\iar\..\source\lib\FatFs\option\ -I              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\ /
//                    LPLD_Quad_V2\iar\..\source\lib\USB\driver\ -I           /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\descriptor\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\class\ -Ol -I "D:\Program Files\IAR         /
//                    Systems\Embedded Workbench 6.4\arm\CMSIS\Include\" -D   /
//                    ARM_MATH_CM4                                            /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH\ /
//                    List\LPLD_Quad_V2.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME LPLD_Quad_V2

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutCharArr
        EXTERN __aeabi_memcpy4
        EXTERN light_init
        EXTERN toggle_lights

        PUBLIC main
        PUBLIC uart_init

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\app\LPLD_Quad_V2.c
//    1 /**
//    2  * --------------基于"拉普兰德K60底层库V3"的工程（LPLD_Quad_V2）-----------------
//    3  * @file LPLD_Quad_V2.c
//    4  * @version 0.0
//    5  * @date 2013-9-29
//    6  * @brief 关于该工程的描述
//    7  *
//    8  * 版权所有:北京拉普兰德电子技术有限公司
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * 本工程基于"拉普兰德K60底层库V3"开发，
//   14  * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
//   15  * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
//   16  * 底层库使用方法见相关文档。 
//   17  *
//   18  */
//   19 #include "includes.h"
//   20 
//   21 void uart_init(void);
//   22 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void main (void)
//   24 {
//   25     //int8 recv;
//   26     uint32 counts = 0;
main:
        MOVS     R4,#+0
//   27 
//   28     DisableInterrupts;
        CPSID    I
//   29     uart_init();
        BL       uart_init
//   30     EnableInterrupts;
        CPSIE    I
//   31     DisableInterrupts;
        CPSID    I
//   32     light_init();
        BL       light_init
//   33     EnableInterrupts;
        CPSIE    I
//   34 
//   35     //turn_lights_on(0xff);
//   36    
//   37     //LPLD_UART_PutCharArr(UART4, "Input something:\r\n", 18);
//   38 
//   39     while(1)
//   40     {
//   41         if(counts > 500000)
??main_0:
        LDR.N    R0,??DataTable1  ;; 0x7a121
        CMP      R4,R0
        BCC.N    ??main_1
//   42         {
//   43             toggle_lights(0xff);
        MOVS     R0,#+255
        BL       toggle_lights
//   44             LPLD_UART_PutCharArr(UART4, "请输入:\r\n", 18);
        MOVS     R2,#+18
        LDR.N    R1,??DataTable1_1
        LDR.N    R0,??DataTable1_2  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
//   45             counts = 0;
        MOVS     R4,#+0
//   46         }
//   47         //recv = LPLD_UART_GetChar(UART4);
//   48         //LPLD_UART_PutChar(UART4, recv);
//   49         counts ++;
??main_1:
        ADDS     R4,R4,#+1
        B.N      ??main_0
//   50     } 
//   51 }
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void uart_init(void)
//   54 {
uart_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   55     UART_InitTypeDef uart4_init_struct;
//   56     uart4_init_struct.UART_Uartx = UART4;
        LDR.N    R0,??DataTable1_2  ;; 0x400ea000
        STR      R0,[SP, #+4]
//   57     uart4_init_struct.UART_BaudRate = 9600;
        MOV      R0,#+9600
        STR      R0,[SP, #+8]
//   58     uart4_init_struct.UART_RxPin = PTE25;
        MOVS     R0,#+149
        STRB     R0,[SP, #+13]
//   59     uart4_init_struct.UART_TxPin = PTE24;
        MOVS     R0,#+148
        STRB     R0,[SP, #+12]
//   60     LPLD_UART_Init(uart4_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   61 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x7a121

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     `?<Constant "\\307\\353\\312\\344\\310\\353:\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x400ea000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\307\\353\\312\\344\\310\\353:\\r\\n">`:
        DATA
        DC8 "\307\353\312\344\310\353:\015\012"
        DC8 0, 0

        END
// 
//  12 bytes in section .rodata
// 106 bytes in section .text
// 
// 106 bytes of CODE  memory
//  12 bytes of CONST memory
//
//Errors: none
//Warnings: none
