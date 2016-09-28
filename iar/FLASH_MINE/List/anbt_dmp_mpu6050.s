///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    13/Apr/2014  20:54:18 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\anbt_dmp\anbt_dmp_mpu6050.c                         /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\anbt_dmp\anbt_dmp_mpu6050.c -D LPLD_K60 -lCN        /
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
//                    MINE\List\anbt_dmp_mpu6050.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME anbt_dmp_mpu6050

        #define SHT_PROGBITS 0x1

        EXTERN AnBT_DMP_Delay_ms
        EXTERN AnBT_DMP_I2C_Read
        EXTERN AnBT_DMP_I2C_Write
        EXTERN AnBT_Uart1_Send_Num
        EXTERN AnBT_Uart1_Send_String
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ldivmod
        EXTERN __aeabi_ui2f
        EXTERN dmp_enable_feature
        EXTERN dmp_load_motion_driver_firmware
        EXTERN dmp_read_fifo
        EXTERN dmp_set_accel_bias
        EXTERN dmp_set_fifo_rate
        EXTERN dmp_set_gyro_bias
        EXTERN dmp_set_orientation
        EXTERN labs
        EXTERN memcmp
        EXTERN memset

        PUBLIC AnBT_DMP_MPU6050_DEV_CFG
        PUBLIC AnBT_DMP_MPU6050_Init
        PUBLIC AnBT_DMP_MPU6050_SEND_DATA_FUN
        PUBLIC accel
        PUBLIC anbt_mpu6050_quat_data
        PUBLIC gyro
        PUBLIC hw
        PUBLIC more
        PUBLIC mpu_configure_fifo
        PUBLIC mpu_get_accel_fsr
        PUBLIC mpu_get_accel_sens
        PUBLIC mpu_get_fifo_config
        PUBLIC mpu_get_gyro_fsr
        PUBLIC mpu_get_gyro_sens
        PUBLIC mpu_get_lpf
        PUBLIC mpu_get_sample_rate
        PUBLIC mpu_load_firmware
        PUBLIC mpu_lp_accel_mode
        PUBLIC mpu_read_fifo_stream
        PUBLIC mpu_read_mem
        PUBLIC mpu_reset_fifo
        PUBLIC mpu_run_self_test
        PUBLIC mpu_set_accel_fsr
        PUBLIC mpu_set_bypass
        PUBLIC mpu_set_dmp_state
        PUBLIC mpu_set_gyro_fsr
        PUBLIC mpu_set_int_latched
        PUBLIC mpu_set_lpf
        PUBLIC mpu_set_sample_rate
        PUBLIC mpu_set_sensors
        PUBLIC mpu_write_mem
        PUBLIC reg
        PUBLIC sensor_timestamp
        PUBLIC sensors
        PUBLIC test


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "WHOAMI error">`:
        DATA
        DC8 "WHOAMI error"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Unsupported version=1.0">`:
        DATA
        DC8 "Unsupported version=1.0"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Product ID error">`:
        DATA
        DC8 "Product ID error"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Half Sensitivity Part">`:
        DATA
        DC8 "Half Sensitivity Part"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-1,Finish DMP device...">`:
        DATA
        DC8 "P-1,Finish DMP device init."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-2,Finish DMP set se...">`:
        DATA
        DC8 "P-2,Finish DMP set sensor."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-2,DMP set sensor er...">`:
        DATA
        DC8 "P-2,DMP set sensor error."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-3,Finish DMP config...">`:
        DATA
        DC8 "P-3,Finish DMP configure fifo."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-3,DMP configure fif...">`:
        DATA
        DC8 "P-3,DMP configure fifo error."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-4,Finish DMP set sa...">`:
        DATA
        DC8 "P-4,Finish DMP set sample rate."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-4,DMP set sample_ra...">`:
        DATA
        DC8 "P-4,DMP set sample_rate error."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-5,Finish DMP load m...">`:
        DATA
        DC8 "P-5,Finish DMP load motion driver firmware."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-5,DMP load motion d...">`:
        DATA
        DC8 "P-5,DMP load motion driver firmware error."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-6,Finish DMP set or...">`:
        DATA
        DC8 "P-6,Finish DMP set orientation."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-6,DMP set orientati...">`:
        DATA
        DC8 "P-6,DMP set orientation error."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-7,Finish DMP enable...">`:
        DATA
        DC8 "P-7,Finish DMP enable feature."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-7,DMP enable featur...">`:
        DATA
        DC8 "P-7,DMP enable feature error."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-8,Finish DMP set fi...">`:
        DATA
        DC8 "P-8,Finish DMP set fifo rate."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-8,DMP set fifo rate...">`:
        DATA
        DC8 "P-8,DMP set fifo rate error."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-9,Finish DMP set dm...">`:
        DATA
        DC8 "P-9,Finish DMP set dmp state."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-9,DMP set dmp state...">`:
        DATA
        DC8 "P-9,DMP set dmp state error."
        DC8 0, 0, 0
// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\module\anbt_dmp\anbt_dmp_mpu6050.c
//    1 //**************************************************************************************
//    2 //License:
//    3 //Copyright (C) 2011-2012 InvenSense Corporation, All Rights Reserved.
//    4 //See included License.txt for License information.
//    5 //
//    6 //*  @addtogroup  DRIVERS Sensor Driver Layer
//    7 //*  @brief       Hardware drivers to communicate with sensors via I2C.
//    8 //*
//    9 //*  @{
//   10 //*      @file       inv_mpu_dmp_motion_driver.c
//   11 //*      @brief      DMP image and interface functions.
//   12 //*      @details    All functions are preceded by the dmp_ prefix to
//   13 //*                  differentiate among MPL and general driver function calls.
//   14 //**************************************************************************************
//   15 //#include <stdio.h>
//   16 #include <stdint.h>
//   17 #include <stdlib.h>
//   18 //#include <string.h>
//   19 _C_LIB_DECL
//   20 __EFF_NENW1NW2   __ATTRIBUTES int        memcmp(const void *, const void *,
//   21                                                 unsigned int);
//   22 _END_C_LIB_DECL
//   23 #include <math.h>
//   24 #include "anbt_dmp_mpu6050.h"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute struct gyro_reg_s const reg
reg:
        DATA
        DC8 117, 25, 26, 12, 106, 35, 27, 28, 31, 32, 114, 116, 67, 59, 65, 56
        DC8 57, 58, 107, 108, 55, 111, 6, 36, 109, 110, 112, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute struct hw_s const hw
hw:
        DATA
        DC8 104, 0
        DC16 1024
        DC8 118, 0
        DC16 340, -521, 256

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute struct test_s const test
test:
        DATA
        DC32 131, 2048
        DC8 0, 1, 0, 24
        DC16 50
        DC8 5, 0
        DC32 41200000H, 42D20000H, 3E0F5C29H, 3E99999AH, 3F733333H, 3E0F5C29H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// static __absolute struct gyro_state_s st
st:
        DATA
        DC32 reg, hw
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 test

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// static __absolute signed char gyro_orientation[9]
gyro_orientation:
        DATA
        DC8 -1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute long anbt_mpu6050_quat_data[4]
anbt_mpu6050_quat_data:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute short gyro[3]
gyro:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute short accel[3]
accel:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute short sensors
sensors:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute unsigned char more
more:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute unsigned long sensor_timestamp
sensor_timestamp:
        DS8 4
//   25 #include "anbt_dmp_driver.h"
//   26 #include "anbt_dmp_fun.h"
//   27 #include "anbt_dmp.h"
//   28 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 int mpu_set_gyro_fsr(unsigned short fsr)
//   30 {
mpu_set_gyro_fsr:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   31     unsigned char data;
//   32 
//   33     if (!(st.chip_cfg.sensors))
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_set_gyro_fsr_0
//   34         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_gyro_fsr_1
//   35 
//   36     switch (fsr) {
??mpu_set_gyro_fsr_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,R4
        CMP      R0,#+250
        BEQ.N    ??mpu_set_gyro_fsr_2
        CMP      R0,#+500
        BEQ.N    ??mpu_set_gyro_fsr_3
        CMP      R0,#+1000
        BEQ.N    ??mpu_set_gyro_fsr_4
        CMP      R0,#+2000
        BEQ.N    ??mpu_set_gyro_fsr_5
        B.N      ??mpu_set_gyro_fsr_6
//   37     case 250:
//   38         data = INV_FSR_250DPS << 3;
??mpu_set_gyro_fsr_2:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   39         break;
        B.N      ??mpu_set_gyro_fsr_7
//   40     case 500:
//   41         data = INV_FSR_500DPS << 3;
??mpu_set_gyro_fsr_3:
        MOVS     R0,#+8
        STRB     R0,[SP, #+0]
//   42         break;
        B.N      ??mpu_set_gyro_fsr_7
//   43     case 1000:
//   44         data = INV_FSR_1000DPS << 3;
??mpu_set_gyro_fsr_4:
        MOVS     R0,#+16
        STRB     R0,[SP, #+0]
//   45         break;
        B.N      ??mpu_set_gyro_fsr_7
//   46     case 2000:
//   47         data = INV_FSR_2000DPS << 3;
??mpu_set_gyro_fsr_5:
        MOVS     R0,#+24
        STRB     R0,[SP, #+0]
//   48         break;
        B.N      ??mpu_set_gyro_fsr_7
//   49     default:
//   50         return -1;
??mpu_set_gyro_fsr_6:
        MOVS     R0,#-1
        B.N      ??mpu_set_gyro_fsr_1
//   51     }
//   52 
//   53     if (st.chip_cfg.gyro_fsr == (data >> 3))
??mpu_set_gyro_fsr_7:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+8]
        LDRB     R1,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        CMP      R0,R1
        BNE.N    ??mpu_set_gyro_fsr_8
//   54         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_gyro_fsr_1
//   55     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->gyro_cfg, 1, &data))
??mpu_set_gyro_fsr_8:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+6]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_gyro_fsr_9
//   56         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_gyro_fsr_1
//   57     st.chip_cfg.gyro_fsr = data >> 3;
??mpu_set_gyro_fsr_9:
        LDR.W    R0,??DataTable16
        LDRB     R1,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        STRB     R1,[R0, #+8]
//   58     return 0;
        MOVS     R0,#+0
??mpu_set_gyro_fsr_1:
        POP      {R1,R2,R4,PC}    ;; return
//   59 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 int mpu_set_accel_fsr(unsigned char fsr)
//   61 {
mpu_set_accel_fsr:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   62     unsigned char data;
//   63 
//   64     if (!(st.chip_cfg.sensors))
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_set_accel_fsr_0
//   65         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_fsr_1
//   66 
//   67     switch (fsr) {
??mpu_set_accel_fsr_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+2
        BEQ.N    ??mpu_set_accel_fsr_2
        CMP      R0,#+4
        BEQ.N    ??mpu_set_accel_fsr_3
        CMP      R0,#+8
        BEQ.N    ??mpu_set_accel_fsr_4
        CMP      R0,#+16
        BEQ.N    ??mpu_set_accel_fsr_5
        B.N      ??mpu_set_accel_fsr_6
//   68     case 2:
//   69         data = INV_FSR_2G << 3;
??mpu_set_accel_fsr_2:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   70         break;
        B.N      ??mpu_set_accel_fsr_7
//   71     case 4:
//   72         data = INV_FSR_4G << 3;
??mpu_set_accel_fsr_3:
        MOVS     R0,#+8
        STRB     R0,[SP, #+0]
//   73         break;
        B.N      ??mpu_set_accel_fsr_7
//   74     case 8:
//   75         data = INV_FSR_8G << 3;
??mpu_set_accel_fsr_4:
        MOVS     R0,#+16
        STRB     R0,[SP, #+0]
//   76         break;
        B.N      ??mpu_set_accel_fsr_7
//   77     case 16:
//   78         data = INV_FSR_16G << 3;
??mpu_set_accel_fsr_5:
        MOVS     R0,#+24
        STRB     R0,[SP, #+0]
//   79         break;
        B.N      ??mpu_set_accel_fsr_7
//   80     default:
//   81         return -1;
??mpu_set_accel_fsr_6:
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_fsr_1
//   82     }
//   83     if (st.chip_cfg.accel_fsr == (data >> 3))
??mpu_set_accel_fsr_7:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+9]
        LDRB     R1,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        CMP      R0,R1
        BNE.N    ??mpu_set_accel_fsr_8
//   84         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_accel_fsr_1
//   85     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->accel_cfg, 1, &data))
??mpu_set_accel_fsr_8:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+7]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_accel_fsr_9
//   86         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_fsr_1
//   87     st.chip_cfg.accel_fsr = data >> 3;
??mpu_set_accel_fsr_9:
        LDR.W    R0,??DataTable16
        LDRB     R1,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        STRB     R1,[R0, #+9]
//   88     return 0;
        MOVS     R0,#+0
??mpu_set_accel_fsr_1:
        POP      {R1,R2,R4,PC}    ;; return
//   89 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 int mpu_set_lpf(unsigned short lpf)
//   91 {
mpu_set_lpf:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   92     unsigned char data;
//   93 
//   94     if (!(st.chip_cfg.sensors))
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_set_lpf_0
//   95         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_lpf_1
//   96 
//   97     if (lpf >= 188)
??mpu_set_lpf_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+188
        BCC.N    ??mpu_set_lpf_2
//   98         data = INV_FILTER_188HZ;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
//   99     else if (lpf >= 98)
??mpu_set_lpf_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+98
        BCC.N    ??mpu_set_lpf_4
//  100         data = INV_FILTER_98HZ;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
//  101     else if (lpf >= 42)
??mpu_set_lpf_4:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+42
        BCC.N    ??mpu_set_lpf_5
//  102         data = INV_FILTER_42HZ;
        MOVS     R0,#+3
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
//  103     else if (lpf >= 20)
??mpu_set_lpf_5:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+20
        BCC.N    ??mpu_set_lpf_6
//  104         data = INV_FILTER_20HZ;
        MOVS     R0,#+4
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
//  105     else if (lpf >= 10)
??mpu_set_lpf_6:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+10
        BCC.N    ??mpu_set_lpf_7
//  106         data = INV_FILTER_10HZ;
        MOVS     R0,#+5
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
//  107     else
//  108         data = INV_FILTER_5HZ;
??mpu_set_lpf_7:
        MOVS     R0,#+6
        STRB     R0,[SP, #+0]
//  109 
//  110     if (st.chip_cfg.lpf == data)
??mpu_set_lpf_3:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+11]
        LDRB     R1,[SP, #+0]
        CMP      R0,R1
        BNE.N    ??mpu_set_lpf_8
//  111         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_lpf_1
//  112     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->lpf, 1, &data))
??mpu_set_lpf_8:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_lpf_9
//  113         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_lpf_1
//  114     st.chip_cfg.lpf = data;
??mpu_set_lpf_9:
        LDR.W    R0,??DataTable16
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+11]
//  115     return 0;
        MOVS     R0,#+0
??mpu_set_lpf_1:
        POP      {R1,R2,R4,PC}    ;; return
//  116 }
//  117 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 int mpu_set_int_latched(unsigned char enable)
//  119 {
mpu_set_int_latched:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  120     unsigned char tmp;
//  121     if (st.chip_cfg.latched_int == enable)
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+35]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??mpu_set_int_latched_0
//  122         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_int_latched_1
//  123 
//  124     if (enable)
??mpu_set_int_latched_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_int_latched_2
//  125         tmp = BIT_LATCH_EN | BIT_ANY_RD_CLR;
        MOVS     R0,#+48
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_int_latched_3
//  126     else
//  127         tmp = 0;
??mpu_set_int_latched_2:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  128     if (st.chip_cfg.bypass_mode)
??mpu_set_int_latched_3:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+18]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_int_latched_4
//  129         tmp |= BIT_BYPASS_EN;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x2
        STRB     R0,[SP, #+0]
//  130     if (st.chip_cfg.active_low_int)
??mpu_set_int_latched_4:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+34]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_int_latched_5
//  131         tmp |= BIT_ACTL;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x80
        STRB     R0,[SP, #+0]
//  132     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->int_pin_cfg, 1, &tmp))
??mpu_set_int_latched_5:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_int_latched_6
//  133         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_int_latched_1
//  134     st.chip_cfg.latched_int = enable;
??mpu_set_int_latched_6:
        LDR.W    R0,??DataTable16
        STRB     R4,[R0, #+35]
//  135     return 0;
        MOVS     R0,#+0
??mpu_set_int_latched_1:
        POP      {R1,R2,R4,PC}    ;; return
//  136 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 static int set_int_enable(unsigned char enable)
//  138 {
set_int_enable:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  139     unsigned char tmp;
//  140 
//  141     if (st.chip_cfg.dmp_on) {
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??set_int_enable_0
//  142         if (enable)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??set_int_enable_1
//  143             tmp = BIT_DMP_INT_EN;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
        B.N      ??set_int_enable_2
//  144         else
//  145             tmp = 0x00;
??set_int_enable_1:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  146         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->int_enable, 1, &tmp))
??set_int_enable_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??set_int_enable_3
//  147             return -1;
        MOVS     R0,#-1
        B.N      ??set_int_enable_4
//  148         st.chip_cfg.int_enable = tmp;
??set_int_enable_3:
        LDR.W    R0,??DataTable16
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+17]
        B.N      ??set_int_enable_5
//  149     } else {
//  150         if (!st.chip_cfg.sensors)
??set_int_enable_0:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??set_int_enable_6
//  151             return -1;
        MOVS     R0,#-1
        B.N      ??set_int_enable_4
//  152         if (enable && st.chip_cfg.int_enable)
??set_int_enable_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??set_int_enable_7
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+17]
        CMP      R0,#+0
        BEQ.N    ??set_int_enable_7
