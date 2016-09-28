///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:13 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Control\pid.c                                          /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Control\pid.c -D LPLD_K60 -lCN                         /
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
//                    MINE\List\pid.s                                         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME pid

        #define SHT_PROGBITS 0x1

        EXTERN GyrFilterGetCurrent
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_memcpy4
        EXTERN sin

        PUBLIC HeightPIDInterate
        PUBLIC InitHeightPID
        PUBLIC InitPID
        PUBLIC InitPositionPID
        PUBLIC PIDInterate
        PUBLIC PositionPIDInterate
        PUBLIC SAS_PIDInterate

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Control\pid.c
//    1 /****************************************************************************** 
//    2  *       pid.c ----- The PID Controller                                       *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  pid.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/14 14:04:21                                                       *
//   10  ******************************************************************************/
//   11 #include "pid.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 static PID_Parameters s_sXYZPidParameter[3];
s_sXYZPidParameter:
        DS8 60

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static PID_Data s_sXYZPidData[3];
s_sXYZPidData:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 static PID_Parameters s_sHeightPidParameter;
s_sHeightPidParameter:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 static PID_Data s_sHeightPidData;
s_sHeightPidData:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 static PID_Parameters s_sPositionPidParameter[2];
s_sPositionPidParameter:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 static PID_Data s_sPositionPidData[2];
s_sPositionPidData:
        DS8 16
//   18 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   19 void InitPID(PID_Parameters xyz_pid_para[3])
//   20 {
InitPID:
        PUSH     {R4,R5,LR}
        MOVS     R4,R0
//   21     int i = 0;
        MOVS     R5,#+0
//   22 
//   23     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??InitPID_0:
        CMP      R5,#+3
        BGE.N    ??InitPID_1
//   24     {
//   25         s_sXYZPidParameter[i] = xyz_pid_para[i];
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R5,R1
        MOVS     R1,#+20
        MLA      R1,R1,R5,R4
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
//   26         s_sXYZPidData[i].pre_data = 0;
        LDR.W    R0,??DataTable6_1
        MOVS     R1,#+0
        STR      R1,[R0, R5, LSL #+3]
//   27         s_sXYZPidData[i].integration = 0;
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R5, LSL #+3
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   28     }
        ADDS     R5,R5,#+1
        B.N      ??InitPID_0
//   29 }
??InitPID_1:
        POP      {R4,R5,PC}       ;; return
//   30 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void PIDInterate(float input[3], float output[3])
//   32 {
PIDInterate:
        PUSH     {R4-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   33     int i = 0;
        MOVS     R6,#+0
//   34 
//   35     float p_output = 0;
        MOVS     R7,#+0
//   36     float i_output = 0;
        MOVS     R8,#+0
//   37     float d_output = 0;
        MOVS     R9,#+0
//   38 
//   39     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??PIDInterate_0:
        CMP      R6,#+3
        BGE.W    ??PIDInterate_1
//   40     {
//   41         p_output = s_sXYZPidParameter[i].p * input[i];
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, R6, LSL #+2]
        BL       __aeabi_fmul
        MOVS     R7,R0
//   42 
//   43         if(s_sXYZPidParameter[i].i == 0)
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+4]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??PIDInterate_2
//   44         {
//   45             i_output = 0;
        MOVS     R0,#+0
        MOV      R8,R0
        B.N      ??PIDInterate_3
