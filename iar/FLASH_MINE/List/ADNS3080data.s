///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    09/Aug/2014  09:42:38 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\ADNS3080data.c                           /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\ADNS3080data.c -D LPLD_K60 -lCN          /
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
//                    MINE\List\ADNS3080data.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME ADNS3080data

        #define SHT_PROGBITS 0x1

        EXTERN ADNS3080_MotionBurst
        EXTERN ADNS3080_PixelBurst
        EXTERN LPLD_UART_PutChar
        EXTERN LPLD_UART_PutCharArr
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN cos
        EXTERN sin

        PUBLIC ADNS3080_GetIntegratedPixel
        PUBLIC ADNS3080_GetIntegratedPosition
        PUBLIC ADNS3080_GetRawData
        PUBLIC ADNS3080_ImageTest
        PUBLIC ADNS3080_IntegratePixel
        PUBLIC ADNS3080_IntegratePosition
        PUBLIC ADNS3080_IntergratePositionWithGyrAttitude
        PUBLIC ADNS3080_RefreshRawData
        PUBLIC ADNS3080_ResetIntegratedPixel
        PUBLIC ADNS3080_ResetIntergratedPosition
        PUBLIC g_f32ADNS3080PixelPosition
        PUBLIC g_i32ADNS3080PixelSum
        PUBLIC gc_f32PixelHeightToDistanceRate

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\ADNS3080data.c
//    1 /****************************************************************************** 
//    2  *       ADNS3080data.c ----- The code to handle with the data from the ADNS3080          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  ADNS3080data.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/7/12 15:03:31                                                       *
//   10  ******************************************************************************/
//   11 #include "ADNS3080data.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static ADNS3080_RawDataStruct s_sADNS3080_raw_data;
s_sADNS3080_raw_data:
        DS8 8
//   14 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int32 g_i32ADNS3080PixelSum[2] = {0,0};
g_i32ADNS3080PixelSum:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 float g_f32ADNS3080PixelPosition[2] = {0,0};
g_f32ADNS3080PixelPosition:
        DS8 8
//   17 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   18 extern const float gc_f32PixelHeightToDistanceRate = 0.01314103;  // 测试得来 
gc_f32PixelHeightToDistanceRate:
        DATA
        DC32 3C574D7AH
//   19 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 void ADNS3080_RefreshRawData(void)
//   21 {
ADNS3080_RefreshRawData:
        PUSH     {LR}
        SUB      SP,SP,#+12
//   22     uint8 reg_data[7];
//   23     
//   24     ADNS3080_MotionBurst(reg_data);
        ADD      R0,SP,#+0
        BL       ADNS3080_MotionBurst
