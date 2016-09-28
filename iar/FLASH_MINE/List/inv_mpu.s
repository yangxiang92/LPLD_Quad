///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    12/Apr/2014  10:07:01 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\eMPL\inv_mpu.c                                      /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\eMPL\inv_mpu.c -D LPLD_K60 -lCN                     /
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
//                    d_V2\iar\..\source\module\eMPL\ -I                      /
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
//                    rce\lib\USB\class\ -I E:\ShawnDocuments\IAR_WorkSpace\L /
//                    PLD_Quad_V2\iar\..\source\lib\MyLib\ -On -I             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH_ /
//                    MINE\List\inv_mpu.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME inv_mpu

        #define SHT_PROGBITS 0x1

        EXTERN PrintChar
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ldivmod
        EXTERN __aeabi_memset
        EXTERN __aeabi_ui2f
        EXTERN delay_ms
        EXTERN get_ms
        EXTERN i2cread
        EXTERN i2cwrite
        EXTERN labs
        EXTERN memcmp

        PUBLIC hw
        PUBLIC memset
        PUBLIC mpu_configure_fifo
        PUBLIC mpu_get_accel_fsr
        PUBLIC mpu_get_accel_reg
        PUBLIC mpu_get_accel_sens
        PUBLIC mpu_get_compass_fsr
        PUBLIC mpu_get_compass_reg
        PUBLIC mpu_get_compass_sample_rate
        PUBLIC mpu_get_dmp_state
        PUBLIC mpu_get_fifo_config
        PUBLIC mpu_get_gyro_fsr
        PUBLIC mpu_get_gyro_reg
        PUBLIC mpu_get_gyro_sens
        PUBLIC mpu_get_int_status
        PUBLIC mpu_get_lpf
        PUBLIC mpu_get_power_state
        PUBLIC mpu_get_sample_rate
        PUBLIC mpu_get_temperature
        PUBLIC mpu_init
        PUBLIC mpu_load_firmware
        PUBLIC mpu_lp_accel_mode
        PUBLIC mpu_lp_motion_interrupt
        PUBLIC mpu_read_fifo
        PUBLIC mpu_read_fifo_stream
        PUBLIC mpu_read_mem
        PUBLIC mpu_read_reg
        PUBLIC mpu_reg_dump
        PUBLIC mpu_reset_fifo
        PUBLIC mpu_run_self_test
        PUBLIC mpu_set_accel_bias
        PUBLIC mpu_set_accel_fsr
        PUBLIC mpu_set_bypass
        PUBLIC mpu_set_compass_sample_rate
        PUBLIC mpu_set_dmp_state
        PUBLIC mpu_set_gyro_fsr
        PUBLIC mpu_set_int_latched
        PUBLIC mpu_set_int_level
        PUBLIC mpu_set_lpf
        PUBLIC mpu_set_sample_rate
        PUBLIC mpu_set_sensors
        PUBLIC mpu_write_mem
        PUBLIC reg
        PUBLIC test

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\module\eMPL\inv_mpu.c
//    1 /*
//    2  $License:
//    3     Copyright (C) 2011-2012 InvenSense Corporation, All Rights Reserved.
//    4     See included License.txt for License information.
//    5  $
//    6  */
//    7 /**
//    8  *  @addtogroup  DRIVERS Sensor Driver Layer
//    9  *  @brief       Hardware drivers to communicate with sensors via I2C.
//   10  *
//   11  *  @{
//   12  *      @file       inv_mpu.c
//   13  *      @brief      An I2C-based driver for Invensense gyroscopes.
//   14  *      @details    This driver currently works for the following devices:
//   15  *                  MPU6050
//   16  *                  MPU6500
//   17  *                  MPU9150 (or MPU6050 w/ AK8975 on the auxiliary bus)
//   18  *                  MPU9250 (or MPU6500 w/ AK8963 on the auxiliary bus)
//   19  */
//   20 #define _STDLIB_H
//   21 #include <stdint.h>
//   22 #include <stdlib.h>
//   23 #include <string.h>

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP memset
        THUMB
// __intrinsic __nounwind __interwork __softfp void *memset(void *, int, size_t)
memset:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,R5
        MOVS     R1,R6
        MOVS     R0,R4
        BL       __aeabi_memset
        MOVS     R0,R4
        POP      {R4-R6,PC}       ;; return

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Unsupported software ...">`:
        DATA
        DC8 "Unsupported software product rev %d.\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Product ID read as 0 ...">`:
        DATA
        DC8 50H, 72H, 6FH, 64H, 75H, 63H, 74H, 20H
        DC8 49H, 44H, 20H, 72H, 65H, 61H, 64H, 20H
        DC8 61H, 73H, 20H, 30H, 20H, 69H, 6EH, 64H
        DC8 69H, 63H, 61H, 74H, 65H, 73H, 20H, 64H
        DC8 65H, 76H, 69H, 63H, 65H, 20H, 69H, 73H
        DC8 20H, 65H, 69H, 74H, 68H, 65H, 72H, 20H
        DC8 69H, 6EH, 63H, 6FH, 6DH, 70H, 61H, 74H
        DC8 69H, 62H, 6CH, 65H, 20H, 6FH, 72H, 20H
        DC8 61H, 6EH, 20H, 4DH, 50H, 55H, 33H, 30H
        DC8 35H, 30H, 2EH, 0AH, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Half sensitivity part...">`:
        DATA
        DC8 "Half sensitivity part found.\012"
        DC8 0, 0
//   24 #include <math.h>
//   25 #include "dmp.h"
//   26 #include "inv_mpu.h"
//   27 #include "delay.h"
//   28 /* The following functions must be defined for this platform:
//   29  * i2c_write(unsigned char slave_addr, unsigned char reg_addr,
//   30  *      unsigned char length, unsigned char const *data)
//   31  * i2c_read(unsigned char slave_addr, unsigned char reg_addr,
//   32  *      unsigned char length, unsigned char *data)
//   33  * delay_ms(unsigned long num_ms)
//   34  * get_ms(unsigned long *count)
//   35  * reg_int_cb(void (*cb)(void), unsigned char port, unsigned char pin)
//   36  * labs(long x)
//   37  * fabsf(float x)
//   38  * min(int a, int b)
//   39  */
//   40 #define MPU6050
//   41 #define MOTION_DRIVER_TARGET_MSP430
//   42 
//   43 #if defined MOTION_DRIVER_TARGET_MSP430
//   44 /*#include "msp430.h"
//   45 #include "msp430_i2c.h"
//   46 #include "msp430_clock.h"
//   47 #include "msp430_interrupt.h" */
//   48 
//   49 #define i2c_write   i2cwrite
//   50 #define i2c_read    i2cread
//   51 #define delay_ms    delay_ms
//   52 #define get_ms      get_ms
//   53 
//   54 //static int reg_int_cb(struct int_param_s *int_param)
//   55 //{
//   56 //    /*return msp430_reg_int_cb(int_param->cb, int_param->pin, int_param->lp_exit,
//   57 //        int_param->active_low);*/
//   58 //		return 0;
//   59 //}	  
//   60 //#define log_i(...)     do {} while (0)
//   61 //#define log_e(...)     do {} while (0)
//   62 #define log_e    PrintChar
//   63 #define log_i    PrintChar
//   64 /* labs is already defined by TI's toolchain. */
//   65 /* fabs is for doubles. fabsf is for floats. */
//   66 #define fabs        fabsf
//   67 #define min(a,b) ((a<b)?a:b)
//   68 
//   69 #elif defined EMPL_TARGET_MSP430
//   70 #include "msp430.h"
//   71 #include "msp430_i2c.h"
//   72 #include "msp430_clock.h"
//   73 #include "msp430_interrupt.h"
//   74 #include "log.h"
//   75 #define i2c_write   msp430_i2c_write
//   76 #define i2c_read    msp430_i2c_read
//   77 #define delay_ms    msp430_delay_ms
//   78 #define get_ms      msp430_get_clock_ms
//   79 static inline int reg_int_cb(struct int_param_s *int_param)
//   80 {
//   81     return msp430_reg_int_cb(int_param->cb, int_param->pin, int_param->lp_exit,
//   82         int_param->active_low);
//   83 }
//   84 #define log_i       MPL_LOGI
//   85 #define log_e       MPL_LOGE
//   86 /* labs is already defined by TI's toolchain. */
//   87 /* fabs is for doubles. fabsf is for floats. */
//   88 #define fabs        fabsf
//   89 #define min(a,b) ((a<b)?a:b)
//   90 #elif defined EMPL_TARGET_UC3L0
//   91 /* Instead of using the standard TWI driver from the ASF library, we're using
//   92  * a TWI driver that follows the slave address + register address convention.
//   93  */
//   94 #include "twi.h"
//   95 #include "delay.h"
//   96 #include "sysclk.h"
//   97 #include "log.h"
//   98 #include "sensors_xplained.h"
//   99 #include "uc3l0_clock.h"
//  100 #define i2c_write(a, b, c, d)   twi_write(a, b, d, c)
//  101 #define i2c_read(a, b, c, d)    twi_read(a, b, d, c)
//  102 /* delay_ms is a function already defined in ASF. */
//  103 #define get_ms  uc3l0_get_clock_ms
//  104 static inline int reg_int_cb(struct int_param_s *int_param)
//  105 {
//  106     sensor_board_irq_connect(int_param->pin, int_param->cb, int_param->arg);
//  107     return 0;
//  108 }
//  109 #define log_i       MPL_LOGI
//  110 #define log_e       MPL_LOGE
//  111 /* UC3 is a 32-bit processor, so abs and labs are equivalent. */
//  112 #define labs        abs
//  113 #define fabs(x)     (((x)>0)?(x):-(x))
//  114 #else
//  115 //#error  Gyro driver is missing the system layer implementations.
//  116 #endif
//  117 
//  118 #if !defined MPU6050 && !defined MPU9150 && !defined MPU6500 && !defined MPU9250
//  119 //#error  Which gyro are you using? Define MPUxxxx in your compiler options.
//  120 #endif
//  121 
//  122 /* Time for some messy macro work. =]
//  123  * #define MPU9150
//  124  * is equivalent to..
//  125  * #define MPU6050
//  126  * #define AK8975_SECONDARY
//  127  *
//  128  * #define MPU9250
//  129  * is equivalent to..
//  130  * #define MPU6500
//  131  * #define AK8963_SECONDARY
//  132  */
//  133 #if defined MPU9150
//  134 #ifndef MPU6050
//  135 #define MPU6050
//  136 #endif                          /* #ifndef MPU6050 */
//  137 #if defined AK8963_SECONDARY
//  138 #error "MPU9150 and AK8963_SECONDARY cannot both be defined."
//  139 #elif !defined AK8975_SECONDARY /* #if defined AK8963_SECONDARY */
//  140 #define AK8975_SECONDARY
//  141 #endif                          /* #if defined AK8963_SECONDARY */
//  142 #elif defined MPU9250           /* #if defined MPU9150 */
//  143 #ifndef MPU6500
//  144 #define MPU6500
//  145 #endif                          /* #ifndef MPU6500 */
//  146 #if defined AK8975_SECONDARY
//  147 #error "MPU9250 and AK8975_SECONDARY cannot both be defined."
//  148 #elif !defined AK8963_SECONDARY /* #if defined AK8975_SECONDARY */
//  149 #define AK8963_SECONDARY
//  150 #endif                          /* #if defined AK8975_SECONDARY */
//  151 #endif                          /* #if defined MPU9150 */
//  152 
//  153 #if defined AK8975_SECONDARY || defined AK8963_SECONDARY
//  154 #define AK89xx_SECONDARY
//  155 #else
//  156 /* #warning "No compass = less profit for Invensense. Lame." */
//  157 #endif
//  158 
//  159 static int set_int_enable(unsigned char enable);
//  160 
//  161 /* Hardware registers needed by driver. */
//  162 struct gyro_reg_s {
//  163     unsigned char who_am_i;
//  164     unsigned char rate_div;
//  165     unsigned char lpf;
//  166     unsigned char prod_id;
//  167     unsigned char user_ctrl;
//  168     unsigned char fifo_en;
//  169     unsigned char gyro_cfg;
//  170     unsigned char accel_cfg;
//  171 
//  172     //unsigned char accel_cfg2;
//  173 
//  174     //unsigned char lp_accel_odr;
//  175 
//  176     unsigned char motion_thr;
//  177     unsigned char motion_dur;
//  178     unsigned char fifo_count_h;
//  179     unsigned char fifo_r_w;
//  180     unsigned char raw_gyro;
//  181     unsigned char raw_accel;
//  182     unsigned char temp;
//  183     unsigned char int_enable;
//  184     unsigned char dmp_int_status;
//  185     unsigned char int_status;
//  186 
//  187     //unsigned char accel_intel;
//  188 
//  189     unsigned char pwr_mgmt_1;
//  190     unsigned char pwr_mgmt_2;
//  191     unsigned char int_pin_cfg;
//  192     unsigned char mem_r_w;
//  193     unsigned char accel_offs;
//  194     unsigned char i2c_mst;
//  195     unsigned char bank_sel;
//  196     unsigned char mem_start_addr;
//  197     unsigned char prgm_start_h;
//  198 #if defined AK89xx_SECONDARY
//  199     unsigned char s0_addr;
//  200     unsigned char s0_reg;
//  201     unsigned char s0_ctrl;
//  202     unsigned char s1_addr;
//  203     unsigned char s1_reg;
//  204     unsigned char s1_ctrl;
//  205     unsigned char s4_ctrl;
//  206     unsigned char s0_do;
//  207     unsigned char s1_do;
//  208     unsigned char i2c_delay_ctrl;
//  209     unsigned char raw_compass;
//  210     /* The I2C_MST_VDDIO bit is in this register. */
//  211     unsigned char yg_offs_tc;
//  212 #endif
//  213 };
//  214 
//  215 /* Information specific to a particular device. */
//  216 struct hw_s {
//  217     unsigned char addr;
//  218     unsigned short max_fifo;
//  219     unsigned char num_reg;
//  220     unsigned short temp_sens;
//  221     short temp_offset;
//  222     unsigned short bank_size;
//  223 #if defined AK89xx_SECONDARY
//  224     unsigned short compass_fsr;
//  225 #endif
//  226 };
//  227 
//  228 /* When entering motion interrupt mode, the driver keeps track of the
//  229  * previous state so that it can be restored at a later time.
//  230  * TODO: This is tacky. Fix it.
//  231  */
//  232 struct motion_int_cache_s {
//  233     unsigned short gyro_fsr;
//  234     unsigned char accel_fsr;
//  235     unsigned short lpf;
//  236     unsigned short sample_rate;
//  237     unsigned char sensors_on;
//  238     unsigned char fifo_sensors;
//  239     unsigned char dmp_on;
//  240 };
//  241 
//  242 /* Cached chip configuration data.
//  243  * TODO: A lot of these can be handled with a bitmask.
//  244  */
//  245 struct chip_cfg_s {
//  246     /* Matches gyro_cfg >> 3 & 0x03 */
//  247     unsigned char gyro_fsr;
//  248     /* Matches accel_cfg >> 3 & 0x03 */
//  249     unsigned char accel_fsr;
//  250     /* Enabled sensors. Uses same masks as fifo_en, NOT pwr_mgmt_2. */
//  251     unsigned char sensors;
//  252     /* Matches config register. */
//  253     unsigned char lpf;
//  254     unsigned char clk_src;
//  255     /* Sample rate, NOT rate divider. */
//  256     unsigned short sample_rate;
//  257     /* Matches fifo_en register. */
//  258     unsigned char fifo_enable;
//  259     /* Matches int enable register. */
//  260     unsigned char int_enable;
//  261     /* 1 if devices on auxiliary I2C bus appear on the primary. */
//  262     unsigned char bypass_mode;
//  263     /* 1 if half-sensitivity.
//  264      * NOTE: This doesn't belong here, but everything else in hw_s is const,
//  265      * and this allows us to save some precious RAM.
//  266      */
//  267     unsigned char accel_half;
//  268     /* 1 if device in low-power accel-only mode. */
//  269     unsigned char lp_accel_mode;
//  270     /* 1 if interrupts are only triggered on motion events. */
//  271     unsigned char int_motion_only;
//  272     struct motion_int_cache_s cache;
//  273     /* 1 for active low interrupts. */
//  274     unsigned char active_low_int;
//  275     /* 1 for latched interrupts. */
//  276     unsigned char latched_int;
//  277     /* 1 if DMP is enabled. */
//  278     unsigned char dmp_on;
//  279     /* Ensures that DMP will only be loaded once. */
//  280     unsigned char dmp_loaded;
//  281     /* Sampling rate used when DMP is enabled. */
//  282     unsigned short dmp_sample_rate;
//  283 #ifdef AK89xx_SECONDARY
//  284     /* Compass sample rate. */
//  285     unsigned short compass_sample_rate;
//  286     unsigned char compass_addr;
//  287     short mag_sens_adj[3];
//  288 #endif
//  289 };
//  290 
//  291 /* Information for self-test. */
//  292 struct test_s {
//  293     unsigned long gyro_sens;
//  294     unsigned long accel_sens;
//  295     unsigned char reg_rate_div;
//  296     unsigned char reg_lpf;
//  297     unsigned char reg_gyro_fsr;
//  298     unsigned char reg_accel_fsr;
//  299     unsigned short wait_ms;
//  300     unsigned char packet_thresh;
//  301     float min_dps;
//  302     float max_dps;
//  303     float max_gyro_var;
//  304     float min_g;
//  305     float max_g;
//  306     float max_accel_var;
//  307 };
//  308 
//  309 /* Gyro driver state variables. */
//  310 struct gyro_state_s {
//  311     const struct gyro_reg_s *reg;
//  312     const struct hw_s *hw;
//  313     struct chip_cfg_s chip_cfg;
//  314     const struct test_s *test;
//  315 };
//  316 
//  317 /* Filter configurations. */
//  318 enum lpf_e {
//  319     INV_FILTER_256HZ_NOLPF2 = 0,
//  320     INV_FILTER_188HZ,
//  321     INV_FILTER_98HZ,
//  322     INV_FILTER_42HZ,
//  323     INV_FILTER_20HZ,
//  324     INV_FILTER_10HZ,
//  325     INV_FILTER_5HZ,
//  326     INV_FILTER_2100HZ_NOLPF,
//  327     NUM_FILTER
//  328 };
//  329 
//  330 /* Full scale ranges. */
//  331 enum gyro_fsr_e {
//  332     INV_FSR_250DPS = 0,
//  333     INV_FSR_500DPS,
//  334     INV_FSR_1000DPS,
//  335     INV_FSR_2000DPS,
//  336     NUM_GYRO_FSR
//  337 };
//  338 
//  339 /* Full scale ranges. */
//  340 enum accel_fsr_e {
//  341     INV_FSR_2G = 0,
//  342     INV_FSR_4G,
//  343     INV_FSR_8G,
//  344     INV_FSR_16G,
//  345     NUM_ACCEL_FSR
//  346 };
//  347 
//  348 /* Clock sources. */
//  349 enum clock_sel_e {
//  350     INV_CLK_INTERNAL = 0,
//  351     INV_CLK_PLL,
//  352     NUM_CLK
//  353 };
//  354 
//  355 /* Low-power accel wakeup rates. */
//  356 enum lp_accel_rate_e {
//  357 #if defined MPU6050
//  358     INV_LPA_1_25HZ,
//  359     INV_LPA_5HZ,
//  360     INV_LPA_20HZ,
//  361     INV_LPA_40HZ
//  362 #elif defined MPU6500
//  363     INV_LPA_0_3125HZ,
//  364     INV_LPA_0_625HZ,
//  365     INV_LPA_1_25HZ,
//  366     INV_LPA_2_5HZ,
//  367     INV_LPA_5HZ,
//  368     INV_LPA_10HZ,
//  369     INV_LPA_20HZ,
//  370     INV_LPA_40HZ,
//  371     INV_LPA_80HZ,
//  372     INV_LPA_160HZ,
//  373     INV_LPA_320HZ,
//  374     INV_LPA_640HZ
//  375 #endif
//  376 };
//  377 
//  378 #define BIT_I2C_MST_VDDIO   (0x80)
//  379 #define BIT_FIFO_EN         (0x40)
//  380 #define BIT_DMP_EN          (0x80)
//  381 #define BIT_FIFO_RST        (0x04)
//  382 #define BIT_DMP_RST         (0x08)
//  383 #define BIT_FIFO_OVERFLOW   (0x10)
//  384 #define BIT_DATA_RDY_EN     (0x01)
//  385 #define BIT_DMP_INT_EN      (0x02)
//  386 #define BIT_MOT_INT_EN      (0x40)
//  387 #define BITS_FSR            (0x18)
//  388 #define BITS_LPF            (0x07)
//  389 #define BITS_HPF            (0x07)
//  390 #define BITS_CLK            (0x07)
//  391 #define BIT_FIFO_SIZE_1024  (0x40)
//  392 #define BIT_FIFO_SIZE_2048  (0x80)
//  393 #define BIT_FIFO_SIZE_4096  (0xC0)
//  394 #define BIT_RESET           (0x80)
//  395 #define BIT_SLEEP           (0x40)
//  396 #define BIT_S0_DELAY_EN     (0x01)
//  397 #define BIT_S2_DELAY_EN     (0x04)
//  398 #define BITS_SLAVE_LENGTH   (0x0F)
//  399 #define BIT_SLAVE_BYTE_SW   (0x40)
//  400 #define BIT_SLAVE_GROUP     (0x10)
//  401 #define BIT_SLAVE_EN        (0x80)
//  402 #define BIT_I2C_READ        (0x80)
//  403 #define BITS_I2C_MASTER_DLY (0x1F)
//  404 #define BIT_AUX_IF_EN       (0x20)
//  405 #define BIT_ACTL            (0x80)
//  406 #define BIT_LATCH_EN        (0x20)
//  407 #define BIT_ANY_RD_CLR      (0x10)
//  408 #define BIT_BYPASS_EN       (0x02)
//  409 #define BITS_WOM_EN         (0xC0)
//  410 #define BIT_LPA_CYCLE       (0x20)
//  411 #define BIT_STBY_XA         (0x20)
//  412 #define BIT_STBY_YA         (0x10)
//  413 #define BIT_STBY_ZA         (0x08)
//  414 #define BIT_STBY_XG         (0x04)
//  415 #define BIT_STBY_YG         (0x02)
//  416 #define BIT_STBY_ZG         (0x01)
//  417 #define BIT_STBY_XYZA       (BIT_STBY_XA | BIT_STBY_YA | BIT_STBY_ZA)
//  418 #define BIT_STBY_XYZG       (BIT_STBY_XG | BIT_STBY_YG | BIT_STBY_ZG)
//  419 
//  420 #if defined AK8975_SECONDARY
//  421 #define SUPPORTS_AK89xx_HIGH_SENS   (0x00)
//  422 #define AK89xx_FSR                  (9830)
//  423 #elif defined AK8963_SECONDARY
//  424 #define SUPPORTS_AK89xx_HIGH_SENS   (0x10)
//  425 #define AK89xx_FSR                  (4915)
//  426 #endif
//  427 
//  428 #ifdef AK89xx_SECONDARY
//  429 #define AKM_REG_WHOAMI      (0x00)
//  430 
//  431 #define AKM_REG_ST1         (0x02)
//  432 #define AKM_REG_HXL         (0x03)
//  433 #define AKM_REG_ST2         (0x09)
//  434 
//  435 #define AKM_REG_CNTL        (0x0A)
//  436 #define AKM_REG_ASTC        (0x0C)
//  437 #define AKM_REG_ASAX        (0x10)
//  438 #define AKM_REG_ASAY        (0x11)
//  439 #define AKM_REG_ASAZ        (0x12)
//  440 
//  441 #define AKM_DATA_READY      (0x01)
//  442 #define AKM_DATA_OVERRUN    (0x02)
//  443 #define AKM_OVERFLOW        (0x80)
//  444 #define AKM_DATA_ERROR      (0x40)
//  445 
//  446 #define AKM_BIT_SELF_TEST   (0x40)
//  447 
//  448 #define AKM_POWER_DOWN          (0x00 | SUPPORTS_AK89xx_HIGH_SENS)
//  449 #define AKM_SINGLE_MEASUREMENT  (0x01 | SUPPORTS_AK89xx_HIGH_SENS)
//  450 #define AKM_FUSE_ROM_ACCESS     (0x0F | SUPPORTS_AK89xx_HIGH_SENS)
//  451 #define AKM_MODE_SELF_TEST      (0x08 | SUPPORTS_AK89xx_HIGH_SENS)
//  452 
//  453 #define AKM_WHOAMI      (0x48)
//  454 #endif
//  455 
//  456 #if defined MPU6050
//  457 /*
//  458 const struct gyro_reg_s reg = {
//  459    .who_am_i       = 0x75,
//  460     .rate_div       = 0x19,
//  461     .lpf            = 0x1A,
//  462     .prod_id        = 0x0C,
//  463     .user_ctrl      = 0x6A,
//  464     .fifo_en        = 0x23,
//  465     .gyro_cfg       = 0x1B,
//  466     .accel_cfg      = 0x1C,
//  467     .motion_thr     = 0x1F,
//  468     .motion_dur     = 0x20,
//  469     .fifo_count_h   = 0x72,
//  470     .fifo_r_w       = 0x74,
//  471     .raw_gyro       = 0x43,
//  472     .raw_accel      = 0x3B,
//  473     .temp           = 0x41,
//  474     .int_enable     = 0x38,
//  475     .dmp_int_status = 0x39,
//  476     .int_status     = 0x3A,
//  477     .pwr_mgmt_1     = 0x6B,
//  478     .pwr_mgmt_2     = 0x6C,
//  479     .int_pin_cfg    = 0x37,
//  480     .mem_r_w        = 0x6F,
//  481     .accel_offs     = 0x06,
//  482     .i2c_mst        = 0x24,
//  483     .bank_sel       = 0x6D,
//  484     .mem_start_addr = 0x6E,
//  485     .prgm_start_h   = 0x70
//  486 #ifdef AK89xx_SECONDARY
//  487     ,.raw_compass   = 0x49,
//  488     .yg_offs_tc     = 0x01,
//  489     .s0_addr        = 0x25,
//  490     .s0_reg         = 0x26,
//  491     .s0_ctrl        = 0x27,
//  492     .s1_addr        = 0x28,
//  493     .s1_reg         = 0x29,
//  494     .s1_ctrl        = 0x2A,
//  495     .s4_ctrl        = 0x34,
//  496     .s0_do          = 0x63,
//  497     .s1_do          = 0x64,
//  498     .i2c_delay_ctrl = 0x67
//  499 #endif
//  500 };
//  501 const struct hw_s hw = {
//  502     .addr           = 0x68,
//  503     .max_fifo       = 1024,
//  504     .num_reg        = 118,
//  505     .temp_sens      = 340,
//  506     .temp_offset    = -521,
//  507     .bank_size      = 256
//  508 #if defined AK89xx_SECONDARY
//  509     ,.compass_fsr    = AK89xx_FSR
//  510 #endif
//  511 };
//  512 */

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  513 const struct hw_s hw={
hw:
        DATA
        DC8 104, 0
        DC16 1024
        DC8 118, 0
        DC16 340, -521, 256
//  514   0x68,	 //addr
//  515   1024,	 //max_fifo
//  516   118,	 //num_reg
//  517   340,	 //temp_sens
//  518   -521,	 //temp_offset
//  519   256	 //bank_size
//  520 };

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  521 const struct gyro_reg_s reg = {
reg:
        DATA
        DC8 117, 25, 26, 12, 106, 35, 27, 28, 31, 32, 114, 116, 67, 59, 65, 56
        DC8 57, 58, 107, 108, 55, 111, 6, 36, 109, 110, 112, 0
//  522 0x75,  //who_am_i
//  523 0x19,  //rate_div
//  524 0x1A,  //lpf
//  525 0x0C,  //prod_id
//  526 0x6A,  //user_ctrl
//  527 0x23,  //fifo_en
//  528 0x1B,  //gyro_cfg
//  529 0x1C,  //accel_cfg
//  530 0x1F,  // motion_thr
//  531 0x20,  // motion_dur
//  532 0x72,  // fifo_count_h
//  533 0x74,  // fifo_r_w
//  534 0x43,  // raw_gyro
//  535 0x3B,  // raw_accel
//  536 0x41,  // temp
//  537 0x38,  // int_enable
//  538 0x39,  //  dmp_int_status
//  539 0x3A,  //  int_status
//  540 0x6B,  // pwr_mgmt_1
//  541 0x6C,  // pwr_mgmt_2
//  542 0x37,  // int_pin_cfg
//  543 0x6F,  // mem_r_w
//  544 0x06,  // accel_offs
//  545 0x24,  // i2c_mst
//  546 0x6D,  // bank_sel
//  547 0x6E,  // mem_start_addr
//  548 0x70   // prgm_start_h
//  549 };
//  550 
//  551 //const struct test_s test = {
//  552 //    .gyro_sens      = 32768/250,
//  553 //    .accel_sens     = 32768/16,	  
//  554 //    .reg_rate_div   = 0,    /* 1kHz. */
//  555 //    .reg_lpf        = 1,    /* 188Hz. */
//  556 //    .reg_gyro_fsr   = 0,    /* 250dps. */
//  557 //    .reg_accel_fsr  = 0x18, /* 16g. */
//  558 //    .wait_ms        = 50,
//  559 //    .packet_thresh  = 5,    /* 5% */
//  560 //    .min_dps        = 10.f,
//  561 //    .max_dps        = 105.f,
//  562 //    .max_gyro_var   = 0.14f,
//  563 //    .min_g          = 0.3f,
//  564 //    .max_g          = 0.95f,
//  565 //    .max_accel_var  = 0.14f
//  566 //};

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  567 const struct test_s test={
test:
        DATA
        DC32 131, 2048
        DC8 0, 1, 0, 24
        DC16 50
        DC8 5, 0
        DC32 41200000H, 42D20000H, 3E0F5C29H, 3E99999AH, 3F733333H, 3E0F5C29H
//  568 32768/250,		 //gyro_sens
//  569 32768/16,		 //	accel_sens
//  570 0,				 //	reg_rate_div
//  571 1,				//	reg_lpf
//  572 0,				 //	reg_gyro_fsr
//  573 0x18,			//	reg_accel_fsr
//  574 50,				//	wait_ms
//  575 5,				//	packet_thresh
//  576 10.0f,			 //	min_dps
//  577 105.0f,			 //	max_dps
//  578 0.14f,			//	max_gyro_var
//  579 0.3f,		   //	min_g
//  580 0.95f,		   //	max_g
//  581 0.14f		   //	max_accel_var
//  582 };
//  583 /*
//  584 static struct gyro_state_s st = {
//  585     .reg = &reg,
//  586     .hw = &hw,
//  587     .test = &test
//  588 };	*/

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  589 static struct gyro_state_s st={
st:
        DATA
        DC32 reg, hw
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 test
//  590   &reg,
//  591   &hw,
//  592   {0},
//  593   &test
//  594 };
//  595 //st.chip_cfg.dmp_on = 1;
//  596 //st.dhip_cfg.fifo_enabel = 1;
//  597 /*
//  598 #elif defined MPU6500
//  599 const struct gyro_reg_s reg = {
//  600     .who_am_i       = 0x75,
//  601     .rate_div       = 0x19,
//  602     .lpf            = 0x1A,
//  603     .prod_id        = 0x0C,
//  604     .user_ctrl      = 0x6A,
//  605     .fifo_en        = 0x23,
//  606     .gyro_cfg       = 0x1B,
//  607     .accel_cfg      = 0x1C,
//  608     .accel_cfg2     = 0x1D,
//  609     .lp_accel_odr   = 0x1E,
//  610     .motion_thr     = 0x1F,
//  611     .motion_dur     = 0x20,
//  612     .fifo_count_h   = 0x72,
//  613     .fifo_r_w       = 0x74,
//  614     .raw_gyro       = 0x43,
//  615     .raw_accel      = 0x3B,
//  616     .temp           = 0x41,
//  617     .int_enable     = 0x38,
//  618     .dmp_int_status = 0x39,
//  619     .int_status     = 0x3A,
//  620     .accel_intel    = 0x69,
//  621     .pwr_mgmt_1     = 0x6B,
//  622     .pwr_mgmt_2     = 0x6C,
//  623     .int_pin_cfg    = 0x37,
//  624     .mem_r_w        = 0x6F,
//  625     .accel_offs     = 0x77,
//  626     .i2c_mst        = 0x24,
//  627     .bank_sel       = 0x6D,
//  628     .mem_start_addr = 0x6E,
//  629     .prgm_start_h   = 0x70
//  630 #ifdef AK89xx_SECONDARY
//  631     ,.raw_compass   = 0x49,
//  632     .s0_addr        = 0x25,
//  633     .s0_reg         = 0x26,
//  634     .s0_ctrl        = 0x27,
//  635     .s1_addr        = 0x28,
//  636     .s1_reg         = 0x29,
//  637     .s1_ctrl        = 0x2A,
//  638     .s4_ctrl        = 0x34,
//  639     .s0_do          = 0x63,
//  640     .s1_do          = 0x64,
//  641     .i2c_delay_ctrl = 0x67
//  642 #endif
//  643 };
//  644 const struct hw_s hw = {
//  645     .addr           = 0x68,
//  646     .max_fifo       = 1024,
//  647     .num_reg        = 128,
//  648     .temp_sens      = 321,
//  649     .temp_offset    = 0,
//  650     .bank_size      = 256
//  651 #if defined AK89xx_SECONDARY
//  652     ,.compass_fsr    = AK89xx_FSR
//  653 #endif
//  654 };
//  655 */
//  656 //const struct test_s test = {
//  657 //    .gyro_sens      = 32768/250,
//  658 //    .accel_sens     = 32768/16,
//  659 //    .reg_rate_div   = 0,    /* 1kHz. */
//  660 //    .reg_lpf        = 1,    /* 188Hz. */
//  661 //    .reg_gyro_fsr   = 0,    /* 250dps. */
//  662 //    .reg_accel_fsr  = 0x18, /* 16g. */
//  663 //    .wait_ms        = 50,
//  664 //    .packet_thresh  = 5,    /* 5% */
//  665 //    .min_dps        = 10.f,
//  666 //    .max_dps        = 105.f,
//  667 //    .max_gyro_var   = 0.14f,
//  668 //    .min_g          = 0.3f,
//  669 //    .max_g          = 0.95f,
//  670 //    .max_accel_var  = 0.14f
//  671 //};
//  672 //
//  673 //static struct gyro_state_s st = {
//  674 //    .reg = &reg,
//  675 //    .hw = &hw,
//  676 //    .test = &test
//  677 //};
//  678 #endif
//  679 
//  680 #define MAX_PACKET_LENGTH (12)
//  681 
//  682 #ifdef AK89xx_SECONDARY
//  683 static int setup_compass(void);
//  684 #define MAX_COMPASS_SAMPLE_RATE (100)
//  685 #endif
//  686 
//  687 /**
//  688  *  @brief      Enable/disable data ready interrupt.
//  689  *  If the DMP is on, the DMP interrupt is enabled. Otherwise, the data ready
//  690  *  interrupt is used.
//  691  *  @param[in]  enable      1 to enable interrupt.
//  692  *  @return     0 if successful.
//  693  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  694 static int set_int_enable(unsigned char enable)
//  695 {
set_int_enable:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  696     unsigned char tmp;
//  697 
//  698     if (st.chip_cfg.dmp_on) {
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??set_int_enable_0
//  699         if (enable)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??set_int_enable_1
//  700             tmp = BIT_DMP_INT_EN;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
        B.N      ??set_int_enable_2
//  701         else
//  702             tmp = 0x00;
??set_int_enable_1:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  703         if (i2c_write(st.hw->addr, st.reg->int_enable, 1, &tmp))
??set_int_enable_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??set_int_enable_3
//  704             return -1;
        MOVS     R0,#-1
        B.N      ??set_int_enable_4
//  705         st.chip_cfg.int_enable = tmp;
??set_int_enable_3:
        LDR.W    R0,??DataTable17
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+17]
        B.N      ??set_int_enable_5
//  706     } else {
//  707         if (!st.chip_cfg.sensors)
??set_int_enable_0:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??set_int_enable_6
//  708             return -1;
        MOVS     R0,#-1
        B.N      ??set_int_enable_4
//  709         if (enable && st.chip_cfg.int_enable)
??set_int_enable_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??set_int_enable_7
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+17]
        CMP      R0,#+0
        BEQ.N    ??set_int_enable_7
//  710             return 0;
        MOVS     R0,#+0
        B.N      ??set_int_enable_4
//  711         if (enable)
??set_int_enable_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??set_int_enable_8
//  712             tmp = BIT_DATA_RDY_EN;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??set_int_enable_9
//  713         else
//  714             tmp = 0x00;
??set_int_enable_8:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  715         if (i2c_write(st.hw->addr, st.reg->int_enable, 1, &tmp))
??set_int_enable_9:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??set_int_enable_10
//  716             return -1;
        MOVS     R0,#-1
        B.N      ??set_int_enable_4
//  717         st.chip_cfg.int_enable = tmp;
??set_int_enable_10:
        LDR.W    R0,??DataTable17
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+17]
//  718     }
//  719     return 0;
??set_int_enable_5:
        MOVS     R0,#+0
??set_int_enable_4:
        POP      {R1,R2,R4,PC}    ;; return
//  720 }
//  721 
//  722 /**
//  723  *  @brief      Register dump for testing.
//  724  *  @return     0 if successful.
//  725  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  726 int mpu_reg_dump(void)
//  727 {
mpu_reg_dump:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//  728     unsigned char ii;
//  729     unsigned char data;
//  730 
//  731     for (ii = 0; ii < st.hw->num_reg; ii++) {
        MOVS     R0,#+0
        MOVS     R4,R0
??mpu_reg_dump_0:
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BCS.N    ??mpu_reg_dump_1
//  732         if (ii == st.reg->fifo_r_w || ii == st.reg->mem_r_w)
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+11]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BEQ.N    ??mpu_reg_dump_2
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+21]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??mpu_reg_dump_3
//  733             continue;
??mpu_reg_dump_2:
        B.N      ??mpu_reg_dump_4
