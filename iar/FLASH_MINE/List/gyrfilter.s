///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:26 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\gyrfilter.c                              /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\gyrfilter.c -D LPLD_K60 -lCN             /
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
//                    MINE\List\gyrfilter.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME gyrfilter

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfcmple

        PUBLIC GyrFilterGetCurrent
        PUBLIC GyrFilterInput
        PUBLIC InitGyrFilter

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\gyrfilter.c
//    1 /****************************************************************************** 
//    2  *       gyrfilter.c ----- The gyr Filter Function          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  gyrfilter.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/7 10:48:49                                                       *
//   10  ******************************************************************************/
//   11 #include "gyrfilter.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static float s_fGyrFilterCurrent[3] = {0,0,0};
s_fGyrFilterCurrent:
        DS8 12
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void InitGyrFilter(void)
//   16 {
//   17     int i = 0;
InitGyrFilter:
        MOVS     R0,#+0
//   18 
//   19     for(i = 0; i < 3; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??InitGyrFilter_0:
        CMP      R0,#+3
        BGE.N    ??InitGyrFilter_1
//   20     {
//   21         s_fGyrFilterCurrent[i] = 0;
        LDR.N    R1,??DataTable2
        MOVS     R2,#+0
        STR      R2,[R1, R0, LSL #+2]
//   22     }
        ADDS     R0,R0,#+1
        B.N      ??InitGyrFilter_0
//   23 }
??InitGyrFilter_1:
        BX       LR               ;; return
//   24 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   25 void GyrFilterInput(float gyr[3])
//   26 {
GyrFilterInput:
        PUSH     {R4,LR}
        MOVS     R2,R0
//   27     int i = 0;
        MOVS     R3,#+0
//   28     float TH = 0.01;
        LDR.N    R4,??DataTable2_1  ;; 0x3c23d70a
//   29 
//   30     for(i = 0; i < 3; i ++)
        MOVS     R0,#+0
        MOVS     R3,R0
??GyrFilterInput_0:
        CMP      R3,#+3
        BGE.N    ??GyrFilterInput_1
//   31     {
//   32         if((gyr[i] > -TH) && (gyr[i] < TH))
        MOVS     R0,R4
        EORS     R0,R0,#0x80000000
        LDR      R1,[R2, R3, LSL #+2]
        BL       __aeabi_cfcmple
        BCS.N    ??GyrFilterInput_2
        LDR      R0,[R2, R3, LSL #+2]
        MOVS     R1,R4
        BL       __aeabi_cfcmple
        BCS.N    ??GyrFilterInput_2
//   33         {
//   34             gyr[i] = 0;
        MOVS     R0,#+0
        STR      R0,[R2, R3, LSL #+2]
//   35         }
//   36         s_fGyrFilterCurrent[i] = gyr[i];
??GyrFilterInput_2:
        LDR      R0,[R2, R3, LSL #+2]
        LDR.N    R1,??DataTable2
        STR      R0,[R1, R3, LSL #+2]
//   37     }
        ADDS     R3,R3,#+1
        B.N      ??GyrFilterInput_0
//   38 }
??GyrFilterInput_1:
        POP      {R4,PC}          ;; return
//   39 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 float * GyrFilterGetCurrent()
//   41 {
//   42     return s_fGyrFilterCurrent;
GyrFilterGetCurrent:
        LDR.N    R0,??DataTable2
        BX       LR               ;; return
//   43 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     s_fGyrFilterCurrent

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x3c23d70a

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  12 bytes in section .bss
// 102 bytes in section .text
// 
// 102 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
