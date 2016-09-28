///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:18 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\WFLY_RCdata.c                            /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\WFLY_RCdata.c -D LPLD_K60 -lCN           /
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
//                    MINE\List\WFLY_RCdata.s                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME WFLY_RCdata

        #define SHT_PROGBITS 0x1

        EXTERN DelayWithTimer
        EXTERN ReadSwitches
        EXTERN SetBuzzerMode
        EXTERN SetLightsOnOff
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fsub
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_ui2f
        EXTERN g_WFLY_RC_pluse_width_us
        EXTERN g_u32TimerMsCnt

        PUBLIC WFLY_RC_CheckMaxRangeValid
        PUBLIC WFLY_RC_CheckOffsetValid
        PUBLIC WFLY_RC_CheckRatioValid
        PUBLIC WFLY_RC_GetCH5OnOff
        PUBLIC WFLY_RC_GetMaxRange
        PUBLIC WFLY_RC_GetMaxRangeOpe
        PUBLIC WFLY_RC_GetOffset
        PUBLIC WFLY_RC_GetOffsetOpe
        PUBLIC WFLY_RC_GetPitchRatio
        PUBLIC WFLY_RC_GetRollRatio
        PUBLIC WFLY_RC_GetThrottleRatio
        PUBLIC WFLY_RC_GetYawRatio
        PUBLIC g_u32WFLY_RC_max_range
        PUBLIC g_u32WFLY_RC_offset
        PUBLIC gc_f32MaxRCHeight
        PUBLIC gc_f32MaxRCPitchAngle
        PUBLIC gc_f32MaxRCRollAngle
        PUBLIC gc_f32MaxRCThrottle
        PUBLIC gc_f32MaxRCYawAngle
        PUBLIC gc_f32RCThrottleDeadZone

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\WFLY_RCdata.c
//    1 /****************************************************************************** 
//    2  *       WFLY_RCdata.c ----- The Program to process the data from the WFLY RC       *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  WFLY_RCdata.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/28 20:03:04                                                       *
//   10  ******************************************************************************/
//   11 #include "WFLY_RCdata.h"
//   12 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 uint32 g_u32WFLY_RC_offset[4] = {1520, 1520, 1520, 1520};
g_u32WFLY_RC_offset:
        DATA
        DC32 1520, 1520, 1520, 1520

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 uint32 g_u32WFLY_RC_max_range[4] = {798, 736, 760, 754};
g_u32WFLY_RC_max_range:
        DATA
        DC32 798, 736, 760, 754

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0
//   15 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   16 extern const float gc_f32MaxRCYawAngle = 10;
gc_f32MaxRCYawAngle:
        DATA
        DC32 41200000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   17 extern const float gc_f32MaxRCPitchAngle = 10;
gc_f32MaxRCPitchAngle:
        DATA
        DC32 41200000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   18 extern const float gc_f32MaxRCRollAngle = 10;
gc_f32MaxRCRollAngle:
        DATA
        DC32 41200000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   19 extern const float gc_f32MaxRCThrottle = 0.7;
gc_f32MaxRCThrottle:
        DATA
        DC32 3F333333H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   20 extern const float gc_f32MaxRCHeight = 1.5;
gc_f32MaxRCHeight:
        DATA
        DC32 3FC00000H
//   21 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   22 extern const float gc_f32RCThrottleDeadZone = 0.1;
gc_f32RCThrottleDeadZone:
        DATA
        DC32 3DCCCCCDH
//   23 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void WFLY_RC_GetOffset(void)
//   25 {
WFLY_RC_GetOffset:
        PUSH     {R0-R5,LR}
//   26     int i = 0;
        MOVS     R4,#+0
//   27     int j = 0;
        MOVS     R5,#+0
//   28     uint32 WFLY_RC_offset_sum[4] = {0,0,0,0};
        ADD      R0,SP,#+0
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   29 
//   30     for(i = 0; i < WFLY_RC_OFFSET_SAMPLE_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??WFLY_RC_GetOffset_0:
        CMP      R4,#+10
        BGE.N    ??WFLY_RC_GetOffset_1
//   31     {
//   32         g_u32TimerMsCnt = 0;
        LDR.W    R0,??DataTable9
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   33         for(j = 0; j < 4; j++)
        MOVS     R0,#+0
        MOVS     R5,R0
??WFLY_RC_GetOffset_2:
        CMP      R5,#+4
        BGE.N    ??WFLY_RC_GetOffset_3
