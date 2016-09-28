///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:35 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \MyLib\MyLib.c                                          /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \MyLib\MyLib.c -D LPLD_K60 -lCN                         /
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
//                    MINE\List\MyLib.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MyLib

        #define SHT_PROGBITS 0x1

        PUBLIC PinNum2GpioPin

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib\MyLib\MyLib.c
//    1 /****************************************************************************** 
//    2  *       MyLib.c ----- The lib Function of my Owm          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  MyLib.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/23 16:52:26                                                       *
//   10  ******************************************************************************/
//   11 #include "mylib.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 GpioPinsEnum_Type PinNum2GpioPin(uint8 pin_num)
//   14 {
PinNum2GpioPin:
        MOVS     R1,R0
//   15     GpioPinsEnum_Type ret;
//   16     if(pin_num <= 31)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+32
        BCS.W    ??PinNum2GpioPin_0
//   17     {
//   18         switch(pin_num)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??PinNum2GpioPin_1
        CMP      R1,#+2
        BEQ.N    ??PinNum2GpioPin_2
        BCC.N    ??PinNum2GpioPin_3
        CMP      R1,#+4
        BEQ.N    ??PinNum2GpioPin_4
        BCC.N    ??PinNum2GpioPin_5
        CMP      R1,#+6
        BEQ.N    ??PinNum2GpioPin_6
        BCC.N    ??PinNum2GpioPin_7
        CMP      R1,#+8
        BEQ.N    ??PinNum2GpioPin_8
        BCC.N    ??PinNum2GpioPin_9
        CMP      R1,#+10
        BEQ.N    ??PinNum2GpioPin_10
        BCC.N    ??PinNum2GpioPin_11
        CMP      R1,#+12
        BEQ.N    ??PinNum2GpioPin_12
        BCC.N    ??PinNum2GpioPin_13
        CMP      R1,#+14
        BEQ.N    ??PinNum2GpioPin_14
        BCC.N    ??PinNum2GpioPin_15
        CMP      R1,#+16
        BEQ.N    ??PinNum2GpioPin_16
        BCC.N    ??PinNum2GpioPin_17
        CMP      R1,#+18
        BEQ.N    ??PinNum2GpioPin_18
        BCC.N    ??PinNum2GpioPin_19
        CMP      R1,#+20
        BEQ.N    ??PinNum2GpioPin_20
        BCC.N    ??PinNum2GpioPin_21
        CMP      R1,#+22
        BEQ.N    ??PinNum2GpioPin_22
        BCC.N    ??PinNum2GpioPin_23
        CMP      R1,#+24
        BEQ.N    ??PinNum2GpioPin_24
        BCC.N    ??PinNum2GpioPin_25
        CMP      R1,#+26
        BEQ.N    ??PinNum2GpioPin_26
        BCC.N    ??PinNum2GpioPin_27
        CMP      R1,#+28
        BEQ.N    ??PinNum2GpioPin_28
        BCC.N    ??PinNum2GpioPin_29
        CMP      R1,#+30
        BEQ.N    ??PinNum2GpioPin_30
        BCC.N    ??PinNum2GpioPin_31
        CMP      R1,#+31
        BEQ.N    ??PinNum2GpioPin_32
        B.N      ??PinNum2GpioPin_33
//   19         {
//   20             case 0 : ret = GPIO_Pin0;
??PinNum2GpioPin_1:
        MOVS     R2,#+1
        MOVS     R0,R2
//   21                      break;
        B.N      ??PinNum2GpioPin_0
//   22             case 1 : ret = GPIO_Pin1;
??PinNum2GpioPin_3:
        MOVS     R2,#+2
        MOVS     R0,R2
//   23                      break;
        B.N      ??PinNum2GpioPin_0
//   24             case 2 : ret = GPIO_Pin2;
??PinNum2GpioPin_2:
        MOVS     R2,#+4
        MOVS     R0,R2
//   25                      break;
        B.N      ??PinNum2GpioPin_0
//   26             case 3 : ret = GPIO_Pin3;
??PinNum2GpioPin_5:
        MOVS     R2,#+8
        MOVS     R0,R2
//   27                      break;
        B.N      ??PinNum2GpioPin_0
//   28             case 4 : ret = GPIO_Pin4;
??PinNum2GpioPin_4:
        MOVS     R2,#+16
        MOVS     R0,R2
//   29                      break;
        B.N      ??PinNum2GpioPin_0
//   30             case 5 : ret = GPIO_Pin5;
??PinNum2GpioPin_7:
        MOVS     R2,#+32
        MOVS     R0,R2
//   31                      break;
        B.N      ??PinNum2GpioPin_0
//   32             case 6 : ret = GPIO_Pin6;
??PinNum2GpioPin_6:
        MOVS     R2,#+64
        MOVS     R0,R2
//   33                      break;
        B.N      ??PinNum2GpioPin_0
//   34             case 7 : ret = GPIO_Pin7;
??PinNum2GpioPin_9:
        MOVS     R2,#+128
        MOVS     R0,R2
//   35                      break;
        B.N      ??PinNum2GpioPin_0
//   36             case 8 : ret = GPIO_Pin8;
??PinNum2GpioPin_8:
        MOV      R2,#+256
        MOVS     R0,R2
//   37                      break;
        B.N      ??PinNum2GpioPin_0
//   38             case 9 : ret = GPIO_Pin9;
??PinNum2GpioPin_11:
        MOV      R2,#+512
        MOVS     R0,R2