//  734         if (i2c_read(st.hw->addr, ii, 1, &data))
??mpu_reg_dump_3:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_reg_dump_4
//  735             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reg_dump_5
//  736         //log_i("%#5x: %#5x\r\n", ii, data);
//  737     }
??mpu_reg_dump_4:
        ADDS     R4,R4,#+1
        B.N      ??mpu_reg_dump_0
//  738     return 0;
??mpu_reg_dump_1:
        MOVS     R0,#+0
??mpu_reg_dump_5:
        POP      {R1,R2,R4,PC}    ;; return
//  739 }
//  740 
//  741 /**
//  742  *  @brief      Read from a single register.
//  743  *  NOTE: The memory and FIFO read/write registers cannot be accessed.
//  744  *  @param[in]  reg     Register address.
//  745  *  @param[out] data    Register data.
//  746  *  @return     0 if successful.
//  747  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  748 int mpu_read_reg(unsigned char reg, unsigned char *data)
//  749 {
mpu_read_reg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  750     if (reg == st.reg->fifo_r_w || reg == st.reg->mem_r_w)
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+11]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BEQ.N    ??mpu_read_reg_0
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+21]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??mpu_read_reg_1
//  751         return -1;
??mpu_read_reg_0:
        MOVS     R0,#-1
        B.N      ??mpu_read_reg_2
//  752     if (reg >= st.hw->num_reg)
??mpu_read_reg_1:
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BCC.N    ??mpu_read_reg_3
//  753         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_reg_2
//  754     return i2c_read(st.hw->addr, reg, 1, data);
??mpu_read_reg_3:
        MOVS     R3,R5
        MOVS     R2,#+1
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
??mpu_read_reg_2:
        POP      {R1,R4,R5,PC}    ;; return
//  755 }
//  756 
//  757 /**
//  758  *  @brief      Initialize hardware.
//  759  *  Initial configuration:\n
//  760  *  Gyro FSR: +/- 2000DPS\n
//  761  *  Accel FSR +/- 2G\n
//  762  *  DLPF: 42Hz\n
//  763  *  FIFO rate: 50Hz\n
//  764  *  Clock source: Gyro PLL\n
//  765  *  FIFO: Disabled.\n
//  766  *  Data ready interrupt: Disabled, active low, unlatched.
//  767  *  @param[in]  int_param   Platform-specific parameters to interrupt API.
//  768  *  @return     0 if successful.
//  769  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  770 int mpu_init(void)
//  771 {
mpu_init:
        PUSH     {R2-R4,LR}
