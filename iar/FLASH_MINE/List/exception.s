///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:12 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Others\exception.c                                     /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Others\exception.c -D LPLD_K60 -lCN                    /
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
//                    MINE\List\exception.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME exception

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_f2d

        PUBLIC ExceptionCheckBatteryVoltageTooLow
        PUBLIC ExceptionCheckInclination
        PUBLIC g_f32HaltInclinationAngle
        PUBLIC g_f32HaltVoltage
        PUBLIC gc_f32LandingThrottle

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Others\exception.c
//    1 /****************************************************************************** 
//    2  *       exception.c ----- The exception situation haldle          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  exception.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/5/5 10:27:30                                                       *
//   10  ******************************************************************************/
//   11 #include "exception.h"
//   12 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 float g_f32HaltVoltage = 14.8;
g_f32HaltVoltage:
        DATA
        DC32 416CCCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 float g_f32HaltInclinationAngle = 25;
g_f32HaltInclinationAngle:
        DATA
        DC32 41C80000H
//   15 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   16 extern const float gc_f32LandingThrottle = 0.4;
gc_f32LandingThrottle:
        DATA
        DC32 3ECCCCCDH
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 uint8 ExceptionCheckInclination(EulerAttitudeTypeDef euler_attitude)
//   19 {
ExceptionCheckInclination:
        PUSH     {R0-R2,R4,R5,LR}
//   20     if((fabs(euler_attitude.roll) > g_f32HaltInclinationAngle) || (fabs(euler_attitude.pitch) > g_f32HaltInclinationAngle))
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R5,R5,#0x80000000
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCC.N    ??ExceptionCheckInclination_0
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R5,R5,#0x80000000
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??ExceptionCheckInclination_1
//   21     {
//   22         return 1;
??ExceptionCheckInclination_0:
        MOVS     R0,#+1
        B.N      ??ExceptionCheckInclination_2
//   23     }
//   24     else
//   25     {
//   26         return 0;
??ExceptionCheckInclination_1:
        MOVS     R0,#+0
??ExceptionCheckInclination_2:
        POP      {R1-R5,PC}       ;; return
//   27     }
//   28 }
//   29 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 uint8 ExceptionCheckBatteryVoltageTooLow(float voltage)
//   31 {
ExceptionCheckBatteryVoltageTooLow:
        PUSH     {LR}
        MOVS     R2,R0
//   32     if(voltage < g_f32HaltVoltage)
        MOVS     R0,R2
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??ExceptionCheckBatteryVoltageTooLow_0
//   33     {
//   34         return 1;
        MOVS     R0,#+1
        B.N      ??ExceptionCheckBatteryVoltageTooLow_1
//   35     }
//   36     else
//   37     {
//   38         return 0;
??ExceptionCheckBatteryVoltageTooLow_0:
        MOVS     R0,#+0
??ExceptionCheckBatteryVoltageTooLow_1:
        POP      {PC}             ;; return
//   39     }
//   40 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     g_f32HaltInclinationAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
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
//   8 bytes in section .data
//   4 bytes in section .rodata
// 106 bytes in section .text
// 
// 106 bytes of CODE  memory
//   4 bytes of CONST memory
//   8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
