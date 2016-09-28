///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:19 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\flowdata.c                               /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\flowdata.c -D LPLD_K60 -lCN              /
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
//                    MINE\List\flowdata.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME flowdata

        #define SHT_PROGBITS 0x1

        EXTERN FlowFilterInput
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN cos
        EXTERN g_sPx4flowData
        EXTERN g_u8FlowNewData
        EXTERN sin

        PUBLIC AddSpeedToPosition
        PUBLIC CheckFloatUnvalid
        PUBLIC Flow_RefreshRawData

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\flowdata.c
//    1 /****************************************************************************** 
//    2  *       flowdata.c ----- The code to handle the data from the px4flow          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  flowdata.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/7/7 21:18:31                                                       *
//   10  ******************************************************************************/
//   11 #include "flowdata.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 uint8 Flow_RefreshRawData(void)
//   14 {
Flow_RefreshRawData:
        PUSH     {R0-R4,LR}
//   15     uint8 ret = 0;
        MOVS     R4,#+0
//   16 
//   17     if(g_u8FlowNewData == 1)
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Flow_RefreshRawData_0
//   18     {
//   19         float flowdata[4];
//   20         flowdata[0] = g_sPx4flowData.pixel_flow_x;
        LDR.N    R0,??DataTable2_1
        LDR      R1,[R0, #+0]
        STR      R1,[SP, #+0]
//   21         flowdata[1] = g_sPx4flowData.pixel_flow_y;
        LDR.N    R0,??DataTable2_1
        LDR      R1,[R0, #+4]
        STR      R1,[SP, #+4]
//   22         if(CheckFloatUnvalid(g_sPx4flowData.flow_comp_m_x) == 0)
        LDR.N    R1,??DataTable2_1
        LDR      R0,[R1, #+8]
        BL       CheckFloatUnvalid
        CMP      R0,#+0
        BNE.N    ??Flow_RefreshRawData_1
//   23         {
//   24             flowdata[2] = g_sPx4flowData.flow_comp_m_x;
        LDR.N    R0,??DataTable2_1
        LDR      R1,[R0, #+8]
        STR      R1,[SP, #+8]
        B.N      ??Flow_RefreshRawData_2
//   25         }
//   26         else
//   27         {
//   28             flowdata[2] = 0;
??Flow_RefreshRawData_1:
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   29         }
//   30         if(CheckFloatUnvalid(g_sPx4flowData.flow_comp_m_y) == 0)
??Flow_RefreshRawData_2:
        LDR.N    R1,??DataTable2_1
        LDR      R0,[R1, #+12]
        BL       CheckFloatUnvalid
        CMP      R0,#+0
        BNE.N    ??Flow_RefreshRawData_3
//   31         {
//   32             flowdata[3] = g_sPx4flowData.flow_comp_m_y;
        LDR.N    R0,??DataTable2_1
        LDR      R1,[R0, #+12]
        STR      R1,[SP, #+12]
        B.N      ??Flow_RefreshRawData_4
//   33         }
//   34         else
//   35         {
//   36             flowdata[3] = 0;
??Flow_RefreshRawData_3:
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   37         }
//   38         FlowFilterInput(flowdata);
??Flow_RefreshRawData_4:
        ADD      R0,SP,#+0
        BL       FlowFilterInput
//   39         g_u8FlowNewData = 0;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   40         ret = 1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??Flow_RefreshRawData_5
//   41     }
//   42     else
//   43     {
//   44         ret = 0;
??Flow_RefreshRawData_0:
        MOVS     R0,#+0
        MOVS     R4,R0
//   45     }
//   46 
//   47     return ret;
??Flow_RefreshRawData_5:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+16
        POP      {R4,PC}          ;; return
//   48 }
//   49 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void AddSpeedToPosition(float x_speed, float y_speed, float yaw_angle, float int_time, float * p_x_position, float * p_y_position)
//   51 {
AddSpeedToPosition:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+4
        LDR      R7,[SP, #+60]
//   52     float yaw_angle_rad = yaw_angle / 57.2957795f;
        LDR      R0,[SP, #+12]
        LDR.N    R1,??DataTable2_2  ;; 0x42652ee1
        BL       __aeabi_fdiv
        MOVS     R4,R0
//   53     float x_position_change = x_speed * int_time;
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+16]
        BL       __aeabi_fmul
        MOVS     R5,R0
//   54     float y_position_change = y_speed * int_time;
        LDR      R1,[SP, #+8]
        LDR      R0,[SP, #+16]
        BL       __aeabi_fmul
        MOVS     R6,R0
//   55 
//   56     *p_x_position += x_position_change * cos(yaw_angle_rad);
        LDR      R0,[SP, #+56]
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOV      R10,R0
        MOV      R11,R1
        MOVS     R0,R5
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        MOVS     R0,R4
        BL       __aeabi_f2d
        BL       cos
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        MOV      R2,R10
        MOV      R3,R11
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR      R1,[SP, #+56]
        STR      R0,[R1, #+0]
//   57     *p_y_position += x_position_change * sin(yaw_angle_rad);
        LDR      R0,[R7, #+0]
        BL       __aeabi_f2d
        MOV      R10,R0
        MOV      R11,R1
        MOVS     R0,R5
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        MOVS     R0,R4
        BL       __aeabi_f2d
        BL       sin
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        MOV      R2,R10
        MOV      R3,R11
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R7, #+0]
//   58     *p_x_position -= y_position_change * sin(yaw_angle_rad);
        LDR      R0,[SP, #+56]
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOV      R10,R0
        MOV      R11,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        MOVS     R0,R4
        BL       __aeabi_f2d
        BL       sin
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R10
        MOV      R1,R11
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        LDR      R1,[SP, #+56]
        STR      R0,[R1, #+0]
//   59     *p_y_position += y_position_change * cos(yaw_angle_rad);
        LDR      R0,[R7, #+0]
        BL       __aeabi_f2d
        MOV      R10,R0
        MOV      R11,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        MOVS     R0,R4
        BL       __aeabi_f2d
        BL       cos
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        MOV      R2,R10
        MOV      R3,R11
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R7, #+0]
//   60 }
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 int8 CheckFloatUnvalid(float data)
//   63 {
CheckFloatUnvalid:
        PUSH     {R0}
//   64     uint32* data_men = (uint32*)&data;
        ADD      R1,SP,#+0
//   65     if(((*data_men)&0xFFC00000) == 0x7FC00000)
        LDR      R0,[R1, #+0]
        LSRS     R0,R0,#+22
        LSLS     R0,R0,#+22
        LDR.N    R2,??DataTable2_3  ;; 0x7fc00000
        CMP      R0,R2
        BNE.N    ??CheckFloatUnvalid_0
//   66     {
//   67         return 1;
        MOVS     R0,#+1
        B.N      ??CheckFloatUnvalid_1
//   68     }
//   69     else if(((*data_men)&0xFFC00000) == 0xFFC00000)
??CheckFloatUnvalid_0:
        LDR      R0,[R1, #+0]
        LSRS     R0,R0,#+22
        LSLS     R0,R0,#+22
        CMN      R0,#+4194304
        BNE.N    ??CheckFloatUnvalid_2
//   70     {
//   71         return -1;
        MOVS     R0,#-1
        B.N      ??CheckFloatUnvalid_1
//   72     }
//   73     else
//   74     {
//   75         return 0;
??CheckFloatUnvalid_2:
        MOVS     R0,#+0
??CheckFloatUnvalid_1:
        ADD      SP,SP,#+4
        BX       LR               ;; return
//   76     }
//   77 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     g_u8FlowNewData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     g_sPx4flowData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x42652ee1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x7fc00000

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
// 426 bytes in section .text
// 
// 426 bytes of CODE memory
//
//Errors: none
//Warnings: none
