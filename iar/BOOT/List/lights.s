///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    21/Mar/2014  14:38:59 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\lights.c                                            /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\lights.c -D LPLD_K60 -lCN                           /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\BOOT\L /
//                    ist\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\i /
//                    ar\BOOT\List\ -o E:\ShawnDocuments\IAR_WorkSpace\LPLD_Q /
//                    uad_V2\iar\BOOT\Obj\ --no_cse --no_unroll --no_inline   /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\app\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V /
//                    2\iar\..\source\module\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\CPU\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qu /
//                    ad_V2\iar\..\source\lib\common\ -I                      /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\LPLD\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Q /
//                    uad_V2\iar\..\source\lib\LPLD\HW\ -I                    /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\LPLD\DEV\ -I E:\ShawnDocuments\IAR_WorkSpace\LP /
//                    LD_Quad_V2\iar\..\source\lib\uCOS-II\Ports\ -I          /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\uCOS-II\Source\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_ /
//                    Quad_V2\iar\..\source\lib\FatFs\option\ -I              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\ /
//                    LPLD_Quad_V2\iar\..\source\lib\USB\driver\ -I           /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\descriptor\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\class\ -Ol -I "D:\Program Files\IAR         /
//                    Systems\Embedded Workbench 6.4\arm\CMSIS\Include\" -D   /
//                    ARM_MATH_CM4                                            /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\BOOT\L /
//                    ist\lights.s                                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME lights

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_GPIO_Toggle_b
        EXTERN __aeabi_memcpy4

        PUBLIC light_init
        PUBLIC set_light_1_on_off
        PUBLIC set_lights_on_off
        PUBLIC toggle_light_1
        PUBLIC toggle_lights
        PUBLIC turn_lights_off
        PUBLIC turn_lights_on

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\module\lights.c
//    1 /****************************************************************************** 
//    2  *       lights.c ----- The code for led lights use          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  lights.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/21 9:45:25                                                       *
//   10  ******************************************************************************/
//   11 #include "lights.h"
//   12 
//   13 //                 LED:     0    1    2    3    4    5    6    7

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 static GPIO_Type * led_port[LIGHTS_AMOUNT]  = {PTC, PTC, PTC, PTC, PTC, PTC, PTC, PTC};
led_port:
        DATA
        DC32 400FF080H, 400FF080H, 400FF080H, 400FF080H, 400FF080H, 400FF080H
        DC32 400FF080H, 400FF080H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   15 static uint32 led_port_bit[LIGHTS_AMOUNT]   = {12,  13,  14,  15,  16,  17,  18,  19};
led_port_bit:
        DATA
        DC32 12, 13, 14, 15, 16, 17, 18, 19
//   16 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void light_init(void)
//   18 {
light_init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
//   19     int i = 0;
        MOVS     R4,#+0