//  153             return 0;
        MOVS     R0,#+0
        B.N      ??set_int_enable_4
//  154         if (enable)
??set_int_enable_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??set_int_enable_8
//  155             tmp = BIT_DATA_RDY_EN;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??set_int_enable_9
//  156         else
//  157             tmp = 0x00;
??set_int_enable_8:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  158         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->int_enable, 1, &tmp))
??set_int_enable_9:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??set_int_enable_10
//  159             return -1;
        MOVS     R0,#-1
        B.N      ??set_int_enable_4
//  160         st.chip_cfg.int_enable = tmp;
??set_int_enable_10:
        LDR.W    R0,??DataTable16
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+17]
//  161     }
//  162     return 0;
??set_int_enable_5:
        MOVS     R0,#+0
??set_int_enable_4:
        POP      {R1,R2,R4,PC}    ;; return
//  163 }
//  164 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  165 int mpu_reset_fifo(void)
//  166 {
mpu_reset_fifo:
        PUSH     {R7,LR}
//  167     unsigned char data;
//  168 
//  169     if (!(st.chip_cfg.sensors))
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_reset_fifo_0
//  170         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  171 
//  172     data = 0;
??mpu_reset_fifo_0:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  173     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->int_enable, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_2
//  174         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  175     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->fifo_en, 1, &data))
??mpu_reset_fifo_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_3
//  176         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  177     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, &data))
??mpu_reset_fifo_3:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_4
//  178         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  179 
//  180     if (st.chip_cfg.dmp_on) {
??mpu_reset_fifo_4:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_5
//  181         data = BIT_FIFO_RST | BIT_DMP_RST;
        MOVS     R0,#+12
        STRB     R0,[SP, #+0]
//  182         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_6
//  183             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  184         AnBT_DMP_Delay_ms(50);
??mpu_reset_fifo_6:
        MOVS     R0,#+50
        BL       AnBT_DMP_Delay_ms
//  185         data = BIT_DMP_EN | BIT_FIFO_EN;
        MOVS     R0,#+192
        STRB     R0,[SP, #+0]
//  186         if (st.chip_cfg.sensors & INV_XYZ_COMPASS)
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        LSLS     R0,R0,#+31
        BPL.N    ??mpu_reset_fifo_7
//  187             data |= BIT_AUX_IF_EN;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x20
        STRB     R0,[SP, #+0]
//  188         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, &data))
??mpu_reset_fifo_7:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_8
//  189             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  190         if (st.chip_cfg.int_enable)
??mpu_reset_fifo_8:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+17]
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_9
//  191             data = BIT_DMP_INT_EN;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
        B.N      ??mpu_reset_fifo_10
//  192         else
//  193             data = 0;
??mpu_reset_fifo_9:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  194         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->int_enable, 1, &data))
??mpu_reset_fifo_10:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_11
//  195             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  196         data = 0;
??mpu_reset_fifo_11:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  197         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->fifo_en, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_12
//  198             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  199     } else {
//  200         data = BIT_FIFO_RST;
??mpu_reset_fifo_5:
        MOVS     R0,#+4
        STRB     R0,[SP, #+0]
//  201         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_13
//  202             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  203         if (st.chip_cfg.bypass_mode || !(st.chip_cfg.sensors & INV_XYZ_COMPASS))
??mpu_reset_fifo_13:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+18]
        CMP      R0,#+0
        BNE.N    ??mpu_reset_fifo_14
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        LSLS     R0,R0,#+31
        BMI.N    ??mpu_reset_fifo_15
//  204             data = BIT_FIFO_EN;
??mpu_reset_fifo_14:
        MOVS     R0,#+64
        STRB     R0,[SP, #+0]
        B.N      ??mpu_reset_fifo_16
//  205         else
//  206             data = BIT_FIFO_EN | BIT_AUX_IF_EN;
??mpu_reset_fifo_15:
        MOVS     R0,#+96
        STRB     R0,[SP, #+0]
//  207         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, &data))
??mpu_reset_fifo_16:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_17
//  208             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  209         AnBT_DMP_Delay_ms(50);
??mpu_reset_fifo_17:
        MOVS     R0,#+50
        BL       AnBT_DMP_Delay_ms
//  210         if (st.chip_cfg.int_enable)
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+17]
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_18
//  211             data = BIT_DATA_RDY_EN;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??mpu_reset_fifo_19
//  212         else
//  213             data = 0;
??mpu_reset_fifo_18:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  214         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->int_enable, 1, &data))
??mpu_reset_fifo_19:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_20
//  215             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  216         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->fifo_en, 1, &st.chip_cfg.fifo_enable))
??mpu_reset_fifo_20:
        LDR.W    R3,??DataTable20
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_12
//  217             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
//  218     }
//  219     return 0;
??mpu_reset_fifo_12:
        MOVS     R0,#+0
??mpu_reset_fifo_1:
        POP      {R1,PC}          ;; return
//  220 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  221 int mpu_configure_fifo(unsigned char sensors)
//  222 {
mpu_configure_fifo:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
//  223     unsigned char prev;
//  224     int result = 0;
        MOVS     R5,#+0
//  225 
//  226     sensors &= ~INV_XYZ_COMPASS;
        ANDS     R6,R6,#0xFE
//  227     if (st.chip_cfg.dmp_on)
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_configure_fifo_0
//  228         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_configure_fifo_1
//  229     else {
//  230         if (!(st.chip_cfg.sensors))
??mpu_configure_fifo_0:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_configure_fifo_2
//  231             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_configure_fifo_1
//  232         prev = st.chip_cfg.fifo_enable;
??mpu_configure_fifo_2:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+16]
        MOVS     R4,R0
//  233         st.chip_cfg.fifo_enable = sensors & st.chip_cfg.sensors;
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        ANDS     R0,R0,R6
        LDR.W    R1,??DataTable16
        STRB     R0,[R1, #+16]
//  234         if (st.chip_cfg.fifo_enable != sensors)
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+16]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R0,R6
        BEQ.N    ??mpu_configure_fifo_3
//  235             result = -1;
        MOVS     R0,#-1
        MOVS     R5,R0
        B.N      ??mpu_configure_fifo_4
//  236         else
//  237             result = 0;
??mpu_configure_fifo_3:
        MOVS     R0,#+0
        MOVS     R5,R0
//  238         if (sensors || st.chip_cfg.lp_accel_mode)
??mpu_configure_fifo_4:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??mpu_configure_fifo_5
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+20]
        CMP      R0,#+0
        BEQ.N    ??mpu_configure_fifo_6
//  239             set_int_enable(1);
??mpu_configure_fifo_5:
        MOVS     R0,#+1
        BL       set_int_enable
        B.N      ??mpu_configure_fifo_7
//  240         else
//  241             set_int_enable(0);
??mpu_configure_fifo_6:
        MOVS     R0,#+0
        BL       set_int_enable
//  242         if (sensors) {
??mpu_configure_fifo_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??mpu_configure_fifo_8
//  243             if (mpu_reset_fifo()) {
        BL       mpu_reset_fifo
        CMP      R0,#+0
        BEQ.N    ??mpu_configure_fifo_8
