///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:24 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\magfilter.c                              /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\magfilter.c -D LPLD_K60 -lCN             /
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
//                    MINE\List\magfilter.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME magfilter

        #define SHT_PROGBITS 0x1

        PUBLIC InitMagFilter
        PUBLIC MagFilterGetCurrent
        PUBLIC MagFilterInput

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\magfilter.c
//    1 /****************************************************************************** 
//    2  *       magfilter.c ----- The filter of magnitude data          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  magfilter.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/7 11:06:19                                                       *
//   10  ******************************************************************************/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 static float s_fMagFilterCurrent[3] = {0,0,0};
s_fMagFilterCurrent:
        DS8 12
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void InitMagFilter(void)
//   14 {
//   15     int i = 0;
InitMagFilter:
        MOVS     R0,#+0
//   16     for(i = 0; i < 3; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??InitMagFilter_0:
        CMP      R0,#+3
        BGE.N    ??InitMagFilter_1
//   17     {
//   18         s_fMagFilterCurrent[i] = 0;
        LDR.N    R1,??DataTable2
        MOVS     R2,#+0
        STR      R2,[R1, R0, LSL #+2]
//   19     }
        ADDS     R0,R0,#+1
        B.N      ??InitMagFilter_0
//   20 }
??InitMagFilter_1:
        BX       LR               ;; return
//   21 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void MagFilterInput(float mag[3])
//   23 {
//   24     int i = 0;
MagFilterInput:
        MOVS     R1,#+0
//   25 
//   26     for(i = 0; i < 3; i++)
        MOVS     R2,#+0
        MOVS     R1,R2
??MagFilterInput_0:
        CMP      R1,#+3
        BGE.N    ??MagFilterInput_1
//   27     {
//   28         s_fMagFilterCurrent[i] = mag[i];
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R3,??DataTable2
        STR      R2,[R3, R1, LSL #+2]
//   29     }
        ADDS     R1,R1,#+1
        B.N      ??MagFilterInput_0
//   30 }
??MagFilterInput_1:
        BX       LR               ;; return
//   31 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 float * MagFilterGetCurrent(void)
//   33 {
//   34     return s_fMagFilterCurrent;
MagFilterGetCurrent:
        LDR.N    R0,??DataTable2
        BX       LR               ;; return
//   35 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     s_fMagFilterCurrent

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 12 bytes in section .bss
// 58 bytes in section .text
// 
// 58 bytes of CODE memory
// 12 bytes of DATA memory
//
//Errors: none
//Warnings: none
