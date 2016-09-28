///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:39 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\flowfilter.c                             /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\flowfilter.c -D LPLD_K60 -lCN            /
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
//                    MINE\List\flowfilter.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME flowfilter

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_memclr4

        PUBLIC FlowFilterGetCurrent
        PUBLIC FlowFilterGetCurrentFlow
        PUBLIC FlowFilterGetCurrentFlowComp
        PUBLIC FlowFilterInput
        PUBLIC InitFlowFilter

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\flowfilter.c
//    1 /****************************************************************************** 
//    2  *       flowfilter.c ----- The code to filter the data from the pix4flow          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  flowdata.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/7/7 20:45:04                                                       *
//   10  ******************************************************************************/
//   11 #include "flowfilter.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static float s_f32FlowFilterHistroy[FLOWFILTER_AVG_NUM][4] = {0};
s_f32FlowFilterHistroy:
        DS8 320

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 static float s_f32FlowFilterCurrent[4] = {0};
s_f32FlowFilterCurrent:
        DS8 16
//   15 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void InitFlowFilter(void)
//   17 {
//   18     int i = 0;
InitFlowFilter:
        MOVS     R0,#+0
//   19     int j = 0;
        MOVS     R1,#+0
//   20 
//   21     for(i = 0; i < FLOWFILTER_AVG_NUM; i++)
        MOVS     R2,#+0
        MOVS     R0,R2
??InitFlowFilter_0:
        CMP      R0,#+20
        BGE.N    ??InitFlowFilter_1
//   22     {
//   23         for(j = 0; j < 4; j++)
        MOVS     R2,#+0
        MOVS     R1,R2
??InitFlowFilter_2:
        CMP      R1,#+4
        BGE.N    ??InitFlowFilter_3