//  244                 st.chip_cfg.fifo_enable = prev;
        LDR.W    R0,??DataTable16
        STRB     R4,[R0, #+16]
//  245                 return -1;
        MOVS     R0,#-1
        B.N      ??mpu_configure_fifo_1
//  246             }
//  247         }
//  248     }
//  249 
//  250     return result;
??mpu_configure_fifo_8:
        MOVS     R0,R5
??mpu_configure_fifo_1:
        POP      {R4-R6,PC}       ;; return
//  251 }
//  252 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  253 int mpu_lp_accel_mode(unsigned char rate)
//  254 {
mpu_lp_accel_mode:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  255     unsigned char tmp[2];
//  256 
//  257     if (rate > 40)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+41
        BCC.N    ??mpu_lp_accel_mode_0
//  258         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_lp_accel_mode_1
//  259 
//  260     if (!rate) {
??mpu_lp_accel_mode_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??mpu_lp_accel_mode_2
//  261         mpu_set_int_latched(0);
        MOVS     R0,#+0
        BL       mpu_set_int_latched
//  262         tmp[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  263         tmp[1] = BIT_STBY_XYZG;
        MOVS     R0,#+7
        STRB     R0,[SP, #+1]
//  264         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->pwr_mgmt_1, 2, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_lp_accel_mode_3
//  265             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_lp_accel_mode_1
//  266         st.chip_cfg.lp_accel_mode = 0;
??mpu_lp_accel_mode_3:
        LDR.W    R0,??DataTable16
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
//  267         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_lp_accel_mode_1
//  268     }
//  269     mpu_set_int_latched(1);
??mpu_lp_accel_mode_2:
        MOVS     R0,#+1
        BL       mpu_set_int_latched
//  270 
//  271     tmp[0] = BIT_LPA_CYCLE;
        MOVS     R0,#+32
        STRB     R0,[SP, #+0]
//  272     if (rate == 1) {
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??mpu_lp_accel_mode_4
//  273         tmp[1] = INV_LPA_1_25HZ;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  274         mpu_set_lpf(5);
        MOVS     R0,#+5
        BL       mpu_set_lpf
        B.N      ??mpu_lp_accel_mode_5
//  275     } else if (rate <= 5) {
??mpu_lp_accel_mode_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCS.N    ??mpu_lp_accel_mode_6
//  276         tmp[1] = INV_LPA_5HZ;
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
//  277         mpu_set_lpf(5);
        MOVS     R0,#+5
        BL       mpu_set_lpf
        B.N      ??mpu_lp_accel_mode_5
//  278     } else if (rate <= 20) {
??mpu_lp_accel_mode_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+21
        BCS.N    ??mpu_lp_accel_mode_7
//  279         tmp[1] = INV_LPA_20HZ;
        MOVS     R0,#+2
        STRB     R0,[SP, #+1]
//  280         mpu_set_lpf(10);
        MOVS     R0,#+10
        BL       mpu_set_lpf
        B.N      ??mpu_lp_accel_mode_5
//  281     } else {
//  282         tmp[1] = INV_LPA_40HZ;
??mpu_lp_accel_mode_7:
        MOVS     R0,#+3
        STRB     R0,[SP, #+1]
//  283         mpu_set_lpf(20);
        MOVS     R0,#+20
        BL       mpu_set_lpf
//  284     }
//  285     tmp[1] = (tmp[1] << 6) | BIT_STBY_XYZG;
??mpu_lp_accel_mode_5:
        LDRB     R0,[SP, #+1]
        LSLS     R0,R0,#+6
        ORRS     R0,R0,#0x7
        STRB     R0,[SP, #+1]
//  286     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->pwr_mgmt_1, 2, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_lp_accel_mode_8
//  287         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_lp_accel_mode_1
//  288 
//  289     st.chip_cfg.sensors = INV_XYZ_ACCEL;
??mpu_lp_accel_mode_8:
        LDR.W    R0,??DataTable16
        MOVS     R1,#+8
        STRB     R1,[R0, #+10]
//  290     st.chip_cfg.clk_src = 0;
        LDR.W    R0,??DataTable16
        MOVS     R1,#+0
        STRB     R1,[R0, #+12]
//  291     st.chip_cfg.lp_accel_mode = 1;
        LDR.W    R0,??DataTable16
        MOVS     R1,#+1
        STRB     R1,[R0, #+20]
//  292     mpu_configure_fifo(0);
        MOVS     R0,#+0
        BL       mpu_configure_fifo
//  293 
//  294     return 0;
        MOVS     R0,#+0
??mpu_lp_accel_mode_1:
        POP      {R1,R2,R4,PC}    ;; return
//  295 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  296 int mpu_set_sample_rate(unsigned short rate)
//  297 {
mpu_set_sample_rate:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  298     unsigned char data;
//  299 
//  300     if (!(st.chip_cfg.sensors))
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_set_sample_rate_0
//  301         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sample_rate_1
//  302 
//  303     if (st.chip_cfg.dmp_on)
??mpu_set_sample_rate_0:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sample_rate_2
//  304         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sample_rate_1
//  305     else {
//  306         if (st.chip_cfg.lp_accel_mode) {
??mpu_set_sample_rate_2:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+20]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sample_rate_3
//  307             if (rate && (rate <= 40)) {
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??mpu_set_sample_rate_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+41
        BCS.N    ??mpu_set_sample_rate_4
//  308                 /* Just stay in low-power accel mode. */
//  309                 mpu_lp_accel_mode(rate);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       mpu_lp_accel_mode
//  310                 return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_sample_rate_1
//  311             }
//  312             /* Requested rate exceeds the allowed frequencies in LP accel mode,
//  313              * switch back to full-power mode.
//  314              */
//  315             mpu_lp_accel_mode(0);
??mpu_set_sample_rate_4:
        MOVS     R0,#+0
        BL       mpu_lp_accel_mode
//  316         }
//  317         if (rate < 4)
??mpu_set_sample_rate_3:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+4
        BCS.N    ??mpu_set_sample_rate_5
//  318             rate = 4;
        MOVS     R0,#+4
        MOVS     R4,R0
        B.N      ??mpu_set_sample_rate_6
//  319         else if (rate > 1000)
??mpu_set_sample_rate_5:
        MOVW     R0,#+1001
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,R0
        BCC.N    ??mpu_set_sample_rate_6
//  320             rate = 1000;
        MOV      R0,#+1000
        MOVS     R4,R0
//  321 
//  322         data = 1000 / rate - 1;
??mpu_set_sample_rate_6:
        MOV      R0,#+1000
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SDIV     R0,R0,R4
        SUBS     R0,R0,#+1
        STRB     R0,[SP, #+0]
//  323         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->rate_div, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sample_rate_7
//  324             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sample_rate_1
//  325 
//  326         st.chip_cfg.sample_rate = 1000 / (1 + data);
??mpu_set_sample_rate_7:
        MOV      R0,#+1000
        LDRB     R1,[SP, #+0]
        ADDS     R1,R1,#+1
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable16
        STRH     R0,[R1, #+14]
//  327 
//  328 
//  329         /* Automatically set LPF to 1/2 sampling rate. */
//  330         mpu_set_lpf(st.chip_cfg.sample_rate >> 1);
        LDR.W    R0,??DataTable16
        LDRH     R0,[R0, #+14]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        BL       mpu_set_lpf
//  331         return 0;
        MOVS     R0,#+0
??mpu_set_sample_rate_1:
        POP      {R1,R2,R4,PC}    ;; return
//  332     }
//  333 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  334 int mpu_set_bypass(unsigned char bypass_on)
//  335 {
mpu_set_bypass:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  336     unsigned char tmp;
//  337 
//  338     if (st.chip_cfg.bypass_mode == bypass_on)
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+18]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??mpu_set_bypass_0
//  339         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_bypass_1
//  340 
//  341     if (bypass_on) {
??mpu_set_bypass_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_bypass_2
//  342         if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->user_ctrl, 1, &tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_3
//  343             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
//  344         tmp &= ~BIT_AUX_IF_EN;
??mpu_set_bypass_3:
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0xDF
        STRB     R0,[SP, #+0]
//  345         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, &tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_4
//  346             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
//  347         AnBT_DMP_Delay_ms(3);
??mpu_set_bypass_4:
        MOVS     R0,#+3
        BL       AnBT_DMP_Delay_ms
//  348         tmp = BIT_BYPASS_EN;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
//  349         if (st.chip_cfg.active_low_int)
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+34]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_5
//  350             tmp |= BIT_ACTL;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x80
        STRB     R0,[SP, #+0]
//  351         if (st.chip_cfg.latched_int)
??mpu_set_bypass_5:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+35]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_6
//  352             tmp |= BIT_LATCH_EN | BIT_ANY_RD_CLR;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x30
        STRB     R0,[SP, #+0]
//  353         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->int_pin_cfg, 1, &tmp))
??mpu_set_bypass_6:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_7
//  354             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
//  355     } else {
//  356         /* Enable I2C master mode if compass is being used. */
//  357         if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->user_ctrl, 1, &tmp))
??mpu_set_bypass_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_8
//  358             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
//  359         if (st.chip_cfg.sensors & INV_XYZ_COMPASS)
??mpu_set_bypass_8:
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+10]
        LSLS     R0,R0,#+31
        BPL.N    ??mpu_set_bypass_9
//  360             tmp |= BIT_AUX_IF_EN;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x20
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_bypass_10
//  361         else
//  362             tmp &= ~BIT_AUX_IF_EN;
??mpu_set_bypass_9:
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0xDF
        STRB     R0,[SP, #+0]
//  363         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, &tmp))
??mpu_set_bypass_10:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_11
//  364             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
//  365         AnBT_DMP_Delay_ms(3);
??mpu_set_bypass_11:
        MOVS     R0,#+3
        BL       AnBT_DMP_Delay_ms
//  366         if (st.chip_cfg.active_low_int)
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+34]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_12
//  367             tmp = BIT_ACTL;
        MOVS     R0,#+128
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_bypass_13
//  368         else
//  369             tmp = 0;
??mpu_set_bypass_12:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  370         if (st.chip_cfg.latched_int)
??mpu_set_bypass_13:
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+35]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_14
//  371             tmp |= BIT_LATCH_EN | BIT_ANY_RD_CLR;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x30
        STRB     R0,[SP, #+0]
//  372         if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->int_pin_cfg, 1, &tmp))
??mpu_set_bypass_14:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+20]
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_7
//  373             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
//  374     }
//  375     st.chip_cfg.bypass_mode = bypass_on;
??mpu_set_bypass_7:
        LDR.N    R0,??DataTable16
        STRB     R4,[R0, #+18]
//  376     return 0;
        MOVS     R0,#+0
??mpu_set_bypass_1:
        POP      {R1,R2,R4,PC}    ;; return
//  377 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  378 int mpu_set_sensors(unsigned char sensors)
//  379 {
mpu_set_sensors:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  380     unsigned char data;
//  381 
//  382     if (sensors & INV_XYZ_GYRO)
        MOVS     R0,#+112
        TST      R4,R0
        BEQ.N    ??mpu_set_sensors_0
//  383         data = INV_CLK_PLL;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_sensors_1
//  384     else if (sensors)
??mpu_set_sensors_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_sensors_2
//  385         data = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_sensors_1
//  386     else
//  387         data = BIT_SLEEP;
??mpu_set_sensors_2:
        MOVS     R0,#+64
        STRB     R0,[SP, #+0]
//  388     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->pwr_mgmt_1, 1, &data)) {
??mpu_set_sensors_1:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sensors_3
//  389         st.chip_cfg.sensors = 0;
        LDR.N    R0,??DataTable16
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
//  390         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sensors_4
//  391     }
//  392     st.chip_cfg.clk_src = data & ~BIT_SLEEP;
??mpu_set_sensors_3:
        LDR.N    R0,??DataTable16
        LDRB     R1,[SP, #+0]
        ANDS     R1,R1,#0xBF
        STRB     R1,[R0, #+12]
//  393 
//  394     data = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  395     if (!(sensors & INV_X_GYRO))
        LSLS     R0,R4,#+25
        BMI.N    ??mpu_set_sensors_5
//  396         data |= BIT_STBY_XG;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x4
        STRB     R0,[SP, #+0]
//  397     if (!(sensors & INV_Y_GYRO))
??mpu_set_sensors_5:
        LSLS     R0,R4,#+26
        BMI.N    ??mpu_set_sensors_6
//  398         data |= BIT_STBY_YG;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x2
        STRB     R0,[SP, #+0]
//  399     if (!(sensors & INV_Z_GYRO))
??mpu_set_sensors_6:
        LSLS     R0,R4,#+27
        BMI.N    ??mpu_set_sensors_7
//  400         data |= BIT_STBY_ZG;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x1
        STRB     R0,[SP, #+0]
//  401     if (!(sensors & INV_XYZ_ACCEL))
??mpu_set_sensors_7:
        LSLS     R0,R4,#+28
        BMI.N    ??mpu_set_sensors_8
//  402         data |= BIT_STBY_XYZA;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x38
        STRB     R0,[SP, #+0]
//  403     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->pwr_mgmt_2, 1, &data)) {
??mpu_set_sensors_8:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+19]
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sensors_9
//  404         st.chip_cfg.sensors = 0;
        LDR.N    R0,??DataTable16
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
//  405         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sensors_4
//  406     }
//  407 
//  408     if (sensors && (sensors != INV_XYZ_ACCEL))
??mpu_set_sensors_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_sensors_10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BEQ.N    ??mpu_set_sensors_10
//  409         /* Latched interrupts only used in LP accel mode. */
//  410         mpu_set_int_latched(0);
        MOVS     R0,#+0
        BL       mpu_set_int_latched
//  411 
//  412 
//  413     st.chip_cfg.sensors = sensors;
??mpu_set_sensors_10:
        LDR.N    R0,??DataTable16
        STRB     R4,[R0, #+10]
//  414     st.chip_cfg.lp_accel_mode = 0;
        LDR.N    R0,??DataTable16
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
//  415     AnBT_DMP_Delay_ms(50);
        MOVS     R0,#+50
        BL       AnBT_DMP_Delay_ms
//  416     return 0;
        MOVS     R0,#+0
??mpu_set_sensors_4:
        POP      {R1,R2,R4,PC}    ;; return
//  417 }
//  418 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  419 int mpu_set_dmp_state(unsigned char enable)
//  420 {
mpu_set_dmp_state:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  421     unsigned char tmp;
//  422     if (st.chip_cfg.dmp_on == enable)
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+36]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??mpu_set_dmp_state_0
//  423         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_dmp_state_1
//  424 
//  425     if (enable) {
??mpu_set_dmp_state_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_dmp_state_2
//  426         if (!st.chip_cfg.dmp_loaded)
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+37]
        CMP      R0,#+0
        BNE.N    ??mpu_set_dmp_state_3
//  427             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_dmp_state_1
//  428         /* Disable data ready interrupt. */
//  429         set_int_enable(0);
??mpu_set_dmp_state_3:
        MOVS     R0,#+0
        BL       set_int_enable
//  430         /* Disable bypass mode. */
//  431         mpu_set_bypass(0);
        MOVS     R0,#+0
        BL       mpu_set_bypass
//  432         /* Keep constant sample rate, FIFO rate controlled by DMP. */
//  433         mpu_set_sample_rate(st.chip_cfg.dmp_sample_rate);
        LDR.N    R0,??DataTable16
        LDRH     R0,[R0, #+38]
        BL       mpu_set_sample_rate
//  434         /* Remove FIFO elements. */
//  435         tmp = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  436         AnBT_DMP_I2C_Write(st.hw->addr, 0x23, 1, &tmp);
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        MOVS     R1,#+35
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
//  437         st.chip_cfg.dmp_on = 1;
        LDR.N    R0,??DataTable16
        MOVS     R1,#+1
        STRB     R1,[R0, #+36]
//  438         /* Enable DMP interrupt. */
//  439         set_int_enable(1);
        MOVS     R0,#+1
        BL       set_int_enable
//  440         mpu_reset_fifo();
        BL       mpu_reset_fifo
        B.N      ??mpu_set_dmp_state_4
//  441     } else {
//  442         /* Disable DMP interrupt. */
//  443         set_int_enable(0);
??mpu_set_dmp_state_2:
        MOVS     R0,#+0
        BL       set_int_enable
//  444         /* Restore FIFO settings. */
//  445         tmp = st.chip_cfg.fifo_enable;
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+16]
        STRB     R0,[SP, #+0]
//  446         AnBT_DMP_I2C_Write(st.hw->addr, 0x23, 1, &tmp);
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        MOVS     R1,#+35
        LDR.N    R0,??DataTable16
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
//  447         st.chip_cfg.dmp_on = 0;
        LDR.N    R0,??DataTable16
        MOVS     R1,#+0
        STRB     R1,[R0, #+36]
//  448         mpu_reset_fifo();
        BL       mpu_reset_fifo
//  449     }
//  450     return 0;
??mpu_set_dmp_state_4:
        MOVS     R0,#+0
??mpu_set_dmp_state_1:
        POP      {R1,R2,R4,PC}    ;; return
//  451 }
//  452 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  453 int mpu_get_gyro_fsr(unsigned short *fsr)
//  454 {
mpu_get_gyro_fsr:
        MOVS     R1,R0
//  455     switch (st.chip_cfg.gyro_fsr) {
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_gyro_fsr_0
        CMP      R0,#+2
        BEQ.N    ??mpu_get_gyro_fsr_1
        BCC.N    ??mpu_get_gyro_fsr_2
        CMP      R0,#+3
        BEQ.N    ??mpu_get_gyro_fsr_3
        B.N      ??mpu_get_gyro_fsr_4
//  456     case INV_FSR_250DPS:
//  457         fsr[0] = 250;
??mpu_get_gyro_fsr_0:
        MOVS     R0,#+250
        STRH     R0,[R1, #+0]
//  458         break;
        B.N      ??mpu_get_gyro_fsr_5
//  459     case INV_FSR_500DPS:
//  460         fsr[0] = 500;
??mpu_get_gyro_fsr_2:
        MOV      R0,#+500
        STRH     R0,[R1, #+0]
//  461         break;
        B.N      ??mpu_get_gyro_fsr_5
//  462     case INV_FSR_1000DPS:
//  463         fsr[0] = 1000;
??mpu_get_gyro_fsr_1:
        MOV      R0,#+1000
        STRH     R0,[R1, #+0]
//  464         break;
        B.N      ??mpu_get_gyro_fsr_5
//  465     case INV_FSR_2000DPS:
//  466         fsr[0] = 2000;
??mpu_get_gyro_fsr_3:
        MOV      R0,#+2000
        STRH     R0,[R1, #+0]
//  467         break;
        B.N      ??mpu_get_gyro_fsr_5
//  468     default:
//  469         fsr[0] = 0;
??mpu_get_gyro_fsr_4:
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
//  470         break;
//  471     }
//  472     return 0;
??mpu_get_gyro_fsr_5:
        MOVS     R0,#+0
        BX       LR               ;; return
//  473 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  474 int mpu_get_accel_fsr(unsigned char *fsr)
//  475 {
mpu_get_accel_fsr:
        MOVS     R1,R0
//  476     switch (st.chip_cfg.accel_fsr) {
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_accel_fsr_0
        CMP      R0,#+2
        BEQ.N    ??mpu_get_accel_fsr_1
        BCC.N    ??mpu_get_accel_fsr_2
        CMP      R0,#+3
        BEQ.N    ??mpu_get_accel_fsr_3
        B.N      ??mpu_get_accel_fsr_4
//  477     case INV_FSR_2G:
//  478         fsr[0] = 2;
??mpu_get_accel_fsr_0:
        MOVS     R0,#+2
        STRB     R0,[R1, #+0]
//  479         break;
        B.N      ??mpu_get_accel_fsr_5
//  480     case INV_FSR_4G:
//  481         fsr[0] = 4;
??mpu_get_accel_fsr_2:
        MOVS     R0,#+4
        STRB     R0,[R1, #+0]
//  482         break;
        B.N      ??mpu_get_accel_fsr_5
//  483     case INV_FSR_8G:
//  484         fsr[0] = 8;
??mpu_get_accel_fsr_1:
        MOVS     R0,#+8
        STRB     R0,[R1, #+0]
//  485         break;
        B.N      ??mpu_get_accel_fsr_5
//  486     case INV_FSR_16G:
//  487         fsr[0] = 16;
??mpu_get_accel_fsr_3:
        MOVS     R0,#+16
        STRB     R0,[R1, #+0]
//  488         break;
        B.N      ??mpu_get_accel_fsr_5
//  489     default:
//  490         return -1;
??mpu_get_accel_fsr_4:
        MOVS     R0,#-1
        B.N      ??mpu_get_accel_fsr_6
//  491     }
//  492     if (st.chip_cfg.accel_half)
??mpu_get_accel_fsr_5:
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+19]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_accel_fsr_7
//  493         fsr[0] <<= 1;
        LDRB     R0,[R1, #+0]
        LSLS     R0,R0,#+1
        STRB     R0,[R1, #+0]
//  494     return 0;
??mpu_get_accel_fsr_7:
        MOVS     R0,#+0
??mpu_get_accel_fsr_6:
        BX       LR               ;; return
//  495 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  496 int mpu_get_lpf(unsigned short *lpf)
//  497 {
mpu_get_lpf:
        MOVS     R1,R0
//  498     switch (st.chip_cfg.lpf) {
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+11]
        CMP      R0,#+1
        BEQ.N    ??mpu_get_lpf_0
        BCC.N    ??mpu_get_lpf_1
        CMP      R0,#+3
        BEQ.N    ??mpu_get_lpf_2
        BCC.N    ??mpu_get_lpf_3
        CMP      R0,#+5
        BEQ.N    ??mpu_get_lpf_4
        BCC.N    ??mpu_get_lpf_5
        CMP      R0,#+6
        BEQ.N    ??mpu_get_lpf_6
        B.N      ??mpu_get_lpf_1
//  499     case INV_FILTER_188HZ:
//  500         lpf[0] = 188;
??mpu_get_lpf_0:
        MOVS     R0,#+188
        STRH     R0,[R1, #+0]
//  501         break;
        B.N      ??mpu_get_lpf_7
//  502     case INV_FILTER_98HZ:
//  503         lpf[0] = 98;
??mpu_get_lpf_3:
        MOVS     R0,#+98
        STRH     R0,[R1, #+0]
//  504         break;
        B.N      ??mpu_get_lpf_7
//  505     case INV_FILTER_42HZ:
//  506         lpf[0] = 42;
??mpu_get_lpf_2:
        MOVS     R0,#+42
        STRH     R0,[R1, #+0]
//  507         break;
        B.N      ??mpu_get_lpf_7
//  508     case INV_FILTER_20HZ:
//  509         lpf[0] = 20;
??mpu_get_lpf_5:
        MOVS     R0,#+20
        STRH     R0,[R1, #+0]
//  510         break;
        B.N      ??mpu_get_lpf_7
//  511     case INV_FILTER_10HZ:
//  512         lpf[0] = 10;
??mpu_get_lpf_4:
        MOVS     R0,#+10
        STRH     R0,[R1, #+0]
//  513         break;
        B.N      ??mpu_get_lpf_7
//  514     case INV_FILTER_5HZ:
//  515         lpf[0] = 5;
??mpu_get_lpf_6:
        MOVS     R0,#+5
        STRH     R0,[R1, #+0]
//  516         break;
        B.N      ??mpu_get_lpf_7
//  517     case INV_FILTER_256HZ_NOLPF2:
//  518     case INV_FILTER_2100HZ_NOLPF:
//  519     default:
//  520         lpf[0] = 0;
??mpu_get_lpf_1:
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
//  521         break;
//  522     }
//  523     return 0;
??mpu_get_lpf_7:
        MOVS     R0,#+0
        BX       LR               ;; return
//  524 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  525 int mpu_get_sample_rate(unsigned short *rate)
//  526 {
mpu_get_sample_rate:
        MOVS     R1,R0
//  527     if (st.chip_cfg.dmp_on)
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_sample_rate_0
//  528         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_sample_rate_1
//  529     else
//  530         rate[0] = st.chip_cfg.sample_rate;
??mpu_get_sample_rate_0:
        LDR.N    R0,??DataTable16
        LDRH     R0,[R0, #+14]
        STRH     R0,[R1, #+0]
//  531     return 0;
        MOVS     R0,#+0
??mpu_get_sample_rate_1:
        BX       LR               ;; return
//  532 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  533 int mpu_get_fifo_config(unsigned char *sensors)
//  534 {
mpu_get_fifo_config:
        MOVS     R1,R0
//  535     sensors[0] = st.chip_cfg.fifo_enable;
        LDR.N    R0,??DataTable16
        LDRB     R0,[R0, #+16]
        STRB     R0,[R1, #+0]
//  536     return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
//  537 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     st

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  538 static int get_st_biases(long *gyro, long *accel, unsigned char hw_test)
//  539 {
get_st_biases:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+28
        MOVS     R5,R0
        MOVS     R6,R1
        MOV      R8,R2
//  540     unsigned char data[MAX_PACKET_LENGTH];
//  541     unsigned char packet_count, ii;
//  542     unsigned short fifo_count;
//  543 
//  544     data[0] = 0x01;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//  545     data[1] = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  546     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->pwr_mgmt_1, 2, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_0
//  547         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  548     AnBT_DMP_Delay_ms(200);
??get_st_biases_0:
        MOVS     R0,#+200
        BL       AnBT_DMP_Delay_ms
//  549     data[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  550     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->int_enable, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_2
//  551         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  552     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->fifo_en, 1, data))
??get_st_biases_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_3
//  553         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  554     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->pwr_mgmt_1, 1, data))
??get_st_biases_3:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_4
//  555         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  556     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->i2c_mst, 1, data))
??get_st_biases_4:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+23]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_5
//  557         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  558     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, data))
??get_st_biases_5:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_6
//  559         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  560     data[0] = BIT_FIFO_RST | BIT_DMP_RST;
??get_st_biases_6:
        MOVS     R0,#+12
        STRB     R0,[SP, #+0]
//  561     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_7
//  562         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  563     AnBT_DMP_Delay_ms(15);
??get_st_biases_7:
        MOVS     R0,#+15
        BL       AnBT_DMP_Delay_ms
//  564     data[0] = st.test->reg_lpf;
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+9]
        STRB     R0,[SP, #+0]
//  565     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->lpf, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_8
//  566         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  567     data[0] = st.test->reg_rate_div;
??get_st_biases_8:
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+8]
        STRB     R0,[SP, #+0]
//  568     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->rate_div, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_9
//  569         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  570     if (hw_test)
??get_st_biases_9:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??get_st_biases_10
//  571         data[0] = st.test->reg_gyro_fsr | 0xE0;
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+10]
        ORRS     R0,R0,#0xE0
        STRB     R0,[SP, #+0]
        B.N      ??get_st_biases_11
//  572     else
//  573         data[0] = st.test->reg_gyro_fsr;
??get_st_biases_10:
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+10]
        STRB     R0,[SP, #+0]
//  574     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->gyro_cfg, 1, data))
??get_st_biases_11:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+6]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_12
//  575         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  576 
//  577     if (hw_test)
??get_st_biases_12:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??get_st_biases_13
//  578         data[0] = st.test->reg_accel_fsr | 0xE0;
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+11]
        ORRS     R0,R0,#0xE0
        STRB     R0,[SP, #+0]
        B.N      ??get_st_biases_14
//  579     else
//  580         data[0] = test.reg_accel_fsr;
??get_st_biases_13:
        LDR.W    R0,??DataTable28
        LDRB     R0,[R0, #+11]
        STRB     R0,[SP, #+0]
//  581     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->accel_cfg, 1, data))
??get_st_biases_14:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+7]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_15
//  582         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  583     if (hw_test)
??get_st_biases_15:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??get_st_biases_16
//  584         AnBT_DMP_Delay_ms(200);
        MOVS     R0,#+200
        BL       AnBT_DMP_Delay_ms
//  585 
//  586     /* Fill FIFO for test.wait_ms milliseconds. */
//  587     data[0] = BIT_FIFO_EN;
??get_st_biases_16:
        MOVS     R0,#+64
        STRB     R0,[SP, #+0]
//  588     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->user_ctrl, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_17
//  589         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  590 
//  591     data[0] = INV_XYZ_GYRO | INV_XYZ_ACCEL;
??get_st_biases_17:
        MOVS     R0,#+120
        STRB     R0,[SP, #+0]
//  592     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->fifo_en, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_18
//  593         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  594     AnBT_DMP_Delay_ms(test.wait_ms);
??get_st_biases_18:
        LDR.W    R0,??DataTable28
        LDRH     R0,[R0, #+12]
        BL       AnBT_DMP_Delay_ms
//  595     data[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  596     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->fifo_en, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_19
//  597         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  598 
//  599     if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->fifo_count_h, 2, data))
??get_st_biases_19:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+10]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_20
//  600         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  601 
//  602     fifo_count = (data[0] << 8) | data[1];
??get_st_biases_20:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        MOV      R9,R0
//  603     packet_count = fifo_count / MAX_PACKET_LENGTH;
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        MOVS     R0,#+12
        SDIV     R0,R9,R0
        MOVS     R4,R0
//  604     gyro[0] = gyro[1] = gyro[2] = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+8]
        STR      R0,[R5, #+4]
        STR      R0,[R5, #+0]
//  605     accel[0] = accel[1] = accel[2] = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+8]
        STR      R0,[R6, #+4]
        STR      R0,[R6, #+0]
//  606 
//  607     for (ii = 0; ii < packet_count; ii++) {
        MOVS     R0,#+0
        MOVS     R7,R0
??get_st_biases_21:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R7,R4
        BCS.N    ??get_st_biases_22
//  608         short accel_cur[3], gyro_cur[3];
//  609         if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->fifo_r_w, MAX_PACKET_LENGTH, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+12
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+11]
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_23
//  610             return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
//  611         accel_cur[0] = ((short)data[0] << 8) | data[1];
??get_st_biases_23:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+20]
//  612         accel_cur[1] = ((short)data[2] << 8) | data[3];
        LDRB     R0,[SP, #+2]
        LDRB     R1,[SP, #+3]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+22]
//  613         accel_cur[2] = ((short)data[4] << 8) | data[5];
        LDRB     R0,[SP, #+4]
        LDRB     R1,[SP, #+5]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+24]
//  614         accel[0] += (long)accel_cur[0];
        LDR      R0,[R6, #+0]
        LDRSH    R1,[SP, #+20]
        SXTAH    R0,R0,R1
        STR      R0,[R6, #+0]
//  615         accel[1] += (long)accel_cur[1];
        LDR      R0,[R6, #+4]
        LDRSH    R1,[SP, #+22]
        SXTAH    R0,R0,R1
        STR      R0,[R6, #+4]
//  616         accel[2] += (long)accel_cur[2];
        LDR      R0,[R6, #+8]
        LDRSH    R1,[SP, #+24]
        SXTAH    R0,R0,R1
        STR      R0,[R6, #+8]
//  617         gyro_cur[0] = (((short)data[6] << 8) | data[7]);
        LDRB     R0,[SP, #+6]
        LDRB     R1,[SP, #+7]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+12]
//  618         gyro_cur[1] = (((short)data[8] << 8) | data[9]);
        LDRB     R0,[SP, #+8]
        LDRB     R1,[SP, #+9]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+14]
//  619         gyro_cur[2] = (((short)data[10] << 8) | data[11]);
        LDRB     R0,[SP, #+10]
        LDRB     R1,[SP, #+11]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+16]
//  620         gyro[0] += (long)gyro_cur[0];
        LDR      R0,[R5, #+0]
        LDRSH    R1,[SP, #+12]
        SXTAH    R0,R0,R1
        STR      R0,[R5, #+0]
//  621         gyro[1] += (long)gyro_cur[1];
        LDR      R0,[R5, #+4]
        LDRSH    R1,[SP, #+14]
        SXTAH    R0,R0,R1
        STR      R0,[R5, #+4]
//  622         gyro[2] += (long)gyro_cur[2];
        LDR      R0,[R5, #+8]
        LDRSH    R1,[SP, #+16]
        SXTAH    R0,R0,R1
        STR      R0,[R5, #+8]
//  623     }
        ADDS     R7,R7,#+1
        B.N      ??get_st_biases_21
//  624 
//  625     gyro[0] = (long)(((long long)gyro[0]<<16) / test.gyro_sens / packet_count);
??get_st_biases_22:
        LDR      R0,[R5, #+0]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable28
        LDR      R2,[R2, #+0]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R5, #+0]
//  626     gyro[1] = (long)(((long long)gyro[1]<<16) / test.gyro_sens / packet_count);
        LDR      R0,[R5, #+4]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable28
        LDR      R2,[R2, #+0]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R5, #+4]
//  627     gyro[2] = (long)(((long long)gyro[2]<<16) / test.gyro_sens / packet_count);
        LDR      R0,[R5, #+8]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable28
        LDR      R2,[R2, #+0]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R5, #+8]
//  628     accel[0] = (long)(((long long)accel[0]<<16) / test.accel_sens /
//  629         packet_count);
        LDR      R0,[R6, #+0]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable28
        LDR      R2,[R2, #+4]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R6, #+0]
//  630     accel[1] = (long)(((long long)accel[1]<<16) / test.accel_sens /
//  631         packet_count);
        LDR      R0,[R6, #+4]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable28
        LDR      R2,[R2, #+4]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R6, #+4]
//  632     accel[2] = (long)(((long long)accel[2]<<16) / test.accel_sens /
//  633         packet_count);
        LDR      R0,[R6, #+8]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable28
        LDR      R2,[R2, #+4]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R6, #+8]
//  634     /* Don't remove gravity! */
//  635     if (accel[2] > 0L)
        LDR      R0,[R6, #+8]
        CMP      R0,#+1
        BLT.N    ??get_st_biases_24
//  636         accel[2] -= 65536L;
        LDR      R0,[R6, #+8]
        ADD      R0,R0,#-16777216
        ADDS     R0,R0,#+16711680
        STR      R0,[R6, #+8]
        B.N      ??get_st_biases_25
//  637     else
//  638         accel[2] += 65536L;
??get_st_biases_24:
        LDR      R0,[R6, #+8]
        ADDS     R0,R0,#+65536
        STR      R0,[R6, #+8]
//  639 
//  640     return 0;
??get_st_biases_25:
        MOVS     R0,#+0
??get_st_biases_1:
        ADD      SP,SP,#+28
        POP      {R4-R9,PC}       ;; return
//  641 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  642 static int get_accel_prod_shift(float *st_shift)
//  643 {
get_accel_prod_shift:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
//  644     unsigned char tmp[4], shift_code[3], ii;
//  645 
//  646     if (AnBT_DMP_I2C_Read(st.hw->addr, 0x0D, 4, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+4
        MOVS     R1,#+13
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??get_accel_prod_shift_0
//  647         return 0x07;
        MOVS     R0,#+7
        B.N      ??get_accel_prod_shift_1
//  648 
//  649     shift_code[0] = ((tmp[0] & 0xE0) >> 3) | ((tmp[3] & 0x30) >> 4);
??get_accel_prod_shift_0:
        LDRB     R0,[SP, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        ANDS     R0,R0,#0x1C
        LDRB     R1,[SP, #+3]
        UBFX     R1,R1,#+4,#+2
        ORRS     R0,R1,R0
        STRB     R0,[SP, #+4]
//  650     shift_code[1] = ((tmp[1] & 0xE0) >> 3) | ((tmp[3] & 0x0C) >> 2);
        LDRB     R0,[SP, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        ANDS     R0,R0,#0x1C
        LDRB     R1,[SP, #+3]
        UBFX     R1,R1,#+2,#+2
        ORRS     R0,R1,R0
        STRB     R0,[SP, #+5]
//  651     shift_code[2] = ((tmp[2] & 0xE0) >> 3) | (tmp[3] & 0x03);
        LDRB     R0,[SP, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        ANDS     R0,R0,#0x1C
        LDRB     R1,[SP, #+3]
        ANDS     R1,R1,#0x3
        ORRS     R0,R1,R0
        STRB     R0,[SP, #+6]
//  652     for (ii = 0; ii < 3; ii++) {
        MOVS     R0,#+0
        MOVS     R5,R0
??get_accel_prod_shift_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BCS.N    ??get_accel_prod_shift_3
//  653         if (!shift_code[ii]) {
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+4
        LDRB     R0,[R5, R0]
        CMP      R0,#+0
        BNE.N    ??get_accel_prod_shift_4
//  654             st_shift[ii] = 0.f;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+0
        STR      R0,[R4, R5, LSL #+2]
//  655             continue;
        B.N      ??get_accel_prod_shift_5
//  656         }
//  657         /* Equivalent to..
//  658          * st_shift[ii] = 0.34f * powf(0.92f/0.34f, (shift_code[ii]-1) / 30.f)
//  659          */
//  660         st_shift[ii] = 0.34f;
??get_accel_prod_shift_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable30  ;; 0x3eae147b
        STR      R0,[R4, R5, LSL #+2]
//  661         while (--shift_code[ii])
??get_accel_prod_shift_6:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+4
        LDRB     R0,[R5, R0]
        SUBS     R0,R0,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+4
        STRB     R0,[R5, R1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??get_accel_prod_shift_5
//  662             st_shift[ii] *= 1.034f;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R4, R5, LSL #+2]
        LDR.W    R1,??DataTable30_1  ;; 0x3f845a1d
        BL       __aeabi_fmul
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R4, R5, LSL #+2]
        B.N      ??get_accel_prod_shift_6
//  663     }
??get_accel_prod_shift_5:
        ADDS     R5,R5,#+1
        B.N      ??get_accel_prod_shift_2
//  664     return 0;
??get_accel_prod_shift_3:
        MOVS     R0,#+0
??get_accel_prod_shift_1:
        POP      {R1-R5,PC}       ;; return
//  665 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  666 int mpu_get_gyro_sens(float *sens)
//  667 {
mpu_get_gyro_sens:
        MOVS     R1,R0
//  668     switch (st.chip_cfg.gyro_fsr) {
        LDR.W    R0,??DataTable27
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_gyro_sens_0
        CMP      R0,#+2
        BEQ.N    ??mpu_get_gyro_sens_1
        BCC.N    ??mpu_get_gyro_sens_2
        CMP      R0,#+3
        BEQ.N    ??mpu_get_gyro_sens_3
        B.N      ??mpu_get_gyro_sens_4
//  669     case INV_FSR_250DPS:
//  670         sens[0] = 131.f;
??mpu_get_gyro_sens_0:
        LDR.W    R0,??DataTable30_2  ;; 0x43030000
        STR      R0,[R1, #+0]
//  671         break;
        B.N      ??mpu_get_gyro_sens_5
//  672     case INV_FSR_500DPS:
//  673         sens[0] = 65.5f;
??mpu_get_gyro_sens_2:
        LDR.W    R0,??DataTable30_3  ;; 0x42830000
        STR      R0,[R1, #+0]
//  674         break;
        B.N      ??mpu_get_gyro_sens_5
//  675     case INV_FSR_1000DPS:
//  676         sens[0] = 32.8f;
??mpu_get_gyro_sens_1:
        LDR.W    R0,??DataTable30_4  ;; 0x42033333
        STR      R0,[R1, #+0]
//  677         break;
        B.N      ??mpu_get_gyro_sens_5
//  678     case INV_FSR_2000DPS:
//  679         sens[0] = 16.4f;
??mpu_get_gyro_sens_3:
        LDR.W    R0,??DataTable30_5  ;; 0x41833333
        STR      R0,[R1, #+0]
//  680         break;
        B.N      ??mpu_get_gyro_sens_5
//  681     default:
//  682         return -1;
??mpu_get_gyro_sens_4:
        MOVS     R0,#-1
        B.N      ??mpu_get_gyro_sens_6
//  683     }
//  684     return 0;
??mpu_get_gyro_sens_5:
        MOVS     R0,#+0
??mpu_get_gyro_sens_6:
        BX       LR               ;; return
//  685 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  686 int mpu_get_accel_sens(unsigned short *sens)
//  687 {
mpu_get_accel_sens:
        MOVS     R1,R0
//  688     switch (st.chip_cfg.accel_fsr) {
        LDR.W    R0,??DataTable27
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_accel_sens_0
        CMP      R0,#+2
        BEQ.N    ??mpu_get_accel_sens_1
        BCC.N    ??mpu_get_accel_sens_2
        CMP      R0,#+3
        BEQ.N    ??mpu_get_accel_sens_3
        B.N      ??mpu_get_accel_sens_4
//  689     case INV_FSR_2G:
//  690         sens[0] = 16384;
??mpu_get_accel_sens_0:
        MOV      R0,#+16384
        STRH     R0,[R1, #+0]
//  691         break;
        B.N      ??mpu_get_accel_sens_5
//  692     case INV_FSR_4G:
//  693         sens[0] = 8092;
??mpu_get_accel_sens_2:
        MOVW     R0,#+8092
        STRH     R0,[R1, #+0]
//  694         break;
        B.N      ??mpu_get_accel_sens_5
//  695     case INV_FSR_8G:
//  696         sens[0] = 4096;
??mpu_get_accel_sens_1:
        MOV      R0,#+4096
        STRH     R0,[R1, #+0]
//  697         break;
        B.N      ??mpu_get_accel_sens_5
//  698     case INV_FSR_16G:
//  699         sens[0] = 2048;
??mpu_get_accel_sens_3:
        MOV      R0,#+2048
        STRH     R0,[R1, #+0]
//  700         break;
        B.N      ??mpu_get_accel_sens_5
//  701     default:
//  702         return -1;
??mpu_get_accel_sens_4:
        MOVS     R0,#-1
        B.N      ??mpu_get_accel_sens_6
//  703     }
//  704     if (st.chip_cfg.accel_half)
??mpu_get_accel_sens_5:
        LDR.W    R0,??DataTable27
        LDRB     R0,[R0, #+19]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_accel_sens_7
//  705         sens[0] >>= 1;
        LDRH     R0,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        STRH     R0,[R1, #+0]
//  706     return 0;
??mpu_get_accel_sens_7:
        MOVS     R0,#+0
??mpu_get_accel_sens_6:
        BX       LR               ;; return
//  707 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     st+0x10
//  708 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  709 static int accel_self_test(long *bias_regular, long *bias_st)
//  710 {
accel_self_test:
        PUSH     {R1-R11,LR}
        MOV      R11,R0
        MOV      R10,R1
//  711     int jj, result = 0;
        MOVS     R7,#+0
//  712     float st_shift[3], st_shift_cust, st_shift_var;
//  713 
//  714     get_accel_prod_shift(st_shift);
        ADD      R0,SP,#+0
        BL       get_accel_prod_shift
//  715     for(jj = 0; jj < 3; jj++) {
        MOVS     R0,#+0
        MOVS     R6,R0
??accel_self_test_0:
        CMP      R6,#+3
        BGE.N    ??accel_self_test_1
//  716         st_shift_cust = labs(bias_regular[jj] - bias_st[jj]) / 65536.f;
        LDR      R0,[R11, R6, LSL #+2]
        LDR      R1,[R10, R6, LSL #+2]
        SUBS     R0,R0,R1
        BL       labs
        BL       __aeabi_i2f
        MOVS     R1,#+1199570944
        BL       __aeabi_fdiv
        MOV      R8,R0
//  717         if (st_shift[jj]) {
        ADD      R0,SP,#+0
        LDR      R0,[R0, R6, LSL #+2]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BEQ.N    ??accel_self_test_2
//  718             st_shift_var = st_shift_cust / st_shift[jj] - 1.f;
        MOV      R0,R8
        ADD      R1,SP,#+0
        LDR      R1,[R1, R6, LSL #+2]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable30_6  ;; 0xbf800000
        BL       __aeabi_fadd
        MOV      R9,R0
//  719             if (fabs(st_shift_var) > test.max_accel_var)
        MOV      R0,R9
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R5,R5,#0x80000000
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+36]
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??accel_self_test_3
//  720                 result |= 1 << jj;
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        ORRS     R7,R0,R7
        B.N      ??accel_self_test_3
//  721         } else if ((st_shift_cust < test.min_g) ||
//  722             (st_shift_cust > test.max_g))
??accel_self_test_2:
        MOV      R0,R8
        LDR.W    R1,??DataTable28
        LDR      R1,[R1, #+28]
        BL       __aeabi_cfcmple
        BCC.N    ??accel_self_test_4
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+32]
        MOV      R1,R8
        BL       __aeabi_cfcmple
        BCS.N    ??accel_self_test_3
//  723             result |= 1 << jj;
??accel_self_test_4:
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        ORRS     R7,R0,R7
//  724     }
??accel_self_test_3:
        ADDS     R6,R6,#+1
        B.N      ??accel_self_test_0
//  725 
//  726     return result;
??accel_self_test_1:
        MOVS     R0,R7
        POP      {R1-R11,PC}      ;; return
//  727 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  728 static int gyro_self_test(long *bias_regular, long *bias_st)
//  729 {
gyro_self_test:
        PUSH     {R0,R4-R11,LR}
        SUB      SP,SP,#+8
        MOV      R11,R1
//  730     int jj, result = 0;
        MOVS     R5,#+0
//  731     unsigned char tmp[3];
//  732     float st_shift, st_shift_cust, st_shift_var;
//  733 
//  734     if (AnBT_DMP_I2C_Read(st.hw->addr, 0x0D, 3, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+3
        MOVS     R1,#+13
        LDR.W    R0,??DataTable27
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??gyro_self_test_0
//  735         return 0x07;
        MOVS     R0,#+7
        B.N      ??gyro_self_test_1
//  736 
//  737     tmp[0] &= 0x1F;
??gyro_self_test_0:
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0x1F
        STRB     R0,[SP, #+0]
//  738     tmp[1] &= 0x1F;
        LDRB     R0,[SP, #+1]
        ANDS     R0,R0,#0x1F
        STRB     R0,[SP, #+1]
//  739     tmp[2] &= 0x1F;
        LDRB     R0,[SP, #+2]
        ANDS     R0,R0,#0x1F
        STRB     R0,[SP, #+2]
//  740 
//  741     for (jj = 0; jj < 3; jj++) {
        MOVS     R0,#+0
        MOVS     R4,R0
??gyro_self_test_2:
        CMP      R4,#+3
        BGE.N    ??gyro_self_test_3
//  742         st_shift_cust = labs(bias_regular[jj] - bias_st[jj]) / 65536.f;
        LDR      R0,[SP, #+8]
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R1,[R11, R4, LSL #+2]
        SUBS     R0,R0,R1
        BL       labs
        BL       __aeabi_i2f
        MOVS     R1,#+1199570944
        BL       __aeabi_fdiv
        MOVS     R7,R0
//  743         if (tmp[jj]) {
        ADD      R0,SP,#+0
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??gyro_self_test_4
//  744             st_shift = 3275.f / test.gyro_sens;
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable30_7  ;; 0x454cb000
        BL       __aeabi_fdiv
        MOVS     R6,R0
//  745             while (--tmp[jj])
??gyro_self_test_5:
        ADD      R0,SP,#+0
        LDRB     R0,[R4, R0]
        SUBS     R0,R0,#+1
        ADD      R1,SP,#+0
        STRB     R0,[R4, R1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??gyro_self_test_6
//  746                 st_shift *= 1.046f;
        LDR.W    R0,??DataTable30_8  ;; 0x3f85e354
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R6,R0
        B.N      ??gyro_self_test_5
//  747             st_shift_var = st_shift_cust / st_shift - 1.f;
??gyro_self_test_6:
        MOVS     R0,R7
        MOVS     R1,R6
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable30_6  ;; 0xbf800000
        BL       __aeabi_fadd
        MOV      R10,R0
//  748             if (fabs(st_shift_var) > test.max_gyro_var)
        MOV      R0,R10
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        BICS     R9,R9,#0x80000000
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+24]
        BL       __aeabi_f2d
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_cdcmple
        BCS.N    ??gyro_self_test_7
//  749                 result |= 1 << jj;
        MOVS     R0,#+1
        LSLS     R0,R0,R4
        ORRS     R5,R0,R5
        B.N      ??gyro_self_test_7
//  750         } else if ((st_shift_cust < test.min_dps) ||
//  751             (st_shift_cust > test.max_dps))
??gyro_self_test_4:
        MOVS     R0,R7
        LDR.W    R1,??DataTable28
        LDR      R1,[R1, #+16]
        BL       __aeabi_cfcmple
        BCC.N    ??gyro_self_test_8
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+20]
        MOVS     R1,R7
        BL       __aeabi_cfcmple
        BCS.N    ??gyro_self_test_7
//  752             result |= 1 << jj;
??gyro_self_test_8:
        MOVS     R0,#+1
        LSLS     R0,R0,R4
        ORRS     R5,R0,R5
//  753     }
??gyro_self_test_7:
        ADDS     R4,R4,#+1
        B.N      ??gyro_self_test_2
//  754     return result;
??gyro_self_test_3:
        MOVS     R0,R5
??gyro_self_test_1:
        POP      {R1-R11,PC}      ;; return
//  755 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  756 int mpu_run_self_test(long *gyro, long *accel)
//  757 {
mpu_run_self_test:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+36
        MOVS     R4,R0
        MOVS     R5,R1
//  758     const unsigned char tries = 2;
        MOVS     R6,#+2
//  759     long gyro_st[3], accel_st[3];
//  760     unsigned char accel_result, gyro_result;
//  761     int ii;
//  762     int result;
//  763     unsigned char accel_fsr, fifo_sensors, sensors_on;
//  764     unsigned short gyro_fsr, sample_rate, lpf;
//  765     unsigned char dmp_was_on;
//  766 
//  767     if (st.chip_cfg.dmp_on) {
        LDR.W    R0,??DataTable27
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_run_self_test_0
//  768         mpu_set_dmp_state(0);
        MOVS     R0,#+0
        BL       mpu_set_dmp_state
//  769         dmp_was_on = 1;
        MOVS     R0,#+1
        MOV      R10,R0
        B.N      ??mpu_run_self_test_1
//  770     } else
//  771         dmp_was_on = 0;
??mpu_run_self_test_0:
        MOVS     R0,#+0
        MOV      R10,R0
//  772 
//  773     /* Get initial settings. */
//  774     mpu_get_gyro_fsr(&gyro_fsr);
??mpu_run_self_test_1:
        ADD      R0,SP,#+6
        BL       mpu_get_gyro_fsr
//  775     mpu_get_accel_fsr(&accel_fsr);
        ADD      R0,SP,#+1
        BL       mpu_get_accel_fsr
//  776     mpu_get_lpf(&lpf);
        ADD      R0,SP,#+2
        BL       mpu_get_lpf
//  777     mpu_get_sample_rate(&sample_rate);
        ADD      R0,SP,#+4
        BL       mpu_get_sample_rate
//  778     sensors_on = st.chip_cfg.sensors;
        LDR.W    R0,??DataTable27
        LDRB     R0,[R0, #+10]
        MOV      R9,R0
//  779     mpu_get_fifo_config(&fifo_sensors);
        ADD      R0,SP,#+0
        BL       mpu_get_fifo_config
//  780 
//  781     /* For older chips, the self-test will be different. */
//  782     for (ii = 0; ii < tries; ii++)
        MOVS     R0,#+0
        MOV      R11,R0
??mpu_run_self_test_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R11,R6
        BGE.N    ??mpu_run_self_test_3
//  783         if (!get_st_biases(gyro, accel, 0))
        MOVS     R2,#+0
        MOVS     R1,R5
        MOVS     R0,R4
        BL       get_st_biases
        CMP      R0,#+0
        BEQ.N    ??mpu_run_self_test_3
//  784             break;
??mpu_run_self_test_4:
        ADDS     R11,R11,#+1
        B.N      ??mpu_run_self_test_2
//  785     if (ii == tries) {
??mpu_run_self_test_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R11,R6
        BNE.N    ??mpu_run_self_test_5
//  786         /* If we reach this point, we most likely encountered an I2C error.
//  787          * We'll just report an error for all three sensors.
//  788          */
//  789         result = 0;
        MOVS     R0,#+0
        MOV      R8,R0
//  790         goto restore;
        B.N      ??mpu_run_self_test_6
//  791     }
//  792     for (ii = 0; ii < tries; ii++)
??mpu_run_self_test_5:
        MOVS     R0,#+0
        MOV      R11,R0
??mpu_run_self_test_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R11,R6
        BGE.N    ??mpu_run_self_test_8
//  793         if (!get_st_biases(gyro_st, accel_st, 1))
        MOVS     R2,#+1
        ADD      R1,SP,#+12
        ADD      R0,SP,#+24
        BL       get_st_biases
        CMP      R0,#+0
        BEQ.N    ??mpu_run_self_test_8
//  794             break;
??mpu_run_self_test_9:
        ADDS     R11,R11,#+1
        B.N      ??mpu_run_self_test_7
//  795     if (ii == tries) {
??mpu_run_self_test_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R11,R6
        BNE.N    ??mpu_run_self_test_10
//  796         /* Again, probably an I2C error. */
//  797         result = 0;
        MOVS     R0,#+0
        MOV      R8,R0
//  798         goto restore;
        B.N      ??mpu_run_self_test_6
//  799     }
//  800     accel_result = accel_self_test(accel, accel_st);
??mpu_run_self_test_10:
        ADD      R1,SP,#+12
        MOVS     R0,R5
        BL       accel_self_test
        STRB     R0,[SP, #+8]
//  801     gyro_result = gyro_self_test(gyro, gyro_st);
        ADD      R1,SP,#+24
        MOVS     R0,R4
        BL       gyro_self_test
        MOVS     R7,R0
//  802 
//  803     result = 0;
        MOVS     R0,#+0
        MOV      R8,R0
//  804     if (!gyro_result)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??mpu_run_self_test_11
//  805         result |= 0x01;
        ORRS     R8,R8,#0x1
//  806     if (!accel_result)
??mpu_run_self_test_11:
        LDRB     R0,[SP, #+8]
        CMP      R0,#+0
        BNE.N    ??mpu_run_self_test_6
//  807         result |= 0x02;
        ORRS     R8,R8,#0x2
//  808 
//  809 restore:
//  810 
//  811     /* Set to invalid values to ensure no I2C writes are skipped. */
//  812     st.chip_cfg.gyro_fsr = 0xFF;
??mpu_run_self_test_6:
        LDR.W    R0,??DataTable27
        MOVS     R1,#+255
        STRB     R1,[R0, #+8]
//  813     st.chip_cfg.accel_fsr = 0xFF;
        LDR.W    R0,??DataTable27
        MOVS     R1,#+255
        STRB     R1,[R0, #+9]
//  814     st.chip_cfg.lpf = 0xFF;
        LDR.W    R0,??DataTable27
        MOVS     R1,#+255
        STRB     R1,[R0, #+11]
//  815     st.chip_cfg.sample_rate = 0xFFFF;
        LDR.W    R0,??DataTable27
        MOVW     R1,#+65535
        STRH     R1,[R0, #+14]
//  816     st.chip_cfg.sensors = 0xFF;
        LDR.W    R0,??DataTable27
        MOVS     R1,#+255
        STRB     R1,[R0, #+10]
//  817     st.chip_cfg.fifo_enable = 0xFF;
        LDR.W    R0,??DataTable27
        MOVS     R1,#+255
        STRB     R1,[R0, #+16]
//  818     st.chip_cfg.clk_src = INV_CLK_PLL;
        LDR.W    R0,??DataTable27
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//  819     mpu_set_gyro_fsr(gyro_fsr);
        LDRH     R0,[SP, #+6]
        BL       mpu_set_gyro_fsr
//  820     mpu_set_accel_fsr(accel_fsr);
        LDRB     R0,[SP, #+1]
        BL       mpu_set_accel_fsr
//  821     mpu_set_lpf(lpf);
        LDRH     R0,[SP, #+2]
        BL       mpu_set_lpf
//  822     mpu_set_sample_rate(sample_rate);
        LDRH     R0,[SP, #+4]
        BL       mpu_set_sample_rate
//  823     mpu_set_sensors(sensors_on);
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       mpu_set_sensors
//  824     mpu_configure_fifo(fifo_sensors);
        LDRB     R0,[SP, #+0]
        BL       mpu_configure_fifo
//  825 
//  826     if (dmp_was_on) mpu_set_dmp_state(1);
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BEQ.N    ??mpu_run_self_test_12
        MOVS     R0,#+1
        BL       mpu_set_dmp_state
//  827         
//  828     return result;
??mpu_run_self_test_12:
        MOV      R0,R8
        ADD      SP,SP,#+36
        POP      {R4-R11,PC}      ;; return
//  829 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  830 static void run_self_test(void)
//  831 {
run_self_test:
        PUSH     {R4,LR}
        SUB      SP,SP,#+32
//  832     int result;
//  833 //  char test_packet[4] = {0};
//  834     long gyro[3], accel[3];
//  835 	//
//  836     result = mpu_run_self_test(gyro, accel);
        ADD      R1,SP,#+8
        ADD      R0,SP,#+20
        BL       mpu_run_self_test
        MOVS     R4,R0
//  837 //  if (result == 0x7) 
//  838 		if (result == 0x3) 
        CMP      R4,#+3
        BNE.N    ??run_self_test_0
//  839 		{
//  840         /* Test passed. We can trust the gyro data here, so let's push it down
//  841          * to the DMP.
//  842          */
//  843         float sens;
//  844         unsigned short accel_sens;
//  845         mpu_get_gyro_sens(&sens);
        ADD      R0,SP,#+4
        BL       mpu_get_gyro_sens
//  846         gyro[0] = (long)(gyro[0] * sens);
        LDR      R0,[SP, #+20]
        BL       __aeabi_i2f
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+20]
//  847         gyro[1] = (long)(gyro[1] * sens);
        LDR      R0,[SP, #+24]
        BL       __aeabi_i2f
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+24]
//  848         gyro[2] = (long)(gyro[2] * sens);
        LDR      R0,[SP, #+28]
        BL       __aeabi_i2f
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+28]
//  849         dmp_set_gyro_bias(gyro);
        ADD      R0,SP,#+20
        BL       dmp_set_gyro_bias
//  850         mpu_get_accel_sens(&accel_sens);
        ADD      R0,SP,#+0
        BL       mpu_get_accel_sens
//  851         accel[0] *= accel_sens;
        LDR      R0,[SP, #+8]
        LDRH     R1,[SP, #+0]
        MULS     R0,R1,R0
        STR      R0,[SP, #+8]
//  852         accel[1] *= accel_sens;
        LDR      R0,[SP, #+12]
        LDRH     R1,[SP, #+0]
        MULS     R0,R1,R0
        STR      R0,[SP, #+12]
//  853         accel[2] *= accel_sens;
        LDR      R0,[SP, #+16]
        LDRH     R1,[SP, #+0]
        MULS     R0,R1,R0
        STR      R0,[SP, #+16]
//  854         dmp_set_accel_bias(accel);
        ADD      R0,SP,#+8
        BL       dmp_set_accel_bias
//  855     }
//  856 }
??run_self_test_0:
        ADD      SP,SP,#+32
        POP      {R4,PC}          ;; return
//  857 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  858 int mpu_write_mem(unsigned short mem_addr, unsigned short length, unsigned char *data)
//  859 {
mpu_write_mem:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R5,R2
//  860     unsigned char tmp[2];
//  861 
//  862     if (!data)
        CMP      R5,#+0
        BNE.N    ??mpu_write_mem_0
//  863         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
//  864     if (!st.chip_cfg.sensors)
??mpu_write_mem_0:
        LDR.W    R0,??DataTable30_9
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_write_mem_2
//  865         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
//  866 
//  867     tmp[0] = (unsigned char)(mem_addr >> 8);
??mpu_write_mem_2:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
//  868     tmp[1] = (unsigned char)(mem_addr & 0xFF);
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
//  869 
//  870     /* Check bank boundaries. */
//  871     if (tmp[1] + length > st.hw->bank_size)
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRH     R0,[R0, #+10]
        LDRB     R1,[SP, #+1]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTAB    R1,R4,R1
        CMP      R0,R1
        BGE.N    ??mpu_write_mem_3
//  872         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
//  873 
//  874     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->bank_sel, 2, tmp))
??mpu_write_mem_3:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_write_mem_4
//  875         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
//  876     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->mem_r_w, length, data))
??mpu_write_mem_4:
        MOVS     R3,R5
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_write_mem_5
//  877         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
//  878     return 0;
??mpu_write_mem_5:
        MOVS     R0,#+0
??mpu_write_mem_1:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  879 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  880 int mpu_read_mem(unsigned short mem_addr, unsigned short length,  unsigned char *data)
//  881 {
mpu_read_mem:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R5,R2
//  882     unsigned char tmp[2];
//  883 
//  884     if (!data)
        CMP      R5,#+0
        BNE.N    ??mpu_read_mem_0
//  885         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
//  886     if (!st.chip_cfg.sensors)
??mpu_read_mem_0:
        LDR.W    R0,??DataTable30_9
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_read_mem_2
//  887         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
//  888 
//  889     tmp[0] = (unsigned char)(mem_addr >> 8);
??mpu_read_mem_2:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
//  890     tmp[1] = (unsigned char)(mem_addr & 0xFF);
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
//  891 
//  892     /* Check bank boundaries. */
//  893     if (tmp[1] + length > st.hw->bank_size)
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRH     R0,[R0, #+10]
        LDRB     R1,[SP, #+1]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTAB    R1,R4,R1
        CMP      R0,R1
        BGE.N    ??mpu_read_mem_3
//  894         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
//  895 
//  896     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->bank_sel, 2, tmp))
??mpu_read_mem_3:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_read_mem_4
//  897         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
//  898     if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->mem_r_w, length, data))
??mpu_read_mem_4:
        MOVS     R3,R5
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??mpu_read_mem_5
//  899         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
//  900     return 0;
??mpu_read_mem_5:
        MOVS     R0,#+0
??mpu_read_mem_1:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  901 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  902 int mpu_read_fifo_stream(unsigned short length, unsigned char *data, unsigned char *more)
//  903 {
mpu_read_fifo_stream:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  904     unsigned char tmp[2];
//  905     unsigned short fifo_count;
//  906     if (!st.chip_cfg.dmp_on)
        LDR.W    R0,??DataTable30_9
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BNE.N    ??mpu_read_fifo_stream_0
//  907         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
//  908     if (!st.chip_cfg.sensors)
??mpu_read_fifo_stream_0:
        LDR.W    R0,??DataTable30_9
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_read_fifo_stream_2
//  909         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
//  910 
//  911     if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->fifo_count_h, 2, tmp))
??mpu_read_fifo_stream_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+10]
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_stream_3
//  912         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
//  913     fifo_count = (tmp[0] << 8) | tmp[1];
??mpu_read_fifo_stream_3:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        MOVS     R7,R0
//  914     if (fifo_count < length) {
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R7,R4
        BCS.N    ??mpu_read_fifo_stream_4
//  915         more[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
//  916         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
//  917     }
//  918     if (fifo_count > (st.hw->max_fifo >> 1)) {
??mpu_read_fifo_stream_4:
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRH     R0,[R0, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R0,R7
        BCS.N    ??mpu_read_fifo_stream_5
//  919         /* FIFO is 50% full, better check overflow bit. */
//  920         if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->int_status, 1, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+17]
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_stream_6
//  921             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
//  922         if (tmp[0] & BIT_FIFO_OVERFLOW) {
??mpu_read_fifo_stream_6:
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??mpu_read_fifo_stream_5
//  923             mpu_reset_fifo();
        BL       mpu_reset_fifo
//  924             return -2;
        MVNS     R0,#+1
        B.N      ??mpu_read_fifo_stream_1
//  925         }
//  926     }
//  927 
//  928     if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->fifo_r_w, length, data))
??mpu_read_fifo_stream_5:
        MOVS     R3,R5
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+11]
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_stream_7
//  929         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
//  930     more[0] = fifo_count / length - 1;
??mpu_read_fifo_stream_7:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SDIV     R0,R7,R4
        SUBS     R0,R0,#+1
        STRB     R0,[R6, #+0]
//  931     return 0;
        MOVS     R0,#+0
??mpu_read_fifo_stream_1:
        POP      {R1,R4-R7,PC}    ;; return
//  932 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  933 int mpu_load_firmware(unsigned short length, const unsigned char *firmware,unsigned short start_addr, unsigned short sample_rate)
//  934 {
mpu_load_firmware:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  935     unsigned short ii;
//  936     unsigned short this_write;
//  937     /* Must divide evenly into st.hw->bank_size to avoid bank crossings. */
//  938 #define LOAD_CHUNK  (16)
//  939     unsigned char cur[LOAD_CHUNK], tmp[2];
//  940 
//  941     if (st.chip_cfg.dmp_loaded)
        LDR.W    R0,??DataTable30_9
        LDRB     R0,[R0, #+37]
        CMP      R0,#+0
        BEQ.N    ??mpu_load_firmware_0
//  942         /* DMP should only be loaded once. */
//  943         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
//  944 
//  945     if (!firmware)
??mpu_load_firmware_0:
        CMP      R5,#+0
        BNE.N    ??mpu_load_firmware_2
//  946         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
//  947     for (ii = 0; ii < length; ii += this_write) {
??mpu_load_firmware_2:
        MOVS     R0,#+0
        MOV      R8,R0
??mpu_load_firmware_3:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R8,R4
        BCS.N    ??mpu_load_firmware_4
//  948         this_write = min(LOAD_CHUNK, length - ii);
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        SUBS     R0,R4,R8
        CMP      R0,#+17
        BLT.N    ??mpu_load_firmware_5
        MOVS     R9,#+16
        B.N      ??mpu_load_firmware_6
??mpu_load_firmware_5:
        SUBS     R9,R4,R8
//  949         if (mpu_write_mem(ii, this_write, (unsigned char*)&firmware[ii]))
??mpu_load_firmware_6:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        ADDS     R2,R8,R5
        MOV      R1,R9
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       mpu_write_mem
        CMP      R0,#+0
        BEQ.N    ??mpu_load_firmware_7
//  950             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
//  951         if (mpu_read_mem(ii, this_write, cur))
??mpu_load_firmware_7:
        ADD      R2,SP,#+4
        MOV      R1,R9
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       mpu_read_mem
        CMP      R0,#+0
        BEQ.N    ??mpu_load_firmware_8
//  952             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
//  953         if (memcmp(firmware+ii, cur, this_write))
??mpu_load_firmware_8:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        MOV      R2,R9
        ADD      R1,SP,#+4
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        ADDS     R0,R8,R5
        BL       memcmp
        CMP      R0,#+0
        BEQ.N    ??mpu_load_firmware_9
//  954             return -2;
        MVNS     R0,#+1
        B.N      ??mpu_load_firmware_1
//  955     }
??mpu_load_firmware_9:
        ADDS     R8,R9,R8
        B.N      ??mpu_load_firmware_3
//  956 
//  957     /* Set program start address. */
//  958     tmp[0] = start_addr >> 8;
??mpu_load_firmware_4:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
//  959     tmp[1] = start_addr & 0xFF;
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
//  960     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->prgm_start_h, 2, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+26]
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??mpu_load_firmware_10
//  961         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
//  962 
//  963     st.chip_cfg.dmp_loaded = 1;
??mpu_load_firmware_10:
        LDR.W    R0,??DataTable30_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+37]
//  964     st.chip_cfg.dmp_sample_rate = sample_rate;
        LDR.W    R0,??DataTable30_9
        STRH     R7,[R0, #+38]
//  965     return 0;
        MOVS     R0,#+0
??mpu_load_firmware_1:
        ADD      SP,SP,#+20
        POP      {R4-R9,PC}       ;; return
//  966 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27:
        DC32     st
//  967 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  968 static  unsigned short inv_row_2_scale(const signed char *row)
//  969 {
inv_row_2_scale:
        MOVS     R1,R0
//  970     unsigned short b;
//  971 	//
//  972     if (row[0] > 0)    b = 0;
        LDRSB    R2,[R1, #+0]
        CMP      R2,#+1
        BLT.N    ??inv_row_2_scale_0
        MOVS     R2,#+0
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//  973     else if (row[0] < 0)  b = 4;
??inv_row_2_scale_0:
        LDRSB    R2,[R1, #+0]
        CMP      R2,#+0
        BPL.N    ??inv_row_2_scale_2
        MOVS     R2,#+4
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//  974     else if (row[1] > 0)   b = 1;
??inv_row_2_scale_2:
        LDRSB    R2,[R1, #+1]
        CMP      R2,#+1
        BLT.N    ??inv_row_2_scale_3
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//  975     else if (row[1] < 0)   b = 5;
??inv_row_2_scale_3:
        LDRSB    R2,[R1, #+1]
        CMP      R2,#+0
        BPL.N    ??inv_row_2_scale_4
        MOVS     R2,#+5
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//  976     else if (row[2] > 0)       b = 2;
??inv_row_2_scale_4:
        LDRSB    R2,[R1, #+2]
        CMP      R2,#+1
        BLT.N    ??inv_row_2_scale_5
        MOVS     R2,#+2
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//  977     else if (row[2] < 0)   b = 6;
??inv_row_2_scale_5:
        LDRSB    R2,[R1, #+2]
        CMP      R2,#+0
        BPL.N    ??inv_row_2_scale_6
        MOVS     R2,#+6
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//  978     else         b = 7;      // error
??inv_row_2_scale_6:
        MOVS     R2,#+7
        MOVS     R0,R2
//  979     return b;
??inv_row_2_scale_1:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  980 }
//  981 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  982 static  unsigned short inv_orientation_matrix_to_scalar(const signed char *mtx)
//  983 {
inv_orientation_matrix_to_scalar:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  984     unsigned short scalar;
//  985 
//  986     /*
//  987        XYZ  010_001_000 Identity Matrix
//  988        XZY  001_010_000
//  989        YXZ  010_000_001
//  990        YZX  000_010_001
//  991        ZXY  001_000_010
//  992        ZYX  000_001_010
//  993      */
//  994 
//  995     scalar = inv_row_2_scale(mtx);
        MOVS     R0,R4
        BL       inv_row_2_scale
        MOVS     R5,R0
//  996     scalar |= inv_row_2_scale(mtx + 3) << 3;
        ADDS     R0,R4,#+3
        BL       inv_row_2_scale
        ORRS     R0,R5,R0, LSL #+3
        MOVS     R5,R0
//  997     scalar |= inv_row_2_scale(mtx + 6) << 6;
        ADDS     R0,R4,#+6
        BL       inv_row_2_scale
        ORRS     R0,R5,R0, LSL #+6
        MOVS     R5,R0
//  998     return scalar;
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//  999 }
// 1000 
// 1001 //

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1002 uint8 AnBT_DMP_MPU6050_DEV_CFG(void)		
// 1003 {
AnBT_DMP_MPU6050_DEV_CFG:
        PUSH     {R2-R4,LR}
// 1004 	  unsigned char anbt_dmp_data[6], anbt_dmp_rev;
// 1005 		//
// 1006 		if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->who_am_i, 1, &(anbt_dmp_data[0]))) return 1;   
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_0
        MOVS     R0,#+1
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1007 	  if (anbt_dmp_data[0]!=PRODUCT_WHOAMI) 
??AnBT_DMP_MPU6050_DEV_CFG_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+104
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_2
// 1008 		{
// 1009 			AnBT_Uart1_Send_String("WHOAMI error",12); 
        MOVS     R1,#+12
        LDR.W    R0,??DataTable30_10
        BL       AnBT_Uart1_Send_String
// 1010 			AnBT_Uart1_Send_Num(anbt_dmp_data[0]);
        LDRB     R0,[SP, #+0]
        BL       AnBT_Uart1_Send_Num
// 1011 			return 2;    
        MOVS     R0,#+2
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1012     }
// 1013 		//
// 1014     anbt_dmp_data[0] = 0x80;	//etootle: BIT_RESET, Reset device
??AnBT_DMP_MPU6050_DEV_CFG_2:
        MOVS     R0,#+128
        STRB     R0,[SP, #+0]
// 1015     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->pwr_mgmt_1, 1, &(anbt_dmp_data[0]))) return 3;   
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.N    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_3
        MOVS     R0,#+3
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1016     AnBT_DMP_Delay_ms(100);
??AnBT_DMP_MPU6050_DEV_CFG_3:
        MOVS     R0,#+100
        BL       AnBT_DMP_Delay_ms
// 1017 		//
// 1018     anbt_dmp_data[0] = 0x00; //etootle: Wake up chip
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1019     if (AnBT_DMP_I2C_Write(st.hw->addr, st.reg->pwr_mgmt_1, 1, &(anbt_dmp_data[0]))) return 4;
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.N    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Write
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_4
        MOVS     R0,#+4
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1020     //
// 1021     if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->accel_offs, 6, anbt_dmp_data))	return 5;	//etootle:Check product revision  
??AnBT_DMP_MPU6050_DEV_CFG_4:
        ADD      R3,SP,#+0
        MOVS     R2,#+6
        LDR.N    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+22]
        LDR.N    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_5
        MOVS     R0,#+5
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1022     anbt_dmp_rev = ((anbt_dmp_data[5] & 0x01) << 2) | ((anbt_dmp_data[3] & 0x01) << 1) | (anbt_dmp_data[1] & 0x01);
??AnBT_DMP_MPU6050_DEV_CFG_5:
        LDRB     R0,[SP, #+5]
        ANDS     R0,R0,#0x1
        LDRB     R1,[SP, #+3]
        ANDS     R1,R1,#0x1
        LSLS     R1,R1,#+1
        ORRS     R0,R1,R0, LSL #+2
        LDRB     R1,[SP, #+1]
        ANDS     R1,R1,#0x1
        ORRS     R0,R1,R0
        MOVS     R4,R0
// 1023     if (anbt_dmp_rev)  //Congrats, these parts are better
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_6
// 1024 		{
// 1025 			if (anbt_dmp_rev == 1) st.chip_cfg.accel_half = 1;   
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??AnBT_DMP_MPU6050_DEV_CFG_7
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+19]
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_8
// 1026       else if (anbt_dmp_rev == 2) st.chip_cfg.accel_half = 0;   
??AnBT_DMP_MPU6050_DEV_CFG_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??AnBT_DMP_MPU6050_DEV_CFG_9
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_8
// 1027       else 
// 1028 			{
// 1029 				AnBT_Uart1_Send_String("Unsupported version=1.0",23);  
??AnBT_DMP_MPU6050_DEV_CFG_9:
        MOVS     R1,#+23
        LDR.N    R0,??DataTable30_11
        BL       AnBT_Uart1_Send_String
// 1030         return 6;
        MOVS     R0,#+6
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1031 			}
// 1032     } 
// 1033 		else 
// 1034 		{
// 1035 			if (AnBT_DMP_I2C_Read(st.hw->addr, st.reg->prod_id, 1, &(anbt_dmp_data[0]))) return 7;      
??AnBT_DMP_MPU6050_DEV_CFG_6:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable30_9
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable30_9
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       AnBT_DMP_I2C_Read
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_10
        MOVS     R0,#+7
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1036       anbt_dmp_rev = anbt_dmp_data[0] & 0x0F;
??AnBT_DMP_MPU6050_DEV_CFG_10:
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0xF
        MOVS     R4,R0
// 1037       if (!anbt_dmp_rev) 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??AnBT_DMP_MPU6050_DEV_CFG_11
// 1038 			{
// 1039 				AnBT_Uart1_Send_String("Product ID error",16); 
        MOVS     R1,#+16
        LDR.N    R0,??DataTable30_12
        BL       AnBT_Uart1_Send_String
// 1040 				return 5;    
        MOVS     R0,#+5
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1041       } 
// 1042 			else if (anbt_dmp_rev == 4) 
??AnBT_DMP_MPU6050_DEV_CFG_11:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??AnBT_DMP_MPU6050_DEV_CFG_12
// 1043 			{
// 1044 				AnBT_Uart1_Send_String("Half Sensitivity Part",21); 
        MOVS     R1,#+21
        LDR.N    R0,??DataTable30_13
        BL       AnBT_Uart1_Send_String
// 1045         st.chip_cfg.accel_half = 1;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+19]
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_8
// 1046       } 
// 1047 			else
// 1048 			{
// 1049 				st.chip_cfg.accel_half = 0;
??AnBT_DMP_MPU6050_DEV_CFG_12:
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
// 1050 			}
// 1051     }
// 1052 
// 1053     /* Set to invalid values to ensure no I2C writes are skipped. */
// 1054     st.chip_cfg.sensors = 0xFF;
??AnBT_DMP_MPU6050_DEV_CFG_8:
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+255
        STRB     R1,[R0, #+10]
// 1055     st.chip_cfg.gyro_fsr = 0xFF;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+255
        STRB     R1,[R0, #+8]
// 1056     st.chip_cfg.accel_fsr = 0xFF;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+255
        STRB     R1,[R0, #+9]
// 1057     st.chip_cfg.lpf = 0xFF;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+255
        STRB     R1,[R0, #+11]
// 1058     st.chip_cfg.sample_rate = 0xFFFF;
        LDR.N    R0,??DataTable30_9
        MOVW     R1,#+65535
        STRH     R1,[R0, #+14]
// 1059     st.chip_cfg.fifo_enable = 0xFF;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+255
        STRB     R1,[R0, #+16]
// 1060     st.chip_cfg.bypass_mode = 0xFF;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+255
        STRB     R1,[R0, #+18]
// 1061 
// 1062     /* mpu_set_sensors always preserves this setting. */
// 1063     st.chip_cfg.clk_src = INV_CLK_PLL;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
// 1064     /* Handled in next call to mpu_set_bypass. */
// 1065     st.chip_cfg.active_low_int = 1;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
// 1066     st.chip_cfg.latched_int = 0;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+35]
// 1067     st.chip_cfg.int_motion_only = 0;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+21]
// 1068     st.chip_cfg.lp_accel_mode = 0;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
// 1069     memset(&st.chip_cfg.cache, 0, sizeof(st.chip_cfg.cache));
        MOVS     R2,#+12
        MOVS     R1,#+0
        LDR.N    R0,??DataTable30_14
        BL       memset
// 1070     st.chip_cfg.dmp_on = 0;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+36]
// 1071     st.chip_cfg.dmp_loaded = 0;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+37]
// 1072     st.chip_cfg.dmp_sample_rate = 0;
        LDR.N    R0,??DataTable30_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+38]
// 1073 
// 1074     if (mpu_set_gyro_fsr(2000)) return 0x10;
        MOV      R0,#+2000
        BL       mpu_set_gyro_fsr
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_13
        MOVS     R0,#+16
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1075     if (mpu_set_accel_fsr(2)) return 0x11;   
??AnBT_DMP_MPU6050_DEV_CFG_13:
        MOVS     R0,#+2
        BL       mpu_set_accel_fsr
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_14
        MOVS     R0,#+17
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1076     if (mpu_set_lpf(42)) return 0x12; 
??AnBT_DMP_MPU6050_DEV_CFG_14:
        MOVS     R0,#+42
        BL       mpu_set_lpf
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_15
        MOVS     R0,#+18
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1077     if (mpu_set_sample_rate(50)) return 0x13;
??AnBT_DMP_MPU6050_DEV_CFG_15:
        MOVS     R0,#+50
        BL       mpu_set_sample_rate
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_16
        MOVS     R0,#+19
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1078     if (mpu_configure_fifo(0)) return 0x14;
??AnBT_DMP_MPU6050_DEV_CFG_16:
        MOVS     R0,#+0
        BL       mpu_configure_fifo
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_17
        MOVS     R0,#+20
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1079         
// 1080     /* Already disabled by setup_compass. */
// 1081     if (mpu_set_bypass(0)) return 0x15;
??AnBT_DMP_MPU6050_DEV_CFG_17:
        MOVS     R0,#+0
        BL       mpu_set_bypass
        CMP      R0,#+0
        BEQ.N    ??AnBT_DMP_MPU6050_DEV_CFG_18
        MOVS     R0,#+21
        B.N      ??AnBT_DMP_MPU6050_DEV_CFG_1
// 1082     mpu_set_sensors(0);
??AnBT_DMP_MPU6050_DEV_CFG_18:
        MOVS     R0,#+0
        BL       mpu_set_sensors
// 1083     return 0;
        MOVS     R0,#+0
??AnBT_DMP_MPU6050_DEV_CFG_1:
        POP      {R1,R2,R4,PC}    ;; return
// 1084 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28:
        DC32     test
// 1085 
// 1086 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1087 uint8 AnBT_DMP_MPU6050_Init(void)	
// 1088 {
AnBT_DMP_MPU6050_Init:
        PUSH     {R7,LR}
// 1089 	AnBT_DMP_MPU6050_DEV_CFG();		//etootle: init the mpu6050 chip
        BL       AnBT_DMP_MPU6050_DEV_CFG
// 1090 	AnBT_Uart1_Send_String("P-1,Finish DMP device init.",27); 
        MOVS     R1,#+27
        LDR.N    R0,??DataTable30_15
        BL       AnBT_Uart1_Send_String
// 1091 	//
// 1092 	if(!mpu_set_sensors(INV_XYZ_GYRO | INV_XYZ_ACCEL)) AnBT_Uart1_Send_String("P-2,Finish DMP set sensor.",26);
        MOVS     R0,#+120
        BL       mpu_set_sensors
        CMP      R0,#+0
        BNE.N    ??AnBT_DMP_MPU6050_Init_0
        MOVS     R1,#+26
        LDR.N    R0,??DataTable30_16
        BL       AnBT_Uart1_Send_String
        B.N      ??AnBT_DMP_MPU6050_Init_1
// 1093 	else AnBT_Uart1_Send_String("P-2,DMP set sensor error.",25);
??AnBT_DMP_MPU6050_Init_0:
        MOVS     R1,#+25
        LDR.N    R0,??DataTable30_17
        BL       AnBT_Uart1_Send_String
// 1094 	//
// 1095 	if(!mpu_configure_fifo(INV_XYZ_GYRO | INV_XYZ_ACCEL)) AnBT_Uart1_Send_String("P-3,Finish DMP configure fifo.",30);
??AnBT_DMP_MPU6050_Init_1:
        MOVS     R0,#+120
        BL       mpu_configure_fifo
        CMP      R0,#+0
        BNE.N    ??AnBT_DMP_MPU6050_Init_2
        MOVS     R1,#+30
        LDR.N    R0,??DataTable30_18
        BL       AnBT_Uart1_Send_String
        B.N      ??AnBT_DMP_MPU6050_Init_3
// 1096 	else AnBT_Uart1_Send_String("P-3,DMP configure fifo error.",29);
??AnBT_DMP_MPU6050_Init_2:
        MOVS     R1,#+29
        LDR.N    R0,??DataTable30_19
        BL       AnBT_Uart1_Send_String
// 1097 	//
// 1098 	if(!mpu_set_sample_rate(DEFAULT_MPU_HZ))AnBT_Uart1_Send_String("P-4,Finish DMP set sample rate.",31);
??AnBT_DMP_MPU6050_Init_3:
        MOVS     R0,#+100
        BL       mpu_set_sample_rate
        CMP      R0,#+0
        BNE.N    ??AnBT_DMP_MPU6050_Init_4
        MOVS     R1,#+31
        LDR.N    R0,??DataTable30_20
        BL       AnBT_Uart1_Send_String
        B.N      ??AnBT_DMP_MPU6050_Init_5
// 1099 	else AnBT_Uart1_Send_String("P-4,DMP set sample_rate error.",30);
??AnBT_DMP_MPU6050_Init_4:
        MOVS     R1,#+30
        LDR.N    R0,??DataTable30_21
        BL       AnBT_Uart1_Send_String
// 1100 	//
// 1101 	if(!dmp_load_motion_driver_firmware())	AnBT_Uart1_Send_String("P-5,Finish DMP load motion driver firmware.",43);
??AnBT_DMP_MPU6050_Init_5:
        BL       dmp_load_motion_driver_firmware
        CMP      R0,#+0
        BNE.N    ??AnBT_DMP_MPU6050_Init_6
        MOVS     R1,#+43
        LDR.N    R0,??DataTable30_22
        BL       AnBT_Uart1_Send_String
        B.N      ??AnBT_DMP_MPU6050_Init_7
// 1102 	else AnBT_Uart1_Send_String("P-5,DMP load motion driver firmware error.",42);
??AnBT_DMP_MPU6050_Init_6:
        MOVS     R1,#+42
        LDR.N    R0,??DataTable30_23
        BL       AnBT_Uart1_Send_String
// 1103 	//
// 1104 	if(!dmp_set_orientation(inv_orientation_matrix_to_scalar(gyro_orientation))) AnBT_Uart1_Send_String("P-6,Finish DMP set orientation.",31);
??AnBT_DMP_MPU6050_Init_7:
        LDR.N    R0,??DataTable30_24
        BL       inv_orientation_matrix_to_scalar
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       dmp_set_orientation
        CMP      R0,#+0
        BNE.N    ??AnBT_DMP_MPU6050_Init_8
        MOVS     R1,#+31
        LDR.N    R0,??DataTable30_25
        BL       AnBT_Uart1_Send_String
        B.N      ??AnBT_DMP_MPU6050_Init_9
// 1105 	else AnBT_Uart1_Send_String("P-6,DMP set orientation error.",30);
??AnBT_DMP_MPU6050_Init_8:
        MOVS     R1,#+30
        LDR.N    R0,??DataTable30_26
        BL       AnBT_Uart1_Send_String
// 1106 	//
// 1107 	if(!dmp_enable_feature(DMP_FEATURE_6X_LP_QUAT | DMP_FEATURE_TAP |
// 1108 	DMP_FEATURE_ANDROID_ORIENT | DMP_FEATURE_SEND_RAW_ACCEL | DMP_FEATURE_SEND_CAL_GYRO |
// 1109 	DMP_FEATURE_GYRO_CAL))		AnBT_Uart1_Send_String("P-7,Finish DMP enable feature.",30);
??AnBT_DMP_MPU6050_Init_9:
        MOVW     R0,#+371
        BL       dmp_enable_feature
        CMP      R0,#+0
        BNE.N    ??AnBT_DMP_MPU6050_Init_10
        MOVS     R1,#+30
        LDR.N    R0,??DataTable30_27
        BL       AnBT_Uart1_Send_String
        B.N      ??AnBT_DMP_MPU6050_Init_11
// 1110 	else AnBT_Uart1_Send_String("P-7,DMP enable feature error.",29);
??AnBT_DMP_MPU6050_Init_10:
        MOVS     R1,#+29
        LDR.N    R0,??DataTable30_28
        BL       AnBT_Uart1_Send_String
// 1111 	//
// 1112 	if(!dmp_set_fifo_rate(DEFAULT_MPU_HZ)) AnBT_Uart1_Send_String("P-8,Finish DMP set fifo rate.",29);
??AnBT_DMP_MPU6050_Init_11:
        MOVS     R0,#+100
        BL       dmp_set_fifo_rate
        CMP      R0,#+0
        BNE.N    ??AnBT_DMP_MPU6050_Init_12
        MOVS     R1,#+29
        LDR.N    R0,??DataTable30_29
        BL       AnBT_Uart1_Send_String
        B.N      ??AnBT_DMP_MPU6050_Init_13
// 1113 	else AnBT_Uart1_Send_String("P-8,DMP set fifo rate error.",28);
??AnBT_DMP_MPU6050_Init_12:
        MOVS     R1,#+28
        LDR.N    R0,??DataTable30_30
        BL       AnBT_Uart1_Send_String
// 1114 	//
// 1115 	run_self_test();
??AnBT_DMP_MPU6050_Init_13:
        BL       run_self_test
// 1116 	if(!mpu_set_dmp_state(1)) AnBT_Uart1_Send_String("P-9,Finish DMP set dmp state.",29);
        MOVS     R0,#+1
        BL       mpu_set_dmp_state
        CMP      R0,#+0
        BNE.N    ??AnBT_DMP_MPU6050_Init_14
        MOVS     R1,#+29
        LDR.N    R0,??DataTable30_31
        BL       AnBT_Uart1_Send_String
        B.N      ??AnBT_DMP_MPU6050_Init_15
// 1117 	else AnBT_Uart1_Send_String("P-9,DMP set dmp state error.",28);	
??AnBT_DMP_MPU6050_Init_14:
        MOVS     R1,#+28
        LDR.N    R0,??DataTable30_32
        BL       AnBT_Uart1_Send_String
// 1118 	//
// 1119 	return 0;
??AnBT_DMP_MPU6050_Init_15:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 1120 }
// 1121 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1122 void AnBT_DMP_MPU6050_SEND_DATA_FUN(void)	
// 1123 {
AnBT_DMP_MPU6050_SEND_DATA_FUN:
        PUSH     {LR}
        SUB      SP,SP,#+12
// 1124 	dmp_read_fifo(gyro, accel, anbt_mpu6050_quat_data, &sensor_timestamp, &sensors, &more);	 
        LDR.N    R0,??DataTable30_33
        STR      R0,[SP, #+4]
        LDR.N    R0,??DataTable30_34
        STR      R0,[SP, #+0]
        LDR.N    R3,??DataTable30_35
        LDR.N    R2,??DataTable30_36
        LDR.N    R1,??DataTable30_37
        LDR.N    R0,??DataTable30_38
        BL       dmp_read_fifo
// 1125 	//ANBT_SEND_DMP_DATA(anbt_mpu6050_quat_data);
// 1126 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     0x3eae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_1:
        DC32     0x3f845a1d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_2:
        DC32     0x43030000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_3:
        DC32     0x42830000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_4:
        DC32     0x42033333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_5:
        DC32     0x41833333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_6:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_7:
        DC32     0x454cb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_8:
        DC32     0x3f85e354

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_9:
        DC32     st

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_10:
        DC32     `?<Constant "WHOAMI error">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_11:
        DC32     `?<Constant "Unsupported version=1.0">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_12:
        DC32     `?<Constant "Product ID error">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_13:
        DC32     `?<Constant "Half Sensitivity Part">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_14:
        DC32     st+0x16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_15:
        DC32     `?<Constant "P-1,Finish DMP device...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_16:
        DC32     `?<Constant "P-2,Finish DMP set se...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_17:
        DC32     `?<Constant "P-2,DMP set sensor er...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_18:
        DC32     `?<Constant "P-3,Finish DMP config...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_19:
        DC32     `?<Constant "P-3,DMP configure fif...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_20:
        DC32     `?<Constant "P-4,Finish DMP set sa...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_21:
        DC32     `?<Constant "P-4,DMP set sample_ra...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_22:
        DC32     `?<Constant "P-5,Finish DMP load m...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_23:
        DC32     `?<Constant "P-5,DMP load motion d...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_24:
        DC32     gyro_orientation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_25:
        DC32     `?<Constant "P-6,Finish DMP set or...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_26:
        DC32     `?<Constant "P-6,DMP set orientati...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_27:
        DC32     `?<Constant "P-7,Finish DMP enable...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_28:
        DC32     `?<Constant "P-7,DMP enable featur...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_29:
        DC32     `?<Constant "P-8,Finish DMP set fi...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_30:
        DC32     `?<Constant "P-8,DMP set fifo rate...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_31:
        DC32     `?<Constant "P-9,Finish DMP set dm...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_32:
        DC32     `?<Constant "P-9,DMP set dmp state...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_33:
        DC32     more

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_34:
        DC32     sensors

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_35:
        DC32     sensor_timestamp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_36:
        DC32     anbt_mpu6050_quat_data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_37:
        DC32     accel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_38:
        DC32     gyro

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1127 
// 
//    39 bytes in section .bss
//    56 bytes in section .data
//   720 bytes in section .rodata
// 7 366 bytes in section .text
// 
// 7 366 bytes of CODE  memory
//   720 bytes of CONST memory
//    95 bytes of DATA  memory
//
//Errors: none
//Warnings: none