//   34         {
//   35             WFLY_RC_offset_sum[j] += g_WFLY_RC_pluse_width_us[j];
        ADD      R0,SP,#+0
        LDR      R0,[R0, R5, LSL #+2]
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, R5, LSL #+2]
        ADDS     R0,R1,R0
        ADD      R1,SP,#+0
        STR      R0,[R1, R5, LSL #+2]
//   36         }
        ADDS     R5,R5,#+1
        B.N      ??WFLY_RC_GetOffset_2
//   37         while(g_u32TimerMsCnt < WFLY_RC_OFFSET_SAMPLE_PERIOD_MS);
??WFLY_RC_GetOffset_3:
        LDR.W    R0,??DataTable9
        LDR      R0,[R0, #+0]
        CMP      R0,#+20
        BCC.N    ??WFLY_RC_GetOffset_3
//   38     }
        ADDS     R4,R4,#+1
        B.N      ??WFLY_RC_GetOffset_0
//   39 
//   40     for(j = 0; j < 4; j++)
??WFLY_RC_GetOffset_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??WFLY_RC_GetOffset_4:
        CMP      R5,#+4
        BGE.N    ??WFLY_RC_GetOffset_5
//   41     {
//   42         g_u32WFLY_RC_offset[j] = WFLY_RC_offset_sum[j] / WFLY_RC_OFFSET_SAMPLE_AMOUNT;
        ADD      R0,SP,#+0
        LDR      R0,[R0, R5, LSL #+2]
        MOVS     R1,#+10
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable9_2
        STR      R0,[R1, R5, LSL #+2]
//   43     }
        ADDS     R5,R5,#+1
        B.N      ??WFLY_RC_GetOffset_4
//   44 }
??WFLY_RC_GetOffset_5:
        POP      {R0-R5,PC}       ;; return
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void WFLY_RC_GetMaxRange(void)
//   47 {
WFLY_RC_GetMaxRange:
        PUSH     {R4,LR}
        SUB      SP,SP,#+48
//   48     int i = 0;
        MOVS     R4,#+0
//   49 
//   50     int32 positive_max_range[4] = {0,0,0,0};
        ADD      R0,SP,#+32
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   51     int32 negative_max_range[4] = {0,0,0,0};
        ADD      R0,SP,#+16
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   52 
//   53     int32 pluse_width_err[4] = {0,0,0,0};
        ADD      R0,SP,#+0
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   54 
//   55     SetLightsOnOff(GETTING_WFLY_RC_MAX_RANGE_LED_HINT);
        MOVS     R0,#+245
        BL       SetLightsOnOff
//   56 
//   57     while(!ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK))
??WFLY_RC_GetMaxRange_0:
        MOVS     R0,#+4
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??WFLY_RC_GetMaxRange_1
//   58     {
//   59         for(i = 0; i < 4; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??WFLY_RC_GetMaxRange_2:
        CMP      R4,#+4
        BGE.N    ??WFLY_RC_GetMaxRange_0
//   60         {
//   61             pluse_width_err[i] = (int32)g_WFLY_RC_pluse_width_us[i] - (int32)g_u32WFLY_RC_offset[i];
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, R4, LSL #+2]
        SUBS     R0,R0,R1
        ADD      R1,SP,#+0
        STR      R0,[R1, R4, LSL #+2]
//   62             if(pluse_width_err[i] > positive_max_range[i])
        ADD      R0,SP,#+32
        LDR      R0,[R0, R4, LSL #+2]
        ADD      R1,SP,#+0
        LDR      R1,[R1, R4, LSL #+2]
        CMP      R0,R1
        BGE.N    ??WFLY_RC_GetMaxRange_3
//   63             {
//   64                 positive_max_range[i] = pluse_width_err[i];
        ADD      R0,SP,#+32
        ADD      R1,SP,#+0
        LDR      R1,[R1, R4, LSL #+2]
        STR      R1,[R0, R4, LSL #+2]
//   65             }
//   66             if(pluse_width_err[i] < negative_max_range[i])
??WFLY_RC_GetMaxRange_3:
        ADD      R0,SP,#+0
        LDR      R0,[R0, R4, LSL #+2]
        ADD      R1,SP,#+16
        LDR      R1,[R1, R4, LSL #+2]
        CMP      R0,R1
        BGE.N    ??WFLY_RC_GetMaxRange_4
//   67             {
//   68                 negative_max_range[i] = pluse_width_err[i];
        ADD      R0,SP,#+16
        ADD      R1,SP,#+0
        LDR      R1,[R1, R4, LSL #+2]
        STR      R1,[R0, R4, LSL #+2]
//   69             }
//   70         }
??WFLY_RC_GetMaxRange_4:
        ADDS     R4,R4,#+1
        B.N      ??WFLY_RC_GetMaxRange_2
//   71     }
//   72 
//   73     for(i = 0; i < 4; i++)
??WFLY_RC_GetMaxRange_1:
        MOVS     R0,#+0
        MOVS     R4,R0
??WFLY_RC_GetMaxRange_5:
        CMP      R4,#+4
        BGE.N    ??WFLY_RC_GetMaxRange_6
//   74     {
//   75         if(positive_max_range[i] >= (-negative_max_range[i]))
        ADD      R0,SP,#+32
        LDR      R0,[R0, R4, LSL #+2]
        ADD      R1,SP,#+16
        LDR      R1,[R1, R4, LSL #+2]
        CMN      R0,R1
        BLT.N    ??WFLY_RC_GetMaxRange_7
//   76         {
//   77             g_u32WFLY_RC_max_range[i] = (-negative_max_range[i]) * 2;
        ADD      R0,SP,#+16
        LDR      R0,[R0, R4, LSL #+2]
        RSBS     R0,R0,#+0
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable9_3
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??WFLY_RC_GetMaxRange_8
//   78         }
//   79         else
//   80         {
//   81             g_u32WFLY_RC_max_range[i] = positive_max_range[i] * 2;
??WFLY_RC_GetMaxRange_7:
        ADD      R0,SP,#+32
        LDR      R0,[R0, R4, LSL #+2]
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable9_3
        STR      R0,[R1, R4, LSL #+2]
//   82         }
//   83     }
??WFLY_RC_GetMaxRange_8:
        ADDS     R4,R4,#+1
        B.N      ??WFLY_RC_GetMaxRange_5
//   84 
//   85     g_u32WFLY_RC_max_range[THROTTLE_CHANNEL] = positive_max_range[THROTTLE_CHANNEL]; 
??WFLY_RC_GetMaxRange_6:
        LDR.N    R0,??DataTable9_3
        LDR      R1,[SP, #+40]
        STR      R1,[R0, #+8]
//   86 }
        ADD      SP,SP,#+48
        POP      {R4,PC}          ;; return
//   87 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   88 void WFLY_RC_GetOffsetOpe(void)
//   89 {
WFLY_RC_GetOffsetOpe:
        PUSH     {R7,LR}
//   90 #ifdef GET_WFLY_RC_OFFSET_WITH_BUZZER_HINT
//   91     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//   92     DelayWithTimer(GET_WFLY_RC_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//   93     SetBuzzerMode(0);
        MOVS     R0,#+0
        BL       SetBuzzerMode
//   94     WFLY_RC_GetOffset();
        BL       WFLY_RC_GetOffset
//   95     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//   96     DelayWithTimer(GET_WFLY_RC_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//   97     SetBuzzerMode(0);           
        MOVS     R0,#+0
        BL       SetBuzzerMode
//   98 #else
//   99     WFLY_RC_GetOffset();
//  100 #endif
//  101     while(!WFLY_RC_CheckOffsetValid())
??WFLY_RC_GetOffsetOpe_0:
        BL       WFLY_RC_CheckOffsetValid
        CMP      R0,#+0
        BNE.N    ??WFLY_RC_GetOffsetOpe_1
//  102     {
//  103         SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
        B.N      ??WFLY_RC_GetOffsetOpe_0
//  104     }
//  105 }
??WFLY_RC_GetOffsetOpe_1:
        POP      {R0,PC}          ;; return
//  106 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 void WFLY_RC_GetMaxRangeOpe(void)
//  108 {
WFLY_RC_GetMaxRangeOpe:
        PUSH     {R7,LR}
//  109 #ifdef GET_WFLY_RC_OFFSET_WITH_BUZZER_HINT
//  110     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//  111     DelayWithTimer(GET_WFLY_RC_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//  112     SetBuzzerMode(0);
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  113     WFLY_RC_GetMaxRange();
        BL       WFLY_RC_GetMaxRange
//  114     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//  115     DelayWithTimer(GET_WFLY_RC_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//  116     SetBuzzerMode(0);           
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  117 #else
//  118     WFLY_RC_GetMaxRange();
//  119 #endif
//  120     while(!WFLY_RC_CheckMaxRangeValid())
??WFLY_RC_GetMaxRangeOpe_0:
        BL       WFLY_RC_CheckMaxRangeValid
        CMP      R0,#+0
        BNE.N    ??WFLY_RC_GetMaxRangeOpe_1
//  121     {
//  122         SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
        B.N      ??WFLY_RC_GetMaxRangeOpe_0
//  123     }    
//  124 }
??WFLY_RC_GetMaxRangeOpe_1:
        POP      {R0,PC}          ;; return
//  125 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  126 uint8 WFLY_RC_CheckOffsetValid(void)
//  127 {
//  128     uint8 success = 0;
WFLY_RC_CheckOffsetValid:
        MOVS     R0,#+0
//  129 
//  130     if((g_u32WFLY_RC_offset[THROTTLE_CHANNEL] <= WFLY_RC_MAX_THROTTLE_OFFSET) && (g_u32WFLY_RC_offset[THROTTLE_CHANNEL] >= WFLY_RC_MIN_THROTTLE_OFFSET))
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, #+8]
        CMP      R1,#+2000
        BHI.N    ??WFLY_RC_CheckOffsetValid_0
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, #+8]
        CMP      R1,#+1800
        BCC.N    ??WFLY_RC_CheckOffsetValid_0
//  131     {
//  132         success = 1;
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??WFLY_RC_CheckOffsetValid_1
//  133     }
//  134     else
//  135     {
//  136         success = 0;
??WFLY_RC_CheckOffsetValid_0:
        MOVS     R1,#+0
        MOVS     R0,R1
//  137     }
//  138 
//  139     if((g_u32WFLY_RC_offset[YAW_CHANNEL] <= WFLY_RC_MAX_YAW_OFFSET) && (g_u32WFLY_RC_offset[YAW_CHANNEL] >= WFLY_RC_MIN_YAW_OFFSET))
??WFLY_RC_CheckOffsetValid_1:
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, #+12]
        CMP      R1,#+1600
        BHI.N    ??WFLY_RC_CheckOffsetValid_2
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, #+12]
        CMP      R1,#+1400
        BCC.N    ??WFLY_RC_CheckOffsetValid_2
//  140     {
//  141         success = 1;
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??WFLY_RC_CheckOffsetValid_3
//  142     }
//  143     else
//  144     {
//  145         success = 0;
??WFLY_RC_CheckOffsetValid_2:
        MOVS     R1,#+0
        MOVS     R0,R1
//  146     }
//  147 
//  148     if((g_u32WFLY_RC_offset[PITCH_CHANNEL] <= WFLY_RC_MAX_PITCH_OFFSET) && (g_u32WFLY_RC_offset[PITCH_CHANNEL] >= WFLY_RC_MIN_PITCH_OFFSET))
??WFLY_RC_CheckOffsetValid_3:
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, #+4]
        CMP      R1,#+1600
        BHI.N    ??WFLY_RC_CheckOffsetValid_4
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, #+4]
        CMP      R1,#+1400
        BCC.N    ??WFLY_RC_CheckOffsetValid_4
//  149     {
//  150         success = 1;
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??WFLY_RC_CheckOffsetValid_5
//  151     }
//  152     else
//  153     {
//  154         success = 0;
??WFLY_RC_CheckOffsetValid_4:
        MOVS     R1,#+0
        MOVS     R0,R1
//  155     }
//  156 
//  157     if((g_u32WFLY_RC_offset[ROLL_CHANNEL] <= WFLY_RC_MAX_ROLL_OFFSET) && (g_u32WFLY_RC_offset[ROLL_CHANNEL] >= WFLY_RC_MIN_ROLL_OFFSET))
??WFLY_RC_CheckOffsetValid_5:
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, #+0]
        CMP      R1,#+1600
        BHI.N    ??WFLY_RC_CheckOffsetValid_6
        LDR.N    R1,??DataTable9_2
        LDR      R1,[R1, #+0]
        CMP      R1,#+1400
        BCC.N    ??WFLY_RC_CheckOffsetValid_6
//  158     {
//  159         success = 1;
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??WFLY_RC_CheckOffsetValid_7
//  160     }
//  161     else
//  162     {
//  163         success = 0;
??WFLY_RC_CheckOffsetValid_6:
        MOVS     R1,#+0
        MOVS     R0,R1
//  164     }
//  165 
//  166     return success;
??WFLY_RC_CheckOffsetValid_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  167 }
//  168 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 uint8 WFLY_RC_CheckMaxRangeValid(void)
//  170 {
//  171     int i = 0;
WFLY_RC_CheckMaxRangeValid:
        MOVS     R1,#+0
//  172 
//  173     for(i = 0; i < 4; i++)
        MOVS     R0,#+0
        MOVS     R1,R0
??WFLY_RC_CheckMaxRangeValid_0:
        CMP      R1,#+4
        BGE.N    ??WFLY_RC_CheckMaxRangeValid_1
//  174     {
//  175         if(g_u32WFLY_RC_max_range[i] < 400)
        LDR.N    R0,??DataTable9_3
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+400
        BCS.N    ??WFLY_RC_CheckMaxRangeValid_2
//  176         {
//  177             return 0;
        MOVS     R0,#+0
        B.N      ??WFLY_RC_CheckMaxRangeValid_3
//  178         }
//  179     }
??WFLY_RC_CheckMaxRangeValid_2:
        ADDS     R1,R1,#+1
        B.N      ??WFLY_RC_CheckMaxRangeValid_0
//  180 
//  181     return 1;
??WFLY_RC_CheckMaxRangeValid_1:
        MOVS     R0,#+1
??WFLY_RC_CheckMaxRangeValid_3:
        BX       LR               ;; return
//  182 }
//  183 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 float WFLY_RC_GetThrottleRatio(void)
//  185 {
WFLY_RC_GetThrottleRatio:
        PUSH     {R3-R5,LR}
//  186     float throttle_ratio = 0;
        MOVS     R4,#+0
//  187 
//  188     throttle_ratio = ((float)g_WFLY_RC_pluse_width_us[THROTTLE_CHANNEL] - (float)g_u32WFLY_RC_offset[THROTTLE_CHANNEL]) / (float)g_u32WFLY_RC_max_range[THROTTLE_CHANNEL];
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+8]
        BL       __aeabi_ui2f
        MOVS     R5,R0
        LDR.N    R0,??DataTable9_2
        LDR      R0,[R0, #+8]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        MOVS     R5,R0
        LDR.N    R0,??DataTable9_3
        LDR      R0,[R0, #+8]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fdiv
        MOVS     R4,R0
//  189 
//  190     throttle_ratio = WFLY_RC_CheckRatioValid(throttle_ratio);
        MOVS     R0,R4
        BL       WFLY_RC_CheckRatioValid
        MOVS     R4,R0
//  191 
//  192     if(throttle_ratio < 0)
        MOVS     R0,R4
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??WFLY_RC_GetThrottleRatio_0
//  193     {
//  194         throttle_ratio = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  195     }
//  196 
//  197     return throttle_ratio;
??WFLY_RC_GetThrottleRatio_0:
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
//  198 }
//  199 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  200 float WFLY_RC_GetYawRatio(void)
//  201 {
WFLY_RC_GetYawRatio:
        PUSH     {R3-R5,LR}
//  202     float yaw_ratio = 0;
        MOVS     R4,#+0
//  203 
//  204     yaw_ratio = ((float)g_WFLY_RC_pluse_width_us[YAW_CHANNEL] - (float)g_u32WFLY_RC_offset[YAW_CHANNEL]) / ((float)g_u32WFLY_RC_max_range[YAW_CHANNEL] / 2);
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+12]
        BL       __aeabi_ui2f
        MOVS     R5,R0
        LDR.N    R0,??DataTable9_2
        LDR      R0,[R0, #+12]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        MOVS     R5,R0
        LDR.N    R0,??DataTable9_3
        LDR      R0,[R0, #+12]
        BL       __aeabi_ui2f
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fdiv
        MOVS     R4,R0
//  205 
//  206     yaw_ratio = WFLY_RC_CheckRatioValid(yaw_ratio);
        MOVS     R0,R4
        BL       WFLY_RC_CheckRatioValid
        MOVS     R4,R0
//  207 
//  208     return yaw_ratio;
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
//  209 }
//  210 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 float WFLY_RC_GetPitchRatio(void)
//  212 {
WFLY_RC_GetPitchRatio:
        PUSH     {R3-R5,LR}
//  213     float pitch_ratio = 0;
        MOVS     R4,#+0
//  214 
//  215     pitch_ratio = ((float)g_WFLY_RC_pluse_width_us[PITCH_CHANNEL] - (float)g_u32WFLY_RC_offset[PITCH_CHANNEL]) / ((float)g_u32WFLY_RC_max_range[PITCH_CHANNEL] / 2);
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+4]
        BL       __aeabi_ui2f
        MOVS     R5,R0
        LDR.N    R0,??DataTable9_2
        LDR      R0,[R0, #+4]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        MOVS     R5,R0
        LDR.N    R0,??DataTable9_3
        LDR      R0,[R0, #+4]
        BL       __aeabi_ui2f
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fdiv
        MOVS     R4,R0
//  216 
//  217     pitch_ratio = WFLY_RC_CheckRatioValid(pitch_ratio);
        MOVS     R0,R4
        BL       WFLY_RC_CheckRatioValid
        MOVS     R4,R0
//  218 
//  219     return pitch_ratio;
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
//  220 }
//  221 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222 float WFLY_RC_GetRollRatio(void)
//  223 {
WFLY_RC_GetRollRatio:
        PUSH     {R3-R5,LR}
//  224     float roll_ratio = 0;
        MOVS     R4,#+0
//  225 
//  226     roll_ratio = ((float)g_WFLY_RC_pluse_width_us[ROLL_CHANNEL] - (float)g_u32WFLY_RC_offset[ROLL_CHANNEL]) / ((float)g_u32WFLY_RC_max_range[ROLL_CHANNEL] / 2);
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R5,R0
        LDR.N    R0,??DataTable9_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        MOVS     R5,R0
        LDR.N    R0,??DataTable9_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fdiv
        MOVS     R4,R0
//  227 
//  228     roll_ratio = WFLY_RC_CheckRatioValid(roll_ratio);
        MOVS     R0,R4
        BL       WFLY_RC_CheckRatioValid
        MOVS     R4,R0
//  229 
//  230     return roll_ratio;
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
//  231 }
//  232 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 uint8 WFLY_RC_GetCH5OnOff(void)
//  234 {
//  235     uint8 ret = 0;
WFLY_RC_GetCH5OnOff:
        MOVS     R0,#+0
//  236 
//  237     if(g_WFLY_RC_pluse_width_us[CHANNEL_5] > 1000)
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+16]
        CMP      R1,#+1000
        BLS.N    ??WFLY_RC_GetCH5OnOff_0
//  238     {
//  239         ret = 1;
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??WFLY_RC_GetCH5OnOff_1
//  240     }
//  241     else
//  242     {
//  243         ret = 0;
??WFLY_RC_GetCH5OnOff_0:
        MOVS     R1,#+0
        MOVS     R0,R1
//  244     }
//  245 
//  246     return ret;
??WFLY_RC_GetCH5OnOff_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  247 }
//  248 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  249 float WFLY_RC_CheckRatioValid(float ratio_to_check)
//  250 {
WFLY_RC_CheckRatioValid:
        PUSH     {LR}
        MOVS     R2,R0
//  251     float checked_ratio = 0;
        MOVS     R3,#+0
//  252 
//  253     if(ratio_to_check > 1)
        MOVS     R0,R2
        LDR.N    R1,??DataTable9_4  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??WFLY_RC_CheckRatioValid_0
//  254     {
//  255         checked_ratio = 1;    
        MOVS     R0,#+1065353216
        MOVS     R3,R0
        B.N      ??WFLY_RC_CheckRatioValid_1
//  256     }
//  257     else if(ratio_to_check < -1)
??WFLY_RC_CheckRatioValid_0:
        MOVS     R0,R2
        LDR.N    R1,??DataTable9_5  ;; 0xbf800000
        BL       __aeabi_cfcmple
        BCS.N    ??WFLY_RC_CheckRatioValid_2
//  258     {
//  259         checked_ratio = -1;
        LDR.N    R0,??DataTable9_5  ;; 0xbf800000
        MOVS     R3,R0
        B.N      ??WFLY_RC_CheckRatioValid_1
//  260     }
//  261     else
//  262     {
//  263         checked_ratio = ratio_to_check;
??WFLY_RC_CheckRatioValid_2:
        MOVS     R3,R2
//  264     }
//  265 
//  266     return checked_ratio;
??WFLY_RC_CheckRatioValid_1:
        MOVS     R0,R3
        POP      {PC}             ;; return
//  267 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     g_u32TimerMsCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     g_WFLY_RC_pluse_width_us

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     g_u32WFLY_RC_offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     g_u32WFLY_RC_max_range

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0xbf800000

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
//  32 bytes in section .data
//  88 bytes in section .rodata
// 986 bytes in section .text
// 
// 986 bytes of CODE  memory
//  88 bytes of CONST memory
//  32 bytes of DATA  memory
//
//Errors: none
//Warnings: none
