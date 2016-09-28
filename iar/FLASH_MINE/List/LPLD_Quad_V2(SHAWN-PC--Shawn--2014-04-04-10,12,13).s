///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    04/Apr/2014  10:11:52 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\app /
//                    \LPLD_Quad_V2.c                                         /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\app /
//                    \LPLD_Quad_V2.c -D LPLD_K60 -lCN                        /
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
//                    MINE\List\LPLD_Quad_V2.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME LPLD_Quad_V2

        #define SHT_PROGBITS 0x1

        EXTERN AK8975C_GetData
        EXTERN AK8975C_StartMeasure
        EXTERN AK8975C_WaitMeasureComplete
        EXTERN InitBuzzer
        EXTERN InitDebugUart
        EXTERN InitFourRotorPWM
        EXTERN InitHCSR04
        EXTERN InitLight
        EXTERN InitMPU9150
        EXTERN InitMS5611
        EXTERN InitSwitches
        EXTERN InitTimer
        EXTERN LPLD_ADC_Get
        EXTERN MPU6050_DMP_MultiReadReg
        EXTERN MPU6050_DMP_MultiWriteReg
        EXTERN MPU6050_GetData
        EXTERN MS5611_Read
        EXTERN MS5611_data_struct
        EXTERN ReadSwitches
        EXTERN ToggleLights
        EXTERN g_timer_cnt
        EXTERN printf

        PUBLIC main

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\app\LPLD_Quad_V2.c
//    1 /**
//    2  * --------------基于"拉普兰德K60底层库V3"的工程（LPLD_Quad_V2）-----------------
//    3  * @file LPLD_Quad_V2.c
//    4  * @version 0.0
//    5  * @date 2013-9-29
//    6  * @brief 关于该工程的描述
//    7  *
//    8  * 版权所有:北京拉普兰德电子技术有限公司
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * 本工程基于"拉普兰德K60底层库V3"开发，
//   14  * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
//   15  * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
//   16  * 底层库使用方法见相关文档。 
//   17  *
//   18  */
//   19 #include "includes.h"
//   20 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   21 void main (void)
//   22 {
main:
        SUB      SP,SP,#+8
//   23     //int8 recv;
//   24     uint32 counts = 0;
        MOVS     R4,#+0
//   25     int i = 0;
        MOVS     R5,#+0
//   26     //uint8 temp = 0x01;
//   27     uint8 data[4] = {1,2,3,4};
        ADD      R0,SP,#+4
        LDR.N    R1,??main_0+0x8
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
//   28     uint8 buf[4] = {0,0,0,0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   29 
//   30     DisableInterrupts;
        CPSID    I
//   31     InitDebugUart();
        BL       InitDebugUart
//   32     InitLight();
        BL       InitLight
//   33     InitBuzzer();
        BL       InitBuzzer
//   34     InitFourRotorPWM();
        BL       InitFourRotorPWM
//   35     InitSwitches();
        BL       InitSwitches
//   36     InitMPU9150();
        BL       InitMPU9150
//   37     InitHCSR04();
        BL       InitHCSR04
//   38     InitTimer();
        BL       InitTimer
//   39     InitMS5611();
        BL       InitMS5611
//   40     EnableInterrupts;
        CPSIE    I
//   41 
//   42     MPU6050_DMP_MultiWriteReg(0x68, 0x63, 4, data);
        ADD      R3,SP,#+4
        MOVS     R2,#+4
        MOVS     R1,#+99
        MOVS     R0,#+104
        BL       MPU6050_DMP_MultiWriteReg
//   43 
//   44     //TurnOnLights(0xff);
//   45 
//   46     //LPLD_UART_PutCharArr(DEBUG_UART, "Input something:\r\n", 18);
//   47 
//   48     while(1)
//   49     {
//   50         if(counts > 50)
??main_1:
        CMP      R4,#+51
        BCC.N    ??main_2
//   51         {
//   52             ToggleLights(ReadSwitches(0xff));
        MOVS     R0,#+255
        BL       ReadSwitches
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ToggleLights
//   53             //ToggleBuzzer();
//   54             counts = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
//   55             i++;
        ADDS     R5,R5,#+1
//   56             //SetBuzzerMode(i);
//   57             if(i > 4)
        CMP      R5,#+5
        BLT.N    ??main_2
//   58             {
//   59               i = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//   60             }
//   61         }
//   62         MS5611_Read(&MS5611_data_struct, MS5611_D1_OSR_4096);
??main_2:
        MOVS     R1,#+72
        LDR.N    R0,??main_0+0xC
        BL       MS5611_Read
//   63         AK8975C_StartMeasure();
        BL       AK8975C_StartMeasure
