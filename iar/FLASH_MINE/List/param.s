///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:21 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Others\param.c                                         /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Others\param.c -D LPLD_K60 -lCN                        /
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
//                    MINE\List\param.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME param

        #define SHT_PROGBITS 0x1

        EXTERN CalculateCrc16_HalfByte
        EXTERN ExchangeUint16Bytes
        EXTERN InitPID
        EXTERN ReadFlashStorage
        EXTERN WriteFlashStorage
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_memcpy4
        EXTERN g_f32AccGain
        EXTERN g_f32GyrGain
        EXTERN g_f32HaltVoltage
        EXTERN g_f32MagGain
        EXTERN g_i16AccOffset
        EXTERN g_i16GyrOffset
        EXTERN g_i16MagOffset
        EXTERN g_sXYZPidPara
        EXTERN g_u32WFLY_RC_max_range
        EXTERN g_u32WFLY_RC_offset

        PUBLIC ApplyQuadParam
        PUBLIC CheckQuadParamValid
        PUBLIC GetQuadParamInRam
        PUBLIC InitQuadParam
        PUBLIC LoadDefaultQuadParam
        PUBLIC LoadQuadParamInFlash
        PUBLIC RefreshQuadParamCrc
        PUBLIC SaveQuadParamToFlash

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Others\param.c
//    1 /****************************************************************************** 
//    2  *       param.c ----- The code of the param setting of the quad          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  param.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/30 20:26:32                                                       *
//   10  ******************************************************************************/
//   11 #include "param.h" 
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static QuadParamTypeDef s_sQuadParamInRam = {0};
s_sQuadParamInRam:
        DS8 160
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 uint8 InitQuadParam(void)
//   16 {
InitQuadParam:
        PUSH     {R4,LR}
        SUB      SP,SP,#+144
//   17 
//   18     uint8 success = 0;
        MOVS     R4,#+0
//   19     if(!LoadQuadParamInFlash(&s_sQuadParamInRam))
        LDR.N    R0,??DataTable3
        BL       LoadQuadParamInFlash
        CMP      R0,#+0
        BNE.N    ??InitQuadParam_0
//   20     {
//   21         success = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??InitQuadParam_1
//   22     }
//   23     else 
//   24     {
//   25         if(!CheckQuadParamValid(s_sQuadParamInRam))
??InitQuadParam_0:
        LDR.N    R1,??DataTable3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+160
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       CheckQuadParamValid
        CMP      R0,#+0
        BNE.N    ??InitQuadParam_2
//   26         {
//   27             success = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??InitQuadParam_1
//   28         }
//   29         else
//   30         {
//   31             success = 1;
??InitQuadParam_2:
        MOVS     R0,#+1
        MOVS     R4,R0
//   32         }
//   33     }
//   34 
//   35     if(success == 0)
??InitQuadParam_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??InitQuadParam_3
//   36     {
//   37         LoadDefaultQuadParam(&s_sQuadParamInRam);
        LDR.N    R0,??DataTable3
        BL       LoadDefaultQuadParam
//   38     }
//   39 
//   40     return success;
??InitQuadParam_3:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+144
        POP      {R4,PC}          ;; return
//   41 }
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 uint8 LoadQuadParamInFlash(QuadParamTypeDef * p_quad_param)
//   44 {
LoadQuadParamInFlash:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   45     return ReadFlashStorage(QUAD_PARAM_FLASH_STORAGE_POS, p_quad_param, sizeof(QuadParamTypeDef));
        MOVS     R2,#+157
        MOVS     R1,R4
        MOVS     R0,#+0
        BL       ReadFlashStorage
        POP      {R4,PC}          ;; return
//   46 }
//   47 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 uint8 CheckQuadParamValid(QuadParamTypeDef quad_param)
//   49 {
CheckQuadParamValid:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//   50     if(CalculateCrc16_HalfByte(&quad_param, sizeof(QuadParamTypeDef)) != 0)
        MOVS     R1,#+157
        ADD      R0,SP,#+8
        BL       CalculateCrc16_HalfByte
        CMP      R0,#+0
        BEQ.N    ??CheckQuadParamValid_0
//   51     {
//   52         return 0;
        MOVS     R0,#+0
        B.N      ??CheckQuadParamValid_1