//   25     s_sADNS3080_raw_data.motion = reg_data[0];
        LDR.N    R0,??DataTable8
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+0]
//   26     s_sADNS3080_raw_data.delta_x = -reg_data[2];
        LDRB     R0,[SP, #+2]
        RSBS     R0,R0,#+0
        LDR.N    R1,??DataTable8
        STRB     R0,[R1, #+1]
//   27     s_sADNS3080_raw_data.delta_y = reg_data[1];
        LDR.N    R0,??DataTable8
        LDRSB    R1,[SP, #+1]
        STRB     R1,[R0, #+2]
//   28     s_sADNS3080_raw_data.squal = reg_data[3];
        LDR.N    R0,??DataTable8
        LDRB     R1,[SP, #+3]
        STRB     R1,[R0, #+3]
//   29     s_sADNS3080_raw_data.shutter = reg_data[4];
        LDR.N    R0,??DataTable8
        LDRB     R1,[SP, #+4]
        STRH     R1,[R0, #+4]
//   30     s_sADNS3080_raw_data.shutter = (s_sADNS3080_raw_data.shutter << 8) | reg_data[5];
        LDR.N    R0,??DataTable8
        LDRH     R0,[R0, #+4]
        LDRB     R1,[SP, #+5]
        ORRS     R0,R1,R0, LSL #+8
        LDR.N    R1,??DataTable8
        STRH     R0,[R1, #+4]
//   31     s_sADNS3080_raw_data.maximum_pixel = reg_data[6];
        LDR.N    R0,??DataTable8
        LDRB     R1,[SP, #+6]
        STRB     R1,[R0, #+6]
//   32 }
        POP      {R0-R2,PC}       ;; return
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 ADNS3080_RawDataStruct * ADNS3080_GetRawData(void)
//   35 {
//   36     return &s_sADNS3080_raw_data;
ADNS3080_GetRawData:
        LDR.N    R0,??DataTable8
        BX       LR               ;; return
//   37 }
//   38 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 void ADNS3080_ImageTest(UART_Type * uartx)
//   40 {
ADNS3080_ImageTest:
        SUB      SP,SP,#+904
        MOVS     R4,R0
//   41     uint8 pixel_data[900];
//   42 
//   43     while(1)
//   44     {
//   45         LPLD_UART_PutChar(uartx, 0x5A);
??ADNS3080_ImageTest_0:
        MOVS     R1,#+90
        MOVS     R0,R4
        BL       LPLD_UART_PutChar
//   46         ADNS3080_PixelBurst(pixel_data);
        ADD      R0,SP,#+0
        BL       ADNS3080_PixelBurst
//   47         LPLD_UART_PutCharArr(uartx, (signed char *)pixel_data, 900);
        MOV      R2,#+900
        ADD      R1,SP,#+0
        MOVS     R0,R4
        BL       LPLD_UART_PutCharArr
        B.N      ??ADNS3080_ImageTest_0
//   48     }
//   49 }
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void ADNS3080_IntegratePixel(int8 delta_x, int8 delta_y)
//   52 {
//   53     g_i32ADNS3080PixelSum[0] += delta_x;
ADNS3080_IntegratePixel:
        LDR.N    R2,??DataTable8_1
        LDR      R2,[R2, #+0]
        SXTAB    R2,R2,R0
        LDR.N    R3,??DataTable8_1
        STR      R2,[R3, #+0]
//   54     g_i32ADNS3080PixelSum[1] += delta_y;
        LDR.N    R2,??DataTable8_1
        LDR      R2,[R2, #+4]
        SXTAB    R2,R2,R1
        LDR.N    R3,??DataTable8_1
        STR      R2,[R3, #+4]
//   55 }
        BX       LR               ;; return
//   56 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void ADNS3080_IntegratePosition(int8 delta_x, int8 delta_y, float height)
//   58 {
ADNS3080_IntegratePosition:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   59     g_f32ADNS3080PixelPosition[0] += (delta_x * gc_f32PixelHeightToDistanceRate * height);
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable8_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable8_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable8_3
        STR      R0,[R1, #+0]
//   60     g_f32ADNS3080PixelPosition[1] += (delta_y * gc_f32PixelHeightToDistanceRate * height);
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable8_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable8_3
        LDR      R1,[R1, #+4]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable8_3
        STR      R0,[R1, #+4]
//   61 }
        POP      {R4-R6,PC}       ;; return
//   62 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 void ADNS3080_IntergratePositionWithGyrAttitude(int8 delta_x, int8 delta_y, float gyr_x, float gyr_y, float yaw, float height)
//   64 {
ADNS3080_IntergratePositionWithGyrAttitude:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+20
        LDR      R11,[SP, #+72]
        LDR      R10,[SP, #+76]
//   65     float x_move = 0;
        MOVS     R9,#+0
//   66     float y_move = 0;
        MOVS     R8,#+0
//   67     float x_rotate_move = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   68     float y_rotate_move = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   69 
//   70     x_move = delta_x * gc_f32PixelHeightToDistanceRate * height;
        LDRSB    R0,[SP, #+20]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable8_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOV      R1,R10
        BL       __aeabi_fmul
        MOV      R9,R0
//   71     y_move = delta_y * gc_f32PixelHeightToDistanceRate * height;
        LDRSB    R0,[SP, #+24]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable8_2
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOV      R1,R10
        BL       __aeabi_fmul
        MOV      R8,R0
//   72 
//   73     x_rotate_move = (gyr_y) * height * 0.001 * PROGRAM_PERIOD_MS;
        LDR      R0,[SP, #+32]
        MOV      R1,R10
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable8_4  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable8_5  ;; 0x3f50624d
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable8_6  ;; 0x40100000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        STR      R0,[SP, #+12]
//   74     y_rotate_move = -(gyr_x) * height * 0.001 * PROGRAM_PERIOD_MS;
        LDR      R0,[SP, #+28]
        EORS     R0,R0,#0x80000000
        MOV      R1,R10
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable8_4  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable8_5  ;; 0x3f50624d
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable8_6  ;; 0x40100000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        STR      R0,[SP, #+8]
//   75 
//   76     x_move = x_move - x_rotate_move;
        MOV      R0,R9
        LDR      R1,[SP, #+12]
        BL       __aeabi_fsub
        MOV      R9,R0
//   77     y_move = y_move - y_rotate_move;
        MOV      R0,R8
        LDR      R1,[SP, #+8]
        BL       __aeabi_fsub
        MOV      R8,R0
//   78 
//   79     g_f32ADNS3080PixelPosition[0] += ((x_move * cos(yaw)) - (y_move * sin(yaw)));
        MOV      R0,R11
        BL       __aeabi_f2d
        BL       cos
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R0,R11
        BL       __aeabi_f2d
        BL       sin
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable8_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+0]
        MOV      R0,R9
        BL       __aeabi_f2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R0,R8
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_dsub
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable8_3
        STR      R0,[R1, #+0]
//   80     g_f32ADNS3080PixelPosition[1] += ((x_move * sin(yaw)) + (y_move * cos(yaw)));
        MOV      R0,R11
        BL       __aeabi_f2d
        BL       sin
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R0,R11
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable8_3
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+0]
        MOV      R0,R9
        BL       __aeabi_f2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R0,R8
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable8_3
        STR      R0,[R1, #+4]
//   81 }
        ADD      SP,SP,#+36
        POP      {R4-R11,PC}      ;; return
//   82 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 void ADNS3080_ResetIntegratedPixel(void)
//   84 {
//   85     int i = 0;
ADNS3080_ResetIntegratedPixel:
        MOVS     R0,#+0
//   86     for(i = 0; i < 2; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??ADNS3080_ResetIntegratedPixel_0:
        CMP      R0,#+2
        BGE.N    ??ADNS3080_ResetIntegratedPixel_1
//   87     {
//   88         g_i32ADNS3080PixelSum[i] = 0;
        LDR.N    R1,??DataTable8_1
        MOVS     R2,#+0
        STR      R2,[R1, R0, LSL #+2]
//   89     }
        ADDS     R0,R0,#+1
        B.N      ??ADNS3080_ResetIntegratedPixel_0
//   90 }
??ADNS3080_ResetIntegratedPixel_1:
        BX       LR               ;; return
//   91 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void ADNS3080_ResetIntergratedPosition(void)
//   93 {
//   94     int i = 0; 
ADNS3080_ResetIntergratedPosition:
        MOVS     R0,#+0
//   95     for(i = 0; i < 2; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??ADNS3080_ResetIntergratedPosition_0:
        CMP      R0,#+2
        BGE.N    ??ADNS3080_ResetIntergratedPosition_1
//   96     {
//   97         g_f32ADNS3080PixelPosition[i] = 0;
        LDR.N    R1,??DataTable8_3
        MOVS     R2,#+0
        STR      R2,[R1, R0, LSL #+2]
//   98     }
        ADDS     R0,R0,#+1
        B.N      ??ADNS3080_ResetIntergratedPosition_0
//   99 }
??ADNS3080_ResetIntergratedPosition_1:
        BX       LR               ;; return
//  100 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 int32 * ADNS3080_GetIntegratedPixel(void)
//  102 {
//  103     return g_i32ADNS3080PixelSum;
ADNS3080_GetIntegratedPixel:
        LDR.N    R0,??DataTable8_1
        BX       LR               ;; return
//  104 }
//  105 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 float * ADNS3080_GetIntegratedPosition(void)
//  107 {
//  108     return g_f32ADNS3080PixelPosition;
ADNS3080_GetIntegratedPosition:
        LDR.N    R0,??DataTable8_3
        BX       LR               ;; return
//  109 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     s_sADNS3080_raw_data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     g_i32ADNS3080PixelSum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     gc_f32PixelHeightToDistanceRate

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     g_f32ADNS3080PixelPosition

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x3f50624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x40100000

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
//   4 bytes in section .rodata
// 676 bytes in section .text
// 
// 676 bytes of CODE  memory
//   4 bytes of CONST memory
//  24 bytes of DATA  memory
//
//Errors: none
//Warnings: none
