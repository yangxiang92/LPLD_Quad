///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:38 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\delay.c                                             /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\delay.c -D LPLD_K60 -lCN                            /
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
//                    MINE\List\delay.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME delay

        #define SHT_PROGBITS 0x1

        EXTERN g_bus_clock

        PUBLIC Delay5us
        PUBLIC Pause
        PUBLIC delayms
        PUBLIC delayus

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\delay.c
//    1 /****************************************************************************** 
//    2  *       delay.c ----- The delay Functions          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  delay.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/30 19:50:56                                                       *
//   10  ******************************************************************************/
//   11 
//   12 #include "delay.h"
//   13 
//   14 /*************************************************************************
//   15 *                             野火嵌入式开发工作室
//   16 *
//   17 *  函数名称：delayms
//   18 *  功能说明：延时函数（不准确），内核频率为100M时较为准确
//   19 *  参数说明：无
//   20 *  函数返回：无
//   21 *  修改时间：2012-2-1    已测试
//   22 *  备    注：
//   23 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   24 void  delayms(uint32  ms)
//   25 {
delayms:
        PUSH     {R4}
//   26 
//   27     uint32  i, j;
//   28     for(i = 0; i < ms; i++)
        MOVS     R3,#+0
        MOVS     R1,R3
??delayms_0:
        CMP      R1,R0
        BCS.N    ??delayms_1
//   29     {
//   30         for(j = (g_bus_clock / 1000); j > 0; j--)
        LDR.N    R3,??DataTable1
        LDR      R3,[R3, #+0]
        MOV      R4,#+1000
        UDIV     R3,R3,R4
        MOVS     R2,R3
??delayms_2:
        CMP      R2,#+0
        BEQ.N    ??delayms_3
//   31         {
//   32             asm("nop");
        nop
//   33         }
        SUBS     R2,R2,#+1
        B.N      ??delayms_2
//   34     }
??delayms_3:
        ADDS     R1,R1,#+1
        B.N      ??delayms_0
//   35 }
??delayms_1:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   36 void delayus(uint32 us)
//   37 {
delayus:
        PUSH     {R4}
//   38     uint32  i, j;
//   39     for(i = 0; i < us; i++)
        MOVS     R3,#+0
        MOVS     R1,R3
??delayus_0:
        CMP      R1,R0
        BCS.N    ??delayus_1
//   40     {
//   41         for(j = (g_bus_clock / 1000000); j > 0; j--)
        LDR.N    R3,??DataTable1
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable1_1  ;; 0xf4240
        UDIV     R3,R3,R4
        MOVS     R2,R3
??delayus_2:
        CMP      R2,#+0
        BEQ.N    ??delayus_3
//   42         {
//   43             asm("nop");
        nop
//   44         }
        SUBS     R2,R2,#+1
        B.N      ??delayus_2
//   45     }    
??delayus_3:
        ADDS     R1,R1,#+1
        B.N      ??delayus_0
//   46 }
??delayus_1:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0xf4240
//   47 /*************************************************************************
//   48 *                             野火嵌入式开发工作室
//   49 *
//   50 *  函数名称：Pause
//   51 *  功能说明：延时，I2C读写后，需要延时一下
//   52 *  参数说明：无
//   53 *  函数返回：无
//   54 *  修改时间：2012-1-20
//   55 *  备    注：在官方基础上增大延时数
//   56 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   57 void Pause(void)
//   58 {
//   59     uint16 n;
//   60     for(n = 1; n < 50000; n++)      //注意，这个数据太小，会导致读取错误。
Pause:
        MOVS     R1,#+1
        MOVS     R0,R1
??Pause_0:
        MOVW     R1,#+50000
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCS.N    ??Pause_1
//   61     {
//   62         asm("nop");
        nop
//   63     }
        ADDS     R0,R0,#+1
        B.N      ??Pause_0
//   64 }
??Pause_1:
        BX       LR               ;; return
//   65 /*************************************************************************
//   66 *
//   67 *  函数名称：Delay5us
//   68 *  功能说明：延时，I2C时序控制
//   69 *  参数说明：无
//   70 *  函数返回：无
//   71 *  修改时间：2012-1-20
//   72 *  备    注：在官方基础上增大延时数
//   73 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void Delay5us()
//   75 {
//   76     int i = 0;
Delay5us:
        MOVS     R0,#+0
//   77     for(i = 0; i < 500; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??Delay5us_0:
        CMP      R0,#+500
        BGE.N    ??Delay5us_1
        ADDS     R0,R0,#+1
        B.N      ??Delay5us_0
//   78     {
//   79 
//   80     }
//   81 }
??Delay5us_1:
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
// 130 bytes in section .text
// 
// 130 bytes of CODE memory
//
//Errors: none
//Warnings: none