//   53     }
//   54     else if(quad_param.size != sizeof(QuadParamTypeDef))
??CheckQuadParamValid_0:
        LDRB     R0,[SP, #+8]
        CMP      R0,#+157
        BEQ.N    ??CheckQuadParamValid_2
//   55     {
//   56         return 0;
        MOVS     R0,#+0
        B.N      ??CheckQuadParamValid_1
//   57     }
//   58     else
//   59     {
//   60         return 1;
??CheckQuadParamValid_2:
        MOVS     R0,#+1
??CheckQuadParamValid_1:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//   61     }
//   62 }
//   63 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 void LoadDefaultQuadParam(QuadParamTypeDef * p_quad_param)
//   65 {
LoadDefaultQuadParam:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   66     int i = 0;
        MOVS     R5,#+0
//   67 
//   68     p_quad_param->size = sizeof(QuadParamTypeDef);
        MOVS     R0,#+157
        STRB     R0,[R4, #+0]
//   69 
//   70     p_quad_param->acc_offset[0] = -200;
        MVNS     R0,#+199
        STRH     R0,[R4, #+1]
//   71     p_quad_param->acc_offset[1] = 100;
        MOVS     R0,#+100
        STRH     R0,[R4, #+3]
//   72     p_quad_param->acc_offset[2] = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+5]
//   73 
//   74     p_quad_param->gyr_offset[0] = 5;
        MOVS     R0,#+5
        STRH     R0,[R4, #+19]
//   75     p_quad_param->gyr_offset[1] = 41;
        MOVS     R0,#+41
        STRH     R0,[R4, #+21]
//   76     p_quad_param->gyr_offset[2] = -16;
        MVNS     R0,#+15
        STRH     R0,[R4, #+23]
//   77 
//   78     p_quad_param->mag_offset[0] = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+37]
//   79     p_quad_param->mag_offset[1] = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+39]
//   80     p_quad_param->mag_offset[2] = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+41]
//   81 
//   82     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??LoadDefaultQuadParam_0:
        CMP      R5,#+3
        BGE.N    ??LoadDefaultQuadParam_1
//   83     {
//   84         p_quad_param->acc_gain[i] = 0.0005981445f ;
        ADDS     R0,R4,R5, LSL #+2
        LDR.N    R1,??DataTable3_1  ;; 0x3a1ccccc
        STR      R1,[R0, #+7]
//   85         p_quad_param->gyr_gain[i] = 0.001065264f;
        ADDS     R0,R4,R5, LSL #+2
        LDR.N    R1,??DataTable3_2  ;; 0x3a8ba054
        STR      R1,[R0, #+25]
//   86         p_quad_param->mag_gain[i] = 1;
        ADDS     R0,R4,R5, LSL #+2
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+43]
//   87     }
        ADDS     R5,R5,#+1
        B.N      ??LoadDefaultQuadParam_0
//   88 
//   89     for(i = 0; i < 4; i++)
??LoadDefaultQuadParam_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??LoadDefaultQuadParam_2:
        CMP      R5,#+4
        BGE.N    ??LoadDefaultQuadParam_3
//   90     {
//   91         p_quad_param->WFLY_RC_offset[i] = 1520;
        ADDS     R0,R4,R5, LSL #+2
        MOV      R1,#+1520
        STR      R1,[R0, #+55]
//   92         p_quad_param->WFLY_RC_max_range[i] = 700;
        ADDS     R0,R4,R5, LSL #+2
        MOV      R1,#+700
        STR      R1,[R0, #+71]
//   93     }
        ADDS     R5,R5,#+1
        B.N      ??LoadDefaultQuadParam_2
//   94 
//   95     for(i = 0; i < 2; i++)
??LoadDefaultQuadParam_3:
        MOVS     R0,#+0
        MOVS     R5,R0
??LoadDefaultQuadParam_4:
        CMP      R5,#+2
        BGE.N    ??LoadDefaultQuadParam_5
//   96     {
//   97         p_quad_param->ypr_pid_param[i].p = 0.45;
        MOVS     R0,#+20
        MLA      R0,R0,R5,R4
        LDR.N    R1,??DataTable3_3  ;; 0x3ee66666
        STR      R1,[R0, #+87]
//   98         p_quad_param->ypr_pid_param[i].i = 0.0025;
        MOVS     R0,#+20
        MLA      R0,R0,R5,R4
        LDR.N    R1,??DataTable3_4  ;; 0x3b23d70a
        STR      R1,[R0, #+91]
//   99         p_quad_param->ypr_pid_param[i].d = 15;
        MOVS     R0,#+20
        MLA      R0,R0,R5,R4
        LDR.N    R1,??DataTable3_5  ;; 0x41700000
        STR      R1,[R0, #+95]
//  100         p_quad_param->ypr_pid_param[i].i_output_limit = 0.05;
        MOVS     R0,#+20
        MLA      R0,R0,R5,R4
        LDR.N    R1,??DataTable3_6  ;; 0x3d4ccccd
        STR      R1,[R0, #+103]
//  101         p_quad_param->ypr_pid_param[i].i_limit = p_quad_param->ypr_pid_param[i].i_output_limit / p_quad_param->ypr_pid_param[i].i;
        MOVS     R0,#+20
        MLA      R1,R0,R5,R4
        LDR      R0,[R1, #+103]
        MOVS     R1,#+20
        MLA      R2,R1,R5,R4
        LDR      R1,[R2, #+91]
        MOVS     R2,#+20
        MLA      R6,R2,R5,R4
        BL       __aeabi_fdiv
        STR      R0,[R6, #+99]
//  102     }
        ADDS     R5,R5,#+1
        B.N      ??LoadDefaultQuadParam_4
//  103     p_quad_param->ypr_pid_param[2].p = 0.25;
??LoadDefaultQuadParam_5:
        MOVS     R0,#+1048576000
        STR      R0,[R4, #+127]
//  104     p_quad_param->ypr_pid_param[2].i = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+131]
//  105     p_quad_param->ypr_pid_param[2].d = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+135]
//  106     p_quad_param->ypr_pid_param[2].i_output_limit = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+143]
//  107     p_quad_param->ypr_pid_param[2].i_limit = p_quad_param->ypr_pid_param[2].i_output_limit / p_quad_param->ypr_pid_param[2].i;
        LDR      R0,[R4, #+143]
        LDR      R1,[R4, #+131]
        BL       __aeabi_fdiv
        STR      R0,[R4, #+139]
//  108 
//  109     p_quad_param->halt_voltage = 14.8;
        LDR.N    R0,??DataTable3_7  ;; 0x416ccccd
        STR      R0,[R4, #+147]
//  110 
//  111     p_quad_param->halt_inclination_angle = 30;
        LDR.N    R0,??DataTable3_8  ;; 0x41f00000
        STR      R0,[R4, #+151]
//  112 
//  113     RefreshQuadParamCrc(p_quad_param);
        MOVS     R0,R4
        BL       RefreshQuadParamCrc
//  114 }
        POP      {R4-R6,PC}       ;; return
//  115 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116 void RefreshQuadParamCrc(QuadParamTypeDef * p_quad_param)
//  117 {
RefreshQuadParamCrc:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  118     uint16 ccitt_crc_code = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
//  119 
//  120     ccitt_crc_code = CalculateCrc16_HalfByte(p_quad_param, sizeof(QuadParamTypeDef) - 2);
        MOVS     R1,#+155
        MOVS     R0,R4
        BL       CalculateCrc16_HalfByte
        STRH     R0,[SP, #+0]
//  121 
//  122     ExchangeUint16Bytes(&ccitt_crc_code);
        ADD      R0,SP,#+0
        BL       ExchangeUint16Bytes
//  123 
//  124     p_quad_param->crc_code = ccitt_crc_code;
        LDRH     R0,[SP, #+0]
        STRH     R0,[R4, #+155]
//  125 }
        POP      {R0,R1,R4,PC}    ;; return
//  126 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 uint8 SaveQuadParamToFlash(QuadParamTypeDef quad_param)
//  128 {
SaveQuadParamToFlash:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  129     uint8 result = 0;
        MOVS     R4,#+0
//  130 
//  131     RefreshQuadParamCrc(&quad_param);
        ADD      R0,SP,#+8
        BL       RefreshQuadParamCrc
//  132 
//  133     result = WriteFlashStorage(QUAD_PARAM_FLASH_STORAGE_POS, &quad_param, sizeof(QuadParamTypeDef));
        MOVS     R2,#+157
        ADD      R1,SP,#+8
        MOVS     R0,#+0
        BL       WriteFlashStorage
        MOVS     R4,R0
//  134     
//  135     return result;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  136 }
//  137 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  138 QuadParamTypeDef * GetQuadParamInRam(void)
//  139 {
//  140     return &s_sQuadParamInRam;
GetQuadParamInRam:
        LDR.N    R0,??DataTable3
        BX       LR               ;; return
//  141 }
//  142 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  143 void ApplyQuadParam(QuadParamTypeDef quad_param)
//  144 {
ApplyQuadParam:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
//  145     int i = 0;
        MOVS     R4,#+0
//  146 
//  147     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??ApplyQuadParam_0:
        CMP      R4,#+3
        BGE.N    ??ApplyQuadParam_1
//  148     {
//  149         g_i16AccOffset[i] = quad_param.acc_offset[i];
        ADD      R0,SP,#+32
        ADDS     R0,R0,R4, LSL #+1
        LDRH     R0,[R0, #+1]
        LDR.N    R1,??DataTable3_9
        STRH     R0,[R1, R4, LSL #+1]
//  150         g_f32AccGain[i]   = quad_param.acc_gain[i];
        ADD      R0,SP,#+32
        ADDS     R0,R0,R4, LSL #+2
        LDR      R1,[R0, #+7]
        LDR.N    R0,??DataTable3_10
        STR      R1,[R0, R4, LSL #+2]
//  151         g_i16GyrOffset[i] = quad_param.gyr_offset[i];
        ADD      R0,SP,#+32
        ADDS     R0,R0,R4, LSL #+1
        LDRH     R0,[R0, #+19]
        LDR.N    R1,??DataTable3_11
        STRH     R0,[R1, R4, LSL #+1]
//  152         g_f32GyrGain[i]   = quad_param.gyr_gain[i];
        ADD      R0,SP,#+32
        ADDS     R0,R0,R4, LSL #+2
        LDR      R1,[R0, #+25]
        LDR.N    R0,??DataTable3_12
        STR      R1,[R0, R4, LSL #+2]
//  153         g_i16MagOffset[i] = quad_param.mag_offset[i];
        ADD      R0,SP,#+32
        ADDS     R0,R0,R4, LSL #+1
        LDRH     R0,[R0, #+37]
        LDR.N    R1,??DataTable3_13
        STRH     R0,[R1, R4, LSL #+1]
//  154         g_f32MagGain[i]   = quad_param.mag_gain[i];
        ADD      R0,SP,#+32
        ADDS     R0,R0,R4, LSL #+2
        LDR      R1,[R0, #+43]
        LDR.N    R0,??DataTable3_14
        STR      R1,[R0, R4, LSL #+2]
//  155         g_sXYZPidPara[i]  = quad_param.ypr_pid_param[i];
        MOVS     R0,#+0
??ApplyQuadParam_2:
        MOVS     R1,#+20
        ADD      R2,SP,#+32
        MLA      R1,R1,R4,R2
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+87]
        ADD      R2,SP,#+0
        STRB     R1,[R0, R2]
        ADDS     R0,R0,#+1
        CMP      R0,#+20
        BLT.N    ??ApplyQuadParam_2
        MOVS     R0,#+20
        LDR.N    R1,??DataTable3_15
        MLA      R0,R0,R4,R1
        ADD      R1,SP,#+0
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
//  156         InitPID(g_sXYZPidPara);
        LDR.N    R0,??DataTable3_15
        BL       InitPID
//  157     }
        ADDS     R4,R4,#+1
        B.N      ??ApplyQuadParam_0
//  158 
//  159     for(i = 0; i < 4; i++)
??ApplyQuadParam_1:
        MOVS     R0,#+0
        MOVS     R4,R0
??ApplyQuadParam_3:
        CMP      R4,#+4
        BGE.N    ??ApplyQuadParam_4
//  160     {
//  161         g_u32WFLY_RC_offset[i] = quad_param.WFLY_RC_offset[i];
        ADD      R0,SP,#+32
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+55]
        LDR.N    R1,??DataTable3_16
        STR      R0,[R1, R4, LSL #+2]
//  162         g_u32WFLY_RC_max_range[i] = quad_param.WFLY_RC_max_range[i];
        ADD      R0,SP,#+32
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+71]
        LDR.N    R1,??DataTable3_17
        STR      R0,[R1, R4, LSL #+2]
//  163     }
        ADDS     R4,R4,#+1
        B.N      ??ApplyQuadParam_3
//  164 
//  165     g_f32HaltVoltage = quad_param.halt_voltage;
??ApplyQuadParam_4:
        ADD      R0,SP,#+179
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable3_18
        STR      R1,[R0, #+0]
//  166     //g_f32HaltInclinationAngle = quad_param.halt_inclination_angle;
//  167 }
        ADD      SP,SP,#+24
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     s_sQuadParamInRam

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x3a1ccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x3a8ba054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x3ee66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x3b23d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x41700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x3d4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x416ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x41f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     g_i16AccOffset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     g_f32AccGain

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     g_i16GyrOffset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     g_f32GyrGain

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     g_i16MagOffset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     g_f32MagGain

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     g_sXYZPidPara

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     g_u32WFLY_RC_offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     g_u32WFLY_RC_max_range

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     g_f32HaltVoltage

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
// 160 bytes in section .bss
// 814 bytes in section .text
// 
// 814 bytes of CODE memory
// 160 bytes of DATA memory
//
//Errors: none
//Warnings: none
