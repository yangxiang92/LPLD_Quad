///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    13/Apr/2014  20:54:17 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\anbt_dmp.c                                          /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\anbt_dmp.c -D LPLD_K60 -lCN                         /
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
//                    2\iar\..\source\app\Communicate\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\app\Algorithm\ -I E:\ShawnDocuments\IAR_WorkSpace\L /
//                    PLD_Quad_V2\iar\..\source\app\SignalProcess\ -I         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\module\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V2\iar\..\source\module\anbt_dmp\ -I                  /
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
//                    MINE\List\anbt_dmp.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME anbt_dmp

        #define SHT_PROGBITS 0x1

        EXTERN AnBT_DMP_MPU6050_Init
        EXTERN LPLD_UART_PutChar
        EXTERN MPU6050_DMP_MultiReadReg
        EXTERN MPU6050_DMP_MultiWriteReg
        EXTERN delayms
        EXTERN printf

        PUBLIC AnBT_DMP_Delay_ms
        PUBLIC AnBT_DMP_I2C_Read
        PUBLIC AnBT_DMP_I2C_Write
        PUBLIC AnBT_Uart1_Send_Char
        PUBLIC AnBT_Uart1_Send_Num
        PUBLIC AnBT_Uart1_Send_String
        PUBLIC InitAnbtDMP
        PUBLIC labs

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\module\anbt_dmp.c
//    1 /****************************************************************************** 
//    2  *       anbt_dmp.c ----- 使用圆点博士的dmp移植代码          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  anbt_dmp.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/13 19:38:16                                                       *
//   10  ******************************************************************************/
//   11 #include "anbt_dmp.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void InitAnbtDMP(void)
//   14 {
InitAnbtDMP:
        PUSH     {R7,LR}
//   15     AnBT_DMP_MPU6050_Init();
        BL       AnBT_DMP_MPU6050_Init
//   16 }
        POP      {R0,PC}          ;; return
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void AnBT_Uart1_Send_String(unsigned char * str_buf, unsigned char str_len)
//   19 {
AnBT_Uart1_Send_String:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   20     printf((signed char *)str_buf);
        MOVS     R0,R4
        BL       printf
//   21 }
        POP      {R0,R4,R5,PC}    ;; return
//   22 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void AnBT_Uart1_Send_Num(unsigned char number)
//   24 {
AnBT_Uart1_Send_Num:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   25     LPLD_UART_PutChar(DEBUG_UART, number);
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable1  ;; 0x4006b000
        BL       LPLD_UART_PutChar
//   26 }
        POP      {R4,PC}          ;; return
//   27     

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 unsigned char AnBT_DMP_I2C_Read(unsigned char anbt_dev_addr, unsigned char anbt_reg_addr, unsigned char anbt_i2c_len, unsigned char * anbt_i2c_data_buf)
//   29 {
AnBT_DMP_I2C_Read:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   30     return MPU6050_DMP_MultiReadReg(anbt_dev_addr, anbt_reg_addr, anbt_i2c_len, anbt_i2c_data_buf);
        MOVS     R3,R7
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MPU6050_DMP_MultiReadReg
        POP      {R1,R4-R7,PC}    ;; return
//   31 }
//   32 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 unsigned char AnBT_DMP_I2C_Write(unsigned char anbt_dev_addr, unsigned char anbt_reg_addr, unsigned char anbt_i2c_len, unsigned char *anbt_i2c_data_buf)
//   34 {
AnBT_DMP_I2C_Write:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   35     return MPU6050_DMP_MultiWriteReg(anbt_dev_addr, anbt_reg_addr, anbt_i2c_len, anbt_i2c_data_buf);
        MOVS     R3,R7
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MPU6050_DMP_MultiWriteReg
        POP      {R1,R4-R7,PC}    ;; return
//   36 }
//   37 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void AnBT_DMP_Delay_ms(unsigned int ms)
//   39 {
AnBT_DMP_Delay_ms:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   40     delayms(ms);
        MOVS     R0,R4
        BL       delayms
//   41 }
        POP      {R4,PC}          ;; return
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 long labs(long n)
//   44 {
//   45     if(n >= 0)
labs:
        CMP      R0,#+0
        BPL.N    ??labs_0
//   46     {
//   47         return n;
//   48     }
//   49     else
//   50     {
//   51         return -n;
??labs_1:
        RSBS     R0,R0,#+0
??labs_0:
        BX       LR               ;; return
//   52     }
//   53 }
//   54 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 void AnBT_Uart1_Send_Char(unsigned char ascii_code)
//   56 {
AnBT_Uart1_Send_Char:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   57     LPLD_UART_PutChar(DEBUG_UART, ascii_code);
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable1  ;; 0x4006b000
        BL       LPLD_UART_PutChar
//   58 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x4006b000

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
// 138 bytes in section .text
// 
// 138 bytes of CODE memory
//
//Errors: none
//Warnings: none