//   64         printf("%d\t", MPU6050_GetData(ACCEL_XOUT_H));
        MOVS     R0,#+59
        BL       MPU6050_GetData
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   65         printf("%d\t", MPU6050_GetData(ACCEL_YOUT_H));
        MOVS     R0,#+61
        BL       MPU6050_GetData
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   66         printf("%d\t", MPU6050_GetData(ACCEL_ZOUT_H));
        MOVS     R0,#+63
        BL       MPU6050_GetData
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   67         printf("%d\t", MPU6050_GetData(GYRO_XOUT_H));
        MOVS     R0,#+67
        BL       MPU6050_GetData
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   68         printf("%d\t", MPU6050_GetData(GYRO_YOUT_H));
        MOVS     R0,#+69
        BL       MPU6050_GetData
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   69         printf("%d\t", MPU6050_GetData(GYRO_ZOUT_H));
        MOVS     R0,#+71
        BL       MPU6050_GetData
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   70         AK8975C_WaitMeasureComplete();
        BL       AK8975C_WaitMeasureComplete
//   71         printf("%d\t", AK8975C_GetData(HXL));
        MOVS     R0,#+3
        BL       AK8975C_GetData
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   72         printf("%d\t", AK8975C_GetData(HYL));
        MOVS     R0,#+5
        BL       AK8975C_GetData
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   73         printf("%d\t", AK8975C_GetData(HZL));   
        MOVS     R0,#+7
        BL       AK8975C_GetData
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   74         MPU6050_DMP_MultiReadReg(0x68, 0x63, 4,buf);
        ADD      R3,SP,#+0
        MOVS     R2,#+4
        MOVS     R1,#+99
        MOVS     R0,#+104
        BL       MPU6050_DMP_MultiReadReg
//   75         printf("%d\t", buf[0]);
        LDRB     R1,[SP, #+0]
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   76         printf("%d\t", buf[1]);
        LDRB     R1,[SP, #+1]
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   77         printf("%d\t", buf[2]);
        LDRB     R1,[SP, #+2]
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   78         printf("%d\t", buf[3]);
        LDRB     R1,[SP, #+3]
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   79         printf("%d\t", (int)MS5611_data_struct.rPress);
        LDR.N    R0,??main_0+0xC
        LDR      R1,[R0, #+56]
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   80         //printf("%d\t", MPU6050_SingleReadReg(0x63));
//   81         //printf("%d\t", MPU6050_SingleReadReg(0x64));
//   82         //printf("%d\t", MPU6050_SingleReadReg(0x65));
//   83         //printf("%d\t", MPU6050_SingleReadReg(0x66));        
//   84         //printf("%d\t", g_sonar_measure_distance_cm);
//   85         printf("%d\t",  LPLD_ADC_Get(ADC0, DAD1));
        MOVS     R1,#+1
        LDR.N    R0,??main_0+0x10  ;; 0x4003b000
        BL       LPLD_ADC_Get
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   86         printf("%d\t", g_timer_cnt);
        LDR.N    R0,??main_0+0x14
        LDR      R1,[R0, #+0]
        ADR.N    R0,??main_0      ;; "%d\t"
        BL       printf
//   87         printf("\n\r");
        ADR.N    R0,??main_0+0x4  ;; 0x0A, 0x0D, 0x00, 0x00
        BL       printf
//   88         //printf("Hello Wrold!!!\n\r");
//   89         /*temp = 0x01;
//   90         for(i = 0; i < 8; i++)
//   91         {
//   92             recv = (!!ReadSwitches(temp)) + '0';
//   93             LPLD_UART_PutChar(DEBUG_UART, recv);
//   94             temp = temp << 1;
//   95         }
//   96         LPLD_UART_PutChar(DEBUG_UART, '\n');
//   97         LPLD_UART_PutChar(DEBUG_UART, '\r');
//   98         //recv = LPLD_UART_GetChar(DEBUG_UART);
//   99         //LPLD_UART_PutChar(DEBUG_UART, recv);
//  100         PWMOutOneRotor(1, 7);
//  101         PWMOutOneRotor(2, 30);
//  102         PWMOutOneRotor(3, 7);
//  103         PWMOutOneRotor(4, 7);*/
//  104         counts ++;
        ADDS     R4,R4,#+1
        B.N      ??main_1
        Nop      
        DATA
??main_0:
        DC8      "%d\t"
        DC8      0x0A, 0x0D, 0x00, 0x00
        DC32     `?<Constant {1, 2, 3, 4}>`
        DC32     MS5611_data_struct
        DC32     0x4003b000
        DC32     g_timer_cnt
//  105     } 
//  106 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {1, 2, 3, 4}>`:
        DATA
        DC8 1, 2, 3, 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%d\t"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012\015"
        DC8 0

        END
//  107 
//  108 
// 
//  16 bytes in section .rodata
// 388 bytes in section .text
// 
// 388 bytes of CODE  memory
//  16 bytes of CONST memory
//
//Errors: none
//Warnings: none
