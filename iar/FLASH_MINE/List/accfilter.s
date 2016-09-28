///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:25 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\accfilter.c                              /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\accfilter.c -D LPLD_K60 -lCN             /
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
//                    MINE\List\accfilter.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME accfilter

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul

        PUBLIC AccFilterGetCurrent
        PUBLIC AccFilterInput
        PUBLIC InitAccFilter

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\accfilter.c
//    1 /****************************************************************************** 
//    2  *       accfilter.c ----- The acc data filter          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  accfilter.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/7 10:36:23                                                       *
//   10  ******************************************************************************/
//   11 #include "accfilter.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static float s_fAccFilterHistory[ACCFILTER_AVG_NUM][3]; //@保存采样16次的三轴加速度
s_fAccFilterHistory:
        DS8 96

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 static float s_fAccFilterCurrent[3];//@滤波后的加速度
s_fAccFilterCurrent:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   15 static uint8 s_u8AccFilterIndex;	//@单次采样的加速度，accfilter_index为具体的次数，总数为16，大于16时即清0
s_u8AccFilterIndex:
        DS8 1
//   16 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void InitAccFilter(void)
//   18 {
//   19     int i = 0;
InitAccFilter:
        MOVS     R0,#+0
//   20     int j = 0;
        MOVS     R1,#+0
//   21 
//   22     for(i = 0; i < ACCFILTER_AVG_NUM; i ++)
        MOVS     R2,#+0
        MOVS     R0,R2
??InitAccFilter_0:
        CMP      R0,#+8
        BGE.N    ??InitAccFilter_1
//   23     {
//   24         for(j = 0; j < 3; j++)
        MOVS     R2,#+0
        MOVS     R1,R2
??InitAccFilter_2:
        CMP      R1,#+3
        BGE.N    ??InitAccFilter_3
//   25         {
//   26             s_fAccFilterHistory[i][j] = 0;
        MOVS     R2,#+12
        LDR.N    R3,??DataTable2
        MLA      R2,R2,R0,R3
        MOVS     R3,#+0
        STR      R3,[R2, R1, LSL #+2]
//   27         }
        ADDS     R1,R1,#+1
        B.N      ??InitAccFilter_2
//   28     }
??InitAccFilter_3:
        ADDS     R0,R0,#+1
        B.N      ??InitAccFilter_0
//   29 
//   30     for(i = 0; i < 3; i++)
??InitAccFilter_1:
        MOVS     R2,#+0
        MOVS     R0,R2
??InitAccFilter_4:
        CMP      R0,#+3
        BGE.N    ??InitAccFilter_5
//   31     {
//   32         s_fAccFilterCurrent[i] = 0;
        LDR.N    R2,??DataTable2_1
        MOVS     R3,#+0
        STR      R3,[R2, R0, LSL #+2]
//   33     }
        ADDS     R0,R0,#+1
        B.N      ??InitAccFilter_4
//   34 }
??InitAccFilter_5:
        BX       LR               ;; return
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 void AccFilterInput(float acc[3])
//   37 {
AccFilterInput:
        PUSH     {R1-R6,LR}
        MOVS     R4,R0
//   38     int i = 0;
        MOVS     R5,#+0
//   39     int j = 0;
        MOVS     R6,#+0
//   40 
//   41     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??AccFilterInput_0:
        CMP      R5,#+3
        BGE.N    ??AccFilterInput_1
//   42     {
//   43         s_fAccFilterHistory[s_u8AccFilterIndex][i] = acc[i];
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+12
        LDR.N    R2,??DataTable2
        MLA      R0,R1,R0,R2
        LDR      R1,[R4, R5, LSL #+2]
        STR      R1,[R0, R5, LSL #+2]
//   44     }
        ADDS     R5,R5,#+1
        B.N      ??AccFilterInput_0
//   45 
//   46     if(s_u8AccFilterIndex >= ACCFILTER_AVG_NUM)
??AccFilterInput_1:
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BCC.N    ??AccFilterInput_2
//   47     {
//   48         s_u8AccFilterIndex = 0;
        LDR.N    R0,??DataTable2_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   49     }
//   50 
//   51     float sum[3] = {0,0,0};
??AccFilterInput_2:
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//   52     for(i = 0; i < ACCFILTER_AVG_NUM; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??AccFilterInput_3:
        CMP      R5,#+8
        BGE.N    ??AccFilterInput_4
//   53     {
//   54         for(j = 0; j < 3; j ++)
        MOVS     R0,#+0
        MOVS     R6,R0
??AccFilterInput_5:
        CMP      R6,#+3
        BGE.N    ??AccFilterInput_6
//   55         {
//   56             sum[j] += s_fAccFilterHistory[i][j];
        ADD      R0,SP,#+0
        LDR      R0,[R0, R6, LSL #+2]
        MOVS     R1,#+12
        LDR.N    R2,??DataTable2
        MLA      R1,R1,R5,R2
        LDR      R1,[R1, R6, LSL #+2]
        BL       __aeabi_fadd
        ADD      R1,SP,#+0
        STR      R0,[R1, R6, LSL #+2]
//   57         }
        ADDS     R6,R6,#+1
        B.N      ??AccFilterInput_5
//   58     }
??AccFilterInput_6:
        ADDS     R5,R5,#+1
        B.N      ??AccFilterInput_3
//   59 
//   60     for(i = 0; i < 3; i++)
??AccFilterInput_4:
        MOVS     R0,#+0
        MOVS     R5,R0
??AccFilterInput_7:
        CMP      R5,#+3
        BGE.N    ??AccFilterInput_8
//   61     {
//   62         s_fAccFilterCurrent[i] = sum[i] * (1.0f/ACCFILTER_AVG_NUM);
        ADD      R0,SP,#+0
        LDR      R1,[R0, R5, LSL #+2]
        MOVS     R0,#+1040187392
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, R5, LSL #+2]
//   63     }
        ADDS     R5,R5,#+1
        B.N      ??AccFilterInput_7
//   64 }
??AccFilterInput_8:
        POP      {R0-R2,R4-R6,PC}  ;; return
//   65 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 float * AccFilterGetCurrent(void)
//   67 {
//   68     return s_fAccFilterCurrent;
AccFilterGetCurrent:
        LDR.N    R0,??DataTable2_1
        BX       LR               ;; return
//   69 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     s_fAccFilterHistory

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     s_fAccFilterCurrent

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     s_u8AccFilterIndex

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
        DC32 0H, 0H, 0H

        END
// 
// 109 bytes in section .bss
//  12 bytes in section .rodata
// 232 bytes in section .text
// 
// 232 bytes of CODE  memory
//  12 bytes of CONST memory
// 109 bytes of DATA  memory
//
//Errors: none
//Warnings: none