//  772     unsigned char data[6], rev;
//  773 
//  774     /* Reset device. */
//  775     data[0] = 0x80;//BIT_RESET;
        MOVS     R0,#+128
        STRB     R0,[SP, #+0]
//  776     if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 1, &(data[0])))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_init_0
//  777         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  778     delay_ms(100);
??mpu_init_0:
        MOVS     R0,#+100
        BL       delay_ms
//  779 
//  780     /* Wake up chip. */
//  781     data[0] = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  782     if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 1, &(data[0])))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_init_2
//  783         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  784 
//  785 #if defined MPU6050
//  786     /* Check product revision. */
//  787     if (i2c_read(st.hw->addr, st.reg->accel_offs, 6, data))
??mpu_init_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+6
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+22]
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_init_3
//  788         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  789     rev = ((data[5] & 0x01) << 2) | ((data[3] & 0x01) << 1) |
//  790         (data[1] & 0x01);
??mpu_init_3:
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
//  791 
//  792     if (rev) {
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_init_4
//  793         /* Congrats, these parts are better. */
//  794         if (rev == 1)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??mpu_init_5
//  795             st.chip_cfg.accel_half = 1;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+1
        STRB     R1,[R0, #+19]
        B.N      ??mpu_init_6
//  796         else if (rev == 2)
??mpu_init_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??mpu_init_7
//  797             st.chip_cfg.accel_half = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        B.N      ??mpu_init_6
//  798         else {
//  799             log_e("Unsupported software product rev %d.\n");
??mpu_init_7:
        LDR.W    R0,??DataTable22
        BL       PrintChar
//  800             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  801         }
//  802     } else {
//  803         if (i2c_read(st.hw->addr, st.reg->prod_id, 1, &(data[0])))
??mpu_init_4:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_init_8
//  804             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  805         rev = data[0] & 0x0F;
??mpu_init_8:
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0xF
        MOVS     R4,R0
//  806         if (!rev) {
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??mpu_init_9
//  807             log_e("Product ID read as 0 indicates device is either "
//  808                 "incompatible or an MPU3050.\n");
        LDR.W    R0,??DataTable22_1
        BL       PrintChar
//  809             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  810         } else if (rev == 4) {
??mpu_init_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??mpu_init_10
//  811             log_i("Half sensitivity part found.\n");
        LDR.W    R0,??DataTable22_2
        BL       PrintChar
//  812             st.chip_cfg.accel_half = 1;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+1
        STRB     R1,[R0, #+19]
        B.N      ??mpu_init_6
//  813         } else
//  814             st.chip_cfg.accel_half = 0;
??mpu_init_10:
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
//  815     }
//  816 #elif defined MPU6500
//  817 #define MPU6500_MEM_REV_ADDR    (0x17)
//  818     if (mpu_read_mem(MPU6500_MEM_REV_ADDR, 1, &rev))
//  819         return -1;
//  820     if (rev == 0x1)
//  821         st.chip_cfg.accel_half = 0;
//  822     else {
//  823         log_e("Unsupported software product rev %d.\n", rev);
//  824         return -1;
//  825     }
//  826 
//  827     /* MPU6500 shares 4kB of memory between the DMP and the FIFO. Since the
//  828      * first 3kB are needed by the DMP, we'll use the last 1kB for the FIFO.
//  829      */
//  830     data[0] = BIT_FIFO_SIZE_1024 | 0x8;
//  831     if (i2c_write(st.hw->addr, st.reg->accel_cfg2, 1, data))
//  832         return -1;
//  833 #endif
//  834 
//  835     /* Set to invalid values to ensure no I2C writes are skipped. */
//  836     st.chip_cfg.sensors = 0xFF;
??mpu_init_6:
        LDR.W    R0,??DataTable17
        MOVS     R1,#+255
        STRB     R1,[R0, #+10]
//  837     st.chip_cfg.gyro_fsr = 0xFF;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+255
        STRB     R1,[R0, #+8]
//  838     st.chip_cfg.accel_fsr = 0xFF;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+255
        STRB     R1,[R0, #+9]
//  839     st.chip_cfg.lpf = 0xFF;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+255
        STRB     R1,[R0, #+11]
//  840     st.chip_cfg.sample_rate = 0xFFFF;
        LDR.W    R0,??DataTable17
        MOVW     R1,#+65535
        STRH     R1,[R0, #+14]
//  841     st.chip_cfg.fifo_enable = 0xFF;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+255
        STRB     R1,[R0, #+16]
//  842     st.chip_cfg.bypass_mode = 0xFF;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+255
        STRB     R1,[R0, #+18]
//  843 #ifdef AK89xx_SECONDARY
//  844     st.chip_cfg.compass_sample_rate = 0xFFFF;
//  845 #endif
//  846     /* mpu_set_sensors always preserves this setting. */
//  847     st.chip_cfg.clk_src = INV_CLK_PLL;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//  848     /* Handled in next call to mpu_set_bypass. */
//  849     st.chip_cfg.active_low_int = 1;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
//  850     st.chip_cfg.latched_int = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+35]
//  851     st.chip_cfg.int_motion_only = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+21]
//  852     st.chip_cfg.lp_accel_mode = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
//  853     memset(&st.chip_cfg.cache, 0, sizeof(st.chip_cfg.cache));
        MOVS     R2,#+12
        MOVS     R1,#+0
        LDR.W    R0,??DataTable23
        BL       memset
//  854     st.chip_cfg.dmp_on = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+36]
//  855     st.chip_cfg.dmp_loaded = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+37]
//  856     st.chip_cfg.dmp_sample_rate = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRH     R1,[R0, #+38]
//  857 
//  858     if (mpu_set_gyro_fsr(2000))
        MOV      R0,#+2000
        BL       mpu_set_gyro_fsr
        CMP      R0,#+0
        BEQ.N    ??mpu_init_11
//  859         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  860     if (mpu_set_accel_fsr(2))
??mpu_init_11:
        MOVS     R0,#+2
        BL       mpu_set_accel_fsr
        CMP      R0,#+0
        BEQ.N    ??mpu_init_12
//  861         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  862     if (mpu_set_lpf(42))
??mpu_init_12:
        MOVS     R0,#+42
        BL       mpu_set_lpf
        CMP      R0,#+0
        BEQ.N    ??mpu_init_13
//  863         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  864     if (mpu_set_sample_rate(50))
??mpu_init_13:
        MOVS     R0,#+50
        BL       mpu_set_sample_rate
        CMP      R0,#+0
        BEQ.N    ??mpu_init_14
//  865         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  866     if (mpu_configure_fifo(0))
??mpu_init_14:
        MOVS     R0,#+0
        BL       mpu_configure_fifo
        CMP      R0,#+0
        BEQ.N    ??mpu_init_15
//  867         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  868 
//  869     /*if (int_param)
//  870         reg_int_cb(int_param);*/
//  871 
//  872 #ifdef AK89xx_SECONDARY
//  873     setup_compass();
//  874     if (mpu_set_compass_sample_rate(10))
//  875         return -1;
//  876 #else
//  877     /* Already disabled by setup_compass. */
//  878     if (mpu_set_bypass(0))
??mpu_init_15:
        MOVS     R0,#+0
        BL       mpu_set_bypass
        CMP      R0,#+0
        BEQ.N    ??mpu_init_16
//  879         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_init_1
//  880 #endif
//  881 
//  882     mpu_set_sensors(0);
??mpu_init_16:
        MOVS     R0,#+0
        BL       mpu_set_sensors
//  883     return 0;
        MOVS     R0,#+0
??mpu_init_1:
        POP      {R1,R2,R4,PC}    ;; return
//  884 }
//  885 
//  886 /**
//  887  *  @brief      Enter low-power accel-only mode.
//  888  *  In low-power accel mode, the chip goes to sleep and only wakes up to sample
//  889  *  the accelerometer at one of the following frequencies:
//  890  *  \n MPU6050: 1.25Hz, 5Hz, 20Hz, 40Hz
//  891  *  \n MPU6500: 1.25Hz, 2.5Hz, 5Hz, 10Hz, 20Hz, 40Hz, 80Hz, 160Hz, 320Hz, 640Hz
//  892  *  \n If the requested rate is not one listed above, the device will be set to
//  893  *  the next highest rate. Requesting a rate above the maximum supported
//  894  *  frequency will result in an error.
//  895  *  \n To select a fractional wake-up frequency, round down the value passed to
//  896  *  @e rate.
//  897  *  @param[in]  rate        Minimum sampling rate, or zero to disable LP
//  898  *                          accel mode.
//  899  *  @return     0 if successful.
//  900  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  901 int mpu_lp_accel_mode(unsigned char rate)
//  902 {
mpu_lp_accel_mode:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  903     unsigned char tmp[2];
//  904 
//  905     if (rate > 40)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+41
        BCC.N    ??mpu_lp_accel_mode_0
//  906         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_lp_accel_mode_1
//  907 
//  908     if (!rate) {
??mpu_lp_accel_mode_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??mpu_lp_accel_mode_2
//  909         mpu_set_int_latched(0);
        MOVS     R0,#+0
        BL       mpu_set_int_latched
//  910         tmp[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  911         tmp[1] = BIT_STBY_XYZG;
        MOVS     R0,#+7
        STRB     R0,[SP, #+1]
//  912         if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 2, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_lp_accel_mode_3
//  913             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_lp_accel_mode_1
//  914         st.chip_cfg.lp_accel_mode = 0;
??mpu_lp_accel_mode_3:
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
//  915         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_lp_accel_mode_1
//  916     }
//  917     /* For LP accel, we automatically configure the hardware to produce latched
//  918      * interrupts. In LP accel mode, the hardware cycles into sleep mode before
//  919      * it gets a chance to deassert the interrupt pin; therefore, we shift this
//  920      * responsibility over to the MCU.
//  921      *
//  922      * Any register read will clear the interrupt.
//  923      */
//  924     mpu_set_int_latched(1);
??mpu_lp_accel_mode_2:
        MOVS     R0,#+1
        BL       mpu_set_int_latched
//  925 #if defined MPU6050
//  926     tmp[0] = BIT_LPA_CYCLE;
        MOVS     R0,#+32
        STRB     R0,[SP, #+0]
//  927     if (rate == 1) {
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??mpu_lp_accel_mode_4
//  928         tmp[1] = INV_LPA_1_25HZ;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  929         mpu_set_lpf(5);
        MOVS     R0,#+5
        BL       mpu_set_lpf
        B.N      ??mpu_lp_accel_mode_5
//  930     } else if (rate <= 5) {
??mpu_lp_accel_mode_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCS.N    ??mpu_lp_accel_mode_6
//  931         tmp[1] = INV_LPA_5HZ;
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
//  932         mpu_set_lpf(5);
        MOVS     R0,#+5
        BL       mpu_set_lpf
        B.N      ??mpu_lp_accel_mode_5
//  933     } else if (rate <= 20) {
??mpu_lp_accel_mode_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+21
        BCS.N    ??mpu_lp_accel_mode_7
//  934         tmp[1] = INV_LPA_20HZ;
        MOVS     R0,#+2
        STRB     R0,[SP, #+1]
//  935         mpu_set_lpf(10);
        MOVS     R0,#+10
        BL       mpu_set_lpf
        B.N      ??mpu_lp_accel_mode_5
//  936     } else {
//  937         tmp[1] = INV_LPA_40HZ;
??mpu_lp_accel_mode_7:
        MOVS     R0,#+3
        STRB     R0,[SP, #+1]
//  938         mpu_set_lpf(20);
        MOVS     R0,#+20
        BL       mpu_set_lpf
//  939     }
//  940     tmp[1] = (tmp[1] << 6) | BIT_STBY_XYZG;
??mpu_lp_accel_mode_5:
        LDRB     R0,[SP, #+1]
        LSLS     R0,R0,#+6
        ORRS     R0,R0,#0x7
        STRB     R0,[SP, #+1]
//  941     if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 2, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_lp_accel_mode_8
//  942         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_lp_accel_mode_1
//  943 #elif defined MPU6500
//  944     /* Set wake frequency. */
//  945     if (rate == 1)
//  946         tmp[0] = INV_LPA_1_25HZ;
//  947     else if (rate == 2)
//  948         tmp[0] = INV_LPA_2_5HZ;
//  949     else if (rate <= 5)
//  950         tmp[0] = INV_LPA_5HZ;
//  951     else if (rate <= 10)
//  952         tmp[0] = INV_LPA_10HZ;
//  953     else if (rate <= 20)
//  954         tmp[0] = INV_LPA_20HZ;
//  955     else if (rate <= 40)
//  956         tmp[0] = INV_LPA_40HZ;
//  957     else if (rate <= 80)
//  958         tmp[0] = INV_LPA_80HZ;
//  959     else if (rate <= 160)
//  960         tmp[0] = INV_LPA_160HZ;
//  961     else if (rate <= 320)
//  962         tmp[0] = INV_LPA_320HZ;
//  963     else
//  964         tmp[0] = INV_LPA_640HZ;
//  965     if (i2c_write(st.hw->addr, st.reg->lp_accel_odr, 1, tmp))
//  966         return -1;
//  967     tmp[0] = BIT_LPA_CYCLE;
//  968     if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 1, tmp))
//  969         return -1;
//  970 #endif
//  971     st.chip_cfg.sensors = INV_XYZ_ACCEL;
??mpu_lp_accel_mode_8:
        LDR.W    R0,??DataTable17
        MOVS     R1,#+8
        STRB     R1,[R0, #+10]
//  972     st.chip_cfg.clk_src = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+12]
//  973     st.chip_cfg.lp_accel_mode = 1;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+1
        STRB     R1,[R0, #+20]
//  974     mpu_configure_fifo(0);
        MOVS     R0,#+0
        BL       mpu_configure_fifo
//  975 
//  976     return 0;
        MOVS     R0,#+0
??mpu_lp_accel_mode_1:
        POP      {R1,R2,R4,PC}    ;; return
//  977 }
//  978 
//  979 /**
//  980  *  @brief      Read raw gyro data directly from the registers.
//  981  *  @param[out] data        Raw data in hardware units.
//  982  *  @param[out] timestamp   Timestamp in milliseconds. Null if not needed.
//  983  *  @return     0 if successful.
//  984  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  985 int mpu_get_gyro_reg(short *data, unsigned long *timestamp)
//  986 {
mpu_get_gyro_reg:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
//  987     unsigned char tmp[6];
//  988 
//  989     if (!(st.chip_cfg.sensors & INV_XYZ_GYRO))
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        MOVS     R1,#+112
        TST      R0,R1
        BNE.N    ??mpu_get_gyro_reg_0
//  990         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_gyro_reg_1
//  991 
//  992     if (i2c_read(st.hw->addr, st.reg->raw_gyro, 6, tmp))
??mpu_get_gyro_reg_0:
        ADD      R3,SP,#+0
        MOVS     R2,#+6
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+12]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_get_gyro_reg_2
//  993         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_gyro_reg_1
//  994     data[0] = (tmp[0] << 8) | tmp[1];
??mpu_get_gyro_reg_2:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+0]
//  995     data[1] = (tmp[2] << 8) | tmp[3];
        LDRB     R0,[SP, #+2]
        LDRB     R1,[SP, #+3]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+2]
//  996     data[2] = (tmp[4] << 8) | tmp[5];
        LDRB     R0,[SP, #+4]
        LDRB     R1,[SP, #+5]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+4]
//  997     if (timestamp)
        CMP      R5,#+0
        BEQ.N    ??mpu_get_gyro_reg_3
//  998         get_ms(timestamp);
        MOVS     R0,R5
        BL       get_ms
//  999     return 0;
??mpu_get_gyro_reg_3:
        MOVS     R0,#+0
??mpu_get_gyro_reg_1:
        POP      {R1-R5,PC}       ;; return
// 1000 }
// 1001 
// 1002 /**
// 1003  *  @brief      Read raw accel data directly from the registers.
// 1004  *  @param[out] data        Raw data in hardware units.
// 1005  *  @param[out] timestamp   Timestamp in milliseconds. Null if not needed.
// 1006  *  @return     0 if successful.
// 1007  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1008 int mpu_get_accel_reg(short *data, unsigned long *timestamp)
// 1009 {
mpu_get_accel_reg:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
// 1010     unsigned char tmp[6];
// 1011 
// 1012     if (!(st.chip_cfg.sensors & INV_XYZ_ACCEL))
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        LSLS     R0,R0,#+28
        BMI.N    ??mpu_get_accel_reg_0
// 1013         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_accel_reg_1
// 1014 
// 1015     if (i2c_read(st.hw->addr, st.reg->raw_accel, 6, tmp))
??mpu_get_accel_reg_0:
        ADD      R3,SP,#+0
        MOVS     R2,#+6
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+13]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_get_accel_reg_2
// 1016         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_accel_reg_1
// 1017     data[0] = (tmp[0] << 8) | tmp[1];
??mpu_get_accel_reg_2:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+0]
// 1018     data[1] = (tmp[2] << 8) | tmp[3];
        LDRB     R0,[SP, #+2]
        LDRB     R1,[SP, #+3]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+2]
// 1019     data[2] = (tmp[4] << 8) | tmp[5];
        LDRB     R0,[SP, #+4]
        LDRB     R1,[SP, #+5]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+4]
// 1020     if (timestamp)
        CMP      R5,#+0
        BEQ.N    ??mpu_get_accel_reg_3
// 1021         get_ms(timestamp);
        MOVS     R0,R5
        BL       get_ms
// 1022     return 0;
??mpu_get_accel_reg_3:
        MOVS     R0,#+0
??mpu_get_accel_reg_1:
        POP      {R1-R5,PC}       ;; return
// 1023 }
// 1024 
// 1025 /**
// 1026  *  @brief      Read temperature data directly from the registers.
// 1027  *  @param[out] data        Data in q16 format.
// 1028  *  @param[out] timestamp   Timestamp in milliseconds. Null if not needed.
// 1029  *  @return     0 if successful.
// 1030  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1031 int mpu_get_temperature(long *data, unsigned long *timestamp)
// 1032 {
mpu_get_temperature:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 1033     unsigned char tmp[2];
// 1034     short raw;
// 1035 
// 1036     if (!(st.chip_cfg.sensors))
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_get_temperature_0
// 1037         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_temperature_1
// 1038 
// 1039     if (i2c_read(st.hw->addr, st.reg->temp, 2, tmp))
??mpu_get_temperature_0:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+14]
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_get_temperature_2
// 1040         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_temperature_1
// 1041     raw = (tmp[0] << 8) | tmp[1];
??mpu_get_temperature_2:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        MOVS     R6,R0
// 1042     if (timestamp)
        CMP      R5,#+0
        BEQ.N    ??mpu_get_temperature_3
// 1043         get_ms(timestamp);
        MOVS     R0,R5
        BL       get_ms
// 1044 
// 1045     data[0] = (long)((35 + ((raw - (float)st.hw->temp_offset) / st.hw->temp_sens)) * 65536L);
??mpu_get_temperature_3:
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_i2f
        MOVS     R7,R0
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRSH    R0,[R0, #+8]
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        LDR.W    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRH     R0,[R0, #+6]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable25  ;; 0x420c0000
        BL       __aeabi_fadd
        MOVS     R1,#+1199570944
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[R4, #+0]
// 1046     return 0;
        MOVS     R0,#+0
??mpu_get_temperature_1:
        POP      {R1,R4-R7,PC}    ;; return
// 1047 }
// 1048 
// 1049 /**
// 1050  *  @brief      Push biases to the accel bias registers.
// 1051  *  This function expects biases relative to the current sensor output, and
// 1052  *  these biases will be added to the factory-supplied values.
// 1053  *  @param[in]  accel_bias  New biases.
// 1054  *  @return     0 if successful.
// 1055  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1056 int mpu_set_accel_bias(const long *accel_bias)
// 1057 {
mpu_set_accel_bias:
        PUSH     {R4,LR}
        SUB      SP,SP,#+32
        MOVS     R4,R0
// 1058     unsigned char data[6];
// 1059     short accel_hw[3];
// 1060     short got_accel[3];
// 1061     short fg[3];
// 1062 
// 1063     if (!accel_bias)
        CMP      R4,#+0
        BNE.N    ??mpu_set_accel_bias_0
// 1064         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_bias_1
// 1065     if (!accel_bias[0] && !accel_bias[1] && !accel_bias[2])
??mpu_set_accel_bias_0:
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??mpu_set_accel_bias_2
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BNE.N    ??mpu_set_accel_bias_2
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??mpu_set_accel_bias_2
// 1066         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_accel_bias_1
// 1067 
// 1068     if (i2c_read(st.hw->addr, 3, 3, data))
??mpu_set_accel_bias_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+3
        MOVS     R1,#+3
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_set_accel_bias_3
// 1069         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_bias_1
// 1070     fg[0] = ((data[0] >> 4) + 8) & 0xf;
??mpu_set_accel_bias_3:
        LDRB     R0,[SP, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+8
        ANDS     R0,R0,#0xF
        STRH     R0,[SP, #+16]
// 1071     fg[1] = ((data[1] >> 4) + 8) & 0xf;
        LDRB     R0,[SP, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+8
        ANDS     R0,R0,#0xF
        STRH     R0,[SP, #+18]
// 1072     fg[2] = ((data[2] >> 4) + 8) & 0xf;
        LDRB     R0,[SP, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+8
        ANDS     R0,R0,#0xF
        STRH     R0,[SP, #+20]
// 1073 
// 1074     accel_hw[0] = (short)(accel_bias[0] * 2 / (64 + fg[0]));
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+1
        LDRSH    R1,[SP, #+16]
        ADDS     R1,R1,#+64
        SDIV     R0,R0,R1
        STRH     R0,[SP, #+8]
// 1075     accel_hw[1] = (short)(accel_bias[1] * 2 / (64 + fg[1]));
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+1
        LDRSH    R1,[SP, #+18]
        ADDS     R1,R1,#+64
        SDIV     R0,R0,R1
        STRH     R0,[SP, #+10]
// 1076     accel_hw[2] = (short)(accel_bias[2] * 2 / (64 + fg[2]));
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+1
        LDRSH    R1,[SP, #+20]
        ADDS     R1,R1,#+64
        SDIV     R0,R0,R1
        STRH     R0,[SP, #+12]
// 1077 
// 1078     if (i2c_read(st.hw->addr, 0x06, 6, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+6
        MOVS     R1,#+6
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_set_accel_bias_4
// 1079         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_bias_1
// 1080 
// 1081     got_accel[0] = ((short)data[0] << 8) | data[1];
??mpu_set_accel_bias_4:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+24]
// 1082     got_accel[1] = ((short)data[2] << 8) | data[3];
        LDRB     R0,[SP, #+2]
        LDRB     R1,[SP, #+3]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+26]
// 1083     got_accel[2] = ((short)data[4] << 8) | data[5];
        LDRB     R0,[SP, #+4]
        LDRB     R1,[SP, #+5]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+28]
// 1084 
// 1085     accel_hw[0] += got_accel[0];
        LDRH     R0,[SP, #+8]
        LDRH     R1,[SP, #+24]
        ADDS     R0,R1,R0
        STRH     R0,[SP, #+8]
// 1086     accel_hw[1] += got_accel[1];
        LDRH     R0,[SP, #+10]
        LDRH     R1,[SP, #+26]
        ADDS     R0,R1,R0
        STRH     R0,[SP, #+10]
// 1087     accel_hw[2] += got_accel[2];
        LDRH     R0,[SP, #+12]
        LDRH     R1,[SP, #+28]
        ADDS     R0,R1,R0
        STRH     R0,[SP, #+12]
// 1088 
// 1089     data[0] = (accel_hw[0] >> 8) & 0xff;
        LDRSH    R0,[SP, #+8]
        ASRS     R0,R0,#+8
        STRB     R0,[SP, #+0]
// 1090     data[1] = (accel_hw[0]) & 0xff;
        LDRH     R0,[SP, #+8]
        STRB     R0,[SP, #+1]
// 1091     data[2] = (accel_hw[1] >> 8) & 0xff;
        LDRSH    R0,[SP, #+10]
        ASRS     R0,R0,#+8
        STRB     R0,[SP, #+2]
// 1092     data[3] = (accel_hw[1]) & 0xff;
        LDRH     R0,[SP, #+10]
        STRB     R0,[SP, #+3]
// 1093     data[4] = (accel_hw[2] >> 8) & 0xff;
        LDRSH    R0,[SP, #+12]
        ASRS     R0,R0,#+8
        STRB     R0,[SP, #+4]
// 1094     data[5] = (accel_hw[2]) & 0xff;
        LDRH     R0,[SP, #+12]
        STRB     R0,[SP, #+5]
// 1095 
// 1096     if (i2c_write(st.hw->addr, 0x06, 6, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+6
        MOVS     R1,#+6
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_accel_bias_5
// 1097         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_bias_1
// 1098     return 0;
??mpu_set_accel_bias_5:
        MOVS     R0,#+0
??mpu_set_accel_bias_1:
        ADD      SP,SP,#+32
        POP      {R4,PC}          ;; return
// 1099 }
// 1100 
// 1101 /**
// 1102  *  @brief  Reset FIFO read/write pointers.
// 1103  *  @return 0 if successful.
// 1104  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1105 int mpu_reset_fifo(void)
// 1106 {
mpu_reset_fifo:
        PUSH     {R7,LR}
// 1107     unsigned char data;
// 1108 
// 1109     if (!(st.chip_cfg.sensors))
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_reset_fifo_0
// 1110         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1111 
// 1112     data = 0;
??mpu_reset_fifo_0:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1113     if (i2c_write(st.hw->addr, st.reg->int_enable, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_2
// 1114         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1115     if (i2c_write(st.hw->addr, st.reg->fifo_en, 1, &data))
??mpu_reset_fifo_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_3
// 1116         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1117     if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, &data))
??mpu_reset_fifo_3:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_4
// 1118         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1119 
// 1120     if (st.chip_cfg.dmp_on) {
??mpu_reset_fifo_4:
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_5
// 1121         data = BIT_FIFO_RST | BIT_DMP_RST;
        MOVS     R0,#+12
        STRB     R0,[SP, #+0]
// 1122         if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_6
// 1123             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1124         delay_ms(50);
??mpu_reset_fifo_6:
        MOVS     R0,#+50
        BL       delay_ms
// 1125         data = BIT_DMP_EN | BIT_FIFO_EN;
        MOVS     R0,#+192
        STRB     R0,[SP, #+0]
// 1126         if (st.chip_cfg.sensors & INV_XYZ_COMPASS)
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        LSLS     R0,R0,#+31
        BPL.N    ??mpu_reset_fifo_7
// 1127             data |= BIT_AUX_IF_EN;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x20
        STRB     R0,[SP, #+0]
// 1128         if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, &data))
??mpu_reset_fifo_7:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_8
// 1129             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1130         if (st.chip_cfg.int_enable)
??mpu_reset_fifo_8:
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+17]
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_9
// 1131             data = BIT_DMP_INT_EN;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
        B.N      ??mpu_reset_fifo_10
// 1132         else
// 1133             data = 0;
??mpu_reset_fifo_9:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1134         if (i2c_write(st.hw->addr, st.reg->int_enable, 1, &data))
??mpu_reset_fifo_10:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_11
// 1135             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1136         data = 0;
??mpu_reset_fifo_11:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1137         if (i2c_write(st.hw->addr, st.reg->fifo_en, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_12
// 1138             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1139     } else {
// 1140         data = BIT_FIFO_RST;
??mpu_reset_fifo_5:
        MOVS     R0,#+4
        STRB     R0,[SP, #+0]
// 1141         if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_13
// 1142             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1143         if (st.chip_cfg.bypass_mode || !(st.chip_cfg.sensors & INV_XYZ_COMPASS))
??mpu_reset_fifo_13:
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+18]
        CMP      R0,#+0
        BNE.N    ??mpu_reset_fifo_14
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        LSLS     R0,R0,#+31
        BMI.N    ??mpu_reset_fifo_15
// 1144             data = BIT_FIFO_EN;
??mpu_reset_fifo_14:
        MOVS     R0,#+64
        STRB     R0,[SP, #+0]
        B.N      ??mpu_reset_fifo_16
// 1145         else
// 1146             data = BIT_FIFO_EN | BIT_AUX_IF_EN;
??mpu_reset_fifo_15:
        MOVS     R0,#+96
        STRB     R0,[SP, #+0]
// 1147         if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, &data))
??mpu_reset_fifo_16:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_17
// 1148             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1149         delay_ms(50);
??mpu_reset_fifo_17:
        MOVS     R0,#+50
        BL       delay_ms
// 1150         if (st.chip_cfg.int_enable)
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+17]
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_18
// 1151             data = BIT_DATA_RDY_EN;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??mpu_reset_fifo_19
// 1152         else
// 1153             data = 0;
??mpu_reset_fifo_18:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1154         if (i2c_write(st.hw->addr, st.reg->int_enable, 1, &data))
??mpu_reset_fifo_19:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_20
// 1155             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1156         if (i2c_write(st.hw->addr, st.reg->fifo_en, 1, &st.chip_cfg.fifo_enable))
??mpu_reset_fifo_20:
        LDR.W    R3,??DataTable30
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_reset_fifo_12
// 1157             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_reset_fifo_1
// 1158     }
// 1159     return 0;
??mpu_reset_fifo_12:
        MOVS     R0,#+0
??mpu_reset_fifo_1:
        POP      {R1,PC}          ;; return
// 1160 }
// 1161 
// 1162 /**
// 1163  *  @brief      Get the gyro full-scale range.
// 1164  *  @param[out] fsr Current full-scale range.
// 1165  *  @return     0 if successful.
// 1166  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1167 int mpu_get_gyro_fsr(unsigned short *fsr)
// 1168 {
mpu_get_gyro_fsr:
        MOVS     R1,R0
// 1169     switch (st.chip_cfg.gyro_fsr) {
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_gyro_fsr_0
        CMP      R0,#+2
        BEQ.N    ??mpu_get_gyro_fsr_1
        BCC.N    ??mpu_get_gyro_fsr_2
        CMP      R0,#+3
        BEQ.N    ??mpu_get_gyro_fsr_3
        B.N      ??mpu_get_gyro_fsr_4
// 1170     case INV_FSR_250DPS:
// 1171         fsr[0] = 250;
??mpu_get_gyro_fsr_0:
        MOVS     R0,#+250
        STRH     R0,[R1, #+0]
// 1172         break;
        B.N      ??mpu_get_gyro_fsr_5
// 1173     case INV_FSR_500DPS:
// 1174         fsr[0] = 500;
??mpu_get_gyro_fsr_2:
        MOV      R0,#+500
        STRH     R0,[R1, #+0]
// 1175         break;
        B.N      ??mpu_get_gyro_fsr_5
// 1176     case INV_FSR_1000DPS:
// 1177         fsr[0] = 1000;
??mpu_get_gyro_fsr_1:
        MOV      R0,#+1000
        STRH     R0,[R1, #+0]
// 1178         break;
        B.N      ??mpu_get_gyro_fsr_5
// 1179     case INV_FSR_2000DPS:
// 1180         fsr[0] = 2000;
??mpu_get_gyro_fsr_3:
        MOV      R0,#+2000
        STRH     R0,[R1, #+0]
// 1181         break;
        B.N      ??mpu_get_gyro_fsr_5
// 1182     default:
// 1183         fsr[0] = 0;
??mpu_get_gyro_fsr_4:
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
// 1184         break;
// 1185     }
// 1186     return 0;
??mpu_get_gyro_fsr_5:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1187 }
// 1188 
// 1189 /**
// 1190  *  @brief      Set the gyro full-scale range.
// 1191  *  @param[in]  fsr Desired full-scale range.
// 1192  *  @return     0 if successful.
// 1193  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1194 int mpu_set_gyro_fsr(unsigned short fsr)
// 1195 {
mpu_set_gyro_fsr:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1196     unsigned char data;
// 1197 
// 1198     if (!(st.chip_cfg.sensors))
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_set_gyro_fsr_0
// 1199         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_gyro_fsr_1
// 1200 
// 1201     switch (fsr) {
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
// 1202     case 250:
// 1203         data = INV_FSR_250DPS << 3;
??mpu_set_gyro_fsr_2:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1204         break;
        B.N      ??mpu_set_gyro_fsr_7
// 1205     case 500:
// 1206         data = INV_FSR_500DPS << 3;
??mpu_set_gyro_fsr_3:
        MOVS     R0,#+8
        STRB     R0,[SP, #+0]
// 1207         break;
        B.N      ??mpu_set_gyro_fsr_7
// 1208     case 1000:
// 1209         data = INV_FSR_1000DPS << 3;
??mpu_set_gyro_fsr_4:
        MOVS     R0,#+16
        STRB     R0,[SP, #+0]
// 1210         break;
        B.N      ??mpu_set_gyro_fsr_7
// 1211     case 2000:
// 1212         data = INV_FSR_2000DPS << 3;
??mpu_set_gyro_fsr_5:
        MOVS     R0,#+24
        STRB     R0,[SP, #+0]
// 1213         break;
        B.N      ??mpu_set_gyro_fsr_7
// 1214     default:
// 1215         return -1;
??mpu_set_gyro_fsr_6:
        MOVS     R0,#-1
        B.N      ??mpu_set_gyro_fsr_1
// 1216     }
// 1217 
// 1218     if (st.chip_cfg.gyro_fsr == (data >> 3))
??mpu_set_gyro_fsr_7:
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+8]
        LDRB     R1,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        CMP      R0,R1
        BNE.N    ??mpu_set_gyro_fsr_8
// 1219         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_gyro_fsr_1
// 1220     if (i2c_write(st.hw->addr, st.reg->gyro_cfg, 1, &data))
??mpu_set_gyro_fsr_8:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+6]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_gyro_fsr_9
// 1221         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_gyro_fsr_1
// 1222     st.chip_cfg.gyro_fsr = data >> 3;
??mpu_set_gyro_fsr_9:
        LDR.W    R0,??DataTable24
        LDRB     R1,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        STRB     R1,[R0, #+8]
// 1223     return 0;
        MOVS     R0,#+0
??mpu_set_gyro_fsr_1:
        POP      {R1,R2,R4,PC}    ;; return
// 1224 }
// 1225 
// 1226 /**
// 1227  *  @brief      Get the accel full-scale range.
// 1228  *  @param[out] fsr Current full-scale range.
// 1229  *  @return     0 if successful.
// 1230  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1231 int mpu_get_accel_fsr(unsigned char *fsr)
// 1232 {
mpu_get_accel_fsr:
        MOVS     R1,R0
// 1233     switch (st.chip_cfg.accel_fsr) {
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_accel_fsr_0
        CMP      R0,#+2
        BEQ.N    ??mpu_get_accel_fsr_1
        BCC.N    ??mpu_get_accel_fsr_2
        CMP      R0,#+3
        BEQ.N    ??mpu_get_accel_fsr_3
        B.N      ??mpu_get_accel_fsr_4
// 1234     case INV_FSR_2G:
// 1235         fsr[0] = 2;
??mpu_get_accel_fsr_0:
        MOVS     R0,#+2
        STRB     R0,[R1, #+0]
// 1236         break;
        B.N      ??mpu_get_accel_fsr_5
// 1237     case INV_FSR_4G:
// 1238         fsr[0] = 4;
??mpu_get_accel_fsr_2:
        MOVS     R0,#+4
        STRB     R0,[R1, #+0]
// 1239         break;
        B.N      ??mpu_get_accel_fsr_5
// 1240     case INV_FSR_8G:
// 1241         fsr[0] = 8;
??mpu_get_accel_fsr_1:
        MOVS     R0,#+8
        STRB     R0,[R1, #+0]
// 1242         break;
        B.N      ??mpu_get_accel_fsr_5
// 1243     case INV_FSR_16G:
// 1244         fsr[0] = 16;
??mpu_get_accel_fsr_3:
        MOVS     R0,#+16
        STRB     R0,[R1, #+0]
// 1245         break;
        B.N      ??mpu_get_accel_fsr_5
// 1246     default:
// 1247         return -1;
??mpu_get_accel_fsr_4:
        MOVS     R0,#-1
        B.N      ??mpu_get_accel_fsr_6
// 1248     }
// 1249     if (st.chip_cfg.accel_half)
??mpu_get_accel_fsr_5:
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+19]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_accel_fsr_7
// 1250         fsr[0] <<= 1;
        LDRB     R0,[R1, #+0]
        LSLS     R0,R0,#+1
        STRB     R0,[R1, #+0]
// 1251     return 0;
??mpu_get_accel_fsr_7:
        MOVS     R0,#+0
??mpu_get_accel_fsr_6:
        BX       LR               ;; return
// 1252 }
// 1253 
// 1254 /**
// 1255  *  @brief      Set the accel full-scale range.
// 1256  *  @param[in]  fsr Desired full-scale range.
// 1257  *  @return     0 if successful.
// 1258  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1259 int mpu_set_accel_fsr(unsigned char fsr)
// 1260 {
mpu_set_accel_fsr:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1261     unsigned char data;
// 1262 
// 1263     if (!(st.chip_cfg.sensors))
        LDR.N    R0,??DataTable17
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_set_accel_fsr_0
// 1264         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_fsr_1
// 1265 
// 1266     switch (fsr) {
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
// 1267     case 2:
// 1268         data = INV_FSR_2G << 3;
??mpu_set_accel_fsr_2:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1269         break;
        B.N      ??mpu_set_accel_fsr_7
// 1270     case 4:
// 1271         data = INV_FSR_4G << 3;
??mpu_set_accel_fsr_3:
        MOVS     R0,#+8
        STRB     R0,[SP, #+0]
// 1272         break;
        B.N      ??mpu_set_accel_fsr_7
// 1273     case 8:
// 1274         data = INV_FSR_8G << 3;
??mpu_set_accel_fsr_4:
        MOVS     R0,#+16
        STRB     R0,[SP, #+0]
// 1275         break;
        B.N      ??mpu_set_accel_fsr_7
// 1276     case 16:
// 1277         data = INV_FSR_16G << 3;
??mpu_set_accel_fsr_5:
        MOVS     R0,#+24
        STRB     R0,[SP, #+0]
// 1278         break;
        B.N      ??mpu_set_accel_fsr_7
// 1279     default:
// 1280         return -1;
??mpu_set_accel_fsr_6:
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_fsr_1
// 1281     }
// 1282 
// 1283     if (st.chip_cfg.accel_fsr == (data >> 3))
??mpu_set_accel_fsr_7:
        LDR.N    R0,??DataTable17
        LDRB     R0,[R0, #+9]
        LDRB     R1,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        CMP      R0,R1
        BNE.N    ??mpu_set_accel_fsr_8
// 1284         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_accel_fsr_1
// 1285     if (i2c_write(st.hw->addr, st.reg->accel_cfg, 1, &data))
??mpu_set_accel_fsr_8:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+7]
        LDR.N    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_accel_fsr_9
// 1286         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_accel_fsr_1
// 1287     st.chip_cfg.accel_fsr = data >> 3;
??mpu_set_accel_fsr_9:
        LDR.N    R0,??DataTable17
        LDRB     R1,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+3
        STRB     R1,[R0, #+9]
// 1288     return 0;
        MOVS     R0,#+0
??mpu_set_accel_fsr_1:
        POP      {R1,R2,R4,PC}    ;; return
// 1289 }
// 1290 
// 1291 /**
// 1292  *  @brief      Get the current DLPF setting.
// 1293  *  @param[out] lpf Current LPF setting.
// 1294  *  0 if successful.
// 1295  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1296 int mpu_get_lpf(unsigned short *lpf)
// 1297 {
mpu_get_lpf:
        MOVS     R1,R0
// 1298     switch (st.chip_cfg.lpf) {
        LDR.W    R0,??DataTable24
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
// 1299     case INV_FILTER_188HZ:
// 1300         lpf[0] = 188;
??mpu_get_lpf_0:
        MOVS     R0,#+188
        STRH     R0,[R1, #+0]
// 1301         break;
        B.N      ??mpu_get_lpf_7
// 1302     case INV_FILTER_98HZ:
// 1303         lpf[0] = 98;
??mpu_get_lpf_3:
        MOVS     R0,#+98
        STRH     R0,[R1, #+0]
// 1304         break;
        B.N      ??mpu_get_lpf_7
// 1305     case INV_FILTER_42HZ:
// 1306         lpf[0] = 42;
??mpu_get_lpf_2:
        MOVS     R0,#+42
        STRH     R0,[R1, #+0]
// 1307         break;
        B.N      ??mpu_get_lpf_7
// 1308     case INV_FILTER_20HZ:
// 1309         lpf[0] = 20;
??mpu_get_lpf_5:
        MOVS     R0,#+20
        STRH     R0,[R1, #+0]
// 1310         break;
        B.N      ??mpu_get_lpf_7
// 1311     case INV_FILTER_10HZ:
// 1312         lpf[0] = 10;
??mpu_get_lpf_4:
        MOVS     R0,#+10
        STRH     R0,[R1, #+0]
// 1313         break;
        B.N      ??mpu_get_lpf_7
// 1314     case INV_FILTER_5HZ:
// 1315         lpf[0] = 5;
??mpu_get_lpf_6:
        MOVS     R0,#+5
        STRH     R0,[R1, #+0]
// 1316         break;
        B.N      ??mpu_get_lpf_7
// 1317     case INV_FILTER_256HZ_NOLPF2:
// 1318     case INV_FILTER_2100HZ_NOLPF:
// 1319     default:
// 1320         lpf[0] = 0;
??mpu_get_lpf_1:
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
// 1321         break;
// 1322     }
// 1323     return 0;
??mpu_get_lpf_7:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1324 }
// 1325 
// 1326 /**
// 1327  *  @brief      Set digital low pass filter.
// 1328  *  The following LPF settings are supported: 188, 98, 42, 20, 10, 5.
// 1329  *  @param[in]  lpf Desired LPF setting.
// 1330  *  @return     0 if successful.
// 1331  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1332 int mpu_set_lpf(unsigned short lpf)
// 1333 {
mpu_set_lpf:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1334     unsigned char data;
// 1335 
// 1336     if (!(st.chip_cfg.sensors))
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_set_lpf_0
// 1337         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_lpf_1
// 1338 
// 1339     if (lpf >= 188)
??mpu_set_lpf_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+188
        BCC.N    ??mpu_set_lpf_2
// 1340         data = INV_FILTER_188HZ;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
// 1341     else if (lpf >= 98)
??mpu_set_lpf_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+98
        BCC.N    ??mpu_set_lpf_4
// 1342         data = INV_FILTER_98HZ;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
// 1343     else if (lpf >= 42)
??mpu_set_lpf_4:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+42
        BCC.N    ??mpu_set_lpf_5
// 1344         data = INV_FILTER_42HZ;
        MOVS     R0,#+3
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
// 1345     else if (lpf >= 20)
??mpu_set_lpf_5:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+20
        BCC.N    ??mpu_set_lpf_6
// 1346         data = INV_FILTER_20HZ;
        MOVS     R0,#+4
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
// 1347     else if (lpf >= 10)
??mpu_set_lpf_6:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+10
        BCC.N    ??mpu_set_lpf_7
// 1348         data = INV_FILTER_10HZ;
        MOVS     R0,#+5
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_lpf_3
// 1349     else
// 1350         data = INV_FILTER_5HZ;
??mpu_set_lpf_7:
        MOVS     R0,#+6
        STRB     R0,[SP, #+0]
// 1351 
// 1352     if (st.chip_cfg.lpf == data)
??mpu_set_lpf_3:
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+11]
        LDRB     R1,[SP, #+0]
        CMP      R0,R1
        BNE.N    ??mpu_set_lpf_8
// 1353         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_lpf_1
// 1354     if (i2c_write(st.hw->addr, st.reg->lpf, 1, &data))
??mpu_set_lpf_8:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_lpf_9
// 1355         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_lpf_1
// 1356     st.chip_cfg.lpf = data;
??mpu_set_lpf_9:
        LDR.W    R0,??DataTable24
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+11]
// 1357     return 0;
        MOVS     R0,#+0
??mpu_set_lpf_1:
        POP      {R1,R2,R4,PC}    ;; return
// 1358 }
// 1359 
// 1360 /**
// 1361  *  @brief      Get sampling rate.
// 1362  *  @param[out] rate    Current sampling rate (Hz).
// 1363  *  @return     0 if successful.
// 1364  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1365 int mpu_get_sample_rate(unsigned short *rate)
// 1366 {
mpu_get_sample_rate:
        MOVS     R1,R0
// 1367     if (st.chip_cfg.dmp_on)
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_sample_rate_0
// 1368         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_sample_rate_1
// 1369     else
// 1370         rate[0] = st.chip_cfg.sample_rate;
??mpu_get_sample_rate_0:
        LDR.W    R0,??DataTable24
        LDRH     R0,[R0, #+14]
        STRH     R0,[R1, #+0]
// 1371     return 0;
        MOVS     R0,#+0
??mpu_get_sample_rate_1:
        BX       LR               ;; return
// 1372 }
// 1373 
// 1374 /**
// 1375  *  @brief      Set sampling rate.
// 1376  *  Sampling rate must be between 4Hz and 1kHz.
// 1377  *  @param[in]  rate    Desired sampling rate (Hz).
// 1378  *  @return     0 if successful.
// 1379  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1380 int mpu_set_sample_rate(unsigned short rate)
// 1381 {
mpu_set_sample_rate:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1382     unsigned char data;
// 1383 
// 1384     if (!(st.chip_cfg.sensors))
        LDR.N    R0,??DataTable17
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_set_sample_rate_0
// 1385         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sample_rate_1
// 1386 
// 1387     if (st.chip_cfg.dmp_on)
??mpu_set_sample_rate_0:
        LDR.N    R0,??DataTable17
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sample_rate_2
// 1388         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sample_rate_1
// 1389     else {
// 1390         if (st.chip_cfg.lp_accel_mode) {
??mpu_set_sample_rate_2:
        LDR.N    R0,??DataTable17
        LDRB     R0,[R0, #+20]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sample_rate_3
// 1391             if (rate && (rate <= 40)) {
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??mpu_set_sample_rate_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+41
        BCS.N    ??mpu_set_sample_rate_4
// 1392                 /* Just stay in low-power accel mode. */
// 1393                 mpu_lp_accel_mode(rate);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       mpu_lp_accel_mode
// 1394                 return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_sample_rate_1
// 1395             }
// 1396             /* Requested rate exceeds the allowed frequencies in LP accel mode,
// 1397              * switch back to full-power mode.
// 1398              */
// 1399             mpu_lp_accel_mode(0);
??mpu_set_sample_rate_4:
        MOVS     R0,#+0
        BL       mpu_lp_accel_mode
// 1400         }
// 1401         if (rate < 4)
??mpu_set_sample_rate_3:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+4
        BCS.N    ??mpu_set_sample_rate_5
// 1402             rate = 4;
        MOVS     R0,#+4
        MOVS     R4,R0
        B.N      ??mpu_set_sample_rate_6
// 1403         else if (rate > 1000)
??mpu_set_sample_rate_5:
        MOVW     R0,#+1001
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,R0
        BCC.N    ??mpu_set_sample_rate_6
// 1404             rate = 1000;
        MOV      R0,#+1000
        MOVS     R4,R0
// 1405 
// 1406         data = 1000 / rate - 1;
??mpu_set_sample_rate_6:
        MOV      R0,#+1000
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SDIV     R0,R0,R4
        SUBS     R0,R0,#+1
        STRB     R0,[SP, #+0]
// 1407         if (i2c_write(st.hw->addr, st.reg->rate_div, 1, &data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable17
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sample_rate_7
// 1408             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sample_rate_1
// 1409 
// 1410         st.chip_cfg.sample_rate = 1000 / (1 + data);
??mpu_set_sample_rate_7:
        MOV      R0,#+1000
        LDRB     R1,[SP, #+0]
        ADDS     R1,R1,#+1
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable17
        STRH     R0,[R1, #+14]
// 1411 
// 1412 #ifdef AK89xx_SECONDARY
// 1413         mpu_set_compass_sample_rate(min(st.chip_cfg.compass_sample_rate, MAX_COMPASS_SAMPLE_RATE));
// 1414 #endif
// 1415 
// 1416         /* Automatically set LPF to 1/2 sampling rate. */
// 1417         mpu_set_lpf(st.chip_cfg.sample_rate >> 1);
        LDR.N    R0,??DataTable17
        LDRH     R0,[R0, #+14]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        BL       mpu_set_lpf
// 1418         return 0;
        MOVS     R0,#+0
??mpu_set_sample_rate_1:
        POP      {R1,R2,R4,PC}    ;; return
// 1419     }
// 1420 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     st
// 1421 
// 1422 /**
// 1423  *  @brief      Get compass sampling rate.
// 1424  *  @param[out] rate    Current compass sampling rate (Hz).
// 1425  *  @return     0 if successful.
// 1426  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1427 int mpu_get_compass_sample_rate(unsigned short *rate)
// 1428 {
mpu_get_compass_sample_rate:
        MOVS     R1,R0
// 1429 #ifdef AK89xx_SECONDARY
// 1430     rate[0] = st.chip_cfg.compass_sample_rate;
// 1431     return 0;
// 1432 #else
// 1433     rate[0] = 0;
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
// 1434     return -1;
        MOVS     R0,#-1
        BX       LR               ;; return
// 1435 #endif
// 1436 }
// 1437 
// 1438 /**
// 1439  *  @brief      Set compass sampling rate.
// 1440  *  The compass on the auxiliary I2C bus is read by the MPU hardware at a
// 1441  *  maximum of 100Hz. The actual rate can be set to a fraction of the gyro
// 1442  *  sampling rate.
// 1443  *
// 1444  *  \n WARNING: The new rate may be different than what was requested. Call
// 1445  *  mpu_get_compass_sample_rate to check the actual setting.
// 1446  *  @param[in]  rate    Desired compass sampling rate (Hz).
// 1447  *  @return     0 if successful.
// 1448  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1449 int mpu_set_compass_sample_rate(unsigned short rate)
// 1450 {
mpu_set_compass_sample_rate:
        MOVS     R1,R0
// 1451 #ifdef AK89xx_SECONDARY
// 1452     unsigned char div;
// 1453     if (!rate || rate > st.chip_cfg.sample_rate || rate > MAX_COMPASS_SAMPLE_RATE)
// 1454         return -1;
// 1455 
// 1456     div = st.chip_cfg.sample_rate / rate - 1;
// 1457     if (i2c_write(st.hw->addr, st.reg->s4_ctrl, 1, &div))
// 1458         return -1;
// 1459     st.chip_cfg.compass_sample_rate = st.chip_cfg.sample_rate / (div + 1);
// 1460     return 0;
// 1461 #else
// 1462     return -1;
        MOVS     R0,#-1
        BX       LR               ;; return
// 1463 #endif
// 1464 }
// 1465 
// 1466 /**
// 1467  *  @brief      Get gyro sensitivity scale factor.
// 1468  *  @param[out] sens    Conversion from hardware units to dps.
// 1469  *  @return     0 if successful.
// 1470  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1471 int mpu_get_gyro_sens(float *sens)
// 1472 {
mpu_get_gyro_sens:
        MOVS     R1,R0
// 1473     switch (st.chip_cfg.gyro_fsr) {
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_gyro_sens_0
        CMP      R0,#+2
        BEQ.N    ??mpu_get_gyro_sens_1
        BCC.N    ??mpu_get_gyro_sens_2
        CMP      R0,#+3
        BEQ.N    ??mpu_get_gyro_sens_3
        B.N      ??mpu_get_gyro_sens_4
// 1474     case INV_FSR_250DPS:
// 1475         sens[0] = 131.f;
??mpu_get_gyro_sens_0:
        LDR.W    R0,??DataTable32  ;; 0x43030000
        STR      R0,[R1, #+0]
// 1476         break;
        B.N      ??mpu_get_gyro_sens_5
// 1477     case INV_FSR_500DPS:
// 1478         sens[0] = 65.5f;
??mpu_get_gyro_sens_2:
        LDR.W    R0,??DataTable32_1  ;; 0x42830000
        STR      R0,[R1, #+0]
// 1479         break;
        B.N      ??mpu_get_gyro_sens_5
// 1480     case INV_FSR_1000DPS:
// 1481         sens[0] = 32.8f;
??mpu_get_gyro_sens_1:
        LDR.W    R0,??DataTable32_2  ;; 0x42033333
        STR      R0,[R1, #+0]
// 1482         break;
        B.N      ??mpu_get_gyro_sens_5
// 1483     case INV_FSR_2000DPS:
// 1484         sens[0] = 16.4f;
??mpu_get_gyro_sens_3:
        LDR.W    R0,??DataTable32_3  ;; 0x41833333
        STR      R0,[R1, #+0]
// 1485         break;
        B.N      ??mpu_get_gyro_sens_5
// 1486     default:
// 1487         return -1;
??mpu_get_gyro_sens_4:
        MOVS     R0,#-1
        B.N      ??mpu_get_gyro_sens_6
// 1488     }
// 1489     return 0;
??mpu_get_gyro_sens_5:
        MOVS     R0,#+0
??mpu_get_gyro_sens_6:
        BX       LR               ;; return
// 1490 }
// 1491 
// 1492 /**
// 1493  *  @brief      Get accel sensitivity scale factor.
// 1494  *  @param[out] sens    Conversion from hardware units to g's.
// 1495  *  @return     0 if successful.
// 1496  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1497 int mpu_get_accel_sens(unsigned short *sens)
// 1498 {
mpu_get_accel_sens:
        MOVS     R1,R0
// 1499     switch (st.chip_cfg.accel_fsr) {
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_accel_sens_0
        CMP      R0,#+2
        BEQ.N    ??mpu_get_accel_sens_1
        BCC.N    ??mpu_get_accel_sens_2
        CMP      R0,#+3
        BEQ.N    ??mpu_get_accel_sens_3
        B.N      ??mpu_get_accel_sens_4
// 1500     case INV_FSR_2G:
// 1501         sens[0] = 16384;
??mpu_get_accel_sens_0:
        MOV      R0,#+16384
        STRH     R0,[R1, #+0]
// 1502         break;
        B.N      ??mpu_get_accel_sens_5
// 1503     case INV_FSR_4G:
// 1504         sens[0] = 8092;
??mpu_get_accel_sens_2:
        MOVW     R0,#+8092
        STRH     R0,[R1, #+0]
// 1505         break;
        B.N      ??mpu_get_accel_sens_5
// 1506     case INV_FSR_8G:
// 1507         sens[0] = 4096;
??mpu_get_accel_sens_1:
        MOV      R0,#+4096
        STRH     R0,[R1, #+0]
// 1508         break;
        B.N      ??mpu_get_accel_sens_5
// 1509     case INV_FSR_16G:
// 1510         sens[0] = 2048;
??mpu_get_accel_sens_3:
        MOV      R0,#+2048
        STRH     R0,[R1, #+0]
// 1511         break;
        B.N      ??mpu_get_accel_sens_5
// 1512     default:
// 1513         return -1;
??mpu_get_accel_sens_4:
        MOVS     R0,#-1
        B.N      ??mpu_get_accel_sens_6
// 1514     }
// 1515     if (st.chip_cfg.accel_half)
??mpu_get_accel_sens_5:
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+19]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_accel_sens_7
// 1516         sens[0] >>= 1;
        LDRH     R0,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        STRH     R0,[R1, #+0]
// 1517     return 0;
??mpu_get_accel_sens_7:
        MOVS     R0,#+0
??mpu_get_accel_sens_6:
        BX       LR               ;; return
// 1518 }
// 1519 
// 1520 /**
// 1521  *  @brief      Get current FIFO configuration.
// 1522  *  @e sensors can contain a combination of the following flags:
// 1523  *  \n INV_X_GYRO, INV_Y_GYRO, INV_Z_GYRO
// 1524  *  \n INV_XYZ_GYRO
// 1525  *  \n INV_XYZ_ACCEL
// 1526  *  @param[out] sensors Mask of sensors in FIFO.
// 1527  *  @return     0 if successful.
// 1528  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1529 int mpu_get_fifo_config(unsigned char *sensors)
// 1530 {
mpu_get_fifo_config:
        MOVS     R1,R0
// 1531     sensors[0] = st.chip_cfg.fifo_enable;
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+16]
        STRB     R0,[R1, #+0]
// 1532     return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
// 1533 }
// 1534 
// 1535 /**
// 1536  *  @brief      Select which sensors are pushed to FIFO.
// 1537  *  @e sensors can contain a combination of the following flags:
// 1538  *  \n INV_X_GYRO, INV_Y_GYRO, INV_Z_GYRO
// 1539  *  \n INV_XYZ_GYRO
// 1540  *  \n INV_XYZ_ACCEL
// 1541  *  @param[in]  sensors Mask of sensors to push to FIFO.
// 1542  *  @return     0 if successful.
// 1543  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1544 int mpu_configure_fifo(unsigned char sensors)
// 1545 {
mpu_configure_fifo:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
// 1546     unsigned char prev;
// 1547     int result = 0;
        MOVS     R5,#+0
// 1548 
// 1549     /* Compass data isn't going into the FIFO. Stop trying. */
// 1550     sensors &= ~INV_XYZ_COMPASS;
        ANDS     R6,R6,#0xFE
// 1551 
// 1552     if (st.chip_cfg.dmp_on)
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_configure_fifo_0
// 1553         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_configure_fifo_1
// 1554     else {
// 1555         if (!(st.chip_cfg.sensors))
??mpu_configure_fifo_0:
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_configure_fifo_2
// 1556             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_configure_fifo_1
// 1557         prev = st.chip_cfg.fifo_enable;
??mpu_configure_fifo_2:
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+16]
        MOVS     R4,R0
// 1558         st.chip_cfg.fifo_enable = sensors & st.chip_cfg.sensors;
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        ANDS     R0,R0,R6
        LDR.N    R1,??DataTable24
        STRB     R0,[R1, #+16]
// 1559         if (st.chip_cfg.fifo_enable != sensors)
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+16]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R0,R6
        BEQ.N    ??mpu_configure_fifo_3
// 1560             /* You're not getting what you asked for. Some sensors are
// 1561              * asleep.
// 1562              */
// 1563             result = -1;
        MOVS     R0,#-1
        MOVS     R5,R0
        B.N      ??mpu_configure_fifo_4
// 1564         else
// 1565             result = 0;
??mpu_configure_fifo_3:
        MOVS     R0,#+0
        MOVS     R5,R0
// 1566         if (sensors || st.chip_cfg.lp_accel_mode)
??mpu_configure_fifo_4:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??mpu_configure_fifo_5
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+20]
        CMP      R0,#+0
        BEQ.N    ??mpu_configure_fifo_6
// 1567             set_int_enable(1);
??mpu_configure_fifo_5:
        MOVS     R0,#+1
        BL       set_int_enable
        B.N      ??mpu_configure_fifo_7
// 1568         else
// 1569             set_int_enable(0);
??mpu_configure_fifo_6:
        MOVS     R0,#+0
        BL       set_int_enable
// 1570         if (sensors) {
??mpu_configure_fifo_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??mpu_configure_fifo_8
// 1571             if (mpu_reset_fifo()) {
        BL       mpu_reset_fifo
        CMP      R0,#+0
        BEQ.N    ??mpu_configure_fifo_8
// 1572                 st.chip_cfg.fifo_enable = prev;
        LDR.N    R0,??DataTable24
        STRB     R4,[R0, #+16]
// 1573                 return -1;
        MOVS     R0,#-1
        B.N      ??mpu_configure_fifo_1
// 1574             }
// 1575         }
// 1576     }
// 1577 
// 1578     return result;
??mpu_configure_fifo_8:
        MOVS     R0,R5
??mpu_configure_fifo_1:
        POP      {R4-R6,PC}       ;; return
// 1579 }
// 1580 
// 1581 /**
// 1582  *  @brief      Get current power state.
// 1583  *  @param[in]  power_on    1 if turned on, 0 if suspended.
// 1584  *  @return     0 if successful.
// 1585  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1586 int mpu_get_power_state(unsigned char *power_on)
// 1587 {
mpu_get_power_state:
        MOVS     R1,R0
// 1588     if (st.chip_cfg.sensors)
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BEQ.N    ??mpu_get_power_state_0
// 1589         power_on[0] = 1;
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
        B.N      ??mpu_get_power_state_1
// 1590     else
// 1591         power_on[0] = 0;
??mpu_get_power_state_0:
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
// 1592     return 0;
??mpu_get_power_state_1:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1593 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     `?<Constant "Unsupported software ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     `?<Constant "Product ID read as 0 ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     `?<Constant "Half sensitivity part...">`
// 1594 
// 1595 /**
// 1596  *  @brief      Turn specific sensors on/off.
// 1597  *  @e sensors can contain a combination of the following flags:
// 1598  *  \n INV_X_GYRO, INV_Y_GYRO, INV_Z_GYRO
// 1599  *  \n INV_XYZ_GYRO
// 1600  *  \n INV_XYZ_ACCEL
// 1601  *  \n INV_XYZ_COMPASS
// 1602  *  @param[in]  sensors    Mask of sensors to wake.
// 1603  *  @return     0 if successful.
// 1604  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1605 int mpu_set_sensors(unsigned char sensors)
// 1606 {
mpu_set_sensors:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1607     unsigned char data;
// 1608 #ifdef AK89xx_SECONDARY
// 1609     unsigned char user_ctrl;
// 1610 #endif
// 1611 
// 1612     if (sensors & INV_XYZ_GYRO)
        MOVS     R0,#+112
        TST      R4,R0
        BEQ.N    ??mpu_set_sensors_0
// 1613         data = INV_CLK_PLL;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_sensors_1
// 1614     else if (sensors)
??mpu_set_sensors_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_sensors_2
// 1615         data = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_sensors_1
// 1616     else
// 1617         data = BIT_SLEEP;
??mpu_set_sensors_2:
        MOVS     R0,#+64
        STRB     R0,[SP, #+0]
// 1618     if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 1, &data)) {
??mpu_set_sensors_1:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.N    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sensors_3
// 1619         st.chip_cfg.sensors = 0;
        LDR.N    R0,??DataTable24
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
// 1620         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sensors_4
// 1621     }
// 1622     st.chip_cfg.clk_src = data & ~BIT_SLEEP;
??mpu_set_sensors_3:
        LDR.N    R0,??DataTable24
        LDRB     R1,[SP, #+0]
        ANDS     R1,R1,#0xBF
        STRB     R1,[R0, #+12]
// 1623 
// 1624     data = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1625     if (!(sensors & INV_X_GYRO))
        LSLS     R0,R4,#+25
        BMI.N    ??mpu_set_sensors_5
// 1626         data |= BIT_STBY_XG;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x4
        STRB     R0,[SP, #+0]
// 1627     if (!(sensors & INV_Y_GYRO))
??mpu_set_sensors_5:
        LSLS     R0,R4,#+26
        BMI.N    ??mpu_set_sensors_6
// 1628         data |= BIT_STBY_YG;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x2
        STRB     R0,[SP, #+0]
// 1629     if (!(sensors & INV_Z_GYRO))
??mpu_set_sensors_6:
        LSLS     R0,R4,#+27
        BMI.N    ??mpu_set_sensors_7
// 1630         data |= BIT_STBY_ZG;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x1
        STRB     R0,[SP, #+0]
// 1631     if (!(sensors & INV_XYZ_ACCEL))
??mpu_set_sensors_7:
        LSLS     R0,R4,#+28
        BMI.N    ??mpu_set_sensors_8
// 1632         data |= BIT_STBY_XYZA;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x38
        STRB     R0,[SP, #+0]
// 1633     if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_2, 1, &data)) {
??mpu_set_sensors_8:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+19]
        LDR.N    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_sensors_9
// 1634         st.chip_cfg.sensors = 0;
        LDR.N    R0,??DataTable24
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
// 1635         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_sensors_4
// 1636     }
// 1637 
// 1638     if (sensors && (sensors != INV_XYZ_ACCEL))
??mpu_set_sensors_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_sensors_10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BEQ.N    ??mpu_set_sensors_10
// 1639         /* Latched interrupts only used in LP accel mode. */
// 1640         mpu_set_int_latched(0);
        MOVS     R0,#+0
        BL       mpu_set_int_latched
// 1641 
// 1642 #ifdef AK89xx_SECONDARY
// 1643 #ifdef AK89xx_BYPASS
// 1644     if (sensors & INV_XYZ_COMPASS)
// 1645         mpu_set_bypass(1);
// 1646     else
// 1647         mpu_set_bypass(0);
// 1648 #else
// 1649     if (i2c_read(st.hw->addr, st.reg->user_ctrl, 1, &user_ctrl))
// 1650         return -1;
// 1651     /* Handle AKM power management. */
// 1652     if (sensors & INV_XYZ_COMPASS) {
// 1653         data = AKM_SINGLE_MEASUREMENT;
// 1654         user_ctrl |= BIT_AUX_IF_EN;
// 1655     } else {
// 1656         data = AKM_POWER_DOWN;
// 1657         user_ctrl &= ~BIT_AUX_IF_EN;
// 1658     }
// 1659     if (st.chip_cfg.dmp_on)
// 1660         user_ctrl |= BIT_DMP_EN;
// 1661     else
// 1662         user_ctrl &= ~BIT_DMP_EN;
// 1663     if (i2c_write(st.hw->addr, st.reg->s1_do, 1, &data))
// 1664         return -1;
// 1665     /* Enable/disable I2C master mode. */
// 1666     if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, &user_ctrl))
// 1667         return -1;
// 1668 #endif
// 1669 #endif
// 1670 
// 1671     st.chip_cfg.sensors = sensors;
??mpu_set_sensors_10:
        LDR.N    R0,??DataTable24
        STRB     R4,[R0, #+10]
// 1672     st.chip_cfg.lp_accel_mode = 0;
        LDR.N    R0,??DataTable24
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
// 1673     delay_ms(50);
        MOVS     R0,#+50
        BL       delay_ms
// 1674     return 0;
        MOVS     R0,#+0
??mpu_set_sensors_4:
        POP      {R1,R2,R4,PC}    ;; return
// 1675 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     st+0x16
// 1676 
// 1677 /**
// 1678  *  @brief      Read the MPU interrupt status registers.
// 1679  *  @param[out] status  Mask of interrupt bits.
// 1680  *  @return     0 if successful.
// 1681  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1682 int mpu_get_int_status(short *status)
// 1683 {
mpu_get_int_status:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1684     unsigned char tmp[2];
// 1685     if (!st.chip_cfg.sensors)
        LDR.N    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_get_int_status_0
// 1686         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_int_status_1
// 1687     if (i2c_read(st.hw->addr, st.reg->dmp_int_status, 2, tmp))
??mpu_get_int_status_0:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.N    R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+16]
        LDR.N    R0,??DataTable24
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_get_int_status_2
// 1688         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_get_int_status_1
// 1689     status[0] = (tmp[0] << 8) | tmp[1];
??mpu_get_int_status_2:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+0]
// 1690     return 0;
        MOVS     R0,#+0
??mpu_get_int_status_1:
        POP      {R1,R2,R4,PC}    ;; return
// 1691 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     st
// 1692 
// 1693 /**
// 1694  *  @brief      Get one packet from the FIFO.
// 1695  *  If @e sensors does not contain a particular sensor, disregard the data
// 1696  *  returned to that pointer.
// 1697  *  \n @e sensors can contain a combination of the following flags:
// 1698  *  \n INV_X_GYRO, INV_Y_GYRO, INV_Z_GYRO
// 1699  *  \n INV_XYZ_GYRO
// 1700  *  \n INV_XYZ_ACCEL
// 1701  *  \n If the FIFO has no new data, @e sensors will be zero.
// 1702  *  \n If the FIFO is disabled, @e sensors will be zero and this function will
// 1703  *  return a non-zero error code.
// 1704  *  @param[out] gyro        Gyro data in hardware units.
// 1705  *  @param[out] accel       Accel data in hardware units.
// 1706  *  @param[out] timestamp   Timestamp in milliseconds.
// 1707  *  @param[out] sensors     Mask of sensors read from FIFO.
// 1708  *  @param[out] more        Number of remaining packets.
// 1709  *  @return     0 if successful.
// 1710  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1711 int mpu_read_fifo(short *gyro, short *accel, unsigned long *timestamp,
// 1712         unsigned char *sensors, unsigned char *more)
// 1713 {
mpu_read_fifo:
        PUSH     {R1-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+48]
// 1714     /* Assumes maximum packet size is gyro (6) + accel (6). */
// 1715     unsigned char data[MAX_PACKET_LENGTH];
// 1716     unsigned char packet_size = 0;
        MOVS     R11,#+0
// 1717     unsigned short fifo_count, index = 0;
        MOVS     R10,#+0
// 1718 
// 1719     if (st.chip_cfg.dmp_on)
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_0
// 1720         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_1
// 1721 
// 1722     sensors[0] = 0;
??mpu_read_fifo_0:
        MOVS     R0,#+0
        STRB     R0,[R7, #+0]
// 1723     if (!st.chip_cfg.sensors)
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_read_fifo_2
// 1724         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_1
// 1725     if (!st.chip_cfg.fifo_enable)
??mpu_read_fifo_2:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+16]
        CMP      R0,#+0
        BNE.N    ??mpu_read_fifo_3
// 1726         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_1
// 1727 
// 1728     if (st.chip_cfg.fifo_enable & INV_X_GYRO)
??mpu_read_fifo_3:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+16]
        LSLS     R0,R0,#+25
        BPL.N    ??mpu_read_fifo_4
// 1729         packet_size += 2;
        ADDS     R11,R11,#+2
// 1730     if (st.chip_cfg.fifo_enable & INV_Y_GYRO)
??mpu_read_fifo_4:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+16]
        LSLS     R0,R0,#+26
        BPL.N    ??mpu_read_fifo_5
// 1731         packet_size += 2;
        ADDS     R11,R11,#+2
// 1732     if (st.chip_cfg.fifo_enable & INV_Z_GYRO)
??mpu_read_fifo_5:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+16]
        LSLS     R0,R0,#+27
        BPL.N    ??mpu_read_fifo_6
// 1733         packet_size += 2;
        ADDS     R11,R11,#+2
// 1734     if (st.chip_cfg.fifo_enable & INV_XYZ_ACCEL)
??mpu_read_fifo_6:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+16]
        LSLS     R0,R0,#+28
        BPL.N    ??mpu_read_fifo_7
// 1735         packet_size += 6;
        ADDS     R11,R11,#+6
// 1736 
// 1737     if (i2c_read(st.hw->addr, st.reg->fifo_count_h, 2, data))
??mpu_read_fifo_7:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+10]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_8
// 1738         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_1
// 1739     fifo_count = (data[0] << 8) | data[1];
??mpu_read_fifo_8:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        MOV      R9,R0
// 1740     if (fifo_count < packet_size)
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R9,R0
        BCS.N    ??mpu_read_fifo_9
// 1741         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_read_fifo_1
// 1742 //    log_i("FIFO count: %hd\n", fifo_count);
// 1743     if (fifo_count > (st.hw->max_fifo >> 1)) {
??mpu_read_fifo_9:
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRH     R0,[R0, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R0,R9
        BCS.N    ??mpu_read_fifo_10
// 1744         /* FIFO is 50% full, better check overflow bit. */
// 1745         if (i2c_read(st.hw->addr, st.reg->int_status, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+17]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_11
// 1746             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_1
// 1747         if (data[0] & BIT_FIFO_OVERFLOW) {
??mpu_read_fifo_11:
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??mpu_read_fifo_10
// 1748             mpu_reset_fifo();
        BL       mpu_reset_fifo
// 1749             return -2;
        MVNS     R0,#+1
        B.N      ??mpu_read_fifo_1
// 1750         }
// 1751     }
// 1752     get_ms((unsigned long*)timestamp);
??mpu_read_fifo_10:
        MOVS     R0,R6
        BL       get_ms
// 1753 
// 1754     if (i2c_read(st.hw->addr, st.reg->fifo_r_w, packet_size, data))
        ADD      R3,SP,#+0
        MOV      R2,R11
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+11]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_12
// 1755         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_1
// 1756     more[0] = fifo_count / packet_size - 1;
??mpu_read_fifo_12:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        SDIV     R0,R9,R11
        SUBS     R0,R0,#+1
        STRB     R0,[R8, #+0]
// 1757     sensors[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[R7, #+0]
// 1758 
// 1759     if ((index != packet_size) && st.chip_cfg.fifo_enable & INV_XYZ_ACCEL) {
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R10,R0
        BEQ.N    ??mpu_read_fifo_13
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+16]
        LSLS     R0,R0,#+28
        BPL.N    ??mpu_read_fifo_13
// 1760         accel[0] = (data[index+0] << 8) | data[index+1];
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R0,SP,#+0
        LDRB     R0,[R10, R0]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R1,SP,#+0
        ADDS     R1,R10,R1
        LDRB     R1,[R1, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R5, #+0]
// 1761         accel[1] = (data[index+2] << 8) | data[index+3];
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R0,SP,#+0
        ADDS     R0,R10,R0
        LDRB     R0,[R0, #+2]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R1,SP,#+0
        ADDS     R1,R10,R1
        LDRB     R1,[R1, #+3]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R5, #+2]
// 1762         accel[2] = (data[index+4] << 8) | data[index+5];
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R0,SP,#+0
        ADDS     R0,R10,R0
        LDRB     R0,[R0, #+4]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R1,SP,#+0
        ADDS     R1,R10,R1
        LDRB     R1,[R1, #+5]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R5, #+4]
// 1763         sensors[0] |= INV_XYZ_ACCEL;
        LDRB     R0,[R7, #+0]
        ORRS     R0,R0,#0x8
        STRB     R0,[R7, #+0]
// 1764         index += 6;
        ADDS     R10,R10,#+6
// 1765     }
// 1766     if ((index != packet_size) && st.chip_cfg.fifo_enable & INV_X_GYRO) {
??mpu_read_fifo_13:
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R10,R0
        BEQ.N    ??mpu_read_fifo_14
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+16]
        LSLS     R0,R0,#+25
        BPL.N    ??mpu_read_fifo_14
// 1767         gyro[0] = (data[index+0] << 8) | data[index+1];
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R0,SP,#+0
        LDRB     R0,[R10, R0]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R1,SP,#+0
        ADDS     R1,R10,R1
        LDRB     R1,[R1, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+0]
// 1768         sensors[0] |= INV_X_GYRO;
        LDRB     R0,[R7, #+0]
        ORRS     R0,R0,#0x40
        STRB     R0,[R7, #+0]
// 1769         index += 2;
        ADDS     R10,R10,#+2
// 1770     }
// 1771     if ((index != packet_size) && st.chip_cfg.fifo_enable & INV_Y_GYRO) {
??mpu_read_fifo_14:
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R10,R0
        BEQ.N    ??mpu_read_fifo_15
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+16]
        LSLS     R0,R0,#+26
        BPL.N    ??mpu_read_fifo_15
// 1772         gyro[1] = (data[index+0] << 8) | data[index+1];
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R0,SP,#+0
        LDRB     R0,[R10, R0]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R1,SP,#+0
        ADDS     R1,R10,R1
        LDRB     R1,[R1, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+2]
// 1773         sensors[0] |= INV_Y_GYRO;
        LDRB     R0,[R7, #+0]
        ORRS     R0,R0,#0x20
        STRB     R0,[R7, #+0]
// 1774         index += 2;
        ADDS     R10,R10,#+2
// 1775     }
// 1776     if ((index != packet_size) && st.chip_cfg.fifo_enable & INV_Z_GYRO) {
??mpu_read_fifo_15:
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R10,R0
        BEQ.N    ??mpu_read_fifo_16
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+16]
        LSLS     R0,R0,#+27
        BPL.N    ??mpu_read_fifo_16
// 1777         gyro[2] = (data[index+0] << 8) | data[index+1];
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R0,SP,#+0
        LDRB     R0,[R10, R0]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADD      R1,SP,#+0
        ADDS     R1,R10,R1
        LDRB     R1,[R1, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+4]
// 1778         sensors[0] |= INV_Z_GYRO;
        LDRB     R0,[R7, #+0]
        ORRS     R0,R0,#0x10
        STRB     R0,[R7, #+0]
// 1779         index += 2;
        ADDS     R10,R10,#+2
// 1780     }
// 1781 
// 1782     return 0;
??mpu_read_fifo_16:
        MOVS     R0,#+0
??mpu_read_fifo_1:
        POP      {R1-R11,PC}      ;; return
// 1783 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     0x420c0000
// 1784 
// 1785 /**
// 1786  *  @brief      Get one unparsed packet from the FIFO.
// 1787  *  This function should be used if the packet is to be parsed elsewhere.
// 1788  *  @param[in]  length  Length of one FIFO packet.
// 1789  *  @param[in]  data    FIFO packet.
// 1790  *  @param[in]  more    Number of remaining packets.
// 1791  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1792 int mpu_read_fifo_stream(unsigned short length, unsigned char *data,
// 1793     unsigned char *more)
// 1794 {
mpu_read_fifo_stream:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1795     unsigned char tmp[2];
// 1796     unsigned short fifo_count;
// 1797     if (!st.chip_cfg.dmp_on)
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BNE.N    ??mpu_read_fifo_stream_0
// 1798         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
// 1799     if (!st.chip_cfg.sensors)
??mpu_read_fifo_stream_0:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_read_fifo_stream_2
// 1800         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
// 1801 
// 1802     if (i2c_read(st.hw->addr, st.reg->fifo_count_h, 2, tmp))
??mpu_read_fifo_stream_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+10]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_stream_3
// 1803         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
// 1804     fifo_count = (tmp[0] << 8) | tmp[1];
??mpu_read_fifo_stream_3:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        MOVS     R7,R0
// 1805     if (fifo_count < length) {
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R7,R4
        BCS.N    ??mpu_read_fifo_stream_4
// 1806         more[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
// 1807         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
// 1808     }
// 1809     if (fifo_count > (st.hw->max_fifo >> 1)) {
??mpu_read_fifo_stream_4:
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRH     R0,[R0, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R0,R7
        BCS.N    ??mpu_read_fifo_stream_5
// 1810         /* FIFO is 50% full, better check overflow bit. */
// 1811         if (i2c_read(st.hw->addr, st.reg->int_status, 1, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+17]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_stream_6
// 1812             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
// 1813         if (tmp[0] & BIT_FIFO_OVERFLOW) {
??mpu_read_fifo_stream_6:
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??mpu_read_fifo_stream_5
// 1814             mpu_reset_fifo();
        BL       mpu_reset_fifo
// 1815             return -2;
        MVNS     R0,#+1
        B.N      ??mpu_read_fifo_stream_1
// 1816         }
// 1817     }
// 1818 
// 1819     if (i2c_read(st.hw->addr, st.reg->fifo_r_w, length, data))
??mpu_read_fifo_stream_5:
        MOVS     R3,R5
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+11]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_read_fifo_stream_7
// 1820         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_fifo_stream_1
// 1821     more[0] = fifo_count / length - 1;
??mpu_read_fifo_stream_7:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SDIV     R0,R7,R4
        SUBS     R0,R0,#+1
        STRB     R0,[R6, #+0]
// 1822     return 0;
        MOVS     R0,#+0
??mpu_read_fifo_stream_1:
        POP      {R1,R4-R7,PC}    ;; return
// 1823 }
// 1824 
// 1825 /**
// 1826  *  @brief      Set device to bypass mode.
// 1827  *  @param[in]  bypass_on   1 to enable bypass mode.
// 1828  *  @return     0 if successful.
// 1829  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1830 int mpu_set_bypass(unsigned char bypass_on)
// 1831 {
mpu_set_bypass:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1832     unsigned char tmp;
// 1833 
// 1834     if (st.chip_cfg.bypass_mode == bypass_on)
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+18]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??mpu_set_bypass_0
// 1835         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_bypass_1
// 1836 
// 1837     if (bypass_on) {
??mpu_set_bypass_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_bypass_2
// 1838         if (i2c_read(st.hw->addr, st.reg->user_ctrl, 1, &tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_3
// 1839             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
// 1840         tmp &= ~BIT_AUX_IF_EN;
??mpu_set_bypass_3:
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0xDF
        STRB     R0,[SP, #+0]
// 1841         if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, &tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_4
// 1842             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
// 1843         delay_ms(3);
??mpu_set_bypass_4:
        MOVS     R0,#+3
        BL       delay_ms
// 1844         tmp = BIT_BYPASS_EN;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
// 1845         if (st.chip_cfg.active_low_int)
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+34]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_5
// 1846             tmp |= BIT_ACTL;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x80
        STRB     R0,[SP, #+0]
// 1847         if (st.chip_cfg.latched_int)
??mpu_set_bypass_5:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+35]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_6
// 1848             tmp |= BIT_LATCH_EN | BIT_ANY_RD_CLR;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x30
        STRB     R0,[SP, #+0]
// 1849         if (i2c_write(st.hw->addr, st.reg->int_pin_cfg, 1, &tmp))
??mpu_set_bypass_6:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_7
// 1850             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
// 1851     } else {
// 1852         /* Enable I2C master mode if compass is being used. */
// 1853         if (i2c_read(st.hw->addr, st.reg->user_ctrl, 1, &tmp))
??mpu_set_bypass_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_8
// 1854             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
// 1855         if (st.chip_cfg.sensors & INV_XYZ_COMPASS)
??mpu_set_bypass_8:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+10]
        LSLS     R0,R0,#+31
        BPL.N    ??mpu_set_bypass_9
// 1856             tmp |= BIT_AUX_IF_EN;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x20
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_bypass_10
// 1857         else
// 1858             tmp &= ~BIT_AUX_IF_EN;
??mpu_set_bypass_9:
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0xDF
        STRB     R0,[SP, #+0]
// 1859         if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, &tmp))
??mpu_set_bypass_10:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_11
// 1860             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
// 1861         delay_ms(3);
??mpu_set_bypass_11:
        MOVS     R0,#+3
        BL       delay_ms
// 1862         if (st.chip_cfg.active_low_int)
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+34]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_12
// 1863             tmp = BIT_ACTL;
        MOVS     R0,#+128
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_bypass_13
// 1864         else
// 1865             tmp = 0;
??mpu_set_bypass_12:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1866         if (st.chip_cfg.latched_int)
??mpu_set_bypass_13:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+35]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_14
// 1867             tmp |= BIT_LATCH_EN | BIT_ANY_RD_CLR;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x30
        STRB     R0,[SP, #+0]
// 1868         if (i2c_write(st.hw->addr, st.reg->int_pin_cfg, 1, &tmp))
??mpu_set_bypass_14:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_bypass_7
// 1869             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_bypass_1
// 1870     }
// 1871     st.chip_cfg.bypass_mode = bypass_on;
??mpu_set_bypass_7:
        LDR.W    R0,??DataTable34
        STRB     R4,[R0, #+18]
// 1872     return 0;
        MOVS     R0,#+0
??mpu_set_bypass_1:
        POP      {R1,R2,R4,PC}    ;; return
// 1873 }
// 1874 
// 1875 /**
// 1876  *  @brief      Set interrupt level.
// 1877  *  @param[in]  active_low  1 for active low, 0 for active high.
// 1878  *  @return     0 if successful.
// 1879  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1880 int mpu_set_int_level(unsigned char active_low)
// 1881 {
mpu_set_int_level:
        MOVS     R1,R0
// 1882     st.chip_cfg.active_low_int = active_low;
        LDR.W    R0,??DataTable34
        STRB     R1,[R0, #+34]
// 1883     return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
// 1884 }
// 1885 
// 1886 /**
// 1887  *  @brief      Enable latched interrupts.
// 1888  *  Any MPU register will clear the interrupt.
// 1889  *  @param[in]  enable  1 to enable, 0 to disable.
// 1890  *  @return     0 if successful.
// 1891  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1892 int mpu_set_int_latched(unsigned char enable)
// 1893 {
mpu_set_int_latched:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1894     unsigned char tmp;
// 1895     if (st.chip_cfg.latched_int == enable)
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+35]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??mpu_set_int_latched_0
// 1896         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_int_latched_1
// 1897 
// 1898     if (enable)
??mpu_set_int_latched_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_int_latched_2
// 1899         tmp = BIT_LATCH_EN | BIT_ANY_RD_CLR;
        MOVS     R0,#+48
        STRB     R0,[SP, #+0]
        B.N      ??mpu_set_int_latched_3
// 1900     else
// 1901         tmp = 0;
??mpu_set_int_latched_2:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 1902     if (st.chip_cfg.bypass_mode)
??mpu_set_int_latched_3:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+18]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_int_latched_4
// 1903         tmp |= BIT_BYPASS_EN;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x2
        STRB     R0,[SP, #+0]
// 1904     if (st.chip_cfg.active_low_int)
??mpu_set_int_latched_4:
        LDR.W    R0,??DataTable34
        LDRB     R0,[R0, #+34]
        CMP      R0,#+0
        BEQ.N    ??mpu_set_int_latched_5
// 1905         tmp |= BIT_ACTL;
        LDRB     R0,[SP, #+0]
        ORRS     R0,R0,#0x80
        STRB     R0,[SP, #+0]
// 1906     if (i2c_write(st.hw->addr, st.reg->int_pin_cfg, 1, &tmp))
??mpu_set_int_latched_5:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_set_int_latched_6
// 1907         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_int_latched_1
// 1908     st.chip_cfg.latched_int = enable;
??mpu_set_int_latched_6:
        LDR.W    R0,??DataTable34
        STRB     R4,[R0, #+35]
// 1909     return 0;
        MOVS     R0,#+0
??mpu_set_int_latched_1:
        POP      {R1,R2,R4,PC}    ;; return
// 1910 }
// 1911 
// 1912 #ifdef MPU6050

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1913 static int get_accel_prod_shift(float *st_shift)
// 1914 {
get_accel_prod_shift:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
// 1915     unsigned char tmp[4], shift_code[3], ii;
// 1916 
// 1917     if (i2c_read(st.hw->addr, 0x0D, 4, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+4
        MOVS     R1,#+13
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??get_accel_prod_shift_0
// 1918         return 0x07;
        MOVS     R0,#+7
        B.N      ??get_accel_prod_shift_1
// 1919 
// 1920     shift_code[0] = ((tmp[0] & 0xE0) >> 3) | ((tmp[3] & 0x30) >> 4);
??get_accel_prod_shift_0:
        LDRB     R0,[SP, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        ANDS     R0,R0,#0x1C
        LDRB     R1,[SP, #+3]
        UBFX     R1,R1,#+4,#+2
        ORRS     R0,R1,R0
        STRB     R0,[SP, #+4]
// 1921     shift_code[1] = ((tmp[1] & 0xE0) >> 3) | ((tmp[3] & 0x0C) >> 2);
        LDRB     R0,[SP, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        ANDS     R0,R0,#0x1C
        LDRB     R1,[SP, #+3]
        UBFX     R1,R1,#+2,#+2
        ORRS     R0,R1,R0
        STRB     R0,[SP, #+5]
// 1922     shift_code[2] = ((tmp[2] & 0xE0) >> 3) | (tmp[3] & 0x03);
        LDRB     R0,[SP, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        ANDS     R0,R0,#0x1C
        LDRB     R1,[SP, #+3]
        ANDS     R1,R1,#0x3
        ORRS     R0,R1,R0
        STRB     R0,[SP, #+6]
// 1923     for (ii = 0; ii < 3; ii++) {
        MOVS     R0,#+0
        MOVS     R5,R0
??get_accel_prod_shift_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BCS.N    ??get_accel_prod_shift_3
// 1924         if (!shift_code[ii]) {
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+4
        LDRB     R0,[R5, R0]
        CMP      R0,#+0
        BNE.N    ??get_accel_prod_shift_4
// 1925             st_shift[ii] = 0.f;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+0
        STR      R0,[R4, R5, LSL #+2]
// 1926             continue;
        B.N      ??get_accel_prod_shift_5
// 1927         }
// 1928         /* Equivalent to..
// 1929          * st_shift[ii] = 0.34f * powf(0.92f/0.34f, (shift_code[ii]-1) / 30.f)
// 1930          */
// 1931         st_shift[ii] = 0.34f;
??get_accel_prod_shift_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R0,??DataTable40  ;; 0x3eae147b
        STR      R0,[R4, R5, LSL #+2]
// 1932         while (--shift_code[ii])
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
// 1933             st_shift[ii] *= 1.034f;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R4, R5, LSL #+2]
        LDR.W    R1,??DataTable40_1  ;; 0x3f845a1d
        BL       __aeabi_fmul
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R4, R5, LSL #+2]
        B.N      ??get_accel_prod_shift_6
// 1934     }
??get_accel_prod_shift_5:
        ADDS     R5,R5,#+1
        B.N      ??get_accel_prod_shift_2
// 1935     return 0;
??get_accel_prod_shift_3:
        MOVS     R0,#+0
??get_accel_prod_shift_1:
        POP      {R1-R5,PC}       ;; return
// 1936 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     st+0x10
// 1937 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1938 static int accel_self_test(long *bias_regular, long *bias_st)
// 1939 {
accel_self_test:
        PUSH     {R1-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 1940     int jj, result = 0;
        MOVS     R7,#+0
// 1941     float st_shift[3], st_shift_cust, st_shift_var;
// 1942 
// 1943     get_accel_prod_shift(st_shift);
        ADD      R0,SP,#+0
        BL       get_accel_prod_shift
// 1944     for(jj = 0; jj < 3; jj++) {
        MOVS     R0,#+0
        MOVS     R6,R0
??accel_self_test_0:
        CMP      R6,#+3
        BGE.N    ??accel_self_test_1
// 1945         st_shift_cust = labs(bias_regular[jj] - bias_st[jj]) / 65536.f;
        LDR      R0,[R4, R6, LSL #+2]
        LDR      R1,[R5, R6, LSL #+2]
        SUBS     R0,R0,R1
        BL       labs
        BL       __aeabi_i2f
        MOVS     R1,#+1199570944
        BL       __aeabi_fdiv
        MOV      R8,R0
// 1946         if (st_shift[jj]) {
        ADD      R0,SP,#+0
        LDR      R0,[R0, R6, LSL #+2]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BEQ.N    ??accel_self_test_2
// 1947             st_shift_var = st_shift_cust / st_shift[jj] - 1.f;
        MOV      R0,R8
        ADD      R1,SP,#+0
        LDR      R1,[R1, R6, LSL #+2]
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable40_2  ;; 0xbf800000
        BL       __aeabi_fadd
        MOV      R9,R0
// 1948             if (fabs(st_shift_var) > test.max_accel_var)
        BICS     R1,R9,#0x80000000
        LDR.W    R0,??DataTable40_3
        LDR      R0,[R0, #+36]
        BL       __aeabi_cfcmple
        BCS.N    ??accel_self_test_3
// 1949                 result |= 1 << jj;
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        ORRS     R7,R0,R7
        B.N      ??accel_self_test_3
// 1950         } else if ((st_shift_cust < test.min_g) ||
// 1951             (st_shift_cust > test.max_g))
??accel_self_test_2:
        MOV      R0,R8
        LDR.W    R1,??DataTable40_3
        LDR      R1,[R1, #+28]
        BL       __aeabi_cfcmple
        BCC.N    ??accel_self_test_4
        LDR.W    R0,??DataTable40_3
        LDR      R0,[R0, #+32]
        MOV      R1,R8
        BL       __aeabi_cfcmple
        BCS.N    ??accel_self_test_3
// 1952             result |= 1 << jj;
??accel_self_test_4:
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        ORRS     R7,R0,R7
// 1953     }
??accel_self_test_3:
        ADDS     R6,R6,#+1
        B.N      ??accel_self_test_0
// 1954 
// 1955     return result;
??accel_self_test_1:
        MOVS     R0,R7
        POP      {R1-R9,PC}       ;; return
// 1956 }
// 1957 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1958 static int gyro_self_test(long *bias_regular, long *bias_st)
// 1959 {
gyro_self_test:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
// 1960     int jj, result = 0;
        MOVS     R7,#+0
// 1961     unsigned char tmp[3];
// 1962     float st_shift, st_shift_cust, st_shift_var;
// 1963 
// 1964     if (i2c_read(st.hw->addr, 0x0D, 3, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+3
        MOVS     R1,#+13
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??gyro_self_test_0
// 1965         return 0x07;
        MOVS     R0,#+7
        B.N      ??gyro_self_test_1
// 1966 
// 1967     tmp[0] &= 0x1F;
??gyro_self_test_0:
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0x1F
        STRB     R0,[SP, #+0]
// 1968     tmp[1] &= 0x1F;
        LDRB     R0,[SP, #+1]
        ANDS     R0,R0,#0x1F
        STRB     R0,[SP, #+1]
// 1969     tmp[2] &= 0x1F;
        LDRB     R0,[SP, #+2]
        ANDS     R0,R0,#0x1F
        STRB     R0,[SP, #+2]
// 1970 
// 1971     for (jj = 0; jj < 3; jj++) {
        MOVS     R0,#+0
        MOVS     R6,R0
??gyro_self_test_2:
        CMP      R6,#+3
        BGE.N    ??gyro_self_test_3
// 1972         st_shift_cust = labs(bias_regular[jj] - bias_st[jj]) / 65536.f;
        LDR      R0,[R4, R6, LSL #+2]
        LDR      R1,[R5, R6, LSL #+2]
        SUBS     R0,R0,R1
        BL       labs
        BL       __aeabi_i2f
        MOVS     R1,#+1199570944
        BL       __aeabi_fdiv
        MOV      R9,R0
// 1973         if (tmp[jj]) {
        ADD      R0,SP,#+0
        LDRB     R0,[R6, R0]
        CMP      R0,#+0
        BEQ.N    ??gyro_self_test_4
// 1974             st_shift = 3275.f / test.gyro_sens;
        LDR.W    R0,??DataTable40_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable40_4  ;; 0x454cb000
        BL       __aeabi_fdiv
        MOV      R8,R0
// 1975             while (--tmp[jj])
??gyro_self_test_5:
        ADD      R0,SP,#+0
        LDRB     R0,[R6, R0]
        SUBS     R0,R0,#+1
        ADD      R1,SP,#+0
        STRB     R0,[R6, R1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??gyro_self_test_6
// 1976                 st_shift *= 1.046f;
        LDR.W    R0,??DataTable40_5  ;; 0x3f85e354
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R8,R0
        B.N      ??gyro_self_test_5
// 1977             st_shift_var = st_shift_cust / st_shift - 1.f;
??gyro_self_test_6:
        MOV      R0,R9
        MOV      R1,R8
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable40_2  ;; 0xbf800000
        BL       __aeabi_fadd
        MOV      R10,R0
// 1978             if (fabs(st_shift_var) > test.max_gyro_var)
        BICS     R1,R10,#0x80000000
        LDR.W    R0,??DataTable40_3
        LDR      R0,[R0, #+24]
        BL       __aeabi_cfcmple
        BCS.N    ??gyro_self_test_7
// 1979                 result |= 1 << jj;
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        ORRS     R7,R0,R7
        B.N      ??gyro_self_test_7
// 1980         } else if ((st_shift_cust < test.min_dps) ||
// 1981             (st_shift_cust > test.max_dps))
??gyro_self_test_4:
        MOV      R0,R9
        LDR.W    R1,??DataTable40_3
        LDR      R1,[R1, #+16]
        BL       __aeabi_cfcmple
        BCC.N    ??gyro_self_test_8
        LDR.W    R0,??DataTable40_3
        LDR      R0,[R0, #+20]
        MOV      R1,R9
        BL       __aeabi_cfcmple
        BCS.N    ??gyro_self_test_7
// 1982             result |= 1 << jj;
??gyro_self_test_8:
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        ORRS     R7,R0,R7
// 1983     }
??gyro_self_test_7:
        ADDS     R6,R6,#+1
        B.N      ??gyro_self_test_2
// 1984     return result;
??gyro_self_test_3:
        MOVS     R0,R7
??gyro_self_test_1:
        POP      {R1,R2,R4-R10,PC}  ;; return
// 1985 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32:
        DC32     0x43030000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_1:
        DC32     0x42830000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_2:
        DC32     0x42033333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_3:
        DC32     0x41833333
// 1986 
// 1987 #ifdef AK89xx_SECONDARY
// 1988 static int compass_self_test(void)
// 1989 {
// 1990     unsigned char tmp[6];
// 1991     unsigned char tries = 10;
// 1992     int result = 0x07;
// 1993     short data;
// 1994 
// 1995     mpu_set_bypass(1);
// 1996 
// 1997     tmp[0] = AKM_POWER_DOWN;
// 1998     if (i2c_write(st.chip_cfg.compass_addr, AKM_REG_CNTL, 1, tmp))
// 1999         return 0x07;
// 2000     tmp[0] = AKM_BIT_SELF_TEST;
// 2001     if (i2c_write(st.chip_cfg.compass_addr, AKM_REG_ASTC, 1, tmp))
// 2002         goto AKM_restore;
// 2003     tmp[0] = AKM_MODE_SELF_TEST;
// 2004     if (i2c_write(st.chip_cfg.compass_addr, AKM_REG_CNTL, 1, tmp))
// 2005         goto AKM_restore;
// 2006 
// 2007     do {
// 2008         delay_ms(10);
// 2009         if (i2c_read(st.chip_cfg.compass_addr, AKM_REG_ST1, 1, tmp))
// 2010             goto AKM_restore;
// 2011         if (tmp[0] & AKM_DATA_READY)
// 2012             break;
// 2013     } while (tries--);
// 2014     if (!(tmp[0] & AKM_DATA_READY))
// 2015         goto AKM_restore;
// 2016 
// 2017     if (i2c_read(st.chip_cfg.compass_addr, AKM_REG_HXL, 6, tmp))
// 2018         goto AKM_restore;
// 2019 
// 2020     result = 0;
// 2021     data = (short)(tmp[1] << 8) | tmp[0];
// 2022     if ((data > 100) || (data < -100))
// 2023         result |= 0x01;
// 2024     data = (short)(tmp[3] << 8) | tmp[2];
// 2025     if ((data > 100) || (data < -100))
// 2026         result |= 0x02;
// 2027     data = (short)(tmp[5] << 8) | tmp[4];
// 2028     if ((data > -300) || (data < -1000))
// 2029         result |= 0x04;
// 2030 
// 2031 AKM_restore:
// 2032     tmp[0] = 0 | SUPPORTS_AK89xx_HIGH_SENS;
// 2033     i2c_write(st.chip_cfg.compass_addr, AKM_REG_ASTC, 1, tmp);
// 2034     tmp[0] = SUPPORTS_AK89xx_HIGH_SENS;
// 2035     i2c_write(st.chip_cfg.compass_addr, AKM_REG_CNTL, 1, tmp);
// 2036     mpu_set_bypass(0);
// 2037     return result;
// 2038 }
// 2039 #endif
// 2040 #endif
// 2041 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2042 static int get_st_biases(long *gyro, long *accel, unsigned char hw_test)
// 2043 {
get_st_biases:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+28
        MOVS     R5,R0
        MOVS     R6,R1
        MOV      R8,R2
// 2044     unsigned char data[MAX_PACKET_LENGTH];
// 2045     unsigned char packet_count, ii;
// 2046     unsigned short fifo_count;
// 2047 
// 2048     data[0] = 0x01;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
// 2049     data[1] = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
// 2050     if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 2, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_0
// 2051         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2052     delay_ms(200);
??get_st_biases_0:
        MOVS     R0,#+200
        BL       delay_ms
// 2053     data[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 2054     if (i2c_write(st.hw->addr, st.reg->int_enable, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_2
// 2055         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2056     if (i2c_write(st.hw->addr, st.reg->fifo_en, 1, data))
??get_st_biases_2:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_3
// 2057         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2058     if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 1, data))
??get_st_biases_3:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_4
// 2059         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2060     if (i2c_write(st.hw->addr, st.reg->i2c_mst, 1, data))
??get_st_biases_4:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+23]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_5
// 2061         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2062     if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, data))
??get_st_biases_5:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_6
// 2063         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2064     data[0] = BIT_FIFO_RST | BIT_DMP_RST;
??get_st_biases_6:
        MOVS     R0,#+12
        STRB     R0,[SP, #+0]
// 2065     if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_7
// 2066         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2067     delay_ms(15);
??get_st_biases_7:
        MOVS     R0,#+15
        BL       delay_ms
// 2068     data[0] = st.test->reg_lpf;
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+9]
        STRB     R0,[SP, #+0]
// 2069     if (i2c_write(st.hw->addr, st.reg->lpf, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_8
// 2070         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2071     data[0] = st.test->reg_rate_div;
??get_st_biases_8:
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+8]
        STRB     R0,[SP, #+0]
// 2072     if (i2c_write(st.hw->addr, st.reg->rate_div, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_9
// 2073         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2074     if (hw_test)
??get_st_biases_9:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??get_st_biases_10
// 2075         data[0] = st.test->reg_gyro_fsr | 0xE0;
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+10]
        ORRS     R0,R0,#0xE0
        STRB     R0,[SP, #+0]
        B.N      ??get_st_biases_11
// 2076     else
// 2077         data[0] = st.test->reg_gyro_fsr;
??get_st_biases_10:
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+10]
        STRB     R0,[SP, #+0]
// 2078     if (i2c_write(st.hw->addr, st.reg->gyro_cfg, 1, data))
??get_st_biases_11:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+6]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_12
// 2079         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2080 
// 2081     if (hw_test)
??get_st_biases_12:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??get_st_biases_13
// 2082         data[0] = st.test->reg_accel_fsr | 0xE0;
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+40]
        LDRB     R0,[R0, #+11]
        ORRS     R0,R0,#0xE0
        STRB     R0,[SP, #+0]
        B.N      ??get_st_biases_14
// 2083     else
// 2084         data[0] = test.reg_accel_fsr;
??get_st_biases_13:
        LDR.W    R0,??DataTable40_3
        LDRB     R0,[R0, #+11]
        STRB     R0,[SP, #+0]
// 2085     if (i2c_write(st.hw->addr, st.reg->accel_cfg, 1, data))
??get_st_biases_14:
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+7]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_15
// 2086         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2087     if (hw_test)
??get_st_biases_15:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??get_st_biases_16
// 2088         delay_ms(200);
        MOVS     R0,#+200
        BL       delay_ms
// 2089 
// 2090     /* Fill FIFO for test.wait_ms milliseconds. */
// 2091     data[0] = BIT_FIFO_EN;
??get_st_biases_16:
        MOVS     R0,#+64
        STRB     R0,[SP, #+0]
// 2092     if (i2c_write(st.hw->addr, st.reg->user_ctrl, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_17
// 2093         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2094 
// 2095     data[0] = INV_XYZ_GYRO | INV_XYZ_ACCEL;
??get_st_biases_17:
        MOVS     R0,#+120
        STRB     R0,[SP, #+0]
// 2096     if (i2c_write(st.hw->addr, st.reg->fifo_en, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.W    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_18
// 2097         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2098     delay_ms(test.wait_ms);
??get_st_biases_18:
        LDR.W    R0,??DataTable40_3
        LDRH     R0,[R0, #+12]
        BL       delay_ms
// 2099     data[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 2100     if (i2c_write(st.hw->addr, st.reg->fifo_en, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+5]
        LDR.N    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_19
// 2101         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2102 
// 2103     if (i2c_read(st.hw->addr, st.reg->fifo_count_h, 2, data))
??get_st_biases_19:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.N    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+10]
        LDR.N    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_20
// 2104         return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2105 
// 2106     fifo_count = (data[0] << 8) | data[1];
??get_st_biases_20:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        MOV      R9,R0
// 2107     packet_count = fifo_count / MAX_PACKET_LENGTH;
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        MOVS     R0,#+12
        SDIV     R0,R9,R0
        MOVS     R4,R0
// 2108     gyro[0] = gyro[1] = gyro[2] = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+8]
        STR      R0,[R5, #+4]
        STR      R0,[R5, #+0]
// 2109     accel[0] = accel[1] = accel[2] = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+8]
        STR      R0,[R6, #+4]
        STR      R0,[R6, #+0]
// 2110 
// 2111     for (ii = 0; ii < packet_count; ii++) {
        MOVS     R0,#+0
        MOVS     R7,R0
??get_st_biases_21:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R7,R4
        BCS.N    ??get_st_biases_22
// 2112         short accel_cur[3], gyro_cur[3];
// 2113         if (i2c_read(st.hw->addr, st.reg->fifo_r_w, MAX_PACKET_LENGTH, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+12
        LDR.N    R0,??DataTable34
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+11]
        LDR.N    R0,??DataTable34
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??get_st_biases_23
// 2114             return -1;
        MOVS     R0,#-1
        B.N      ??get_st_biases_1
// 2115         accel_cur[0] = ((short)data[0] << 8) | data[1];
??get_st_biases_23:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+20]
// 2116         accel_cur[1] = ((short)data[2] << 8) | data[3];
        LDRB     R0,[SP, #+2]
        LDRB     R1,[SP, #+3]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+22]
// 2117         accel_cur[2] = ((short)data[4] << 8) | data[5];
        LDRB     R0,[SP, #+4]
        LDRB     R1,[SP, #+5]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+24]
// 2118         accel[0] += (long)accel_cur[0];
        LDR      R0,[R6, #+0]
        LDRSH    R1,[SP, #+20]
        SXTAH    R0,R0,R1
        STR      R0,[R6, #+0]
// 2119         accel[1] += (long)accel_cur[1];
        LDR      R0,[R6, #+4]
        LDRSH    R1,[SP, #+22]
        SXTAH    R0,R0,R1
        STR      R0,[R6, #+4]
// 2120         accel[2] += (long)accel_cur[2];
        LDR      R0,[R6, #+8]
        LDRSH    R1,[SP, #+24]
        SXTAH    R0,R0,R1
        STR      R0,[R6, #+8]
// 2121         gyro_cur[0] = (((short)data[6] << 8) | data[7]);
        LDRB     R0,[SP, #+6]
        LDRB     R1,[SP, #+7]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+12]
// 2122         gyro_cur[1] = (((short)data[8] << 8) | data[9]);
        LDRB     R0,[SP, #+8]
        LDRB     R1,[SP, #+9]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+14]
// 2123         gyro_cur[2] = (((short)data[10] << 8) | data[11]);
        LDRB     R0,[SP, #+10]
        LDRB     R1,[SP, #+11]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[SP, #+16]
// 2124         gyro[0] += (long)gyro_cur[0];
        LDR      R0,[R5, #+0]
        LDRSH    R1,[SP, #+12]
        SXTAH    R0,R0,R1
        STR      R0,[R5, #+0]
// 2125         gyro[1] += (long)gyro_cur[1];
        LDR      R0,[R5, #+4]
        LDRSH    R1,[SP, #+14]
        SXTAH    R0,R0,R1
        STR      R0,[R5, #+4]
// 2126         gyro[2] += (long)gyro_cur[2];
        LDR      R0,[R5, #+8]
        LDRSH    R1,[SP, #+16]
        SXTAH    R0,R0,R1
        STR      R0,[R5, #+8]
// 2127     }
        ADDS     R7,R7,#+1
        B.N      ??get_st_biases_21
// 2128 #ifdef EMPL_NO_64BIT
// 2129     gyro[0] = (long)(((float)gyro[0]*65536.f) / test.gyro_sens / packet_count);
// 2130     gyro[1] = (long)(((float)gyro[1]*65536.f) / test.gyro_sens / packet_count);
// 2131     gyro[2] = (long)(((float)gyro[2]*65536.f) / test.gyro_sens / packet_count);
// 2132     if (has_accel) {
// 2133         accel[0] = (long)(((float)accel[0]*65536.f) / test.accel_sens /
// 2134             packet_count);
// 2135         accel[1] = (long)(((float)accel[1]*65536.f) / test.accel_sens /
// 2136             packet_count);
// 2137         accel[2] = (long)(((float)accel[2]*65536.f) / test.accel_sens /
// 2138             packet_count);
// 2139         /* Don't remove gravity! */
// 2140         accel[2] -= 65536L;
// 2141     }
// 2142 #else
// 2143     gyro[0] = (long)(((long long)gyro[0]<<16) / test.gyro_sens / packet_count);
??get_st_biases_22:
        LDR      R0,[R5, #+0]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable40_3
        LDR      R2,[R2, #+0]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R5, #+0]
// 2144     gyro[1] = (long)(((long long)gyro[1]<<16) / test.gyro_sens / packet_count);
        LDR      R0,[R5, #+4]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable40_3
        LDR      R2,[R2, #+0]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R5, #+4]
// 2145     gyro[2] = (long)(((long long)gyro[2]<<16) / test.gyro_sens / packet_count);
        LDR      R0,[R5, #+8]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable40_3
        LDR      R2,[R2, #+0]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R5, #+8]
// 2146     accel[0] = (long)(((long long)accel[0]<<16) / test.accel_sens /
// 2147         packet_count);
        LDR      R0,[R6, #+0]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable40_3
        LDR      R2,[R2, #+4]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R6, #+0]
// 2148     accel[1] = (long)(((long long)accel[1]<<16) / test.accel_sens /
// 2149         packet_count);
        LDR      R0,[R6, #+4]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable40_3
        LDR      R2,[R2, #+4]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R6, #+4]
// 2150     accel[2] = (long)(((long long)accel[2]<<16) / test.accel_sens /
// 2151         packet_count);
        LDR      R0,[R6, #+8]
        ASRS     R1,R0,#+31
        LSLS     R1,R1,#+16
        ORR      R1,R1,R0, LSR #+16
        LSLS     R0,R0,#+16
        LDR.W    R2,??DataTable40_3
        LDR      R2,[R2, #+4]
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        STR      R0,[R6, #+8]
// 2152     /* Don't remove gravity! */
// 2153     if (accel[2] > 0L)
        LDR      R0,[R6, #+8]
        CMP      R0,#+1
        BLT.N    ??get_st_biases_24
// 2154         accel[2] -= 65536L;
        LDR      R0,[R6, #+8]
        ADD      R0,R0,#-16777216
        ADDS     R0,R0,#+16711680
        STR      R0,[R6, #+8]
        B.N      ??get_st_biases_25
// 2155     else
// 2156         accel[2] += 65536L;
??get_st_biases_24:
        LDR      R0,[R6, #+8]
        ADDS     R0,R0,#+65536
        STR      R0,[R6, #+8]
// 2157 #endif
// 2158 
// 2159     return 0;
??get_st_biases_25:
        MOVS     R0,#+0
??get_st_biases_1:
        ADD      SP,SP,#+28
        POP      {R4-R9,PC}       ;; return
// 2160 }
// 2161 
// 2162 /**
// 2163  *  @brief      Trigger gyro/accel/compass self-test.
// 2164  *  On success/error, the self-test returns a mask representing the sensor(s)
// 2165  *  that failed. For each bit, a one (1) represents a "pass" case; conversely,
// 2166  *  a zero (0) indicates a failure.
// 2167  *
// 2168  *  \n The mask is defined as follows:
// 2169  *  \n Bit 0:   Gyro.
// 2170  *  \n Bit 1:   Accel.
// 2171  *  \n Bit 2:   Compass.
// 2172  *
// 2173  *  \n Currently, the hardware self-test is unsupported for MPU6500. However,
// 2174  *  this function can still be used to obtain the accel and gyro biases.
// 2175  *
// 2176  *  \n This function must be called with the device either face-up or face-down
// 2177  *  (z-axis is parallel to gravity).
// 2178  *  @param[out] gyro        Gyro biases in q16 format.
// 2179  *  @param[out] accel       Accel biases (if applicable) in q16 format.
// 2180  *  @return     Result mask (see above).
// 2181  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2182 int mpu_run_self_test(long *gyro, long *accel)
// 2183 {
mpu_run_self_test:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+36
        MOVS     R4,R0
        MOVS     R5,R1
// 2184 #ifdef MPU6050
// 2185     const unsigned char tries = 2;
        MOVS     R6,#+2
// 2186     long gyro_st[3], accel_st[3];
// 2187     unsigned char accel_result, gyro_result;
// 2188 #ifdef AK89xx_SECONDARY
// 2189     unsigned char compass_result;
// 2190 #endif
// 2191     int ii;
// 2192 #endif
// 2193     int result;
// 2194     unsigned char accel_fsr, fifo_sensors, sensors_on;
// 2195     unsigned short gyro_fsr, sample_rate, lpf;
// 2196     unsigned char dmp_was_on;
// 2197 
// 2198     if (st.chip_cfg.dmp_on) {
        LDR.N    R0,??DataTable34
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_run_self_test_0
// 2199         mpu_set_dmp_state(0);
        MOVS     R0,#+0
        BL       mpu_set_dmp_state
// 2200         dmp_was_on = 1;
        MOVS     R0,#+1
        MOV      R10,R0
        B.N      ??mpu_run_self_test_1
// 2201     } else
// 2202         dmp_was_on = 0;
??mpu_run_self_test_0:
        MOVS     R0,#+0
        MOV      R10,R0
// 2203 
// 2204     /* Get initial settings. */
// 2205     mpu_get_gyro_fsr(&gyro_fsr);
??mpu_run_self_test_1:
        ADD      R0,SP,#+6
        BL       mpu_get_gyro_fsr
// 2206     mpu_get_accel_fsr(&accel_fsr);
        ADD      R0,SP,#+1
        BL       mpu_get_accel_fsr
// 2207     mpu_get_lpf(&lpf);
        ADD      R0,SP,#+2
        BL       mpu_get_lpf
// 2208     mpu_get_sample_rate(&sample_rate);
        ADD      R0,SP,#+4
        BL       mpu_get_sample_rate
// 2209     sensors_on = st.chip_cfg.sensors;
        LDR.N    R0,??DataTable34
        LDRB     R0,[R0, #+10]
        MOV      R9,R0
// 2210     mpu_get_fifo_config(&fifo_sensors);
        ADD      R0,SP,#+0
        BL       mpu_get_fifo_config
// 2211 
// 2212     /* For older chips, the self-test will be different. */
// 2213 #if defined MPU6050
// 2214     for (ii = 0; ii < tries; ii++)
        MOVS     R0,#+0
        MOV      R11,R0
??mpu_run_self_test_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R11,R6
        BGE.N    ??mpu_run_self_test_3
// 2215         if (!get_st_biases(gyro, accel, 0))
        MOVS     R2,#+0
        MOVS     R1,R5
        MOVS     R0,R4
        BL       get_st_biases
        CMP      R0,#+0
        BEQ.N    ??mpu_run_self_test_3
// 2216             break;
??mpu_run_self_test_4:
        ADDS     R11,R11,#+1
        B.N      ??mpu_run_self_test_2
// 2217     if (ii == tries) {
??mpu_run_self_test_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R11,R6
        BNE.N    ??mpu_run_self_test_5
// 2218         /* If we reach this point, we most likely encountered an I2C error.
// 2219          * We'll just report an error for all three sensors.
// 2220          */
// 2221         result = 0;
        MOVS     R0,#+0
        MOV      R8,R0
// 2222         goto restore;
        B.N      ??mpu_run_self_test_6
// 2223     }
// 2224     for (ii = 0; ii < tries; ii++)
??mpu_run_self_test_5:
        MOVS     R0,#+0
        MOV      R11,R0
??mpu_run_self_test_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R11,R6
        BGE.N    ??mpu_run_self_test_8
// 2225         if (!get_st_biases(gyro_st, accel_st, 1))
        MOVS     R2,#+1
        ADD      R1,SP,#+12
        ADD      R0,SP,#+24
        BL       get_st_biases
        CMP      R0,#+0
        BEQ.N    ??mpu_run_self_test_8
// 2226             break;
??mpu_run_self_test_9:
        ADDS     R11,R11,#+1
        B.N      ??mpu_run_self_test_7
// 2227     if (ii == tries) {
??mpu_run_self_test_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R11,R6
        BNE.N    ??mpu_run_self_test_10
// 2228         /* Again, probably an I2C error. */
// 2229         result = 0;
        MOVS     R0,#+0
        MOV      R8,R0
// 2230         goto restore;
        B.N      ??mpu_run_self_test_6
// 2231     }
// 2232     accel_result = accel_self_test(accel, accel_st);
??mpu_run_self_test_10:
        ADD      R1,SP,#+12
        MOVS     R0,R5
        BL       accel_self_test
        STRB     R0,[SP, #+8]
// 2233     gyro_result = gyro_self_test(gyro, gyro_st);
        ADD      R1,SP,#+24
        MOVS     R0,R4
        BL       gyro_self_test
        MOVS     R7,R0
// 2234 
// 2235     result = 0;
        MOVS     R0,#+0
        MOV      R8,R0
// 2236     if (!gyro_result)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??mpu_run_self_test_11
// 2237         result |= 0x01;
        ORRS     R8,R8,#0x1
// 2238     if (!accel_result)
??mpu_run_self_test_11:
        LDRB     R0,[SP, #+8]
        CMP      R0,#+0
        BNE.N    ??mpu_run_self_test_6
// 2239         result |= 0x02;
        ORRS     R8,R8,#0x2
// 2240 
// 2241 #ifdef AK89xx_SECONDARY
// 2242     compass_result = compass_self_test();
// 2243     if (!compass_result)
// 2244         result |= 0x04;
// 2245 #endif
// 2246 restore:
// 2247 #elif defined MPU6500
// 2248     /* For now, this function will return a "pass" result for all three sensors
// 2249      * for compatibility with current test applications.
// 2250      */
// 2251     get_st_biases(gyro, accel, 0);
// 2252     result = 0x7;
// 2253 #endif
// 2254     /* Set to invalid values to ensure no I2C writes are skipped. */
// 2255     st.chip_cfg.gyro_fsr = 0xFF;
??mpu_run_self_test_6:
        LDR.N    R0,??DataTable34
        MOVS     R1,#+255
        STRB     R1,[R0, #+8]
// 2256     st.chip_cfg.accel_fsr = 0xFF;
        LDR.N    R0,??DataTable34
        MOVS     R1,#+255
        STRB     R1,[R0, #+9]
// 2257     st.chip_cfg.lpf = 0xFF;
        LDR.N    R0,??DataTable34
        MOVS     R1,#+255
        STRB     R1,[R0, #+11]
// 2258     st.chip_cfg.sample_rate = 0xFFFF;
        LDR.N    R0,??DataTable34
        MOVW     R1,#+65535
        STRH     R1,[R0, #+14]
// 2259     st.chip_cfg.sensors = 0xFF;
        LDR.N    R0,??DataTable34
        MOVS     R1,#+255
        STRB     R1,[R0, #+10]
// 2260     st.chip_cfg.fifo_enable = 0xFF;
        LDR.N    R0,??DataTable34
        MOVS     R1,#+255
        STRB     R1,[R0, #+16]
// 2261     st.chip_cfg.clk_src = INV_CLK_PLL;
        LDR.N    R0,??DataTable34
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
// 2262     mpu_set_gyro_fsr(gyro_fsr);
        LDRH     R0,[SP, #+6]
        BL       mpu_set_gyro_fsr
// 2263     mpu_set_accel_fsr(accel_fsr);
        LDRB     R0,[SP, #+1]
        BL       mpu_set_accel_fsr
// 2264     mpu_set_lpf(lpf);
        LDRH     R0,[SP, #+2]
        BL       mpu_set_lpf
// 2265     mpu_set_sample_rate(sample_rate);
        LDRH     R0,[SP, #+4]
        BL       mpu_set_sample_rate
// 2266     mpu_set_sensors(sensors_on);
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       mpu_set_sensors
// 2267     mpu_configure_fifo(fifo_sensors);
        LDRB     R0,[SP, #+0]
        BL       mpu_configure_fifo
// 2268 
// 2269     if (dmp_was_on)
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BEQ.N    ??mpu_run_self_test_12
// 2270         mpu_set_dmp_state(1);
        MOVS     R0,#+1
        BL       mpu_set_dmp_state
// 2271 
// 2272     return result;
??mpu_run_self_test_12:
        MOV      R0,R8
        ADD      SP,SP,#+36
        POP      {R4-R11,PC}      ;; return
// 2273 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34:
        DC32     st
// 2274 
// 2275 /**
// 2276  *  @brief      Write to the DMP memory.
// 2277  *  This function prevents I2C writes past the bank boundaries. The DMP memory
// 2278  *  is only accessible when the chip is awake.
// 2279  *  @param[in]  mem_addr    Memory location (bank << 8 | start address)
// 2280  *  @param[in]  length      Number of bytes to write.
// 2281  *  @param[in]  data        Bytes to write to memory.
// 2282  *  @return     0 if successful.
// 2283  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2284 int mpu_write_mem(unsigned short mem_addr, unsigned short length,
// 2285         unsigned char *data)
// 2286 {
mpu_write_mem:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R5,R2
// 2287     unsigned char tmp[2];
// 2288 
// 2289     if (!data)
        CMP      R5,#+0
        BNE.N    ??mpu_write_mem_0
// 2290         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
// 2291     if (!st.chip_cfg.sensors)
??mpu_write_mem_0:
        LDR.W    R0,??DataTable40_6
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_write_mem_2
// 2292         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
// 2293 
// 2294     tmp[0] = (unsigned char)(mem_addr >> 8);
??mpu_write_mem_2:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
// 2295     tmp[1] = (unsigned char)(mem_addr & 0xFF);
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
// 2296 
// 2297     /* Check bank boundaries. */
// 2298     if (tmp[1] + length > st.hw->bank_size)
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRH     R0,[R0, #+10]
        LDRB     R1,[SP, #+1]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTAB    R1,R4,R1
        CMP      R0,R1
        BGE.N    ??mpu_write_mem_3
// 2299         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
// 2300 
// 2301     if (i2c_write(st.hw->addr, st.reg->bank_sel, 2, tmp))
??mpu_write_mem_3:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_write_mem_4
// 2302         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
// 2303     if (i2c_write(st.hw->addr, st.reg->mem_r_w, length, data))
??mpu_write_mem_4:
        MOVS     R3,R5
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_write_mem_5
// 2304         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_write_mem_1
// 2305     return 0;
??mpu_write_mem_5:
        MOVS     R0,#+0
??mpu_write_mem_1:
        POP      {R1,R2,R4-R6,PC}  ;; return
// 2306 }
// 2307 
// 2308 /**
// 2309  *  @brief      Read from the DMP memory.
// 2310  *  This function prevents I2C reads past the bank boundaries. The DMP memory
// 2311  *  is only accessible when the chip is awake.
// 2312  *  @param[in]  mem_addr    Memory location (bank << 8 | start address)
// 2313  *  @param[in]  length      Number of bytes to read.
// 2314  *  @param[out] data        Bytes read from memory.
// 2315  *  @return     0 if successful.
// 2316  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2317 int mpu_read_mem(unsigned short mem_addr, unsigned short length,
// 2318         unsigned char *data)
// 2319 {
mpu_read_mem:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R5,R2
// 2320     unsigned char tmp[2];
// 2321 
// 2322     if (!data)
        CMP      R5,#+0
        BNE.N    ??mpu_read_mem_0
// 2323         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
// 2324     if (!st.chip_cfg.sensors)
??mpu_read_mem_0:
        LDR.W    R0,??DataTable40_6
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??mpu_read_mem_2
// 2325         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
// 2326 
// 2327     tmp[0] = (unsigned char)(mem_addr >> 8);
??mpu_read_mem_2:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
// 2328     tmp[1] = (unsigned char)(mem_addr & 0xFF);
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
// 2329 
// 2330     /* Check bank boundaries. */
// 2331     if (tmp[1] + length > st.hw->bank_size)
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRH     R0,[R0, #+10]
        LDRB     R1,[SP, #+1]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTAB    R1,R4,R1
        CMP      R0,R1
        BGE.N    ??mpu_read_mem_3
// 2332         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
// 2333 
// 2334     if (i2c_write(st.hw->addr, st.reg->bank_sel, 2, tmp))
??mpu_read_mem_3:
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_read_mem_4
// 2335         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
// 2336     if (i2c_read(st.hw->addr, st.reg->mem_r_w, length, data))
??mpu_read_mem_4:
        MOVS     R3,R5
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cread
        CMP      R0,#+0
        BEQ.N    ??mpu_read_mem_5
// 2337         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_read_mem_1
// 2338     return 0;
??mpu_read_mem_5:
        MOVS     R0,#+0
??mpu_read_mem_1:
        POP      {R1,R2,R4-R6,PC}  ;; return
// 2339 }
// 2340 
// 2341 /**
// 2342  *  @brief      Load and verify DMP image.
// 2343  *  @param[in]  length      Length of DMP image.
// 2344  *  @param[in]  firmware    DMP code.
// 2345  *  @param[in]  start_addr  Starting address of DMP code memory.
// 2346  *  @param[in]  sample_rate Fixed sampling rate used when DMP is enabled.
// 2347  *  @return     0 if successful.
// 2348  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2349 int mpu_load_firmware(unsigned short length, const unsigned char *firmware,
// 2350     unsigned short start_addr, unsigned short sample_rate)
// 2351 {
mpu_load_firmware:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 2352     unsigned short ii;
// 2353     unsigned short this_write;
// 2354     /* Must divide evenly into st.hw->bank_size to avoid bank crossings. */
// 2355 #define LOAD_CHUNK  (16)
// 2356     unsigned char cur[LOAD_CHUNK], tmp[2];
// 2357 
// 2358     if (st.chip_cfg.dmp_loaded)
        LDR.W    R0,??DataTable40_6
        LDRB     R0,[R0, #+37]
        CMP      R0,#+0
        BEQ.N    ??mpu_load_firmware_0
// 2359         /* DMP should only be loaded once. */
// 2360         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
// 2361 
// 2362     if (!firmware)
??mpu_load_firmware_0:
        CMP      R5,#+0
        BNE.N    ??mpu_load_firmware_2
// 2363         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
// 2364     for (ii = 0; ii < length; ii += this_write) {
??mpu_load_firmware_2:
        MOVS     R0,#+0
        MOV      R8,R0
??mpu_load_firmware_3:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R8,R4
        BCS.N    ??mpu_load_firmware_4
// 2365         this_write = min(LOAD_CHUNK, length - ii);
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        SUBS     R0,R4,R8
        CMP      R0,#+17
        BLT.N    ??mpu_load_firmware_5
        MOVS     R9,#+16
        B.N      ??mpu_load_firmware_6
??mpu_load_firmware_5:
        SUBS     R9,R4,R8
// 2366         if (mpu_write_mem(ii, this_write, (unsigned char*)&firmware[ii]))
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
// 2367             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
// 2368         if (mpu_read_mem(ii, this_write, cur))
??mpu_load_firmware_7:
        ADD      R2,SP,#+4
        MOV      R1,R9
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       mpu_read_mem
        CMP      R0,#+0
        BEQ.N    ??mpu_load_firmware_8
// 2369             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
// 2370         if (memcmp(firmware+ii, cur, this_write))
??mpu_load_firmware_8:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        MOV      R2,R9
        ADD      R1,SP,#+4
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        ADDS     R0,R8,R5
        BL       memcmp
// 2371             ;//return -2;
// 2372     }
        ADDS     R8,R9,R8
        B.N      ??mpu_load_firmware_3
// 2373 
// 2374     /* Set program start address. */
// 2375     tmp[0] = start_addr >> 8;
??mpu_load_firmware_4:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
// 2376     tmp[1] = start_addr & 0xFF;
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
// 2377     if (i2c_write(st.hw->addr, st.reg->prgm_start_h, 2, tmp))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+26]
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_load_firmware_9
// 2378         return -1;
        MOVS     R0,#-1
        B.N      ??mpu_load_firmware_1
// 2379 
// 2380     st.chip_cfg.dmp_loaded = 1;
??mpu_load_firmware_9:
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+37]
// 2381     st.chip_cfg.dmp_sample_rate = sample_rate;
        LDR.N    R0,??DataTable40_6
        STRH     R7,[R0, #+38]
// 2382     return 0;
        MOVS     R0,#+0
??mpu_load_firmware_1:
        ADD      SP,SP,#+20
        POP      {R4-R9,PC}       ;; return
// 2383 }
// 2384 
// 2385 /**
// 2386  *  @brief      Enable/disable DMP support.
// 2387  *  @param[in]  enable  1 to turn on the DMP.
// 2388  *  @return     0 if successful.
// 2389  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2390 int mpu_set_dmp_state(unsigned char enable)
// 2391 {
mpu_set_dmp_state:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 2392     unsigned char tmp;
// 2393     if (st.chip_cfg.dmp_on == enable)
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+36]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??mpu_set_dmp_state_0
// 2394         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_set_dmp_state_1
// 2395 
// 2396     if (enable) {
??mpu_set_dmp_state_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??mpu_set_dmp_state_2
// 2397         if (!st.chip_cfg.dmp_loaded)
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+37]
        CMP      R0,#+0
        BNE.N    ??mpu_set_dmp_state_3
// 2398             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_set_dmp_state_1
// 2399         /* Disable data ready interrupt. */
// 2400         set_int_enable(0);
??mpu_set_dmp_state_3:
        MOVS     R0,#+0
        BL       set_int_enable
// 2401         /* Disable bypass mode. */
// 2402         mpu_set_bypass(0);
        MOVS     R0,#+0
        BL       mpu_set_bypass
// 2403         /* Keep constant sample rate, FIFO rate controlled by DMP. */
// 2404         mpu_set_sample_rate(st.chip_cfg.dmp_sample_rate);
        LDR.N    R0,??DataTable40_6
        LDRH     R0,[R0, #+38]
        BL       mpu_set_sample_rate
// 2405         /* Remove FIFO elements. */
// 2406         tmp = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 2407         i2c_write(st.hw->addr, 0x23, 1, &tmp);
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        MOVS     R1,#+35
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
// 2408         st.chip_cfg.dmp_on = 1;
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+36]
// 2409         /* Enable DMP interrupt. */
// 2410         set_int_enable(1);
        MOVS     R0,#+1
        BL       set_int_enable
// 2411         mpu_reset_fifo();
        BL       mpu_reset_fifo
        B.N      ??mpu_set_dmp_state_4
// 2412     } else {
// 2413         /* Disable DMP interrupt. */
// 2414         set_int_enable(0);
??mpu_set_dmp_state_2:
        MOVS     R0,#+0
        BL       set_int_enable
// 2415         /* Restore FIFO settings. */
// 2416         tmp = st.chip_cfg.fifo_enable;
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+16]
        STRB     R0,[SP, #+0]
// 2417         i2c_write(st.hw->addr, 0x23, 1, &tmp);
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        MOVS     R1,#+35
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
// 2418         st.chip_cfg.dmp_on = 0;
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+36]
// 2419         mpu_reset_fifo();
        BL       mpu_reset_fifo
// 2420     }
// 2421     return 0;
??mpu_set_dmp_state_4:
        MOVS     R0,#+0
??mpu_set_dmp_state_1:
        POP      {R1,R2,R4,PC}    ;; return
// 2422 }
// 2423 
// 2424 /**
// 2425  *  @brief      Get DMP state.
// 2426  *  @param[out] enabled 1 if enabled.
// 2427  *  @return     0 if successful.
// 2428  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2429 int mpu_get_dmp_state(unsigned char *enabled)
// 2430 {
mpu_get_dmp_state:
        MOVS     R1,R0
// 2431     enabled[0] = st.chip_cfg.dmp_on;
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+36]
        STRB     R0,[R1, #+0]
// 2432     return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
// 2433 }
// 2434 
// 2435 
// 2436 /* This initialization is similar to the one in ak8975.c. */
// 2437 //static int setup_compass(void)
// 2438 //{
// 2439 //#ifdef AK89xx_SECONDARY
// 2440 //    unsigned char data[4], akm_addr;
// 2441 //
// 2442 //    mpu_set_bypass(1);
// 2443 //
// 2444 //    /* Find compass. Possible addresses range from 0x0C to 0x0F. */
// 2445 //    for (akm_addr = 0x0C; akm_addr <= 0x0F; akm_addr++) {
// 2446 //        int result;
// 2447 //        result = i2c_read(akm_addr, AKM_REG_WHOAMI, 1, data);
// 2448 //        if (!result && (data[0] == AKM_WHOAMI))
// 2449 //            break;
// 2450 //    }
// 2451 //
// 2452 //    if (akm_addr > 0x0F) {
// 2453 //        /* TODO: Handle this case in all compass-related functions. */
// 2454 //        log_e("Compass not found.\n");
// 2455 //        return -1;
// 2456 //    }
// 2457 //
// 2458 //    st.chip_cfg.compass_addr = akm_addr;
// 2459 //
// 2460 //    data[0] = AKM_POWER_DOWN;
// 2461 //    if (i2c_write(st.chip_cfg.compass_addr, AKM_REG_CNTL, 1, data))
// 2462 //        return -1;
// 2463 //    delay_ms(1);
// 2464 //
// 2465 //    data[0] = AKM_FUSE_ROM_ACCESS;
// 2466 //    if (i2c_write(st.chip_cfg.compass_addr, AKM_REG_CNTL, 1, data))
// 2467 //        return -1;
// 2468 //    delay_ms(1);
// 2469 //
// 2470 //    /* Get sensitivity adjustment data from fuse ROM. */
// 2471 //    if (i2c_read(st.chip_cfg.compass_addr, AKM_REG_ASAX, 3, data))
// 2472 //        return -1;
// 2473 //    st.chip_cfg.mag_sens_adj[0] = (long)data[0] + 128;
// 2474 //    st.chip_cfg.mag_sens_adj[1] = (long)data[1] + 128;
// 2475 //    st.chip_cfg.mag_sens_adj[2] = (long)data[2] + 128;
// 2476 //
// 2477 //    data[0] = AKM_POWER_DOWN;
// 2478 //    if (i2c_write(st.chip_cfg.compass_addr, AKM_REG_CNTL, 1, data))
// 2479 //        return -1;
// 2480 //    delay_ms(1);
// 2481 //
// 2482 //    mpu_set_bypass(0);
// 2483 //
// 2484 //    /* Set up master mode, master clock, and ES bit. */
// 2485 //    data[0] = 0x40;
// 2486 //    if (i2c_write(st.hw->addr, st.reg->i2c_mst, 1, data))
// 2487 //        return -1;
// 2488 //
// 2489 //    /* Slave 0 reads from AKM data registers. */
// 2490 //    data[0] = BIT_I2C_READ | st.chip_cfg.compass_addr;
// 2491 //    if (i2c_write(st.hw->addr, st.reg->s0_addr, 1, data))
// 2492 //        return -1;
// 2493 //
// 2494 //    /* Compass reads start at this register. */
// 2495 //    data[0] = AKM_REG_ST1;
// 2496 //    if (i2c_write(st.hw->addr, st.reg->s0_reg, 1, data))
// 2497 //        return -1;
// 2498 //
// 2499 //    /* Enable slave 0, 8-byte reads. */
// 2500 //    data[0] = BIT_SLAVE_EN | 8;
// 2501 //    if (i2c_write(st.hw->addr, st.reg->s0_ctrl, 1, data))
// 2502 //        return -1;
// 2503 //
// 2504 //    /* Slave 1 changes AKM measurement mode. */
// 2505 //    data[0] = st.chip_cfg.compass_addr;
// 2506 //    if (i2c_write(st.hw->addr, st.reg->s1_addr, 1, data))
// 2507 //        return -1;
// 2508 //
// 2509 //    /* AKM measurement mode register. */
// 2510 //    data[0] = AKM_REG_CNTL;
// 2511 //    if (i2c_write(st.hw->addr, st.reg->s1_reg, 1, data))
// 2512 //        return -1;
// 2513 //
// 2514 //    /* Enable slave 1, 1-byte writes. */
// 2515 //    data[0] = BIT_SLAVE_EN | 1;
// 2516 //    if (i2c_write(st.hw->addr, st.reg->s1_ctrl, 1, data))
// 2517 //        return -1;
// 2518 //
// 2519 //    /* Set slave 1 data. */
// 2520 //    data[0] = AKM_SINGLE_MEASUREMENT;
// 2521 //    if (i2c_write(st.hw->addr, st.reg->s1_do, 1, data))
// 2522 //        return -1;
// 2523 //
// 2524 //    /* Trigger slave 0 and slave 1 actions at each sample. */
// 2525 //    data[0] = 0x03;
// 2526 //    if (i2c_write(st.hw->addr, st.reg->i2c_delay_ctrl, 1, data))
// 2527 //        return -1;
// 2528 //
// 2529 //#ifdef MPU9150
// 2530 //    /* For the MPU9150, the auxiliary I2C bus needs to be set to VDD. */
// 2531 //    data[0] = BIT_I2C_MST_VDDIO;
// 2532 //    if (i2c_write(st.hw->addr, st.reg->yg_offs_tc, 1, data))
// 2533 //        return -1;
// 2534 //#endif
// 2535 //
// 2536 //    return 0;
// 2537 //#else
// 2538 //    return -1;
// 2539 //#endif
// 2540 //}
// 2541 
// 2542 /**
// 2543  *  @brief      Read raw compass data.
// 2544  *  @param[out] data        Raw data in hardware units.
// 2545  *  @param[out] timestamp   Timestamp in milliseconds. Null if not needed.
// 2546  *  @return     0 if successful.
// 2547  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2548 int mpu_get_compass_reg(short *data, unsigned long *timestamp)
// 2549 {
mpu_get_compass_reg:
        MOVS     R2,R0
// 2550 #ifdef AK89xx_SECONDARY
// 2551     unsigned char tmp[9];
// 2552 
// 2553     if (!(st.chip_cfg.sensors & INV_XYZ_COMPASS))
// 2554         return -1;
// 2555 
// 2556 #ifdef AK89xx_BYPASS
// 2557     if (i2c_read(st.chip_cfg.compass_addr, AKM_REG_ST1, 8, tmp))
// 2558         return -1;
// 2559     tmp[8] = AKM_SINGLE_MEASUREMENT;
// 2560     if (i2c_write(st.chip_cfg.compass_addr, AKM_REG_CNTL, 1, tmp+8))
// 2561         return -1;
// 2562 #else
// 2563     if (i2c_read(st.hw->addr, st.reg->raw_compass, 8, tmp))
// 2564         return -1;
// 2565 #endif
// 2566 
// 2567 #if defined AK8975_SECONDARY
// 2568     /* AK8975 doesn't have the overrun error bit. */
// 2569     if (!(tmp[0] & AKM_DATA_READY))
// 2570         return -2;
// 2571     if ((tmp[7] & AKM_OVERFLOW) || (tmp[7] & AKM_DATA_ERROR))
// 2572         return -3;
// 2573 #elif defined AK8963_SECONDARY
// 2574     /* AK8963 doesn't have the data read error bit. */
// 2575     if (!(tmp[0] & AKM_DATA_READY) || (tmp[0] & AKM_DATA_OVERRUN))
// 2576         return -2;
// 2577     if (tmp[7] & AKM_OVERFLOW)
// 2578         return -3;
// 2579 #endif
// 2580     data[0] = (tmp[2] << 8) | tmp[1];
// 2581     data[1] = (tmp[4] << 8) | tmp[3];
// 2582     data[2] = (tmp[6] << 8) | tmp[5];
// 2583 
// 2584     data[0] = ((long)data[0] * st.chip_cfg.mag_sens_adj[0]) >> 8;
// 2585     data[1] = ((long)data[1] * st.chip_cfg.mag_sens_adj[1]) >> 8;
// 2586     data[2] = ((long)data[2] * st.chip_cfg.mag_sens_adj[2]) >> 8;
// 2587 
// 2588     if (timestamp)
// 2589         get_ms(timestamp);
// 2590     return 0;
// 2591 #else
// 2592     return -1;
        MOVS     R0,#-1
        BX       LR               ;; return
// 2593 #endif
// 2594 }
// 2595 
// 2596 /**
// 2597  *  @brief      Get the compass full-scale range.
// 2598  *  @param[out] fsr Current full-scale range.
// 2599  *  @return     0 if successful.
// 2600  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2601 int mpu_get_compass_fsr(unsigned short *fsr)
// 2602 {
mpu_get_compass_fsr:
        MOVS     R1,R0
// 2603 #ifdef AK89xx_SECONDARY
// 2604     fsr[0] = st.hw->compass_fsr;
// 2605     return 0;
// 2606 #else
// 2607     return -1;
        MOVS     R0,#-1
        BX       LR               ;; return
// 2608 #endif
// 2609 }
// 2610 
// 2611 /**
// 2612  *  @brief      Enters LP accel motion interrupt mode.
// 2613  *  The behavior of this feature is very different between the MPU6050 and the
// 2614  *  MPU6500. Each chip's version of this feature is explained below.
// 2615  *
// 2616  *  \n MPU6050:
// 2617  *  \n When this mode is first enabled, the hardware captures a single accel
// 2618  *  sample, and subsequent samples are compared with this one to determine if
// 2619  *  the device is in motion. Therefore, whenever this "locked" sample needs to
// 2620  *  be changed, this function must be called again.
// 2621  *
// 2622  *  \n The hardware motion threshold can be between 32mg and 8160mg in 32mg
// 2623  *  increments.
// 2624  *
// 2625  *  \n Low-power accel mode supports the following frequencies:
// 2626  *  \n 1.25Hz, 5Hz, 20Hz, 40Hz
// 2627  *
// 2628  *  \n MPU6500:
// 2629  *  \n Unlike the MPU6050 version, the hardware does not "lock in" a reference
// 2630  *  sample. The hardware monitors the accel data and detects any large change
// 2631  *  over a short period of time.
// 2632  *
// 2633  *  \n The hardware motion threshold can be between 4mg and 1020mg in 4mg
// 2634  *  increments.
// 2635  *
// 2636  *  \n MPU6500 Low-power accel mode supports the following frequencies:
// 2637  *  \n 1.25Hz, 2.5Hz, 5Hz, 10Hz, 20Hz, 40Hz, 80Hz, 160Hz, 320Hz, 640Hz
// 2638  *
// 2639  *  \n\n NOTES:
// 2640  *  \n The driver will round down @e thresh to the nearest supported value if
// 2641  *  an unsupported threshold is selected.
// 2642  *  \n To select a fractional wake-up frequency, round down the value passed to
// 2643  *  @e lpa_freq.
// 2644  *  \n The MPU6500 does not support a delay parameter. If this function is used
// 2645  *  for the MPU6500, the value passed to @e time will be ignored.
// 2646  *  \n To disable this mode, set @e lpa_freq to zero. The driver will restore
// 2647  *  the previous configuration.
// 2648  *
// 2649  *  @param[in]  thresh      Motion threshold in mg.
// 2650  *  @param[in]  time        Duration in milliseconds that the accel data must
// 2651  *                          exceed @e thresh before motion is reported.
// 2652  *  @param[in]  lpa_freq    Minimum sampling rate, or zero to disable.
// 2653  *  @return     0 if successful.
// 2654  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2655 int mpu_lp_motion_interrupt(unsigned short thresh, unsigned char time,
// 2656     unsigned char lpa_freq)
// 2657 {
mpu_lp_motion_interrupt:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 2658     unsigned char data[3];
// 2659 
// 2660     if (lpa_freq) {
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.W    ??mpu_lp_motion_interrupt_0
// 2661         unsigned char thresh_hw;
// 2662 
// 2663 #if defined MPU6050
// 2664         /* TODO: Make these const/#defines. */
// 2665         /* 1LSb = 32mg. */
// 2666         if (thresh > 8160)
        MOVW     R0,#+8161
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,R0
        BCC.N    ??mpu_lp_motion_interrupt_1
// 2667             thresh_hw = 255;
        MOVS     R0,#+255
        MOVS     R7,R0
        B.N      ??mpu_lp_motion_interrupt_2
// 2668         else if (thresh < 32)
??mpu_lp_motion_interrupt_1:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+32
        BCS.N    ??mpu_lp_motion_interrupt_3
// 2669             thresh_hw = 1;
        MOVS     R0,#+1
        MOVS     R7,R0
        B.N      ??mpu_lp_motion_interrupt_2
// 2670         else
// 2671             thresh_hw = thresh >> 5;
??mpu_lp_motion_interrupt_3:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSRS     R0,R4,#+5
        MOVS     R7,R0
// 2672 #elif defined MPU6500
// 2673         /* 1LSb = 4mg. */
// 2674         if (thresh > 1020)
// 2675             thresh_hw = 255;
// 2676         else if (thresh < 4)
// 2677             thresh_hw = 1;
// 2678         else
// 2679             thresh_hw = thresh >> 2;
// 2680 #endif
// 2681 
// 2682         if (!time)
??mpu_lp_motion_interrupt_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??mpu_lp_motion_interrupt_4
// 2683             /* Minimum duration must be 1ms. */
// 2684             time = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
// 2685 
// 2686 #if defined MPU6050
// 2687         if (lpa_freq > 40)
??mpu_lp_motion_interrupt_4:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+41
        BCC.N    ??mpu_lp_motion_interrupt_5
// 2688 #elif defined MPU6500
// 2689         if (lpa_freq > 640)
// 2690 #endif
// 2691             /* At this point, the chip has not been re-configured, so the
// 2692              * function can safely exit.
// 2693              */
// 2694             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_lp_motion_interrupt_6
// 2695 
// 2696         if (!st.chip_cfg.int_motion_only) {
??mpu_lp_motion_interrupt_5:
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+21]
        CMP      R0,#+0
        BNE.N    ??mpu_lp_motion_interrupt_7
// 2697             /* Store current settings for later. */
// 2698             if (st.chip_cfg.dmp_on) {
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??mpu_lp_motion_interrupt_8
// 2699                 mpu_set_dmp_state(0);
        MOVS     R0,#+0
        BL       mpu_set_dmp_state
// 2700                 st.chip_cfg.cache.dmp_on = 1;
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
        B.N      ??mpu_lp_motion_interrupt_9
// 2701             } else
// 2702                 st.chip_cfg.cache.dmp_on = 0;
??mpu_lp_motion_interrupt_8:
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
// 2703             mpu_get_gyro_fsr(&st.chip_cfg.cache.gyro_fsr);
??mpu_lp_motion_interrupt_9:
        LDR.N    R0,??DataTable40_7
        BL       mpu_get_gyro_fsr
// 2704             mpu_get_accel_fsr(&st.chip_cfg.cache.accel_fsr);
        LDR.N    R0,??DataTable40_8
        BL       mpu_get_accel_fsr
// 2705             mpu_get_lpf(&st.chip_cfg.cache.lpf);
        LDR.N    R0,??DataTable40_9
        BL       mpu_get_lpf
// 2706             mpu_get_sample_rate(&st.chip_cfg.cache.sample_rate);
        LDR.N    R0,??DataTable40_10
        BL       mpu_get_sample_rate
// 2707             st.chip_cfg.cache.sensors_on = st.chip_cfg.sensors;
        LDR.N    R0,??DataTable40_6
        LDR.N    R1,??DataTable40_6
        LDRB     R1,[R1, #+10]
        STRB     R1,[R0, #+30]
// 2708             mpu_get_fifo_config(&st.chip_cfg.cache.fifo_sensors);
        LDR.N    R0,??DataTable40_11
        BL       mpu_get_fifo_config
// 2709         }
// 2710 
// 2711 #ifdef MPU6050
// 2712         /* Disable hardware interrupts for now. */
// 2713         set_int_enable(0);
??mpu_lp_motion_interrupt_7:
        MOVS     R0,#+0
        BL       set_int_enable
// 2714 
// 2715         /* Enter full-power accel-only mode. */
// 2716         mpu_lp_accel_mode(0);
        MOVS     R0,#+0
        BL       mpu_lp_accel_mode
// 2717 
// 2718         /* Override current LPF (and HPF) settings to obtain a valid accel
// 2719          * reading.
// 2720          */
// 2721         data[0] = INV_FILTER_256HZ_NOLPF2;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
// 2722         if (i2c_write(st.hw->addr, st.reg->lpf, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BEQ.N    ??mpu_lp_motion_interrupt_10
// 2723             return -1;
        MOVS     R0,#-1
        B.N      ??mpu_lp_motion_interrupt_6
// 2724 
// 2725         /* NOTE: Digital high pass filter should be configured here. Since this
// 2726          * driver doesn't modify those bits anywhere, they should already be
// 2727          * cleared by default.
// 2728          */
// 2729 
// 2730         /* Configure the device to send motion interrupts. */
// 2731         /* Enable motion interrupt. */
// 2732         data[0] = BIT_MOT_INT_EN;
??mpu_lp_motion_interrupt_10:
        MOVS     R0,#+64
        STRB     R0,[SP, #+0]
// 2733         if (i2c_write(st.hw->addr, st.reg->int_enable, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+15]
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BNE.N    ??mpu_lp_motion_interrupt_11
// 2734             goto lp_int_restore;
// 2735 
// 2736         /* Set motion interrupt parameters. */
// 2737         data[0] = thresh_hw;
??mpu_lp_motion_interrupt_12:
        STRB     R7,[SP, #+0]
// 2738         data[1] = time;
        STRB     R5,[SP, #+1]
// 2739         if (i2c_write(st.hw->addr, st.reg->motion_thr, 2, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+8]
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BNE.N    ??mpu_lp_motion_interrupt_11
// 2740             goto lp_int_restore;
// 2741 
// 2742         /* Force hardware to "lock" current accel sample. */
// 2743         delay_ms(5);
??mpu_lp_motion_interrupt_13:
        MOVS     R0,#+5
        BL       delay_ms
// 2744         data[0] = (st.chip_cfg.accel_fsr << 3) | BITS_HPF;
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+9]
        LSLS     R0,R0,#+3
        ORRS     R0,R0,#0x7
        STRB     R0,[SP, #+0]
// 2745         if (i2c_write(st.hw->addr, st.reg->accel_cfg, 1, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+7]
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BNE.N    ??mpu_lp_motion_interrupt_11
// 2746             goto lp_int_restore;
// 2747 
// 2748         /* Set up LP accel mode. */
// 2749         data[0] = BIT_LPA_CYCLE;
??mpu_lp_motion_interrupt_14:
        MOVS     R0,#+32
        STRB     R0,[SP, #+0]
// 2750         if (lpa_freq == 1)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??mpu_lp_motion_interrupt_15
// 2751             data[1] = INV_LPA_1_25HZ;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        B.N      ??mpu_lp_motion_interrupt_16
// 2752         else if (lpa_freq <= 5)
??mpu_lp_motion_interrupt_15:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+6
        BCS.N    ??mpu_lp_motion_interrupt_17
// 2753             data[1] = INV_LPA_5HZ;
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
        B.N      ??mpu_lp_motion_interrupt_16
// 2754         else if (lpa_freq <= 20)
??mpu_lp_motion_interrupt_17:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+21
        BCS.N    ??mpu_lp_motion_interrupt_18
// 2755             data[1] = INV_LPA_20HZ;
        MOVS     R0,#+2
        STRB     R0,[SP, #+1]
        B.N      ??mpu_lp_motion_interrupt_16
// 2756         else
// 2757             data[1] = INV_LPA_40HZ;
??mpu_lp_motion_interrupt_18:
        MOVS     R0,#+3
        STRB     R0,[SP, #+1]
// 2758         data[1] = (data[1] << 6) | BIT_STBY_XYZG;
??mpu_lp_motion_interrupt_16:
        LDRB     R0,[SP, #+1]
        LSLS     R0,R0,#+6
        ORRS     R0,R0,#0x7
        STRB     R0,[SP, #+1]
// 2759         if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 2, data))
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+18]
        LDR.N    R0,??DataTable40_6
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+0]
        BL       i2cwrite
        CMP      R0,#+0
        BNE.N    ??mpu_lp_motion_interrupt_11
// 2760             goto lp_int_restore;
// 2761 
// 2762         st.chip_cfg.int_motion_only = 1;
??mpu_lp_motion_interrupt_19:
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+21]
// 2763         return 0;
        MOVS     R0,#+0
        B.N      ??mpu_lp_motion_interrupt_6
// 2764 #elif defined MPU6500
// 2765         /* Disable hardware interrupts. */
// 2766         set_int_enable(0);
// 2767 
// 2768         /* Enter full-power accel-only mode, no FIFO/DMP. */
// 2769         data[0] = 0;
// 2770         data[1] = 0;
// 2771         data[2] = BIT_STBY_XYZG;
// 2772         if (i2c_write(st.hw->addr, st.reg->user_ctrl, 3, data))
// 2773             goto lp_int_restore;
// 2774 
// 2775         /* Set motion threshold. */
// 2776         data[0] = thresh_hw;
// 2777         if (i2c_write(st.hw->addr, st.reg->motion_thr, 1, data))
// 2778             goto lp_int_restore;
// 2779 
// 2780         /* Set wake frequency. */
// 2781         if (lpa_freq == 1)
// 2782             data[0] = INV_LPA_1_25HZ;
// 2783         else if (lpa_freq == 2)
// 2784             data[0] = INV_LPA_2_5HZ;
// 2785         else if (lpa_freq <= 5)
// 2786             data[0] = INV_LPA_5HZ;
// 2787         else if (lpa_freq <= 10)
// 2788             data[0] = INV_LPA_10HZ;
// 2789         else if (lpa_freq <= 20)
// 2790             data[0] = INV_LPA_20HZ;
// 2791         else if (lpa_freq <= 40)
// 2792             data[0] = INV_LPA_40HZ;
// 2793         else if (lpa_freq <= 80)
// 2794             data[0] = INV_LPA_80HZ;
// 2795         else if (lpa_freq <= 160)
// 2796             data[0] = INV_LPA_160HZ;
// 2797         else if (lpa_freq <= 320)
// 2798             data[0] = INV_LPA_320HZ;
// 2799         else
// 2800             data[0] = INV_LPA_640HZ;
// 2801         if (i2c_write(st.hw->addr, st.reg->lp_accel_odr, 1, data))
// 2802             goto lp_int_restore;
// 2803 
// 2804         /* Enable motion interrupt (MPU6500 version). */
// 2805         data[0] = BITS_WOM_EN;
// 2806         if (i2c_write(st.hw->addr, st.reg->accel_intel, 1, data))
// 2807             goto lp_int_restore;
// 2808 
// 2809         /* Enable cycle mode. */
// 2810         data[0] = BIT_LPA_CYCLE;
// 2811         if (i2c_write(st.hw->addr, st.reg->pwr_mgmt_1, 1, data))
// 2812             goto lp_int_restore;
// 2813 
// 2814         /* Enable interrupt. */
// 2815         data[0] = BIT_MOT_INT_EN;
// 2816         if (i2c_write(st.hw->addr, st.reg->int_enable, 1, data))
// 2817             goto lp_int_restore;
// 2818 
// 2819         st.chip_cfg.int_motion_only = 1;
// 2820         return 0;
// 2821 #endif
// 2822     } else {
// 2823         /* Don't "restore" the previous state if no state has been saved. */
// 2824         int ii;
// 2825         char *cache_ptr = (char*)&st.chip_cfg.cache;
??mpu_lp_motion_interrupt_0:
        LDR.N    R2,??DataTable40_7
// 2826         for (ii = 0; ii < sizeof(st.chip_cfg.cache); ii++) {
        MOVS     R0,#+0
        MOVS     R1,R0
??mpu_lp_motion_interrupt_20:
        CMP      R1,#+12
        BCS.N    ??mpu_lp_motion_interrupt_21
// 2827             if (cache_ptr[ii] != 0)
        LDRB     R0,[R1, R2]
        CMP      R0,#+0
        BNE.N    ??mpu_lp_motion_interrupt_11
// 2828                 goto lp_int_restore;
// 2829         }
??mpu_lp_motion_interrupt_22:
        ADDS     R1,R1,#+1
        B.N      ??mpu_lp_motion_interrupt_20
// 2830         /* If we reach this point, motion interrupt mode hasn't been used yet. */
// 2831         return -1;
??mpu_lp_motion_interrupt_21:
        MOVS     R0,#-1
        B.N      ??mpu_lp_motion_interrupt_6
// 2832     }
// 2833 lp_int_restore:
// 2834     /* Set to invalid values to ensure no I2C writes are skipped. */
// 2835     st.chip_cfg.gyro_fsr = 0xFF;
??mpu_lp_motion_interrupt_11:
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+255
        STRB     R1,[R0, #+8]
// 2836     st.chip_cfg.accel_fsr = 0xFF;
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+255
        STRB     R1,[R0, #+9]
// 2837     st.chip_cfg.lpf = 0xFF;
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+255
        STRB     R1,[R0, #+11]
// 2838     st.chip_cfg.sample_rate = 0xFFFF;
        LDR.N    R0,??DataTable40_6
        MOVW     R1,#+65535
        STRH     R1,[R0, #+14]
// 2839     st.chip_cfg.sensors = 0xFF;
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+255
        STRB     R1,[R0, #+10]
// 2840     st.chip_cfg.fifo_enable = 0xFF;
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+255
        STRB     R1,[R0, #+16]
// 2841     st.chip_cfg.clk_src = INV_CLK_PLL;
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
// 2842     mpu_set_sensors(st.chip_cfg.cache.sensors_on);
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+30]
        BL       mpu_set_sensors
// 2843     mpu_set_gyro_fsr(st.chip_cfg.cache.gyro_fsr);
        LDR.N    R0,??DataTable40_6
        LDRH     R0,[R0, #+22]
        BL       mpu_set_gyro_fsr
// 2844     mpu_set_accel_fsr(st.chip_cfg.cache.accel_fsr);
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+24]
        BL       mpu_set_accel_fsr
// 2845     mpu_set_lpf(st.chip_cfg.cache.lpf);
        LDR.N    R0,??DataTable40_6
        LDRH     R0,[R0, #+26]
        BL       mpu_set_lpf
// 2846     mpu_set_sample_rate(st.chip_cfg.cache.sample_rate);
        LDR.N    R0,??DataTable40_6
        LDRH     R0,[R0, #+28]
        BL       mpu_set_sample_rate
// 2847     mpu_configure_fifo(st.chip_cfg.cache.fifo_sensors);
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+31]
        BL       mpu_configure_fifo
// 2848 
// 2849     if (st.chip_cfg.cache.dmp_on)
        LDR.N    R0,??DataTable40_6
        LDRB     R0,[R0, #+32]
        CMP      R0,#+0
        BEQ.N    ??mpu_lp_motion_interrupt_23
// 2850         mpu_set_dmp_state(1);
        MOVS     R0,#+1
        BL       mpu_set_dmp_state
// 2851 
// 2852 #ifdef MPU6500
// 2853     /* Disable motion interrupt (MPU6500 version). */
// 2854     data[0] = 0;
// 2855     if (i2c_write(st.hw->addr, st.reg->accel_intel, 1, data))
// 2856         goto lp_int_restore;
// 2857 #endif
// 2858 
// 2859     st.chip_cfg.int_motion_only = 0;
??mpu_lp_motion_interrupt_23:
        LDR.N    R0,??DataTable40_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+21]
// 2860     return 0;
        MOVS     R0,#+0
??mpu_lp_motion_interrupt_6:
        POP      {R1,R4-R7,PC}    ;; return
// 2861 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40:
        DC32     0x3eae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_1:
        DC32     0x3f845a1d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_2:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_3:
        DC32     test

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_4:
        DC32     0x454cb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_5:
        DC32     0x3f85e354

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_6:
        DC32     st

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_7:
        DC32     st+0x16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_8:
        DC32     st+0x18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_9:
        DC32     st+0x1A

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_10:
        DC32     st+0x1C

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_11:
        DC32     st+0x1F

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 2862 
// 2863 /**
// 2864  *  @}
// 2865  */
// 2866 
// 
//    44 bytes in section .data
//   232 bytes in section .rodata
// 9 002 bytes in section .text
// 
// 8 980 bytes of CODE  memory (+ 22 bytes shared)
//   232 bytes of CONST memory
//    44 bytes of DATA  memory
//
//Errors: none
//Warnings: none
