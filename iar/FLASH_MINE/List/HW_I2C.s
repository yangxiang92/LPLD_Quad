///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:31 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \LPLD\HW\HW_I2C.c                                       /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \LPLD\HW\HW_I2C.c -D LPLD_K60 -lCN                      /
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
//                    MINE\List\HW_I2C.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME HW_I2C

        #define SHT_PROGBITS 0x1

        PUBLIC I2C0_IRQHandler
        PUBLIC I2C1_IRQHandler
        PUBLIC I2C_ISR
        PUBLIC LPLD_I2C_Deinit
        PUBLIC LPLD_I2C_DisableIrq
        PUBLIC LPLD_I2C_EnableIrq
        PUBLIC LPLD_I2C_Init
        PUBLIC LPLD_I2C_ReStart
        PUBLIC LPLD_I2C_ReadByte
        PUBLIC LPLD_I2C_SetMasterWR
        PUBLIC LPLD_I2C_Start
        PUBLIC LPLD_I2C_StartTrans
        PUBLIC LPLD_I2C_Stop
        PUBLIC LPLD_I2C_WaitAck
        PUBLIC LPLD_I2C_WriteByte

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib\LPLD\HW\HW_I2C.c
//    1 /*
//    2  * @file HW_I2C.c
//    3  * @version 3.02[By LPLD]
//    4  * @date 2013-11-22
//    5  * @brief I2C底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 
//   23 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        PUSH     {R4}
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.W    R2,??DataTable7  ;; 0xe000e100
        MOVS     R3,#+1
        ANDS     R4,R0,#0x1F
        LSLS     R3,R3,R4
        STR      R3,[R2, R1, LSL #+2]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        PUSH     {R4}
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.W    R2,??DataTable7_1  ;; 0xe000e180
        MOVS     R3,#+1
        ANDS     R4,R0,#0x1F
        LSLS     R3,R3,R4
        STR      R3,[R2, R1, LSL #+2]
        POP      {R4}
        BX       LR               ;; return
//   24 #include "HW_I2C.h"
//   25 
//   26 //用户自定义中断服务函数数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 I2C_ISR_CALLBACK I2C_ISR[2];
I2C_ISR:
        DS8 8
//   28 
//   29 /*
//   30  * LPLD_I2C_Init
//   31  * I2C通用初始化函数，在该函数中选择I2C通道，选择I2C SCK总线频率，
//   32  * 选择I2C SDA 和 I2C SCL的引脚，配置I2C的中断回调函数
//   33  * 
//   34  * 参数:
//   35  *    I2C_InitTypeDef--i2c_init_structure
//   36  *                     具体定义见I2C_InitTypeDef
//   37  * 输出:
//   38  *    0--配置错误
//   39  *    1--配置成功
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 LPLD_I2C_Init(I2C_InitTypeDef i2c_init_structure)
//   42 {
LPLD_I2C_Init:
        PUSH     {R0-R7}
//   43   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R1,[SP, #+0]
//   44   uint8 bus_speed = i2c_init_structure.I2C_ICR;
        LDRB     R2,[SP, #+4]
//   45   PortPinsEnum_Type scl_pin = i2c_init_structure.I2C_SclPin;
        LDRB     R3,[SP, #+6]
//   46   PortPinsEnum_Type sda_pin = i2c_init_structure.I2C_SdaPin;
        LDRB     R4,[SP, #+7]
//   47   I2C_ISR_CALLBACK isr_func = i2c_init_structure.I2C_Isr;
        LDR      R5,[SP, #+12]
//   48   boolean ode = i2c_init_structure.I2C_OpenDrainEnable;
        LDRB     R6,[SP, #+8]
//   49   uint8 ode_mask = 0;
        MOVS     R7,#+0
//   50 
//   51   //参数检查，判断SCL频率
//   52   ASSERT( bus_speed <= 0x3F);
//   53   
//   54   if(ode == TRUE)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_I2C_Init_0
//   55   {
//   56     ode_mask = PORT_PCR_ODE_MASK;
        MOVS     R0,#+32
        MOVS     R7,R0
//   57   }
//   58 
//   59   if(i2cx == I2C0)
??LPLD_I2C_Init_0:
        LDR.W    R0,??DataTable7_2  ;; 0x40066000
        CMP      R1,R0
        BNE.N    ??LPLD_I2C_Init_1
//   60   {
//   61     SIM->SCGC4 |= SIM_SCGC4_I2C0_MASK; //开启I2C0时钟
        LDR.W    R0,??DataTable7_3  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R12,??DataTable7_3  ;; 0x40048034
        STR      R0,[R12, #+0]
//   62 
//   63     if(scl_pin == PTD8)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+100
        BNE.N    ??LPLD_I2C_Init_2
//   64     {
//   65       PORTD->PCR[8] = PORT_PCR_MUX(2) | ode_mask;         
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x200
        LDR.W    R12,??DataTable7_4  ;; 0x4004c020
        STR      R0,[R12, #+0]
        B.N      ??LPLD_I2C_Init_3
//   66     }
//   67     else if(scl_pin == PTB0) 
??LPLD_I2C_Init_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+32
        BNE.N    ??LPLD_I2C_Init_4
//   68     {
//   69       PORTB->PCR[0] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x200
        LDR.W    R12,??DataTable7_5  ;; 0x4004a000
        STR      R0,[R12, #+0]
        B.N      ??LPLD_I2C_Init_3
//   70     }
//   71     else //scl_pin = PTB2
//   72     {
//   73       PORTB->PCR[2] = PORT_PCR_MUX(2) | ode_mask;
??LPLD_I2C_Init_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x200
        LDR.W    R12,??DataTable7_6  ;; 0x4004a008
        STR      R0,[R12, #+0]
//   74     }
//   75 
//   76     if(sda_pin == PTD9)
??LPLD_I2C_Init_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+101
        BNE.N    ??LPLD_I2C_Init_5
//   77     {
//   78       PORTD->PCR[9] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x200
        LDR.W    R12,??DataTable7_7  ;; 0x4004c024
        STR      R0,[R12, #+0]
        B.N      ??LPLD_I2C_Init_6
//   79     }
//   80     else if(sda_pin == PTB1) 
??LPLD_I2C_Init_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+33
        BNE.N    ??LPLD_I2C_Init_7
//   81     {
//   82       PORTB->PCR[1] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x200
        LDR.W    R12,??DataTable7_8  ;; 0x4004a004
        STR      R0,[R12, #+0]
        B.N      ??LPLD_I2C_Init_6
//   83     }
//   84     else //sda_pin = PTB3
//   85     {
//   86       PORTB->PCR[3] = PORT_PCR_MUX(2) | ode_mask; 
??LPLD_I2C_Init_7:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x200
        LDR.W    R12,??DataTable7_9  ;; 0x4004a00c
        STR      R0,[R12, #+0]
        B.N      ??LPLD_I2C_Init_6
//   87     }
//   88   }
//   89   else if(i2cx == I2C1)
??LPLD_I2C_Init_1:
        LDR.N    R0,??DataTable7_10  ;; 0x40067000
        CMP      R1,R0
        BNE.N    ??LPLD_I2C_Init_8
//   90   { 
//   91     SIM->SCGC4 |= SIM_SCGC4_I2C1_MASK; //开启I2C1时钟
        LDR.N    R0,??DataTable7_3  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R12,??DataTable7_3  ;; 0x40048034
        STR      R0,[R12, #+0]
//   92 
//   93     if(scl_pin == PTE1)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+125
        BNE.N    ??LPLD_I2C_Init_9
//   94     {
//   95       PORTE->PCR[1] = PORT_PCR_MUX(6) | ode_mask;         
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x600
        LDR.W    R12,??DataTable7_11  ;; 0x4004d004
        STR      R0,[R12, #+0]
        B.N      ??LPLD_I2C_Init_10
//   96     }
//   97     else //scl_pin = PTC10
//   98     {
//   99       PORTC->PCR[10] = PORT_PCR_MUX(2) | ode_mask;  
??LPLD_I2C_Init_9:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x200
        LDR.W    R12,??DataTable7_12  ;; 0x4004b028
        STR      R0,[R12, #+0]
//  100     }
//  101 
//  102     if(sda_pin == PTE0)
??LPLD_I2C_Init_10:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+124
        BNE.N    ??LPLD_I2C_Init_11
//  103     {
//  104       PORTE->PCR[0] = PORT_PCR_MUX(6) | ode_mask;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x600
        LDR.W    R12,??DataTable7_13  ;; 0x4004d000
        STR      R0,[R12, #+0]
        B.N      ??LPLD_I2C_Init_6
//  105     }
//  106     else //sda_pin = PTC11
//  107     {
//  108       PORTC->PCR[11] = PORT_PCR_MUX(2) | ode_mask; 
??LPLD_I2C_Init_11:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,#0x200
        LDR.W    R12,??DataTable7_14  ;; 0x4004b02c
        STR      R0,[R12, #+0]
        B.N      ??LPLD_I2C_Init_6
//  109     }
//  110   }
//  111   else
//  112     return 0;
??LPLD_I2C_Init_8:
        MOVS     R0,#+0
        B.N      ??LPLD_I2C_Init_12
//  113   
//  114   if(i2c_init_structure.I2C_IntEnable == TRUE && isr_func != NULL)
??LPLD_I2C_Init_6:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+1
        BNE.N    ??LPLD_I2C_Init_13
        MOVS     R0,R5
        CMP      R0,#+0
        BEQ.N    ??LPLD_I2C_Init_13
//  115   {
//  116     //产生I2C中断的中断源：
//  117     //1,完成1个字节传输时，IICIF置位产生中断;
//  118     //2,当Calling Address匹配成功时产生中断，参考K60文档1456页I2Cx_S寄存器IAAS位;
//  119     //3,从机模式下当总线仲裁丢失时，IICIF置位产生中断;
//  120     //  需要同时写1清除II2Cx_S的ARBL标志位和 I2Cx_S的 IICIF的标志位;
//  121     //4,如果SMB寄存器的SHTF2 interrupt使能，当SHTF2 timeout时IICIF置位产生中断;
//  122     //  需要同时写1清除I2Cx_SMB的SLTF标志位和 I2Cx_S的 IICIF的标志位;
//  123     //5,当SLT寄存器不为0时，SMBus的SCL low timer计数等于SLT的值时IICIF置位产生中断;
//  124     //  需要同时写1清除I2Cx_SMB的SHTF2标志位和 I2Cx_S的 IICIF的标志位;
//  125     //6,当Wakeup 使能，I2C在停止模式下接收到Wakeup信号，将产生中断.
//  126 
//  127     i2cx->C1 |= I2C_C1_IICIE_MASK;
        LDRB     R0,[R1, #+2]
        ORRS     R0,R0,#0x40
        STRB     R0,[R1, #+2]
//  128 
//  129     if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_2  ;; 0x40066000
        CMP      R1,R0
        BNE.N    ??LPLD_I2C_Init_14
//  130     {
//  131       I2C_ISR[0] = isr_func;
        LDR.N    R0,??DataTable7_15
        STR      R5,[R0, #+0]
        B.N      ??LPLD_I2C_Init_13
//  132     }
//  133     else if(i2cx == I2C0)
??LPLD_I2C_Init_14:
        LDR.N    R0,??DataTable7_2  ;; 0x40066000
        CMP      R1,R0
        BNE.N    ??LPLD_I2C_Init_15
//  134     {
//  135       I2C_ISR[1] = isr_func;
        LDR.N    R0,??DataTable7_15
        STR      R5,[R0, #+4]
        B.N      ??LPLD_I2C_Init_13
//  136     }
//  137     else 
//  138       return 0;
??LPLD_I2C_Init_15:
        MOVS     R0,#+0
        B.N      ??LPLD_I2C_Init_12
//  139   }
//  140 
//  141   //i2cx->C2 |= I2C_C2_HDRS_MASK;      //提高I2C驱动能力
//  142   i2cx->F  = I2C_F_ICR(bus_speed)|I2C_F_MULT(0);   //配置I2Cx SCL BusSpeed
??LPLD_I2C_Init_13:
        ANDS     R0,R2,#0x3F
        STRB     R0,[R1, #+1]
//  143   i2cx->C1 |= I2C_C1_IICEN_MASK;      //使能I2Cx
        LDRB     R0,[R1, #+2]
        ORRS     R0,R0,#0x80
        STRB     R0,[R1, #+2]
//  144   
//  145   return 1;
        MOVS     R0,#+1
??LPLD_I2C_Init_12:
        ADD      SP,SP,#+16
        POP      {R4-R7}
        BX       LR               ;; return
//  146 }
//  147 
//  148 /*
//  149  * LPLD_I2C_Deinit
//  150  * I2C模块反初始化函数，在该函数中关闭I2Cx的外设总线时钟，关闭I2C模块的
//  151  * 时钟，禁止外设中断。
//  152  *
//  153  * 参数:
//  154  *    I2C_InitTypeDef--i2c_init_structure
//  155  *                     具体定义见I2C_InitTypeDef
//  156  *
//  157  * 输出:
//  158  *    无
//  159  *
//  160  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  161 uint8 LPLD_I2C_Deinit(I2C_InitTypeDef i2c_init_structure)
//  162 {
LPLD_I2C_Deinit:
        PUSH     {R0-R4,LR}
//  163   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  164 
//  165   i2cx->C1 &= ~I2C_C1_IICEN_MASK;      //I2Cx
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0x7F
        STRB     R0,[R4, #+2]
//  166   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_2  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Deinit_0
//  167   {
//  168     SIM->SCGC4 &= ~SIM_SCGC4_I2C0_MASK; //关闭I2C0时钟
        LDR.N    R0,??DataTable7_3  ;; 0x40048034
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.N    R1,??DataTable7_3  ;; 0x40048034
        STR      R0,[R1, #+0]
//  169     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_Deinit_1
//  170   }
//  171   else if (i2cx == I2C1)
??LPLD_I2C_Deinit_0:
        LDR.N    R0,??DataTable7_10  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Deinit_2
//  172   {
//  173     SIM->SCGC4 &= ~SIM_SCGC4_I2C1_MASK; //关闭I2C1时钟
        LDR.N    R0,??DataTable7_3  ;; 0x40048034
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable7_3  ;; 0x40048034
        STR      R0,[R1, #+0]
//  174     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_Deinit_1
//  175   }
//  176   else
//  177   {
//  178     return 0;
??LPLD_I2C_Deinit_2:
        MOVS     R0,#+0
        B.N      ??LPLD_I2C_Deinit_3
//  179   }
//  180   return 1;
??LPLD_I2C_Deinit_1:
        MOVS     R0,#+1
??LPLD_I2C_Deinit_3:
        ADD      SP,SP,#+16
        POP      {R4,PC}          ;; return
//  181 }
//  182 
//  183 /*
//  184  * LPLD_I2C_EnableIrq
//  185  * I2C外设中断使能
//  186  *
//  187  * 参数:
//  188  *    I2C_InitTypeDef--i2c_init_structure
//  189  *                     具体定义见I2C_InitTypeDef
//  190  *
//  191  * 输出:
//  192  *    无
//  193  *
//  194  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  195 void LPLD_I2C_EnableIrq(I2C_InitTypeDef i2c_init_structure)
//  196 {
LPLD_I2C_EnableIrq:
        PUSH     {R0-R4,LR}
//  197   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx; 
        LDR      R4,[SP, #+0]
//  198 
//  199   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_2  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_EnableIrq_0
//  200   {
//  201     enable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_I2C_EnableIrq_1
//  202   }
//  203   else if (i2cx == I2C1)
??LPLD_I2C_EnableIrq_0:
        LDR.N    R0,??DataTable7_10  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_EnableIrq_2
//  204   {
//  205     enable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_I2C_EnableIrq_1
//  206   }
//  207   else
//  208   {
//  209     return;
??LPLD_I2C_EnableIrq_2:
        B.N      ??LPLD_I2C_EnableIrq_3
//  210   }
//  211 }
??LPLD_I2C_EnableIrq_1:
??LPLD_I2C_EnableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  212 
//  213 /*
//  214  * LPLD_I2C_DisableIrq
//  215  * 禁止I2C外设中断
//  216  *
//  217  * 参数:
//  218  *    I2C_InitTypeDef--i2c_init_structure
//  219  *                     具体定义见I2C_InitTypeDef
//  220  *
//  221  * 输出:
//  222  *    无
//  223  *
//  224  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  225 void LPLD_I2C_DisableIrq(I2C_InitTypeDef i2c_init_structure)
//  226 {
LPLD_I2C_DisableIrq:
        PUSH     {R0-R4,LR}
//  227   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  228   i2cx->C1 &= ~I2C_C1_IICIE_MASK;
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R4, #+2]
//  229 
//  230   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_2  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_DisableIrq_0
//  231   {
//  232     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_DisableIrq_1
//  233   }
//  234   else if (i2cx == I2C1)
??LPLD_I2C_DisableIrq_0:
        LDR.N    R0,??DataTable7_10  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_DisableIrq_2
//  235   {
//  236     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_DisableIrq_1
//  237   }
//  238   else
//  239   {
//  240     return;
??LPLD_I2C_DisableIrq_2:
        B.N      ??LPLD_I2C_DisableIrq_3
//  241   }
//  242 }
??LPLD_I2C_DisableIrq_1:
??LPLD_I2C_DisableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  243 
//  244 /*
//  245  * LPLD_I2C_Start
//  246  * 产生I2C开始信号
//  247  * 
//  248  * 参数:
//  249  *    i2cx--选择I2C模块的通道
//  250  *      |__I2C0           --I2C通道0
//  251  *      |__I2C1           --I2C通道1
//  252  * 输出:
//  253  *    无
//  254  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  255 void LPLD_I2C_Start(I2C_Type *i2cx)
//  256 {
//  257   i2cx->C1 |= I2C_C1_TX_MASK ;
LPLD_I2C_Start:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x10
        STRB     R1,[R0, #+2]
//  258   i2cx->C1 |= I2C_C1_MST_MASK ;
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x20
        STRB     R1,[R0, #+2]
//  259 }
        BX       LR               ;; return
//  260 
//  261 /*
//  262  * LPLD_ReStart
//  263  * I2C再次产生开始信号
//  264  * 
//  265  * 参数:
//  266  *    i2cx--选择I2C模块的通道
//  267  *      |__I2C0           --I2C通道0
//  268  *      |__I2C1           --I2C通道1
//  269  * 输出:
//  270  *    无
//  271 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  272 void LPLD_I2C_ReStart(I2C_Type *i2cx)
//  273 {
//  274   i2cx->C1 |= I2C_C1_RSTA_MASK ;
LPLD_I2C_ReStart:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x4
        STRB     R1,[R0, #+2]
//  275 }
        BX       LR               ;; return
//  276 
//  277 /*
//  278  * LPLD_I2C_Stop
//  279  * 产生I2C停止信号
//  280  * 
//  281  * 参数:
//  282  *    i2cx--选择I2C模块的通道
//  283  *      |__I2C0           --I2C通道0
//  284  *      |__I2C1           --I2C通道1
//  285  * 输出:
//  286  *    无
//  287  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  288 void LPLD_I2C_Stop(I2C_Type *i2cx)
//  289 {
//  290   i2cx->C1 &=(~I2C_C1_MST_MASK);
LPLD_I2C_Stop:
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xDF
        STRB     R1,[R0, #+2]
//  291   i2cx->C1 &=(~I2C_C1_TX_MASK); 
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xEF
        STRB     R1,[R0, #+2]
//  292 }
        BX       LR               ;; return
//  293 
//  294 /*
//  295  * LPLD_I2C_WaitAck
//  296  * I2C设置等待应答信号，开启则等待，关闭则不等待
//  297  * 
//  298  * 参数:
//  299  *    i2cx--选择I2C模块的通道
//  300  *      |__I2C0           --I2C通道0
//  301  *      |__I2C1           --I2C通道1
//  302  *    is_wait--选择是否等待应答
//  303  *      |__I2C_ACK_OFF    --关闭等待Ack
//  304  *      |__I2C_ACK_ON     --开启等待Ack，并等待ACK信号
//  305  * 输出:
//  306  *    无
//  307  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  308 void LPLD_I2C_WaitAck(I2C_Type *i2cx, uint8 is_wait)
//  309 {
//  310   uint16 time_out;
//  311   if(is_wait == I2C_ACK_ON)
LPLD_I2C_WaitAck:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_I2C_WaitAck_0
//  312   {
//  313     while(!(i2cx->S & I2C_S_IICIF_MASK))
??LPLD_I2C_WaitAck_1:
        LDRB     R3,[R0, #+3]
        LSLS     R3,R3,#+30
        BMI.N    ??LPLD_I2C_WaitAck_2
//  314     {
//  315       if(time_out>60000) //如果等待超时，强行退出
        MOVW     R3,#+60001
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,R3
        BCS.N    ??LPLD_I2C_WaitAck_2
//  316       {
//  317         break;
//  318       }
//  319       else time_out++;
??LPLD_I2C_WaitAck_3:
        ADDS     R2,R2,#+1
        B.N      ??LPLD_I2C_WaitAck_1
//  320     }
//  321     i2cx->S |= I2C_S_IICIF_MASK;
??LPLD_I2C_WaitAck_2:
        LDRB     R3,[R0, #+3]
        ORRS     R3,R3,#0x2
        STRB     R3,[R0, #+3]
        B.N      ??LPLD_I2C_WaitAck_4
//  322   }
//  323   else
//  324   {
//  325     //关闭I2C的ACK
//  326     i2cx->C1 |= I2C_C1_TXAK_MASK; 
??LPLD_I2C_WaitAck_0:
        LDRB     R3,[R0, #+2]
        ORRS     R3,R3,#0x8
        STRB     R3,[R0, #+2]
//  327   }
//  328 }
??LPLD_I2C_WaitAck_4:
        BX       LR               ;; return
//  329 
//  330 /*
//  331  * LPLD_I2C_Write
//  332  * I2C发送一个字节给目的地址设备
//  333  * 
//  334  * 参数:
//  335  *    i2cx--选择I2C模块的通道
//  336  *      |__I2C0           --I2C通道0
//  337  *      |__I2C1           --I2C通道1
//  338  *    data8--要发送的字节数据
//  339  * 输出:
//  340  *    无
//  341  *
//  342  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  343 void LPLD_I2C_WriteByte(I2C_Type *i2cx, uint8 data8)
//  344 {
//  345   i2cx->D = data8; 
LPLD_I2C_WriteByte:
        STRB     R1,[R0, #+4]
//  346 }
        BX       LR               ;; return
//  347 
//  348 /*
//  349  * LPLD_I2C_Read
//  350  * I2C从外部设备读一个字节
//  351  * 
//  352  * 参数:
//  353  *    i2cx--选择I2C模块的通道
//  354  *      |__I2C0           --I2C通道0
//  355  *      |__I2C1           --I2C通道1
//  356  * 输出:
//  357  *    I2C读取的字节 
//  358  */
//  359 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  360 uint8 LPLD_I2C_ReadByte(I2C_Type *i2cx)
//  361 {
LPLD_I2C_ReadByte:
        MOVS     R1,R0
//  362   uint8 temp;
//  363   temp = i2cx->D; 
        LDRB     R2,[R1, #+4]
        MOVS     R0,R2
//  364   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  365 }
//  366 
//  367 /*
//  368  * LPLD_I2C_SetMasterWR
//  369  * I2C主机读写模式配置
//  370  * 
//  371  * 参数:
//  372  *    IICx--选择I2C模块的通道
//  373  *      |__I2C0           --I2C通道0
//  374  *      |__I2C1           --I2C通道1
//  375  *    mode--读写模式选择
//  376  *      |__I2C_MWSR         --主机写
//  377  *      |__I2C_MRSW         --主机读
//  378  * 输出:
//  379  *    无
//  380  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  381 void LPLD_I2C_SetMasterWR(I2C_Type *i2cx, uint8 mode)
//  382 {
//  383   if(mode==I2C_MRSW) 
LPLD_I2C_SetMasterWR:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_I2C_SetMasterWR_0
//  384     i2cx->C1 &= (~I2C_C1_TX_MASK);
        LDRB     R2,[R0, #+2]
        ANDS     R2,R2,#0xEF
        STRB     R2,[R0, #+2]
        B.N      ??LPLD_I2C_SetMasterWR_1
//  385   else
//  386     i2cx->C1 |= ( I2C_C1_TX_MASK);
??LPLD_I2C_SetMasterWR_0:
        LDRB     R2,[R0, #+2]
        ORRS     R2,R2,#0x10
        STRB     R2,[R0, #+2]
//  387 }
??LPLD_I2C_SetMasterWR_1:
        BX       LR               ;; return
//  388 
//  389 /*
//  390  * LPLD_I2C_StartTrans
//  391  * I2C开始传输函数，需要设置外围设备地址和读写模式
//  392  * 
//  393  * 参数:
//  394  *    IICx--选择I2C模块的通道
//  395  *      |__I2C0           --I2C通道0
//  396  *      |__I2C1           --I2C通道1
//  397  *    addr--外围设备地址     
//  398  *    mode--读写模式选择
//  399  *      |__I2C_MWSR         --主机写
//  400  *      |__I2C_MRSW         --主机读
//  401  * 输出:
//  402  *    无
//  403  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  404 void LPLD_I2C_StartTrans(I2C_Type *i2cx, uint8 addr, uint8 mode)
//  405 {
LPLD_I2C_StartTrans:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  406   //I2C产生start信号
//  407   LPLD_I2C_Start(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_Start
//  408   //将从机地址和主机读写位合成一个字节写入
//  409   LPLD_I2C_WriteByte(i2cx, (addr<<1)|mode );
        ORRS     R1,R6,R5, LSL #+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//  410 }
        POP      {R4-R6,PC}       ;; return
//  411 
//  412 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  413 void I2C0_IRQHandler(void)
//  414 {
I2C0_IRQHandler:
        PUSH     {R7,LR}
//  415 #if (UCOS_II > 0u)
//  416   OS_CPU_SR  cpu_sr = 0u;
//  417   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  418   OSIntEnter();
//  419   OS_EXIT_CRITICAL();
//  420 #endif
//  421   if(I2C0->S & I2C_S_IICIF_MASK)
        LDR.N    R0,??DataTable7_16  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C0_IRQHandler_0
//  422   {
//  423     I2C_ISR[0]();
        LDR.N    R0,??DataTable7_15
        LDR      R0,[R0, #+0]
        BLX      R0
//  424     if(I2C0->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable7_17  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??I2C0_IRQHandler_1
//  425     {
//  426       I2C0->SMB |= I2C_SMB_SLTF_MASK;
        LDR.N    R0,??DataTable7_17  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable7_17  ;; 0x40066008
        STRB     R0,[R1, #+0]
//  427     }
//  428     if(I2C0->SMB & I2C_SMB_SHTF2_MASK)
??I2C0_IRQHandler_1:
        LDR.N    R0,??DataTable7_17  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C0_IRQHandler_2
//  429     {
//  430       I2C0->SMB |= I2C_SMB_SHTF2_MASK;
        LDR.N    R0,??DataTable7_17  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_17  ;; 0x40066008
        STRB     R0,[R1, #+0]
//  431     }
//  432     if(I2C0->S & I2C_S_ARBL_MASK)
??I2C0_IRQHandler_2:
        LDR.N    R0,??DataTable7_16  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C0_IRQHandler_3
//  433     {
//  434       I2C0->S |= I2C_S_ARBL_MASK;
        LDR.N    R0,??DataTable7_16  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable7_16  ;; 0x40066003
        STRB     R0,[R1, #+0]
//  435     }
//  436     I2C0->S |= I2C_S_IICIF_MASK;
??I2C0_IRQHandler_3:
        LDR.N    R0,??DataTable7_16  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_16  ;; 0x40066003
        STRB     R0,[R1, #+0]
//  437   }
//  438 #if (UCOS_II > 0u)
//  439   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  440 #endif
//  441 }
??I2C0_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  442 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  443 void I2C1_IRQHandler(void)
//  444 {
I2C1_IRQHandler:
        PUSH     {R7,LR}
//  445 
//  446 #if (UCOS_II > 0u)
//  447   OS_CPU_SR  cpu_sr = 0u;
//  448   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  449   OSIntEnter();
//  450   OS_EXIT_CRITICAL();
//  451 #endif
//  452 
//  453   if(I2C1->S & I2C_S_IICIF_MASK)
        LDR.N    R0,??DataTable7_18  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_IRQHandler_0
//  454   {
//  455     I2C_ISR[1]();
        LDR.N    R0,??DataTable7_15
        LDR      R0,[R0, #+4]
        BLX      R0
//  456     if(I2C1->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable7_19  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??I2C1_IRQHandler_1
//  457     {
//  458       I2C1->SMB |= I2C_SMB_SLTF_MASK;
        LDR.N    R0,??DataTable7_19  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable7_19  ;; 0x40067008
        STRB     R0,[R1, #+0]
//  459     }
//  460     if(I2C1->SMB & I2C_SMB_SHTF2_MASK)
??I2C1_IRQHandler_1:
        LDR.N    R0,??DataTable7_19  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_IRQHandler_2
//  461     {
//  462       I2C1->SMB |= I2C_SMB_SHTF2_MASK;
        LDR.N    R0,??DataTable7_19  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_19  ;; 0x40067008
        STRB     R0,[R1, #+0]
//  463     }
//  464     if(I2C1->S & I2C_S_ARBL_MASK)
??I2C1_IRQHandler_2:
        LDR.N    R0,??DataTable7_18  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C1_IRQHandler_3
//  465     {
//  466       I2C1->S |= I2C_S_ARBL_MASK;
        LDR.N    R0,??DataTable7_18  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable7_18  ;; 0x40067003
        STRB     R0,[R1, #+0]
//  467     }
//  468     I2C1->S |= I2C_S_IICIF_MASK;
??I2C1_IRQHandler_3:
        LDR.N    R0,??DataTable7_18  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_18  ;; 0x40067003
        STRB     R0,[R1, #+0]
//  469   }
//  470   
//  471 #if (UCOS_II > 0u)
//  472   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  473 #endif
//  474 }
??I2C1_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x40067000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     I2C_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     0x40066003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     0x40066008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     0x40067003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     0x40067008

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  475 
//  476 
//  477 
// 
//   8 bytes in section .bss
// 976 bytes in section .text
// 
// 976 bytes of CODE memory
//   8 bytes of DATA memory
//
//Errors: none
//Warnings: none
