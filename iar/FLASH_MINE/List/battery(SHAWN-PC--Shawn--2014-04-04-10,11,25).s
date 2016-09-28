///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    04/Apr/2014  10:11:06 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\battery.c                                           /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\battery.c -D LPLD_K60 -lCN                          /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH_ /
//                    MINE\List\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V2\iar\FLASH_MINE\List\ -o                            /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH_ /
//                    MINE\Obj\ --no_cse --no_unroll --no_inline              /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\app\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V /
//                    2\iar\..\source\module\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\module\eMPL\ -I E:\ShawnDocuments\IAR_WorkSpace\LPL /
//                    D_Quad_V2\iar\..\source\lib\CPU\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\common\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V2\iar\..\source\lib\LPLD\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\LPLD\HW\ -I E:\ShawnDocuments\IAR_WorkSpace\LPL /
//                    D_Quad_V2\iar\..\source\lib\LPLD\DEV\ -I                /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\uCOS-II\Ports\ -I E:\ShawnDocuments\IAR_WorkSpa /
//                    ce\LPLD_Quad_V2\iar\..\source\lib\uCOS-II\Source\ -I    /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_ /
//                    Quad_V2\iar\..\source\lib\FatFs\option\ -I              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\ /
//                    LPLD_Quad_V2\iar\..\source\lib\USB\driver\ -I           /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\descriptor\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\class\ -I E:\ShawnDocuments\IAR_WorkSpace\L /
//                    PLD_Quad_V2\iar\..\source\lib\MyLib\ -On -I             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH_ /
//                    MINE\List\battery.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME battery

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_EnableIrq
        EXTERN LPLD_ADC_Get
        EXTERN LPLD_ADC_Init
        EXTERN __aeabi_memcpy4

        PUBLIC BatteryVoltageADCIsr
        PUBLIC InitBatteryVoltageMeasurement
        PUBLIC g_battery_voltage

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\module\battery.c
//    1 /****************************************************************************** 
//    2  *       battery.c ----- The AD Conversion of Battery Voltage          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  battery.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/4 9:42:47                                                       *
//   10  ******************************************************************************/
//   11 #include "battery.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   13 uint16 g_battery_voltage = 0;
g_battery_voltage:
        DS8 2
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void InitBatteryVoltageMeasurement(void)
//   16 {
InitBatteryVoltageMeasurement:
        PUSH     {R7,LR}
//   17     static ADC_InitTypeDef battery_voltage_adc_init_struct;
//   18     battery_voltage_adc_init_struct.ADC_Adcx = ADC0;
        LDR.N    R0,??DataTable1
        LDR.N    R1,??DataTable1_1  ;; 0x4003b000
        STR      R1,[R0, #+0]
//   19     battery_voltage_adc_init_struct.ADC_DiffMode = ADC_SE;
        LDR.N    R0,??DataTable1
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//   20     battery_voltage_adc_init_struct.ADC_BitMode = SE_12BIT;
        LDR.N    R0,??DataTable1
        MOVS     R1,#+1
        STRB     R1,[R0, #+5]
//   21     battery_voltage_adc_init_struct.ADC_SampleTimeCfg = SAMTIME_SHORT;
        LDR.N    R0,??DataTable1
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//   22     battery_voltage_adc_init_struct.ADC_HwAvgSel = HW_4AVG;
        LDR.N    R0,??DataTable1
        MOVS     R1,#+4
        STRB     R1,[R0, #+8]
//   23     battery_voltage_adc_init_struct.ADC_CalEnable = TRUE;
        LDR.N    R0,??DataTable1
        MOVS     R1,#+1
        STRB     R1,[R0, #+11]
//   24     battery_voltage_adc_init_struct.ADC_Isr = BatteryVoltageADCIsr;
        LDR.N    R0,??DataTable1
        ADR.W    R1,BatteryVoltageADCIsr
        STR      R1,[R0, #+16]
//   25 
//   26     LPLD_ADC_Init(battery_voltage_adc_init_struct);
        LDR.N    R1,??DataTable1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   27 
//   28     LPLD_ADC_Chn_Enable(ADC0, DAD1);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_1  ;; 0x4003b000
        BL       LPLD_ADC_Chn_Enable
//   29 
//   30     LPLD_ADC_EnableIrq(battery_voltage_adc_init_struct);
        LDR.N    R1,??DataTable1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_EnableIrq
//   31 
//   32     LPLD_ADC_Get(ADC0, DAD1);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_1  ;; 0x4003b000
        BL       LPLD_ADC_Get
//   33 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??battery_voltage_adc_init_struct:
        DS8 20
//   34 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   35 void BatteryVoltageADCIsr(void)
//   36 {
BatteryVoltageADCIsr:
        PUSH     {R4,LR}
//   37     uint16 adc_result = 0;
        MOVS     R4,#+0
//   38 
//   39     adc_result = LPLD_ADC_Get(ADC0, DAD1);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_1  ;; 0x4003b000
        BL       LPLD_ADC_Get
        MOVS     R4,R0
//   40     
//   41     g_battery_voltage = (uint16)((uint32)adc_result * 330 / 4096);
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOV      R0,#+330
        MUL      R0,R0,R4
        LSRS     R0,R0,#+12
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+0]
//   42 
//   43     g_battery_voltage = g_battery_voltage * 6;
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+6
        SMULBB   R0,R0,R1
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+0]
//   44 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ??battery_voltage_adc_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     g_battery_voltage

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
//  22 bytes in section .bss
// 158 bytes in section .text
// 
// 158 bytes of CODE memory
//  22 bytes of DATA memory
//
//Errors: none
//Warnings: none
