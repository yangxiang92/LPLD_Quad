///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:13 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Others\sysflag.c                                       /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Others\sysflag.c -D LPLD_K60 -lCN                      /
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
//                    MINE\List\sysflag.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME sysflag

        #define SHT_PROGBITS 0x1

        EXTERN MemoryBytesCompare
        EXTERN ReadFlashStorage
        EXTERN ReadSwitches
        EXTERN WriteFlashStorage

        PUBLIC CheckLastSystemSettingTheSame
        PUBLIC GetSystemSettingOnSwitch
        PUBLIC LoadLastSystemSetting
        PUBLIC SaveThisSystemSettingToFlash
        PUBLIC SetDefaultLastSystemSettingInRam
        PUBLIC g_sQuadSystemFlag

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Others\sysflag.c
//    1 /****************************************************************************** 
//    2  *       sysflag.c ----- The code to set system flag          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  sysflag.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/5/1 16:37:11                                                       *
//   10  ******************************************************************************/
//   11 #include "sysflag.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 QuadSystemFlagTypeDef g_sQuadSystemFlag = {0};
g_sQuadSystemFlag:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 static QuadSystemSettingTypeDef s_sLastQuadSystemSettingInRam = {0};
s_sLastQuadSystemSettingInRam:
        DS8 8
//   15 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void GetSystemSettingOnSwitch(void)
//   17 {
GetSystemSettingOnSwitch:
        PUSH     {R7,LR}
//   18     g_sQuadSystemFlag.sys_setting.acc_getoffset = !!ReadSwitches(GET_ACC_OFFSET_SWITCH_BIT_MASK);
        MOVS     R0,#+2
        BL       ReadSwitches
        CMP      R0,#+0
        BEQ.N    ??GetSystemSettingOnSwitch_0
        MOVS     R0,#+1
        B.N      ??GetSystemSettingOnSwitch_1
??GetSystemSettingOnSwitch_0:
        MOVS     R0,#+0