//   46         }
//   47         else
//   48         {
//   49             s_sXYZPidData[i].integration += input[i];
??PIDInterate_2:
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        LDR      R1,[R0, #+4]
        LDR      R0,[R4, R6, LSL #+2]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable6_1
        ADDS     R1,R1,R6, LSL #+3
        STR      R0,[R1, #+4]
//   50             if(s_sXYZPidData[i].integration > (s_sXYZPidParameter[i].i_limit))
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable6_1
        ADDS     R1,R1,R6, LSL #+3
        LDR      R1,[R1, #+4]
        BL       __aeabi_cfcmple
        BCS.N    ??PIDInterate_4
//   51             {
//   52                 s_sXYZPidData[i].integration = (s_sXYZPidParameter[i].i_limit);
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        MOVS     R1,#+20
        LDR.W    R2,??DataTable6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+12]
        STR      R1,[R0, #+4]
//   53             }
//   54             if(s_sXYZPidData[i].integration < (-s_sXYZPidParameter[i].i_limit))
??PIDInterate_4:
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        LDR      R0,[R0, #+4]
        MOVS     R1,#+20
        LDR.W    R2,??DataTable6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+12]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??PIDInterate_5
//   55             {
//   56                 s_sXYZPidData[i].integration = (-s_sXYZPidParameter[i].i_limit);
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        MOVS     R1,#+20
        LDR.W    R2,??DataTable6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+12]
        EORS     R1,R1,#0x80000000
        STR      R1,[R0, #+4]
//   57             }
//   58             i_output = s_sXYZPidParameter[i].i * s_sXYZPidData[i].integration;
??PIDInterate_5:
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R1,[R0, #+4]
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOV      R8,R0
//   59             if(i_output < -s_sXYZPidParameter[i].i_output_limit)
        MOV      R0,R8
        MOVS     R1,#+20
        LDR.W    R2,??DataTable6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+16]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??PIDInterate_6
//   60             {
//   61                 i_output = -s_sXYZPidParameter[i].i_output_limit;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+16]
        EORS     R0,R0,#0x80000000
        MOV      R8,R0
//   62             }
//   63             if(i_output > s_sXYZPidParameter[i].i_output_limit)
??PIDInterate_6:
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+16]
        MOV      R1,R8
        BL       __aeabi_cfcmple
        BCS.N    ??PIDInterate_3
//   64             {
//   65                 i_output = s_sXYZPidParameter[i].i_output_limit;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+16]
        MOV      R8,R0
//   66             }
//   67         }
//   68 
//   69         d_output = s_sXYZPidParameter[i].d * (input[i] - s_sXYZPidData[i].pre_data);
??PIDInterate_3:
        LDR      R0,[R4, R6, LSL #+2]
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, R6, LSL #+3]
        BL       __aeabi_fsub
        MOVS     R1,#+20
        LDR.W    R2,??DataTable6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+8]
        BL       __aeabi_fmul
        MOV      R9,R0
//   70 
//   71         output[i] = p_output + i_output + d_output;
        MOVS     R0,R7
        MOV      R1,R8
        BL       __aeabi_fadd
        MOV      R1,R9
        BL       __aeabi_fadd
        STR      R0,[R5, R6, LSL #+2]
//   72 
//   73         s_sXYZPidData[i].pre_data = input[i];
        LDR      R0,[R4, R6, LSL #+2]
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, R6, LSL #+3]
//   74     }
        ADDS     R6,R6,#+1
        B.N      ??PIDInterate_0
//   75 }
??PIDInterate_1:
        POP      {R4-R9,PC}       ;; return
//   76 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 void SAS_PIDInterate(float input[3], float output[3])
//   78 {
SAS_PIDInterate:
        PUSH     {R3-R11,LR}
        MOV      R8,R0
        MOV      R11,R1
//   79     int i = 0;
        MOVS     R6,#+0
//   80 
//   81     float p_output = 0;
        MOVS     R10,#+0
//   82     float i_output = 0;
        MOVS     R7,#+0
//   83     float d_output = 0;
        MOVS     R9,#+0
//   84 
//   85     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??SAS_PIDInterate_0:
        CMP      R6,#+3
        BGE.W    ??SAS_PIDInterate_1
//   86     {
//   87         p_output = s_sXYZPidParameter[i].p * input[i];
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R1,[R0, #+0]
        LDR      R0,[R8, R6, LSL #+2]
        BL       __aeabi_fmul
        MOV      R10,R0
//   88 
//   89         if(s_sXYZPidParameter[i].i == 0)
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+4]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??SAS_PIDInterate_2
//   90         {
//   91             i_output = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??SAS_PIDInterate_3
//   92         }
//   93         else
//   94         {
//   95             s_sXYZPidData[i].integration += input[i];
??SAS_PIDInterate_2:
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        LDR      R1,[R0, #+4]
        LDR      R0,[R8, R6, LSL #+2]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable6_1
        ADDS     R1,R1,R6, LSL #+3
        STR      R0,[R1, #+4]
//   96             if(s_sXYZPidData[i].integration > (s_sXYZPidParameter[i].i_limit))
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable6_1
        ADDS     R1,R1,R6, LSL #+3
        LDR      R1,[R1, #+4]
        BL       __aeabi_cfcmple
        BCS.N    ??SAS_PIDInterate_4
//   97             {
//   98                 s_sXYZPidData[i].integration = (s_sXYZPidParameter[i].i_limit);
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        MOVS     R1,#+20
        LDR.W    R2,??DataTable6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+12]
        STR      R1,[R0, #+4]
//   99             }
//  100             if(s_sXYZPidData[i].integration < (-s_sXYZPidParameter[i].i_limit))
??SAS_PIDInterate_4:
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        LDR      R0,[R0, #+4]
        MOVS     R1,#+20
        LDR.W    R2,??DataTable6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+12]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??SAS_PIDInterate_5
//  101             {
//  102                 s_sXYZPidData[i].integration = (-s_sXYZPidParameter[i].i_limit);
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        MOVS     R1,#+20
        LDR.W    R2,??DataTable6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+12]
        EORS     R1,R1,#0x80000000
        STR      R1,[R0, #+4]
//  103             }
//  104             i_output = s_sXYZPidParameter[i].i * s_sXYZPidData[i].integration;
??SAS_PIDInterate_5:
        MOVS     R0,#+20
        LDR.W    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R1,[R0, #+4]
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R0,R6, LSL #+3
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOVS     R7,R0
//  105             if(i_output < -s_sXYZPidParameter[i].i_output_limit)
        MOVS     R0,R7
        MOVS     R1,#+20
        LDR.N    R2,??DataTable6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+16]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??SAS_PIDInterate_6
//  106             {
//  107                 i_output = -s_sXYZPidParameter[i].i_output_limit;
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+16]
        EORS     R0,R0,#0x80000000
        MOVS     R7,R0
//  108             }
//  109             if(i_output > s_sXYZPidParameter[i].i_output_limit)
??SAS_PIDInterate_6:
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+16]
        MOVS     R1,R7
        BL       __aeabi_cfcmple
        BCS.N    ??SAS_PIDInterate_3
//  110             {
//  111                 i_output = s_sXYZPidParameter[i].i_output_limit;
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+16]
        MOVS     R7,R0
//  112             }
//  113         }
//  114 
//  115         d_output = - s_sXYZPidParameter[i].d * sin(GyrFilterGetCurrent()[i]) * 2 * (PROGRAM_PERIOD_MS * 0.001);
??SAS_PIDInterate_3:
        BL       GyrFilterGetCurrent
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_f2d
        BL       sin
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+8]
        EORS     R0,R0,#0x80000000
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable6_2  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable6_3  ;; 0x3f70624d
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOV      R9,R0
//  116 
//  117         output[i] = p_output + i_output + d_output;
        MOV      R0,R10
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOV      R1,R9
        BL       __aeabi_fadd
        STR      R0,[R11, R6, LSL #+2]
//  118 
//  119         s_sXYZPidData[i].pre_data = input[i];
        LDR      R0,[R8, R6, LSL #+2]
        LDR.N    R1,??DataTable6_1
        STR      R0,[R1, R6, LSL #+3]
//  120     }    
        ADDS     R6,R6,#+1
        B.N      ??SAS_PIDInterate_0
//  121 }
??SAS_PIDInterate_1:
        POP      {R0,R4-R11,PC}   ;; return
//  122 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  123 void InitHeightPID(PID_Parameters height_pid_para)
//  124 {
InitHeightPID:
        PUSH     {R0-R3}
        PUSH     {LR}
//  125     s_sHeightPidParameter = height_pid_para;
        LDR.N    R0,??DataTable6_4
        ADD      R1,SP,#+4
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
//  126     s_sHeightPidData.pre_data = 0;
        LDR.N    R0,??DataTable6_5
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  127     s_sHeightPidData.integration = 0;
        LDR.N    R0,??DataTable6_5
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  128 }
        LDR      PC,[SP], #+20    ;; return
//  129 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 float HeightPIDInterate(float height_err)
//  131 {
HeightPIDInterate:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
//  132     float output = 0;
        MOVS     R5,#+0
//  133 
//  134     float p_output = 0;
        MOVS     R6,#+0
//  135     float i_output = 0;
        MOVS     R7,#+0
//  136     float d_output = 0;
        MOVS     R8,#+0
//  137 
//  138     p_output = s_sHeightPidParameter.p * height_err;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R6,R0
//  139 
//  140     if(s_sHeightPidParameter.i == 0)
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+4]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??HeightPIDInterate_0
//  141     {
//  142         i_output = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??HeightPIDInterate_1
//  143     }
//  144     else
//  145     {
//  146         s_sHeightPidData.integration += height_err;
??HeightPIDInterate_0:
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+4]
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_5
        STR      R0,[R1, #+4]
//  147         if(s_sHeightPidData.integration > (s_sHeightPidParameter.i_limit))
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+4]
        BL       __aeabi_cfcmple
        BCS.N    ??HeightPIDInterate_2
//  148         {
//  149             s_sHeightPidData.integration = (s_sHeightPidParameter.i_limit);
        LDR.N    R0,??DataTable6_5
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+12]
        STR      R1,[R0, #+4]
//  150         }
//  151         if(s_sHeightPidData.integration < (-s_sHeightPidParameter.i_limit))
??HeightPIDInterate_2:
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+12]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??HeightPIDInterate_3
//  152         {
//  153             s_sHeightPidData.integration = (-s_sHeightPidParameter.i_limit);
        LDR.N    R0,??DataTable6_5
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+12]
        EORS     R1,R1,#0x80000000
        STR      R1,[R0, #+4]
//  154         }
//  155         i_output = s_sHeightPidParameter.i * s_sHeightPidData.integration;
??HeightPIDInterate_3:
        LDR.N    R0,??DataTable6_4
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOVS     R7,R0
//  156         if(i_output < -s_sHeightPidParameter.i_output_limit)
        MOVS     R0,R7
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+16]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??HeightPIDInterate_4
//  157         {
//  158             i_output = -s_sHeightPidParameter.i_output_limit;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+16]
        EORS     R0,R0,#0x80000000
        MOVS     R7,R0
//  159         }
//  160         if(i_output > s_sHeightPidParameter.i_output_limit)
??HeightPIDInterate_4:
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+16]
        MOVS     R1,R7
        BL       __aeabi_cfcmple
        BCS.N    ??HeightPIDInterate_1
//  161         {
//  162             i_output = s_sHeightPidParameter.i_output_limit;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+16]
        MOVS     R7,R0
//  163         }
//  164     }
//  165 
//  166     d_output = s_sHeightPidParameter.d * (height_err - s_sHeightPidData.pre_data);
??HeightPIDInterate_1:
        MOVS     R0,R4
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+8]
        BL       __aeabi_fmul
        MOV      R8,R0
//  167 
//  168     s_sHeightPidData.pre_data = height_err;
        LDR.N    R0,??DataTable6_5
        STR      R4,[R0, #+0]
//  169 
//  170     output = p_output + i_output + d_output;
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOV      R1,R8
        BL       __aeabi_fadd
        MOVS     R5,R0
//  171 
//  172     return output;
        MOVS     R0,R5
        POP      {R4-R8,PC}       ;; return
//  173 }
//  174 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  175 void InitPositionPID(PID_Parameters position_pid_para[2])
//  176 {
InitPositionPID:
        PUSH     {R4,R5,LR}
        MOVS     R4,R0
//  177     int i = 0;
        MOVS     R5,#+0
//  178     for(i = 0; i < 2; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??InitPositionPID_0:
        CMP      R5,#+2
        BGE.N    ??InitPositionPID_1
//  179     {
//  180         s_sPositionPidParameter[i] = position_pid_para[i];
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6_6
        MLA      R0,R0,R5,R1
        MOVS     R1,#+20
        MLA      R1,R1,R5,R4
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
//  181         s_sPositionPidData[i].pre_data = 0;
        LDR.N    R0,??DataTable6_7
        MOVS     R1,#+0
        STR      R1,[R0, R5, LSL #+3]
//  182         s_sPositionPidData[i].integration = 0;        
        LDR.N    R0,??DataTable6_7
        ADDS     R0,R0,R5, LSL #+3
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  183     }
        ADDS     R5,R5,#+1
        B.N      ??InitPositionPID_0
//  184 }
??InitPositionPID_1:
        POP      {R4,R5,PC}       ;; return
//  185 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 void PositionPIDInterate(float input[2], float output[2])
//  187 {
PositionPIDInterate:
        PUSH     {R4-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  188     int i = 0;
        MOVS     R6,#+0
//  189 
//  190     float p_output = 0;
        MOVS     R7,#+0
//  191     float i_output = 0;
        MOVS     R8,#+0
//  192     float d_output = 0;
        MOVS     R9,#+0
//  193 
//  194     for(i = 0; i < 2; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??PositionPIDInterate_0:
        CMP      R6,#+2
        BGE.W    ??PositionPIDInterate_1
//  195     {
//  196         p_output = s_sPositionPidParameter[i].p * input[i];
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6_6
        MLA      R0,R0,R6,R1
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, R6, LSL #+2]
        BL       __aeabi_fmul
        MOVS     R7,R0
//  197 
//  198         if(s_sPositionPidParameter[i].i == 0)
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6_6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+4]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??PositionPIDInterate_2
//  199         {
//  200             i_output = 0;
        MOVS     R0,#+0
        MOV      R8,R0
        B.N      ??PositionPIDInterate_3
//  201         }
//  202         else
//  203         {
//  204             s_sPositionPidData[i].integration += input[i];
??PositionPIDInterate_2:
        LDR.N    R0,??DataTable6_7
        ADDS     R0,R0,R6, LSL #+3
        LDR      R1,[R0, #+4]
        LDR      R0,[R4, R6, LSL #+2]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable6_7
        ADDS     R1,R1,R6, LSL #+3
        STR      R0,[R1, #+4]
//  205             if(s_sPositionPidData[i].integration > (s_sPositionPidParameter[i].i_limit))
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6_6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable6_7
        ADDS     R1,R1,R6, LSL #+3
        LDR      R1,[R1, #+4]
        BL       __aeabi_cfcmple
        BCS.N    ??PositionPIDInterate_4
//  206             {
//  207                 s_sPositionPidData[i].integration = (s_sPositionPidParameter[i].i_limit);
        LDR.N    R0,??DataTable6_7
        ADDS     R0,R0,R6, LSL #+3
        MOVS     R1,#+20
        LDR.N    R2,??DataTable6_6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+12]
        STR      R1,[R0, #+4]
//  208             }
//  209             if(s_sPositionPidData[i].integration < (-s_sPositionPidParameter[i].i_limit))
??PositionPIDInterate_4:
        LDR.N    R0,??DataTable6_7
        ADDS     R0,R0,R6, LSL #+3
        LDR      R0,[R0, #+4]
        MOVS     R1,#+20
        LDR.N    R2,??DataTable6_6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+12]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??PositionPIDInterate_5
//  210             {
//  211                 s_sPositionPidData[i].integration = (-s_sPositionPidParameter[i].i_limit);
        LDR.N    R0,??DataTable6_7
        ADDS     R0,R0,R6, LSL #+3
        MOVS     R1,#+20
        LDR.N    R2,??DataTable6_6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+12]
        EORS     R1,R1,#0x80000000
        STR      R1,[R0, #+4]
//  212             }
//  213             i_output = s_sPositionPidParameter[i].i * s_sPositionPidData[i].integration;
??PositionPIDInterate_5:
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6_6
        MLA      R0,R0,R6,R1
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable6_7
        ADDS     R0,R0,R6, LSL #+3
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOV      R8,R0
//  214             if(i_output < -s_sPositionPidParameter[i].i_output_limit)
        MOV      R0,R8
        MOVS     R1,#+20
        LDR.N    R2,??DataTable6_6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+16]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_cfcmple
        BCS.N    ??PositionPIDInterate_6
//  215             {
//  216                 i_output = -s_sPositionPidParameter[i].i_output_limit;
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6_6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+16]
        EORS     R0,R0,#0x80000000
        MOV      R8,R0
//  217             }
//  218             if(i_output > s_sPositionPidParameter[i].i_output_limit)
??PositionPIDInterate_6:
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6_6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+16]
        MOV      R1,R8
        BL       __aeabi_cfcmple
        BCS.N    ??PositionPIDInterate_3
//  219             {
//  220                 i_output = s_sPositionPidParameter[i].i_output_limit;
        MOVS     R0,#+20
        LDR.N    R1,??DataTable6_6
        MLA      R0,R0,R6,R1
        LDR      R0,[R0, #+16]
        MOV      R8,R0
//  221             }
//  222         }
//  223 
//  224         d_output = s_sPositionPidParameter[i].d * (input[i] - s_sPositionPidData[i].pre_data);
??PositionPIDInterate_3:
        LDR      R0,[R4, R6, LSL #+2]
        LDR.N    R1,??DataTable6_7
        LDR      R1,[R1, R6, LSL #+3]
        BL       __aeabi_fsub
        MOVS     R1,#+20
        LDR.N    R2,??DataTable6_6
        MLA      R1,R1,R6,R2
        LDR      R1,[R1, #+8]
        BL       __aeabi_fmul
        MOV      R9,R0
//  225 
//  226         if(p_output > 10)
        MOVS     R0,R7
        LDR.N    R1,??DataTable6_8  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??PositionPIDInterate_7
//  227         {
//  228             p_output = 10;
        LDR.N    R0,??DataTable6_9  ;; 0x41200000
        MOVS     R7,R0
//  229         }
//  230 
//  231         output[i] = p_output + i_output + d_output;
??PositionPIDInterate_7:
        MOVS     R0,R7
        MOV      R1,R8
        BL       __aeabi_fadd
        MOV      R1,R9
        BL       __aeabi_fadd
        STR      R0,[R5, R6, LSL #+2]
//  232 
//  233         s_sPositionPidData[i].pre_data = input[i];
        LDR      R0,[R4, R6, LSL #+2]
        LDR.N    R1,??DataTable6_7
        STR      R0,[R1, R6, LSL #+3]
//  234     }        
        ADDS     R6,R6,#+1
        B.N      ??PositionPIDInterate_0
//  235 }
??PositionPIDInterate_1:
        POP      {R4-R9,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     s_sXYZPidParameter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     s_sXYZPidData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x3f70624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     s_sHeightPidParameter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     s_sHeightPidData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     s_sPositionPidParameter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     s_sPositionPidData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x41200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x41200000

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
//   168 bytes in section .bss
// 1 576 bytes in section .text
// 
// 1 576 bytes of CODE memory
//   168 bytes of DATA memory
//
//Errors: none
//Warnings: none
