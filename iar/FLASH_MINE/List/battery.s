///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:37 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\battery.c                                           /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\battery.c -D LPLD_K60 -lCN                          /
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
//                    MINE\List\battery.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME battery

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_EnableIrq
        EXTERN LPLD_ADC_Init
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4

        PUBLIC BatteryVoltageADCIsr
        PUBLIC InitBatteryVoltageMeasurement
        PUBLIC TriggerADC
        PUBLIC TriggerBatteryADC
        PUBLIC g_battery_voltage

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\battery.c
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
        PUSH     {LR}
        SUB      SP,SP,#+28
//   17     ADC_InitTypeDef battery_voltage_adc_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   18     battery_voltage_adc_init_struct.ADC_Adcx = BATTERY_ADC_PORT;
        LDR.N    R0,??DataTable2  ;; 0x4003b000
        STR      R0,[SP, #+4]
//   19     battery_voltage_adc_init_struct.ADC_DiffMode = ADC_SE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//   20     battery_voltage_adc_init_struct.ADC_BitMode = BATTERY_ADC_BIT_MODE;
        MOVS     R0,#+3
        STRB     R0,[SP, #+9]
//   21     battery_voltage_adc_init_struct.ADC_SampleTimeCfg = SAMTIME_LONG;
        MOVS     R0,#+16
        STRB     R0,[SP, #+10]
//   22     battery_voltage_adc_init_struct.ADC_HwAvgSel = HW_4AVG;
        MOVS     R0,#+4
        STRB     R0,[SP, #+12]
//   23     battery_voltage_adc_init_struct.ADC_CalEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+15]
//   24     battery_voltage_adc_init_struct.ADC_Isr = BatteryVoltageADCIsr;
        ADR.W    R0,BatteryVoltageADCIsr
        STR      R0,[SP, #+20]
//   25 
//   26     LPLD_ADC_Init(battery_voltage_adc_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   27 
//   28     LPLD_ADC_Chn_Enable(BATTERY_ADC_PORT, BATTERY_ADC_PIN);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x4003b000
        BL       LPLD_ADC_Chn_Enable
//   29 
//   30     LPLD_ADC_EnableIrq(battery_voltage_adc_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_EnableIrq
//   31     
//   32     TriggerBatteryADC();
        BL       TriggerBatteryADC
//   33 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   34 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   35 void BatteryVoltageADCIsr(void)
//   36 {
//   37     uint16 adc_result = 0;
BatteryVoltageADCIsr:
        MOVS     R0,#+0
//   38 
//   39     adc_result = BATTERY_ADC_PORT->R[0];
        LDR.N    R1,??DataTable2_1  ;; 0x4003b010
        LDR      R1,[R1, #+0]
        MOVS     R0,R1
//   40     
//   41     g_battery_voltage = (uint16)(((uint32)adc_result * REFERANCE_VOL * AMPLIFIED_RATE)/ BATTERY_ADC_MAX_VALUE);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+1980
        MUL      R1,R1,R0
        LSRS     R1,R1,#+16
        LDR.N    R2,??DataTable2_2
        STRH     R1,[R2, #+0]
//   42 }
        BX       LR               ;; return
//   43 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 void TriggerADC(ADC_Type *adcx, AdcChnEnum_Type chn)
//   45 {
//   46     adcx->SC1[0] |= ADC_SC1_AIEN_MASK;
TriggerADC:
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,#0x40
        STR      R2,[R0, #+0]
//   47     adcx->SC1[0] &= ~(ADC_SC1_ADCH_MASK);
        LDR      R2,[R0, #+0]
        LSRS     R2,R2,#+5
        LSLS     R2,R2,#+5
        STR      R2,[R0, #+0]
//   48     adcx->SC1[0] |= ADC_SC1_ADCH(chn);    
        LDR      R2,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R3,R1,#0x1F
        ORRS     R2,R3,R2
        STR      R2,[R0, #+0]
//   49 }
        BX       LR               ;; return
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void TriggerBatteryADC(void)
//   52 {
TriggerBatteryADC:
        PUSH     {R7,LR}
//   53     TriggerADC(BATTERY_ADC_PORT, BATTERY_ADC_PIN);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x4003b000
        BL       TriggerADC
//   54 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x4003b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     g_battery_voltage

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
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 
//   2 bytes in section .bss
//  20 bytes in section .rodata
// 184 bytes in section .text
// 
// 184 bytes of CODE  memory
//  20 bytes of CONST memory
//   2 bytes of DATA  memory
//
//Errors: none
//Warnings: none