//   39                      break;
        B.N      ??PinNum2GpioPin_0
//   40             case 10: ret = GPIO_Pin10;
??PinNum2GpioPin_10:
        MOV      R2,#+1024
        MOVS     R0,R2
//   41                      break;
        B.N      ??PinNum2GpioPin_0
//   42             case 11: ret = GPIO_Pin11;
??PinNum2GpioPin_13:
        MOV      R2,#+2048
        MOVS     R0,R2
//   43                      break;
        B.N      ??PinNum2GpioPin_0
//   44             case 12: ret = GPIO_Pin12;
??PinNum2GpioPin_12:
        MOV      R2,#+4096
        MOVS     R0,R2
//   45                      break;
        B.N      ??PinNum2GpioPin_0
//   46             case 13: ret = GPIO_Pin13;
??PinNum2GpioPin_15:
        MOV      R2,#+8192
        MOVS     R0,R2
//   47                      break;
        B.N      ??PinNum2GpioPin_0
//   48             case 14: ret = GPIO_Pin14;
??PinNum2GpioPin_14:
        MOV      R2,#+16384
        MOVS     R0,R2
//   49                      break;
        B.N      ??PinNum2GpioPin_0
//   50             case 15: ret = GPIO_Pin15;
??PinNum2GpioPin_17:
        MOV      R2,#+32768
        MOVS     R0,R2
//   51                      break;
        B.N      ??PinNum2GpioPin_0
//   52             case 16: ret = GPIO_Pin16;
??PinNum2GpioPin_16:
        MOVS     R2,#+65536
        MOVS     R0,R2
//   53                      break;
        B.N      ??PinNum2GpioPin_0
//   54             case 17: ret = GPIO_Pin17;
??PinNum2GpioPin_19:
        MOVS     R2,#+131072
        MOVS     R0,R2
//   55                      break;
        B.N      ??PinNum2GpioPin_0
//   56             case 18: ret = GPIO_Pin18;
??PinNum2GpioPin_18:
        MOVS     R2,#+262144
        MOVS     R0,R2
//   57                      break;
        B.N      ??PinNum2GpioPin_0
//   58             case 19: ret = GPIO_Pin19;
??PinNum2GpioPin_21:
        MOVS     R2,#+524288
        MOVS     R0,R2
//   59                      break;
        B.N      ??PinNum2GpioPin_0
//   60             case 20: ret = GPIO_Pin20;
??PinNum2GpioPin_20:
        MOVS     R2,#+1048576
        MOVS     R0,R2
//   61                      break;
        B.N      ??PinNum2GpioPin_0
//   62             case 21: ret = GPIO_Pin21;
??PinNum2GpioPin_23:
        MOVS     R2,#+2097152
        MOVS     R0,R2
//   63                      break;
        B.N      ??PinNum2GpioPin_0
//   64             case 22: ret = GPIO_Pin22;
??PinNum2GpioPin_22:
        MOVS     R2,#+4194304
        MOVS     R0,R2
//   65                      break;
        B.N      ??PinNum2GpioPin_0
//   66             case 23: ret = GPIO_Pin23;
??PinNum2GpioPin_25:
        MOVS     R2,#+8388608
        MOVS     R0,R2
//   67                      break;
        B.N      ??PinNum2GpioPin_0
//   68             case 24: ret = GPIO_Pin24;
??PinNum2GpioPin_24:
        MOVS     R2,#+16777216
        MOVS     R0,R2
//   69                      break;
        B.N      ??PinNum2GpioPin_0
//   70             case 25: ret = GPIO_Pin25;
??PinNum2GpioPin_27:
        MOVS     R2,#+33554432
        MOVS     R0,R2
//   71                      break;
        B.N      ??PinNum2GpioPin_0
//   72             case 26: ret = GPIO_Pin26;
??PinNum2GpioPin_26:
        MOVS     R2,#+67108864
        MOVS     R0,R2
//   73                      break;
        B.N      ??PinNum2GpioPin_0
//   74             case 27: ret = GPIO_Pin27;
??PinNum2GpioPin_29:
        MOVS     R2,#+134217728
        MOVS     R0,R2
//   75                      break;
        B.N      ??PinNum2GpioPin_0
//   76             case 28: ret = GPIO_Pin28;
??PinNum2GpioPin_28:
        MOVS     R2,#+268435456
        MOVS     R0,R2
//   77                      break;
        B.N      ??PinNum2GpioPin_0
//   78             case 29: ret = GPIO_Pin29;
??PinNum2GpioPin_31:
        MOVS     R2,#+536870912
        MOVS     R0,R2
//   79                      break;
        B.N      ??PinNum2GpioPin_0
//   80             case 30: ret = GPIO_Pin30;
??PinNum2GpioPin_30:
        MOVS     R2,#+1073741824
        MOVS     R0,R2
//   81                      break;
        B.N      ??PinNum2GpioPin_0
//   82             case 31: ret = GPIO_Pin31;
??PinNum2GpioPin_32:
        MOVS     R2,#-2147483648
        MOVS     R0,R2
//   83                      break;
        B.N      ??PinNum2GpioPin_0
//   84             default:
//   85                      break;
//   86         }
//   87     }
//   88     return ret;
??PinNum2GpioPin_33:
??PinNum2GpioPin_0:
        BX       LR               ;; return
//   89 }

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
// 354 bytes in section .text
// 
// 354 bytes of CODE memory
//
//Errors: none
//Warnings: none
