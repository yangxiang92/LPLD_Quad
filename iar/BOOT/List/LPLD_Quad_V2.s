///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    21/Mar/2014  14:38:57 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\app /
//                    \LPLD_Quad_V2.c                                         /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\app /
//                    \LPLD_Quad_V2.c -D LPLD_K60 -lCN                        /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\BOOT\L /
//                    ist\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\i /
//                    ar\BOOT\List\ -o E:\ShawnDocuments\IAR_WorkSpace\LPLD_Q /
//                    uad_V2\iar\BOOT\Obj\ --no_cse --no_unroll --no_inline   /
//                    --no_code_motion --no_tbaa --no_clustering              /
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
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\BOOT\L /
//                    ist\LPLD_Quad_V2.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME LPLD_Quad_V2

        #define SHT_PROGBITS 0x1

        EXTERN light_init
        EXTERN toggle_lights
        EXTERN turn_lights_on

        PUBLIC main
        PUBLIC uart4_init_struct
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

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 UART_InitTypeDef uart4_init_struct;
uart4_init_struct:
        DS8 20
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
//   30     light_init();
        BL       light_init
//   31     EnableInterrupts;
        CPSIE    I
//   32 
//   33     turn_lights_on(0xff);
        MOVS     R0,#+255
        BL       turn_lights_on
//   34     //LPLD_UART_PutCharArr(UART4, "Input something:\r\n", 18);
//   35 
//   36     while(1)
//   37     {
//   38         if(counts > 500000)
??main_0:
        LDR.N    R0,??DataTable0  ;; 0x7a121
        CMP      R4,R0
        BCC.N    ??main_1
//   39         {
//   40             toggle_lights(0xff);
        MOVS     R0,#+255
        BL       toggle_lights
//   41             counts = 0;
        MOVS     R4,#+0
//   42         }
//   43         //LPLD_UART_PutCharArr(UART4, "Input something:\r\n", 18);
//   44         //recv = LPLD_UART_GetChar(UART4);
//   45         //LPLD_UART_PutChar(UART4, recv);
//   46         counts ++;
??main_1:
        ADDS     R4,R4,#+1
        B.N      ??main_0
//   47     } 
//   48 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x7a121
//   49 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void uart_init(void)
//   51 {
//   52     //uart4_init_struct.UART_Uartx = UART4;
//   53     //uart4_init_struct.UART_BaudRate = 9600;
//   54     //uart4_init_struct.UART_RxPin = PTE25;
//   55     //uart4_init_struct.UART_TxPin = PTE24;
//   56     //LPLD_UART_Init(uart4_init_struct);
//   57 }
uart_init:
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
// 20 bytes in section .bss
// 44 bytes in section .text
// 
// 44 bytes of CODE memory
// 20 bytes of DATA memory
//
//Errors: none
//Warnings: none
