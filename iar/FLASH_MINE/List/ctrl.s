///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    09/Aug/2014  10:19:06 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Control\ctrl.c                                         /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Control\ctrl.c -D LPLD_K60 -lCN                        /
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
//                    MINE\List\ctrl.s                                        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME ctrl

        #define SHT_PROGBITS 0x1

        EXTERN ADNS3080_GetIntegratedPosition
        EXTERN ExceptionCheckInclination
        EXTERN GetAttitude
        EXTERN GetEulerAttitude
        EXTERN HeightPIDInterate
        EXTERN InitHeightPID
        EXTERN InitPID
        EXTERN InitPositionPID
        EXTERN PositionPIDInterate
        EXTERN SAS_PIDInterate
        EXTERN SetBuzzerMode
        EXTERN ThrottleOutSixESC
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2f
        EXTERN cos
        EXTERN g_sQuadSystemFlag
        EXTERN g_sonar_measure_distance_mm
        EXTERN g_sonar_measure_error_flag
        EXTERN quaternion_converQuaternionToYawPitchRoll
        EXTERN quaternion_converYawPitchRollToQuaternion
        EXTERN quaternion_getConjugateQuaternion
        EXTERN quaternion_loadIdentity
        EXTERN quaternion_mult
        EXTERN quaternion_normalize
        EXTERN sin

        PUBLIC CtrlCancelModeWithMask
        PUBLIC CtrlEnterHaltMode
        PUBLIC CtrlEvent
        PUBLIC CtrlGetLockTargetHeightThrottle
        PUBLIC CtrlLockHeightThrottle
        PUBLIC CtrlLockPositionEulerAngle
        PUBLIC CtrlLockTargetAttitude
        PUBLIC CtrlOutputByTargetAttitude
        PUBLIC CtrlOutputSameThrottle
        PUBLIC CtrlOutputThrottle
        PUBLIC CtrlSetBaseThrottle
        PUBLIC CtrlSetMode
        PUBLIC CtrlSetModeWithMask
        PUBLIC CtrlSetTargetEulerAttitude
        PUBLIC CtrlSetTargetHeight
        PUBLIC CtrlSetTargetPosition
        PUBLIC GetControlData
        PUBLIC GetControlParameter
        PUBLIC InitControl
        PUBLIC g_sHeightPidPara
        PUBLIC g_sPositionPidPara
        PUBLIC g_sXYZPidPara
        PUBLIC gc_f32BaseHeight
        PUBLIC gc_f32HoverThrottle
        PUBLIC gc_f32LowerLimitThrottle
        PUBLIC gc_f32UpperLimitThrottle

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Control\ctrl.c
//    1 /****************************************************************************** 
//    2  *       ctrl.c ----- The basic Control Function of Quad          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  ctrl.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/14 15:34:07                                                       *
//   10  ******************************************************************************/
//   11 #include "ctrl.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static CtrlParameter s_sControlParameter;
s_sControlParameter:
        DS8 60

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 static CtrlData s_sControlData;
s_sControlData:
        DS8 48

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H, 0H, 0H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H, 0H, 0H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H, 0H, 0H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H, 0H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H, 0H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H, 0H, 0H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H, 0H, 0H
//   15 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   16 extern const float gc_f32LowerLimitThrottle = 0.04;
gc_f32LowerLimitThrottle:
        DATA
        DC32 3D23D70AH

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   17 extern const float gc_f32UpperLimitThrottle = 1;
gc_f32UpperLimitThrottle:
        DATA
        DC32 3F800000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   18 extern const float gc_f32HoverThrottle = 0.45;
gc_f32HoverThrottle:
        DATA
        DC32 3EE66666H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   19 extern const float gc_f32BaseHeight = 0.1;
gc_f32BaseHeight:
        DATA
        DC32 3DCCCCCDH
//   20 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 PID_Parameters g_sXYZPidPara[3] = {0};// = {{0.45, 0.0025, 15}, {0.45, 0.0025, 15}, (0.25, 0, 0)};
g_sXYZPidPara:
        DS8 60

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   22 PID_Parameters g_sHeightPidPara = {0.2, 0.005, 1.0};
g_sHeightPidPara:
        DATA
        DC32 3E4CCCCDH, 3BA3D70AH, 3F800000H
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 PID_Parameters g_sPositionPidPara[2] = {0};
g_sPositionPidPara:
        DS8 40
//   24 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   25 void InitControl(void)
//   26 {
InitControl:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//   27     int i = 0;
        MOVS     R4,#+0
//   28 
//   29     s_sControlParameter.mode = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
//   30 
//   31     for(i = 0; i < 2; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??InitControl_0:
        CMP      R4,#+2
        BGE.N    ??InitControl_1
