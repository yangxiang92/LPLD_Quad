///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:38 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\dataframe.c                                /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\dataframe.c -D LPLD_K60 -lCN               /
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
//                    MINE\List\dataframe.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME dataframe

        #define SHT_PROGBITS 0x1

        PUBLIC CalculateCrc16_HalfByte
        PUBLIC ExchangeUint16Bytes

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Communicate\dataframe.c
//    1 #include "dataframe.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 uint16 CalculateCrc16_HalfByte(void * data, uint16 len)
//    4 {
CalculateCrc16_HalfByte:
        PUSH     {R4-R6}
        MOVS     R2,R0
//    5     uint16 crc = 0;
        MOVS     R0,#+0
//    6     const static uint16 crc_tab[16] =
//    7     {
//    8         0x0000 , 0x1021 , 0x2042 , 0x3063 , 0x4084 , 0x50A5 , 0x60C6 , 0x70E7 ,
//    9         0x8108 , 0x9129 , 0xA14A , 0xB16B , 0xC18C , 0xD1AD , 0xE1CE , 0xF1EF
//   10     };
//   11     uint8 h_crc;
//   12     const uint8 * ptr = (const uint8 *)data;
        MOVS     R4,R2
//   13     //
//   14     while(len --)
??CalculateCrc16_HalfByte_0:
        MOVS     R5,R1
        SUBS     R1,R5,#+1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??CalculateCrc16_HalfByte_1
//   15     {
//   16         h_crc = (uint8)(crc >> 12);                 //暂存CRC 的高四位
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R5,R0,#+12
        MOVS     R3,R5
//   17         crc <<= 4;                                  //CRC 右移4 位，相当于取CRC 的低12 位）
        LSLS     R0,R0,#+4
//   18         crc ^= crc_tab[h_crc ^ ((*ptr) >> 4)];      //CRC 的高4 位和本字节的前半字节相加后查表计算CRC，然后加上上一次CRC 的余数
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R5,[R4, #+0]
        EORS     R5,R3,R5, ASR #+4
        LDR.N    R6,??DataTable0
        LDRH     R5,[R6, R5, LSL #+1]
        EORS     R0,R5,R0
//   19         //
//   20         h_crc = crc >> 12;                          //暂存CRC 的高4 位
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R5,R0,#+12
        MOVS     R3,R5
//   21         crc <<= 4;                                  //CRC 右移4 位， 相当于CRC 的低12 位）
        LSLS     R0,R0,#+4
//   22         crc ^= crc_tab[h_crc ^ ((*ptr) & 0x0F)];       //CRC 的高4 位和本字节的后半字节相加后查表计算CRC，然后再加上上一次CRC 的余数
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R5,[R4, #+0]
        ANDS     R5,R5,#0xF
        EORS     R5,R5,R3
        LDR.N    R6,??DataTable0
        LDRH     R5,[R6, R5, LSL #+1]
        EORS     R0,R5,R0
//   23         //
//   24         ptr ++;
        ADDS     R4,R4,#+1
        B.N      ??CalculateCrc16_HalfByte_0
//   25     }
//   26     //
//   27     return crc;
??CalculateCrc16_HalfByte_1:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R6}
        BX       LR               ;; return
//   28 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     ??crc_tab

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
??crc_tab:
        DATA
        DC16 0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161
        DC16 41290, 45419, 49548, 53677, 57806, 61935
//   29 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void ExchangeUint16Bytes(uint16 * num)
//   31 {
ExchangeUint16Bytes:
        SUB      SP,SP,#+4
//   32     int i = 0;
        MOVS     R1,#+0
//   33     uint8 temp[2];
//   34 
//   35     for(i = 0; i < 2; i++)
        MOVS     R2,#+0
        MOVS     R1,R2
??ExchangeUint16Bytes_0:
        CMP      R1,#+2
        BGE.N    ??ExchangeUint16Bytes_1
//   36     {
//   37         temp[i] = ((uint8 *)num)[i];
        LDRB     R2,[R1, R0]
        ADD      R3,SP,#+0
        STRB     R2,[R1, R3]
//   38     }
        ADDS     R1,R1,#+1
        B.N      ??ExchangeUint16Bytes_0
//   39 
//   40     for(i = 0; i < 2; i++)
??ExchangeUint16Bytes_1:
        MOVS     R2,#+0
        MOVS     R1,R2
??ExchangeUint16Bytes_2:
        CMP      R1,#+2
        BGE.N    ??ExchangeUint16Bytes_3
//   41     {
//   42         ((uint8 *)num)[1-i] = temp[i];
        RSBS     R2,R1,#+0
        ADDS     R2,R2,R0
        ADD      R3,SP,#+0
        LDRB     R3,[R1, R3]
        STRB     R3,[R2, #+1]
//   43     }
        ADDS     R1,R1,#+1
        B.N      ??ExchangeUint16Bytes_2
//   44 }
??ExchangeUint16Bytes_3:
        ADD      SP,SP,#+4
        BX       LR               ;; return

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
//  32 bytes in section .rodata
// 130 bytes in section .text
// 
// 130 bytes of CODE  memory
//  32 bytes of CONST memory
//
//Errors: none
//Warnings: none