//   24         {
//   25             s_f32FlowFilterHistroy[i][j] = 0;
        LDR.N    R2,??DataTable4
        ADDS     R2,R2,R0, LSL #+4
        MOVS     R3,#+0
        STR      R3,[R2, R1, LSL #+2]
//   26         }
        ADDS     R1,R1,#+1
        B.N      ??InitFlowFilter_2
//   27     }
??InitFlowFilter_3:
        ADDS     R0,R0,#+1
        B.N      ??InitFlowFilter_0
//   28 
//   29     for(i = 0; i < 4; i++)
??InitFlowFilter_1:
        MOVS     R2,#+0
        MOVS     R0,R2
??InitFlowFilter_4:
        CMP      R0,#+4
        BGE.N    ??InitFlowFilter_5
//   30     {
//   31         s_f32FlowFilterCurrent[i] = 0;
        LDR.N    R2,??DataTable4_1
        MOVS     R3,#+0
        STR      R3,[R2, R0, LSL #+2]
//   32     }
        ADDS     R0,R0,#+1
        B.N      ??InitFlowFilter_4
//   33 }
??InitFlowFilter_5:
        BX       LR               ;; return
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void FlowFilterInput(float flowdata[4])
//   36 {
FlowFilterInput:
        PUSH     {R0-R6,LR}
        MOVS     R4,R0
//   37     int i = 0; 
        MOVS     R5,#+0
//   38     int j = 0;
        MOVS     R6,#+0
//   39 
//   40     for(i = 0; i < FLOWFILTER_AVG_NUM - 1; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??FlowFilterInput_0:
        CMP      R5,#+19
        BGE.N    ??FlowFilterInput_1
//   41     {
//   42         for(j = 0; j < 4; j++)
        MOVS     R0,#+0
        MOVS     R6,R0
??FlowFilterInput_2:
        CMP      R6,#+4
        BGE.N    ??FlowFilterInput_3
//   43         {
//   44             s_f32FlowFilterHistroy[i][j] = s_f32FlowFilterHistroy[i+1][j];
        LDR.N    R0,??DataTable4
        ADDS     R0,R0,R5, LSL #+4
        LDR.N    R1,??DataTable4
        ADDS     R1,R1,R5, LSL #+4
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+16]
        STR      R1,[R0, R6, LSL #+2]
//   45         }
        ADDS     R6,R6,#+1
        B.N      ??FlowFilterInput_2
//   46     }
??FlowFilterInput_3:
        ADDS     R5,R5,#+1
        B.N      ??FlowFilterInput_0
//   47 
//   48     for(j = 0; j < 4; j++)
??FlowFilterInput_1:
        MOVS     R0,#+0
        MOVS     R6,R0
??FlowFilterInput_4:
        CMP      R6,#+4
        BGE.N    ??FlowFilterInput_5
//   49     {
//   50         s_f32FlowFilterHistroy[FLOWFILTER_AVG_NUM - 1][j] = flowdata[j];
        LDR.N    R0,??DataTable4
        ADDS     R0,R0,R6, LSL #+2
        LDR      R1,[R4, R6, LSL #+2]
        STR      R1,[R0, #+304]
//   51     }
        ADDS     R6,R6,#+1
        B.N      ??FlowFilterInput_4
//   52 
//   53     float sum[4] = {0,0,0,0};
??FlowFilterInput_5:
        ADD      R0,SP,#+0
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   54     for(i = 0; i < FLOWFILTER_AVG_NUM; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??FlowFilterInput_6:
        CMP      R5,#+20
        BGE.N    ??FlowFilterInput_7
//   55     {
//   56         for(j = 0; j < 4; j++)
        MOVS     R0,#+0
        MOVS     R6,R0
??FlowFilterInput_8:
        CMP      R6,#+4
        BGE.N    ??FlowFilterInput_9
//   57         {
//   58             sum[j] += s_f32FlowFilterHistroy[i][j];
        ADD      R0,SP,#+0
        LDR      R0,[R0, R6, LSL #+2]
        LDR.N    R1,??DataTable4
        ADDS     R1,R1,R5, LSL #+4
        LDR      R1,[R1, R6, LSL #+2]
        BL       __aeabi_fadd
        ADD      R1,SP,#+0
        STR      R0,[R1, R6, LSL #+2]
//   59         }
        ADDS     R6,R6,#+1
        B.N      ??FlowFilterInput_8
//   60     }
??FlowFilterInput_9:
        ADDS     R5,R5,#+1
        B.N      ??FlowFilterInput_6
//   61 
//   62     for(j = 0; j < 4; j++)
??FlowFilterInput_7:
        MOVS     R0,#+0
        MOVS     R6,R0
??FlowFilterInput_10:
        CMP      R6,#+4
        BGE.N    ??FlowFilterInput_11
//   63     {
//   64         s_f32FlowFilterCurrent[j] = sum[j] * (1.0f/FLOWFILTER_AVG_NUM);
        ADD      R0,SP,#+0
        LDR      R0,[R0, R6, LSL #+2]
        LDR.N    R1,??DataTable4_2  ;; 0x3d4ccccd
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, R6, LSL #+2]
//   65     }
        ADDS     R6,R6,#+1
        B.N      ??FlowFilterInput_10
//   66 }
??FlowFilterInput_11:
        POP      {R0-R6,PC}       ;; return
//   67 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 float * FlowFilterGetCurrent(void)
//   69 {
//   70     return s_f32FlowFilterCurrent;
FlowFilterGetCurrent:
        LDR.N    R0,??DataTable4_1
        BX       LR               ;; return
//   71 }
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 float * FlowFilterGetCurrentFlow(void)
//   74 {
//   75     return &(s_f32FlowFilterCurrent[0]);
FlowFilterGetCurrentFlow:
        LDR.N    R0,??DataTable4_1
        BX       LR               ;; return
//   76 }
//   77 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 float * FlowFilterGetCurrentFlowComp(void)
//   79 {
//   80     return &(s_f32FlowFilterCurrent[2]);
FlowFilterGetCurrentFlowComp:
        LDR.N    R0,??DataTable4_3
        BX       LR               ;; return
//   81 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     s_f32FlowFilterHistroy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     s_f32FlowFilterCurrent

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x3d4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     s_f32FlowFilterCurrent+0x8

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
        DC32 0H, 0H, 0H, 0H

        END
// 
// 336 bytes in section .bss
//  16 bytes in section .rodata
// 260 bytes in section .text
// 
// 260 bytes of CODE  memory
//  16 bytes of CONST memory
// 336 bytes of DATA  memory
//
//Errors: none
//Warnings: none