??GetSystemSettingOnSwitch_1:
        LDR.N    R1,??DataTable4
        STRB     R0,[R1, #+5]
//   19 
//   20     g_sQuadSystemFlag.sys_setting.gyr_getoffset = !!ReadSwitches(GET_GYR_OFFSET_SWITCH_BIT_MASK);
        MOVS     R0,#+1
        BL       ReadSwitches
        CMP      R0,#+0
        BEQ.N    ??GetSystemSettingOnSwitch_2
        MOVS     R0,#+1
        B.N      ??GetSystemSettingOnSwitch_3
??GetSystemSettingOnSwitch_2:
        MOVS     R0,#+0
??GetSystemSettingOnSwitch_3:
        LDR.N    R1,??DataTable4
        STRB     R0,[R1, #+6]
//   21 
//   22     g_sQuadSystemFlag.sys_setting.WFLY_RC_getoffset = !!ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK);
        MOVS     R0,#+4
        BL       ReadSwitches
        CMP      R0,#+0
        BEQ.N    ??GetSystemSettingOnSwitch_4
        MOVS     R0,#+1
        B.N      ??GetSystemSettingOnSwitch_5
??GetSystemSettingOnSwitch_4:
        MOVS     R0,#+0
??GetSystemSettingOnSwitch_5:
        LDR.N    R1,??DataTable4
        STRB     R0,[R1, #+7]
//   23 
//   24     g_sQuadSystemFlag.sys_setting.save_default_param_to_flash = !!ReadSwitches(SAVE_DEFAULT_PARAM_TO_FLASH_SWITCH_BIT_MASK);
        MOVS     R0,#+64
        BL       ReadSwitches
        CMP      R0,#+0
        BEQ.N    ??GetSystemSettingOnSwitch_6
        MOVS     R0,#+1
        B.N      ??GetSystemSettingOnSwitch_7
??GetSystemSettingOnSwitch_6:
        MOVS     R0,#+0
??GetSystemSettingOnSwitch_7:
        LDR.N    R1,??DataTable4
        STRB     R0,[R1, #+8]
//   25 
//   26     g_sQuadSystemFlag.sys_setting.use_ak8975c = 0;//!!ReadSwitches(USE_AK8975C_SWITCH_BIT_MASK);
        LDR.N    R0,??DataTable4
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
//   27 
//   28     g_sQuadSystemFlag.sys_setting.lock_height = !!ReadSwitches(LOCK_HEIGHT_CONTROL_SWITCH_BIT_MASK);
        MOVS     R0,#+32
        BL       ReadSwitches
        CMP      R0,#+0
        BEQ.N    ??GetSystemSettingOnSwitch_8
        MOVS     R0,#+1
        B.N      ??GetSystemSettingOnSwitch_9
??GetSystemSettingOnSwitch_8:
        MOVS     R0,#+0
??GetSystemSettingOnSwitch_9:
        LDR.N    R1,??DataTable4
        STRB     R0,[R1, #+12]
//   29 
//   30     g_sQuadSystemFlag.sys_setting.use_buzzer = !!ReadSwitches(USE_BUZZER_SWITCH_BIT_MASK);
        MOVS     R0,#+16
        BL       ReadSwitches
        CMP      R0,#+0
        BEQ.N    ??GetSystemSettingOnSwitch_10
        MOVS     R0,#+1
        B.N      ??GetSystemSettingOnSwitch_11
??GetSystemSettingOnSwitch_10:
        MOVS     R0,#+0
??GetSystemSettingOnSwitch_11:
        LDR.N    R1,??DataTable4
        STRB     R0,[R1, #+10]
//   31 
//   32     g_sQuadSystemFlag.sys_setting.use_WFLY_RC = !!ReadSwitches(USE_WFLY_RC_SWITCH_BIT_MASK);
        MOVS     R0,#+8
        BL       ReadSwitches
        CMP      R0,#+0
        BEQ.N    ??GetSystemSettingOnSwitch_12
        MOVS     R0,#+1
        B.N      ??GetSystemSettingOnSwitch_13
??GetSystemSettingOnSwitch_12:
        MOVS     R0,#+0
??GetSystemSettingOnSwitch_13:
        LDR.N    R1,??DataTable4
        STRB     R0,[R1, #+11]
//   33 }
        POP      {R0,PC}          ;; return
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 uint8 LoadLastSystemSetting()
//   36 {
LoadLastSystemSetting:
        PUSH     {R4,LR}
//   37     uint8 result= 0;
        MOVS     R4,#+0
//   38     
//   39     result = ReadFlashStorage(LAST_SYSTEM_SETTING_POS, &s_sLastQuadSystemSettingInRam, sizeof(QuadSystemSettingTypeDef));
        MOVS     R2,#+8
        LDR.N    R1,??DataTable4_1
        MOV      R0,#+256
        BL       ReadFlashStorage
        MOVS     R4,R0
//   40 
//   41     if(result == 0)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LoadLastSystemSetting_0
//   42     {
//   43         SetDefaultLastSystemSettingInRam();
        BL       SetDefaultLastSystemSettingInRam
//   44     }
//   45 
//   46     return result;
??LoadLastSystemSetting_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//   47 }
//   48 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   49 void SetDefaultLastSystemSettingInRam(void)
//   50 {
//   51     s_sLastQuadSystemSettingInRam.acc_getoffset = 0;
SetDefaultLastSystemSettingInRam:
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   52     s_sLastQuadSystemSettingInRam.gyr_getoffset = 0;
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//   53     s_sLastQuadSystemSettingInRam.WFLY_RC_getoffset = 0;
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//   54     s_sLastQuadSystemSettingInRam.save_default_param_to_flash = 1;
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
//   55     s_sLastQuadSystemSettingInRam.use_ak8975c = 0;
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//   56     s_sLastQuadSystemSettingInRam.use_buzzer = 1;
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+5]
//   57     s_sLastQuadSystemSettingInRam.use_WFLY_RC = 0;    
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//   58 }
        BX       LR               ;; return
//   59 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 uint8 SaveThisSystemSettingToFlash(void)
//   61 {
SaveThisSystemSettingToFlash:
        PUSH     {R4,LR}
//   62     uint8 result = 0;
        MOVS     R4,#+0
//   63 
//   64     result = WriteFlashStorage(LAST_SYSTEM_SETTING_POS, &(g_sQuadSystemFlag.sys_setting), sizeof(QuadSystemSettingTypeDef));
        MOVS     R2,#+8
        LDR.N    R1,??DataTable4_2
        MOV      R0,#+256
        BL       WriteFlashStorage
        MOVS     R4,R0
//   65 
//   66     return result;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//   67 }
//   68 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   69 uint8 CheckLastSystemSettingTheSame()
//   70 {
CheckLastSystemSettingTheSame:
        PUSH     {R4,LR}
//   71     int8 result = 0;
        MOVS     R4,#+0
//   72 
//   73     LoadLastSystemSetting();
        BL       LoadLastSystemSetting
//   74     
//   75     result = MemoryBytesCompare(&s_sLastQuadSystemSettingInRam, &(g_sQuadSystemFlag.sys_setting), sizeof(QuadSystemSettingTypeDef));
        MOVS     R2,#+8
        LDR.N    R1,??DataTable4_2
        LDR.N    R0,??DataTable4_1
        BL       MemoryBytesCompare
        MOVS     R4,R0
//   76 
//   77     if(result == 0)
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??CheckLastSystemSettingTheSame_0
//   78     {
//   79         return 1;
        MOVS     R0,#+1
        B.N      ??CheckLastSystemSettingTheSame_1
//   80     }
//   81     else
//   82     {
//   83         return 0;
??CheckLastSystemSettingTheSame_0:
        MOVS     R0,#+0
??CheckLastSystemSettingTheSame_1:
        POP      {R4,PC}          ;; return
//   84     }
//   85 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     g_sQuadSystemFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     s_sLastQuadSystemSettingInRam

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     g_sQuadSystemFlag+0x5

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
//  24 bytes in section .bss
// 298 bytes in section .text
// 
// 298 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none