//   32     {
//   33         g_sXYZPidPara[i].p = 0.45;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_1
        MLA      R0,R0,R4,R1
        LDR.W    R1,??DataTable17_2  ;; 0x3ee66666
        STR      R1,[R0, #+0]
//   34         g_sXYZPidPara[i].i = 0.0025;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_1
        MLA      R0,R0,R4,R1
        LDR.W    R1,??DataTable17_3  ;; 0x3b23d70a
        STR      R1,[R0, #+4]
//   35         g_sXYZPidPara[i].d = 15;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_1
        MLA      R0,R0,R4,R1
        LDR.W    R1,??DataTable17_4  ;; 0x41700000
        STR      R1,[R0, #+8]
//   36         g_sXYZPidPara[i].i_output_limit = 0.05;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_1
        MLA      R0,R0,R4,R1
        LDR.W    R1,??DataTable17_5  ;; 0x3d4ccccd
        STR      R1,[R0, #+16]
//   37         g_sXYZPidPara[i].i_limit = g_sXYZPidPara[i].i_output_limit / g_sXYZPidPara[i].i;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_1
        MLA      R0,R0,R4,R1
        LDR      R0,[R0, #+16]
        MOVS     R1,#+20
        LDR.W    R2,??DataTable17_1
        MLA      R1,R1,R4,R2
        LDR      R1,[R1, #+4]
        BL       __aeabi_fdiv
        MOVS     R1,#+20
        LDR.W    R2,??DataTable17_1
        MLA      R1,R1,R4,R2
        STR      R0,[R1, #+12]
//   38     }
        ADDS     R4,R4,#+1
        B.N      ??InitControl_0
//   39     g_sXYZPidPara[2].p = 0.45;//0.25;
??InitControl_1:
        LDR.W    R0,??DataTable17_1
        LDR.W    R1,??DataTable17_2  ;; 0x3ee66666
        STR      R1,[R0, #+40]
//   40     g_sXYZPidPara[2].i = 0.0025;//0;
        LDR.W    R0,??DataTable17_1
        LDR.W    R1,??DataTable17_3  ;; 0x3b23d70a
        STR      R1,[R0, #+44]
//   41     g_sXYZPidPara[2].d = 30;//0;
        LDR.W    R0,??DataTable17_1
        LDR.W    R1,??DataTable17_6  ;; 0x41f00000
        STR      R1,[R0, #+48]
//   42     g_sXYZPidPara[2].i_output_limit = 0.05;//0;
        LDR.W    R0,??DataTable17_1
        LDR.W    R1,??DataTable17_5  ;; 0x3d4ccccd
        STR      R1,[R0, #+56]
//   43     g_sXYZPidPara[2].i_limit = g_sXYZPidPara[2].i_output_limit / g_sXYZPidPara[2].i;
        LDR.W    R0,??DataTable17_1
        LDR      R0,[R0, #+56]
        LDR.W    R1,??DataTable17_1
        LDR      R1,[R1, #+44]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable17_1
        STR      R0,[R1, #+52]
//   44     InitPID(g_sXYZPidPara);
        LDR.W    R0,??DataTable17_1
        BL       InitPID
//   45     g_sHeightPidPara.p = 0.2;
        LDR.W    R0,??DataTable17_7
        LDR.W    R1,??DataTable17_8  ;; 0x3e4ccccd
        STR      R1,[R0, #+0]
//   46     g_sHeightPidPara.i = 0.005;
        LDR.W    R0,??DataTable17_7
        LDR.W    R1,??DataTable17_9  ;; 0x3ba3d70a
        STR      R1,[R0, #+4]
//   47     g_sHeightPidPara.d = 1.0;
        LDR.W    R0,??DataTable17_7
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+8]
//   48     g_sHeightPidPara.i_output_limit = 0.35;
        LDR.W    R0,??DataTable17_7
        LDR.W    R1,??DataTable17_10  ;; 0x3eb33333
        STR      R1,[R0, #+16]
//   49     g_sHeightPidPara.i_limit = g_sHeightPidPara.i_output_limit / g_sHeightPidPara.i;
        LDR.W    R0,??DataTable17_7
        LDR      R0,[R0, #+16]
        LDR.W    R1,??DataTable17_7
        LDR      R1,[R1, #+4]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable17_7
        STR      R0,[R1, #+12]
//   50     InitHeightPID(g_sHeightPidPara);
        LDR.W    R1,??DataTable17_7
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       InitHeightPID
//   51     for(i = 0; i < 2; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??InitControl_2:
        CMP      R4,#+2
        BGE.N    ??InitControl_3
//   52     {
//   53         g_sPositionPidPara[i].p = 5.5;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_11
        MLA      R0,R0,R4,R1
        LDR.W    R1,??DataTable17_12  ;; 0x40b00000
        STR      R1,[R0, #+0]
//   54         g_sPositionPidPara[i].i = 0;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_11
        MLA      R0,R0,R4,R1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   55         g_sPositionPidPara[i].d = 50;//550/25;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_11
        MLA      R0,R0,R4,R1
        LDR.W    R1,??DataTable17_13  ;; 0x42480000
        STR      R1,[R0, #+8]
//   56         g_sPositionPidPara[i].i_output_limit = 1;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_11
        MLA      R0,R0,R4,R1
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+16]
//   57         g_sPositionPidPara[i].i_limit = g_sPositionPidPara[i].i_output_limit / g_sPositionPidPara[i].i;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable17_11
        MLA      R0,R0,R4,R1
        LDR      R0,[R0, #+16]
        MOVS     R1,#+20
        LDR.W    R2,??DataTable17_11
        MLA      R1,R1,R4,R2
        LDR      R1,[R1, #+4]
        BL       __aeabi_fdiv
        MOVS     R1,#+20
        LDR.W    R2,??DataTable17_11
        MLA      R1,R1,R4,R2
        STR      R0,[R1, #+12]
//   58     }
        ADDS     R4,R4,#+1
        B.N      ??InitControl_2
//   59     InitPositionPID(g_sPositionPidPara);
??InitControl_3:
        LDR.W    R0,??DataTable17_11
        BL       InitPositionPID
//   60 
//   61     for(i = 0; i < 4; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??InitControl_4:
        CMP      R4,#+4
        BGE.N    ??InitControl_5
//   62     {
//   63         s_sControlParameter.throttle[i] = 0;
        LDR.W    R0,??DataTable17
        ADDS     R0,R0,R4, LSL #+2
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
//   64     }
        ADDS     R4,R4,#+1
        B.N      ??InitControl_4
//   65 
//   66     quaternion_loadIdentity( &(s_sControlParameter.lock_attitude_struct.targetAttitude));
??InitControl_5:
        LDR.W    R0,??DataTable17
        BL       quaternion_loadIdentity
//   67 }
        POP      {R0,R1,R4,PC}    ;; return
//   68 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   69 void CtrlLockTargetAttitude(void)
//   70 {
CtrlLockTargetAttitude:
        PUSH     {R7,LR}
//   71     if(s_sControlParameter.lock_attitude_struct.baseThrottle < gc_f32LowerLimitThrottle)
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+20]
        LDR.W    R1,??DataTable17_14
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??CtrlLockTargetAttitude_0
//   72     {
//   73         CtrlOutputSameThrottle(0);
        MOVS     R0,#+0
        BL       CtrlOutputSameThrottle
        B.N      ??CtrlLockTargetAttitude_1
//   74     }
//   75     else
//   76     {
//   77         CtrlOutputByTargetAttitude(&(s_sControlParameter.lock_attitude_struct.targetAttitude), s_sControlParameter.lock_attitude_struct.baseThrottle);
??CtrlLockTargetAttitude_0:
        LDR.W    R0,??DataTable17
        LDR      R1,[R0, #+20]
        LDR.W    R0,??DataTable17
        BL       CtrlOutputByTargetAttitude
//   78     }
//   79 }
??CtrlLockTargetAttitude_1:
        POP      {R0,PC}          ;; return
//   80 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void CtrlOutputSameThrottle(float esc_throttle)
//   82 {
CtrlOutputSameThrottle:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   83     int i = 0;
        MOVS     R5,#+0
//   84 
//   85     for(i = 0; i < 6; i ++)
        MOVS     R0,#+0
        MOVS     R5,R0
??CtrlOutputSameThrottle_0:
        CMP      R5,#+6
        BGE.N    ??CtrlOutputSameThrottle_1
//   86     {
//   87         s_sControlParameter.throttle[i] = esc_throttle;
        LDR.W    R0,??DataTable17
        ADDS     R0,R0,R5, LSL #+2
        STR      R4,[R0, #+32]
//   88     }
        ADDS     R5,R5,#+1
        B.N      ??CtrlOutputSameThrottle_0
//   89 
//   90     CtrlOutputThrottle();
??CtrlOutputSameThrottle_1:
        BL       CtrlOutputThrottle
//   91 }
        POP      {R0,R4,R5,PC}    ;; return
//   92 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 void CtrlOutputThrottle(void)
//   94 {
CtrlOutputThrottle:
        PUSH     {R7,LR}
//   95     ThrottleOutSixESC(s_sControlParameter.throttle);
        LDR.W    R0,??DataTable17_15
        BL       ThrottleOutSixESC
//   96 }
        POP      {R0,PC}          ;; return
//   97 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   98 void CtrlOutputByTargetAttitude(quaternion * targetAttitude, float baseThrottle)
//   99 {   
CtrlOutputByTargetAttitude:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+72
        MOVS     R7,R0
        MOVS     R5,R1
//  100     //Pay Attention: If you are using this function to do the attitude control, the yaw pitch roll
//  101     //               here is HALF the real yaw pitch roll. So, if you were using the euler attitude
//  102     //               to do the control job, and now you want to use this function to do the control
//  103     //               job, you have to DOUBLE your pid parameter to adapt to this algorithm!!!
//  104     int i = 0;
        MOVS     R4,#+0
//  105     quaternion * cur = GetAttitude();
        BL       GetAttitude
        MOVS     R6,R0
//  106 
//  107     quaternion cur_rev;
//  108     quaternion delta;
//  109 
//  110     cur_rev = quaternion_getConjugateQuaternion(*cur);
        SUB      SP,SP,#+12
        MOV      R0,SP
        LDM      R6!,{R1-R3}
        STM      R0!,{R1-R3}
        LDR      R1,[R6, #0]
        STR      R1,[R0, #+0]
        SUBS     R6,R6,#+12
        SUBS     R0,R0,#+12
        POP      {R1-R3}
        ADD      R0,SP,#+56
        BL       quaternion_getConjugateQuaternion
//  111 
//  112     quaternion_mult(&delta, &cur_rev, targetAttitude);
        MOVS     R2,R7
        ADD      R1,SP,#+56
        ADD      R0,SP,#+40
        BL       quaternion_mult
//  113     quaternion_normalize(&delta);
        ADD      R0,SP,#+40
        BL       quaternion_normalize
//  114     
//  115     s_sControlData.delta_quaternion = delta;
        LDR.W    R0,??DataTable17_16
        ADD      R1,SP,#+40
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
//  116 
//  117     float output[3] = {0,0,0};
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//  118     float input[3] = {0,0,0};
        ADD      R0,SP,#+28
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//  119     float delta_ypr[3] = {0,0,0};
        ADD      R0,SP,#+16
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//  120     /* To make it the same as using the euler angle to control */
//  121 //    input[0] = delta.x * 2;
//  122 //    input[1] = delta.y * 2;
//  123 //    input[2] = delta.z * 2;
//  124     quaternion_converQuaternionToYawPitchRoll(delta, delta_ypr);
        ADD      R0,SP,#+16
        STR      R0,[SP, #+0]
        ADD      R0,SP,#+40
        LDM      R0,{R0-R3}
        BL       quaternion_converQuaternionToYawPitchRoll
//  125     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??CtrlOutputByTargetAttitude_0:
        CMP      R4,#+3
        BGE.N    ??CtrlOutputByTargetAttitude_1
//  126     {
//  127         if(delta_ypr[i] > 180)
        ADD      R0,SP,#+16
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable17_17  ;; 0x43340001
        BL       __aeabi_cfrcmple
        BHI.N    ??CtrlOutputByTargetAttitude_2
//  128         {
//  129             delta_ypr[i] -= 360;
        ADD      R0,SP,#+16
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable17_18  ;; 0xc3b40000
        BL       __aeabi_fadd
        ADD      R1,SP,#+16
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??CtrlOutputByTargetAttitude_3
//  130         }
//  131         else if(delta_ypr[i] < -180)
??CtrlOutputByTargetAttitude_2:
        ADD      R0,SP,#+16
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable17_19  ;; 0xc3340000
        BL       __aeabi_cfcmple
        BCS.N    ??CtrlOutputByTargetAttitude_3
//  132         {
//  133             delta_ypr[i] += 360;
        ADD      R0,SP,#+16
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable17_20  ;; 0x43b40000
        BL       __aeabi_fadd
        ADD      R1,SP,#+16
        STR      R0,[R1, R4, LSL #+2]
//  134         }
//  135         input[2-i] = delta_ypr[i] / 57.2957795f;
??CtrlOutputByTargetAttitude_3:
        ADD      R0,SP,#+16
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable17_21  ;; 0x42652ee1
        BL       __aeabi_fdiv
        RSBS     R1,R4,#+0
        ADD      R2,SP,#+28
        ADDS     R1,R2,R1, LSL #+2
        STR      R0,[R1, #+8]
//  136     }
        ADDS     R4,R4,#+1
        B.N      ??CtrlOutputByTargetAttitude_0
//  137     //PIDInterate(input, output);
//  138     SAS_PIDInterate(input, output);
??CtrlOutputByTargetAttitude_1:
        ADD      R1,SP,#+4
        ADD      R0,SP,#+28
        BL       SAS_PIDInterate
//  139     
//  140     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??CtrlOutputByTargetAttitude_4:
        CMP      R4,#+3
        BGE.N    ??CtrlOutputByTargetAttitude_5
//  141     {
//  142         s_sControlData.pid_output[i] = output[i];
        LDR.W    R0,??DataTable17_22
        ADD      R1,SP,#+4
        LDR      R1,[R1, R4, LSL #+2]
        STR      R1,[R0, R4, LSL #+2]
//  143     }
        ADDS     R4,R4,#+1
        B.N      ??CtrlOutputByTargetAttitude_4
//  144 
//  145 #ifndef SIX_ROTORS
//  146     /*
//  147      * “+”控制模式
//  148      */
//  149     /* 
//  150     s_sControlParameter.throttle[0] = baseThrottle             - output[1] - output[2];
//  151     s_sControlParameter.throttle[1] = baseThrottle + output[0]             + output[2];
//  152     s_sControlParameter.throttle[2] = baseThrottle             + output[1] - output[2];
//  153     s_sControlParameter.throttle[3] = baseThrottle - output[0]             + output[2];
//  154     */
//  155     
//  156     /* 
//  157      * “X”控制模式
//  158      * */
//  159     s_sControlParameter.throttle[0] = baseThrottle + (output[0]/2) - (output[1]/2) - output[2];
//  160     s_sControlParameter.throttle[1] = baseThrottle - (output[0]/2) - (output[1]/2) + output[2];
//  161     s_sControlParameter.throttle[2] = baseThrottle - (output[0]/2) + (output[1]/2) - output[2];
//  162     s_sControlParameter.throttle[3] = baseThrottle + (output[0]/2) + (output[1]/2) + output[2];    
//  163 #else
//  164     for(i = 0; i < 3; i++)
??CtrlOutputByTargetAttitude_5:
        MOVS     R0,#+0
        MOVS     R4,R0
??CtrlOutputByTargetAttitude_6:
        CMP      R4,#+3
        BGE.N    ??CtrlOutputByTargetAttitude_7
//  165     {
//  166         output[i] = output[i] * 1.1;
        ADD      R0,SP,#+4
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable17_23  ;; 0x9999999a
        LDR.W    R3,??DataTable17_24  ;; 0x3ff19999
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        ADD      R1,SP,#+4
        STR      R0,[R1, R4, LSL #+2]
//  167     }
        ADDS     R4,R4,#+1
        B.N      ??CtrlOutputByTargetAttitude_6
//  168     s_sControlParameter.throttle[0] = baseThrottle - (output[0]/2) - ((output[1]*1.1547f)/2) - output[2];
??CtrlOutputByTargetAttitude_7:
        LDR      R0,[SP, #+4]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        MOV      R8,R0
        LDR      R1,[SP, #+8]
        LDR.W    R0,??DataTable17_25  ;; 0x3f93cd36
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        LDR      R1,[SP, #+12]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable17
        STR      R0,[R1, #+32]
//  169     s_sControlParameter.throttle[1] = baseThrottle - (output[0]/2)                           + output[2];
        LDR      R0,[SP, #+4]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        LDR      R1,[SP, #+12]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable17
        STR      R0,[R1, #+36]
//  170     s_sControlParameter.throttle[2] = baseThrottle - (output[0]/2) + ((output[1]*1.1547f)/2) - output[2];
        LDR      R0,[SP, #+4]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        MOV      R8,R0
        LDR      R1,[SP, #+8]
        LDR.W    R0,??DataTable17_25  ;; 0x3f93cd36
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOV      R1,R8
        BL       __aeabi_fadd
        LDR      R1,[SP, #+12]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable17
        STR      R0,[R1, #+40]
//  171     s_sControlParameter.throttle[3] = baseThrottle + (output[0]/2) + ((output[1]*1.1547f)/2) + output[2];
        LDR      R0,[SP, #+4]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOV      R8,R0
        LDR      R1,[SP, #+8]
        LDR.W    R0,??DataTable17_25  ;; 0x3f93cd36
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOV      R1,R8
        BL       __aeabi_fadd
        LDR      R1,[SP, #+12]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable17
        STR      R0,[R1, #+44]
//  172     s_sControlParameter.throttle[4] = baseThrottle + (output[0]/2)                           - output[2];   
        LDR      R0,[SP, #+4]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R5
        BL       __aeabi_fadd
        LDR      R1,[SP, #+12]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable17
        STR      R0,[R1, #+48]
//  173     s_sControlParameter.throttle[5] = baseThrottle + (output[0]/2) - ((output[1]*1.1547f)/2) + output[2];
        LDR      R0,[SP, #+4]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOV      R8,R0
        LDR      R1,[SP, #+8]
        LDR.W    R0,??DataTable17_25  ;; 0x3f93cd36
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        LDR      R1,[SP, #+12]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable17
        STR      R0,[R1, #+52]
//  174 #endif
//  175 
//  176     CtrlOutputThrottle();
        BL       CtrlOutputThrottle
//  177 }
        ADD      SP,SP,#+72
        POP      {R4-R8,PC}       ;; return
//  178 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  179 CtrlParameter* GetControlParameter(void)
//  180 {
//  181     return &s_sControlParameter;
GetControlParameter:
        LDR.N    R0,??DataTable17
        BX       LR               ;; return
//  182 }
//  183 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 CtrlData * GetControlData(void)
//  185 {
//  186     return &s_sControlData;
GetControlData:
        LDR.W    R0,??DataTable17_22
        BX       LR               ;; return
//  187 }
//  188 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  189 float CtrlGetLockTargetHeightThrottle(float height)
//  190 {
CtrlGetLockTargetHeightThrottle:
        MOVS     R1,R0
//  191     return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
//  192 }
//  193 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  194 void CtrlEvent(void)
//  195 {
CtrlEvent:
        PUSH     {R4,LR}
//  196     if(s_sControlParameter.mode != CTRL_MODE_HALT)
        LDR.N    R0,??DataTable17
        LDRB     R0,[R0, #+56]
        CMP      R0,#+0
        BEQ.N    ??CtrlEvent_0
//  197     {
//  198         if(ExceptionCheckInclination(*GetEulerAttitude()))
        BL       GetEulerAttitude
        LDM      R0,{R0-R2}
        BL       ExceptionCheckInclination
        CMP      R0,#+0
        BEQ.N    ??CtrlEvent_0
//  199         {
//  200             g_sQuadSystemFlag.incline_halt = 1;
        LDR.W    R0,??DataTable17_26
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
//  201             CtrlEnterHaltMode();
        BL       CtrlEnterHaltMode
//  202         }
//  203     }
//  204 
//  205     switch(s_sControlParameter.mode)
??CtrlEvent_0:
        LDR.N    R0,??DataTable17
        LDRB     R0,[R0, #+56]
        CMP      R0,#+0
        BEQ.N    ??CtrlEvent_1
        CMP      R0,#+1
        BEQ.N    ??CtrlEvent_2
        CMP      R0,#+3
        BEQ.N    ??CtrlEvent_3
        CMP      R0,#+5
        BEQ.N    ??CtrlEvent_4
        CMP      R0,#+7
        BEQ.N    ??CtrlEvent_5
        B.N      ??CtrlEvent_6
//  206     {
//  207         case CTRL_MODE_HALT:
//  208             SetBuzzerMode(1);
??CtrlEvent_1:
        MOVS     R0,#+1
        BL       SetBuzzerMode
//  209             CtrlOutputSameThrottle(0);
        MOVS     R0,#+0
        BL       CtrlOutputSameThrottle
//  210             break;
        B.N      ??CtrlEvent_7
//  211         case CTRL_MODE_LOCK_ATTITUDE:
//  212             CtrlLockTargetAttitude();
??CtrlEvent_2:
        BL       CtrlLockTargetAttitude
//  213             break;
        B.N      ??CtrlEvent_7
//  214         case CTRL_MODE_LOCK_HEIGHT_ATTITUDE:
//  215             CtrlLockHeightThrottle((float)g_sonar_measure_distance_mm / 1000);
??CtrlEvent_3:
        LDR.N    R0,??DataTable17_27
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable17_28  ;; 0x447a0000
        BL       __aeabi_fdiv
        BL       CtrlLockHeightThrottle
//  216             CtrlLockTargetAttitude();
        BL       CtrlLockTargetAttitude
//  217             break;
        B.N      ??CtrlEvent_7
//  218         case CTRL_MODE_LOCK_POSITION_ATTITUDE:
//  219             CtrlLockPositionEulerAngle(ADNS3080_GetIntegratedPosition()[0], ADNS3080_GetIntegratedPosition()[1]);
??CtrlEvent_4:
        BL       ADNS3080_GetIntegratedPosition
        MOVS     R4,R0
        BL       ADNS3080_GetIntegratedPosition
        LDR      R1,[R4, #+4]
        LDR      R0,[R0, #+0]
        BL       CtrlLockPositionEulerAngle
//  220             CtrlLockTargetAttitude();
        BL       CtrlLockTargetAttitude
//  221             break;
        B.N      ??CtrlEvent_7
//  222         case CTRL_MODE_LOCK_HEIGHT_POSITION_ATTITUDE:
//  223             CtrlLockHeightThrottle((float)g_sonar_measure_distance_mm / 1000);
??CtrlEvent_5:
        LDR.N    R0,??DataTable17_27
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable17_28  ;; 0x447a0000
        BL       __aeabi_fdiv
        BL       CtrlLockHeightThrottle
//  224             CtrlLockPositionEulerAngle(ADNS3080_GetIntegratedPosition()[0], ADNS3080_GetIntegratedPosition()[1]);
        BL       ADNS3080_GetIntegratedPosition
        MOVS     R4,R0
        BL       ADNS3080_GetIntegratedPosition
        LDR      R1,[R4, #+4]
        LDR      R0,[R0, #+0]
        BL       CtrlLockPositionEulerAngle
//  225             CtrlLockTargetAttitude();
        BL       CtrlLockTargetAttitude
//  226             break;
        B.N      ??CtrlEvent_7
//  227         default:
//  228             CtrlOutputSameThrottle(0);
??CtrlEvent_6:
        MOVS     R0,#+0
        BL       CtrlOutputSameThrottle
//  229             break;
//  230     }
//  231 }
??CtrlEvent_7:
        POP      {R4,PC}          ;; return
//  232 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 void CtrlEnterHaltMode(void)
//  234 {
CtrlEnterHaltMode:
        PUSH     {R7,LR}
//  235     s_sControlParameter.mode = CTRL_MODE_HALT;
        LDR.N    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
//  236     CtrlOutputSameThrottle(0);
        MOVS     R0,#+0
        BL       CtrlOutputSameThrottle
//  237 }
        POP      {R0,PC}          ;; return
//  238 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  239 void CtrlLockHeightThrottle(float height)
//  240 {
CtrlLockHeightThrottle:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  241     float height_err = 0;
        MOVS     R5,#+0
//  242     static int control_period_cnt = 0;
//  243 
//  244     control_period_cnt ++;
        LDR.N    R0,??DataTable17_29
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable17_29
        STR      R0,[R1, #+0]
//  245 
//  246     if(control_period_cnt >= 15)
        LDR.N    R0,??DataTable17_29
        LDR      R0,[R0, #+0]
        CMP      R0,#+15
        BLT.N    ??CtrlLockHeightThrottle_0
//  247     {
//  248 
//  249         if(g_sonar_measure_error_flag == 0)
        LDR.N    R0,??DataTable17_30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CtrlLockHeightThrottle_1
//  250         {
//  251             height_err = s_sControlParameter.lock_attitude_struct.targetHeight - height;
        LDR.N    R0,??DataTable17
        LDR      R0,[R0, #+16]
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R5,R0
        B.N      ??CtrlLockHeightThrottle_2
//  252         }
//  253         else
//  254         {
//  255             height_err = -0.1;
??CtrlLockHeightThrottle_1:
        LDR.N    R0,??DataTable17_31  ;; 0xbdcccccd
        MOVS     R5,R0
//  256         }
//  257 
//  258         CtrlSetBaseThrottle(s_sControlData.lock_height_pid_output = (HeightPIDInterate(height_err) + gc_f32HoverThrottle));//0.58
??CtrlLockHeightThrottle_2:
        MOVS     R0,R5
        BL       HeightPIDInterate
        LDR.N    R1,??DataTable17_32
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable17_22
        STR      R0,[R1, #+12]
        BL       CtrlSetBaseThrottle
//  259         
//  260         control_period_cnt = 0;
        LDR.N    R0,??DataTable17_29
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  261     }
//  262 }
??CtrlLockHeightThrottle_0:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??control_period_cnt:
        DS8 4
//  263 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  264 void CtrlLockPositionEulerAngle(float x_position, float y_position)
//  265 {
CtrlLockPositionEulerAngle:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+44
        MOV      R11,R0
        MOV      R10,R1
//  266     static int control_period_cnt = 0;
//  267     static float last_ypr_output[3] = {0,0,0};
//  268     int i = 0;
        MOVS     R4,#+0
//  269 
//  270     control_period_cnt ++;
        LDR.N    R0,??DataTable17_33
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable17_33
        STR      R0,[R1, #+0]
//  271     if(control_period_cnt < 25)
        LDR.N    R0,??DataTable17_33
        LDR      R0,[R0, #+0]
        CMP      R0,#+25
        BGE.N    ??CtrlLockPositionEulerAngle_0
//  272     {
//  273         CtrlSetTargetEulerAttitude(last_ypr_output[0], last_ypr_output[1], last_ypr_output[2]);
        LDR.N    R0,??DataTable17_34
        LDR      R2,[R0, #+8]
        LDR.N    R0,??DataTable17_34
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable17_34
        LDR      R0,[R0, #+0]
        BL       CtrlSetTargetEulerAttitude
//  274         return;
        B.N      ??CtrlLockPositionEulerAngle_1
//  275     }
//  276     else
//  277     {
//  278         control_period_cnt = 0;
??CtrlLockPositionEulerAngle_0:
        LDR.N    R0,??DataTable17_33
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  279     }
//  280 
//  281     float position_err[2] = {0,0};
        ADD      R0,SP,#+24
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        SUBS     R0,R0,#+8
//  282     float output_pitch_roll[2] = {0,0};
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        SUBS     R0,R0,#+8
//  283     float target_yaw_pitch_roll[3] = {0,0,0};
        ADD      R0,SP,#+32
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//  284 
//  285     position_err[0] = s_sControlParameter.lock_attitude_struct.targetPosition[0] - x_position;
        LDR.N    R0,??DataTable17
        LDR      R0,[R0, #+24]
        MOV      R1,R11
        BL       __aeabi_fsub
        STR      R0,[SP, #+24]
//  286     position_err[1] = s_sControlParameter.lock_attitude_struct.targetPosition[1] - y_position;
        LDR.N    R0,??DataTable17
        LDR      R0,[R0, #+28]
        MOV      R1,R10
        BL       __aeabi_fsub
        STR      R0,[SP, #+28]
//  287 
//  288     PositionPIDInterate(position_err, output_pitch_roll);
        ADD      R1,SP,#+4
        ADD      R0,SP,#+24
        BL       PositionPIDInterate
//  289     output_pitch_roll[1] = -output_pitch_roll[1];
        LDR      R0,[SP, #+8]
        EORS     R0,R0,#0x80000000
        STR      R0,[SP, #+8]
//  290     
//  291     quaternion_converQuaternionToYawPitchRoll(s_sControlParameter.lock_attitude_struct.targetAttitude, target_yaw_pitch_roll);
        ADD      R0,SP,#+32
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable17
        LDM      R0,{R0-R3}
        BL       quaternion_converQuaternionToYawPitchRoll
//  292 
//  293     float output_ypr[3];
//  294     float yaw_rad;
//  295     yaw_rad = GetEulerAttitude()->yaw / 57.2957795f;
        BL       GetEulerAttitude
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable17_21  ;; 0x42652ee1
        BL       __aeabi_fdiv
        MOVS     R5,R0
//  296     output_ypr[0] = target_yaw_pitch_roll[0];
        LDR      R0,[SP, #+32]
        STR      R0,[SP, #+12]
//  297     output_ypr[1] = output_pitch_roll[0] * cos(yaw_rad) - output_pitch_roll[1] * sin(yaw_rad); 
        MOVS     R0,R5
        BL       __aeabi_f2d
        BL       cos
        MOV      R8,R0
        MOV      R9,R1
        MOVS     R0,R5
        BL       __aeabi_f2d
        BL       sin
        MOVS     R6,R0
        MOVS     R7,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        STR      R0,[SP, #+16]
//  298     output_ypr[2] = output_pitch_roll[0] * sin(yaw_rad) + output_pitch_roll[1] * cos(yaw_rad);
        MOVS     R0,R5
        BL       __aeabi_f2d
        BL       sin
        MOV      R8,R0
        MOV      R9,R1
        MOVS     R0,R5
        BL       __aeabi_f2d
        BL       cos
        MOVS     R6,R0
        MOVS     R7,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[SP, #+20]
//  299     CtrlSetTargetEulerAttitude(output_ypr[0], output_ypr[1], output_ypr[2]);
        LDR      R2,[SP, #+20]
        LDR      R1,[SP, #+16]
        LDR      R0,[SP, #+12]
        BL       CtrlSetTargetEulerAttitude
//  300     last_ypr_output[0] = output_ypr[0];
        LDR.N    R0,??DataTable17_34
        LDR      R1,[SP, #+12]
        STR      R1,[R0, #+0]
//  301     last_ypr_output[1] = output_ypr[1];
        LDR.N    R0,??DataTable17_34
        LDR      R1,[SP, #+16]
        STR      R1,[R0, #+4]
//  302     last_ypr_output[2] = output_ypr[2];
        LDR.N    R0,??DataTable17_34
        LDR      R1,[SP, #+20]
        STR      R1,[R0, #+8]
//  303 
//  304     for(i = 0; i < 2; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??CtrlLockPositionEulerAngle_2:
        CMP      R4,#+2
        BGE.N    ??CtrlLockPositionEulerAngle_3
//  305     {
//  306         s_sControlData.lock_position_pid_output[i] = output_pitch_roll[i];
        LDR.N    R0,??DataTable17_22
        ADDS     R0,R0,R4, LSL #+2
        ADD      R1,SP,#+4
        LDR      R1,[R1, R4, LSL #+2]
        STR      R1,[R0, #+32]
//  307         s_sControlData.lock_position_err[i] = position_err[i];
        LDR.N    R0,??DataTable17_22
        ADDS     R0,R0,R4, LSL #+2
        ADD      R1,SP,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R1,[R0, #+40]
//  308     }
        ADDS     R4,R4,#+1
        B.N      ??CtrlLockPositionEulerAngle_2
//  309 }
??CtrlLockPositionEulerAngle_3:
??CtrlLockPositionEulerAngle_1:
        ADD      SP,SP,#+44
        POP      {R4-R11,PC}      ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??control_period_cnt_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??last_ypr_output:
        DS8 12
//  310 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  311 void CtrlSetTargetEulerAttitude(float yaw_angle, float pitch_angle, float roll_angle)
//  312 {
CtrlSetTargetEulerAttitude:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  313     float ypr[3] = {0, 0, 0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//  314 
//  315     ypr[0] = yaw_angle;
        STR      R4,[SP, #+0]
//  316     ypr[1] = pitch_angle;
        STR      R5,[SP, #+4]
//  317     ypr[2] = roll_angle;
        STR      R6,[SP, #+8]
//  318 
//  319     s_sControlParameter.lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);
        ADD      R1,SP,#+0
        ADD      R0,SP,#+12
        BL       quaternion_converYawPitchRollToQuaternion
        LDR.N    R0,??DataTable17
        ADD      R1,SP,#+12
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
//  320 }
        ADD      SP,SP,#+32
        POP      {R4-R6,PC}       ;; return
//  321 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  322 void CtrlSetBaseThrottle(float throttle)
//  323 {
CtrlSetBaseThrottle:
        PUSH     {LR}
        MOVS     R1,R0
//  324     if(throttle > gc_f32UpperLimitThrottle)
        LDR.N    R0,??DataTable17_35
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??CtrlSetBaseThrottle_0
//  325     {
//  326         throttle = gc_f32UpperLimitThrottle;
        LDR.N    R0,??DataTable17_35
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
//  327     }
//  328     s_sControlParameter.lock_attitude_struct.baseThrottle = throttle;
??CtrlSetBaseThrottle_0:
        LDR.N    R0,??DataTable17
        STR      R1,[R0, #+20]
//  329 }
        POP      {PC}             ;; return
//  330 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  331 void CtrlSetMode(uint8 mode_to_run)
//  332 {
//  333     s_sControlParameter.mode = mode_to_run; 
CtrlSetMode:
        LDR.N    R1,??DataTable17
        STRB     R0,[R1, #+56]
//  334 }
        BX       LR               ;; return
//  335 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  336 void CtrlSetModeWithMask(uint8 mask)
//  337 {
//  338     s_sControlParameter.mode = s_sControlParameter.mode | mask;
CtrlSetModeWithMask:
        LDR.N    R1,??DataTable17
        LDRB     R1,[R1, #+56]
        ORRS     R1,R0,R1
        LDR.N    R2,??DataTable17
        STRB     R1,[R2, #+56]
//  339 }
        BX       LR               ;; return
//  340 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  341 void CtrlCancelModeWithMask(uint8 mask)
//  342 {
//  343     s_sControlParameter.mode = (s_sControlParameter.mode & (~mask));
CtrlCancelModeWithMask:
        LDR.N    R1,??DataTable17
        LDRB     R1,[R1, #+56]
        BICS     R1,R1,R0
        LDR.N    R2,??DataTable17
        STRB     R1,[R2, #+56]
//  344 }
        BX       LR               ;; return
//  345 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 void CtrlSetTargetHeight(float height)
//  347 {
CtrlSetTargetHeight:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  348     //s_sControlParameter.lock_attitude_struct.targetHeight = height;
//  349     s_sControlParameter.lock_attitude_struct.targetHeight = gc_f32BaseHeight + height;
        LDR.N    R0,??DataTable17_36
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable17
        STR      R0,[R1, #+16]
//  350 }
        POP      {R4,PC}          ;; return
//  351 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  352 void CtrlSetTargetPosition(float x_position, float y_position)
//  353 {
//  354     s_sControlParameter.lock_attitude_struct.targetPosition[0] = x_position;
CtrlSetTargetPosition:
        LDR.N    R2,??DataTable17
        STR      R0,[R2, #+24]
//  355     s_sControlParameter.lock_attitude_struct.targetPosition[1] = y_position;
        LDR.N    R2,??DataTable17
        STR      R1,[R2, #+28]
//  356 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     s_sControlParameter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     g_sXYZPidPara

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     0x3ee66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     0x3b23d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     0x41700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     0x3d4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     0x41f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     g_sHeightPidPara

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_8:
        DC32     0x3e4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_9:
        DC32     0x3ba3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_10:
        DC32     0x3eb33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_11:
        DC32     g_sPositionPidPara

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_12:
        DC32     0x40b00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_13:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_14:
        DC32     gc_f32LowerLimitThrottle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_15:
        DC32     s_sControlParameter+0x20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_16:
        DC32     s_sControlData+0x10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_17:
        DC32     0x43340001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_18:
        DC32     0xc3b40000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_19:
        DC32     0xc3340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_20:
        DC32     0x43b40000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_21:
        DC32     0x42652ee1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_22:
        DC32     s_sControlData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_23:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_24:
        DC32     0x3ff19999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_25:
        DC32     0x3f93cd36

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_26:
        DC32     g_sQuadSystemFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_27:
        DC32     g_sonar_measure_distance_mm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_28:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_29:
        DC32     ??control_period_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_30:
        DC32     g_sonar_measure_error_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_31:
        DC32     0xbdcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_32:
        DC32     gc_f32HoverThrottle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_33:
        DC32     ??control_period_cnt_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_34:
        DC32     ??last_ypr_output

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_35:
        DC32     gc_f32UpperLimitThrottle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_36:
        DC32     gc_f32BaseHeight

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
//   228 bytes in section .bss
//    20 bytes in section .data
//    92 bytes in section .rodata
// 2 100 bytes in section .text
// 
// 2 100 bytes of CODE  memory
//    92 bytes of CONST memory
//   248 bytes of DATA  memory
//
//Errors: none
//Warnings: none