//   20     GPIO_InitTypeDef light_init_struct;
//   21 
//   22     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??light_init_0
//   23     {
//   24         light_init_struct.GPIO_PTx = led_port[i];
??light_init_1:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, R4, LSL #+2]
        STR      R0,[SP, #+4]
//   25         light_init_struct.GPIO_Pins = (uint32)0x00000001 << (led_port_bit[i]);
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_1
        LDR      R1,[R1, R4, LSL #+2]
        LSLS     R0,R0,R1
        STR      R0,[SP, #+8]
//   26         light_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   27         light_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   28         LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   29     }
        ADDS     R4,R4,#+1
??light_init_0:
        CMP      R4,#+8
        BLT.N    ??light_init_1
//   30 }
        ADD      SP,SP,#+24
        POP      {R4,PC}          ;; return
//   31 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void turn_lights_on(uint8 mask)
//   33 {
turn_lights_on:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   34     int i = 0;
        MOVS     R5,#+0
//   35 
//   36     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??turn_lights_on_0
//   37     {
//   38         if(mask & 0x01)
??turn_lights_on_1:
        LSLS     R0,R4,#+31
        BPL.N    ??turn_lights_on_2
//   39         {
//   40             set_light_1_on_off(i, 1);
        MOVS     R1,#+1
        MOVS     R0,R5
        BL       set_light_1_on_off
//   41         }
//   42         mask = mask >> 1;
??turn_lights_on_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//   43     }
        ADDS     R5,R5,#+1
??turn_lights_on_0:
        CMP      R5,#+8
        BLT.N    ??turn_lights_on_1
//   44 }
        POP      {R0,R4,R5,PC}    ;; return
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void turn_lights_off(uint8 mask)
//   47 {
turn_lights_off:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   48     int i = 0;
        MOVS     R5,#+0
//   49 
//   50     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??turn_lights_off_0
//   51     {
//   52         if(mask & 0x01)
??turn_lights_off_1:
        LSLS     R0,R4,#+31
        BPL.N    ??turn_lights_off_2
//   53         {
//   54             set_light_1_on_off(i, 0);
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       set_light_1_on_off
//   55         }
//   56         mask = mask >> 1;
??turn_lights_off_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//   57     }
        ADDS     R5,R5,#+1
??turn_lights_off_0:
        CMP      R5,#+8
        BLT.N    ??turn_lights_off_1
//   58 }
        POP      {R0,R4,R5,PC}    ;; return
//   59 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void set_lights_on_off(uint8 mask)
//   61 {
set_lights_on_off:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   62     int i = 0;
        MOVS     R5,#+0
//   63 
//   64     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??set_lights_on_off_0
//   65     {
//   66         if(mask & 0x01)
//   67         {
//   68             set_light_1_on_off(i, 1);
//   69         }
//   70         else
//   71         {
//   72             set_light_1_on_off(i, 0);
??set_lights_on_off_1:
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       set_light_1_on_off
//   73         }
//   74         mask = mask >> 1;
??set_lights_on_off_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
        ADDS     R5,R5,#+1
??set_lights_on_off_0:
        CMP      R5,#+8
        BGE.N    ??set_lights_on_off_3
        LSLS     R0,R4,#+31
        BPL.N    ??set_lights_on_off_1
        MOVS     R1,#+1
        MOVS     R0,R5
        BL       set_light_1_on_off
        B.N      ??set_lights_on_off_2
//   75     }
//   76 }
??set_lights_on_off_3:
        POP      {R0,R4,R5,PC}    ;; return
//   77 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 void set_light_1_on_off(int led_num, uint8 state)
//   79 {
set_light_1_on_off:
        PUSH     {R7,LR}
//   80     if((led_num >= 0) && (led_num < LIGHTS_AMOUNT))
        SUBS     R2,R0,#+0
        CMP      R2,#+8
        BCS.N    ??set_light_1_on_off_0
//   81     {
//   82         LPLD_GPIO_Output_b(led_port[led_num], led_port_bit[led_num], (uint8)(!state));
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??set_light_1_on_off_1
        MOVS     R2,#+1
        B.N      ??set_light_1_on_off_2
??set_light_1_on_off_1:
        MOVS     R2,#+0
??set_light_1_on_off_2:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R1,??DataTable2_1
        LDR      R1,[R1, R0, LSL #+2]
        LDR.N    R3,??DataTable2
        LDR      R0,[R3, R0, LSL #+2]
        BL       LPLD_GPIO_Output_b
//   83     }
//   84 }
??set_light_1_on_off_0:
        POP      {R0,PC}          ;; return
//   85 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   86 void toggle_light_1(int led_num)
//   87 {
toggle_light_1:
        PUSH     {R7,LR}
//   88     if((led_num >= 0) && (led_num < LIGHTS_AMOUNT))
        SUBS     R1,R0,#+0
        CMP      R1,#+8
        BCS.N    ??toggle_light_1_0
//   89     {
//   90         LPLD_GPIO_Toggle_b(led_port[led_num], (uint8)led_port_bit[led_num]);
        LDR.N    R1,??DataTable2_1
        LDR      R1,[R1, R0, LSL #+2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable2
        LDR      R0,[R2, R0, LSL #+2]
        BL       LPLD_GPIO_Toggle_b
//   91     }
//   92 }
??toggle_light_1_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     led_port

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     led_port_bit
//   93 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void toggle_lights(uint8 mask)
//   95 {
toggle_lights:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   96     int i = 0;
        MOVS     R5,#+0
//   97 
//   98     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??toggle_lights_0
//   99     {
//  100         if(mask & 0x01)
??toggle_lights_1:
        LSLS     R0,R4,#+31
        BPL.N    ??toggle_lights_2
//  101         {
//  102             toggle_light_1(i);
        MOVS     R0,R5
        BL       toggle_light_1
//  103         }
//  104         mask = mask >> 1;
??toggle_lights_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//  105     }    
        ADDS     R5,R5,#+1
??toggle_lights_0:
        CMP      R5,#+8
        BLT.N    ??toggle_lights_1
//  106 }
        POP      {R0,R4,R5,PC}    ;; return

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
//  64 bytes in section .data
// 300 bytes in section .text
// 
// 300 bytes of CODE memory
//  64 bytes of DATA memory
//
//Errors: none
//Warnings: none
