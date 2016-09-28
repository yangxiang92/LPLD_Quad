///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:31 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \LPLD\HW\HW_LPTMR.c                                     /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \LPLD\HW\HW_LPTMR.c -D LPLD_K60 -lCN                    /
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
//                    MINE\List\HW_LPTMR.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME HW_LPTMR

        #define SHT_PROGBITS 0x1

        PUBLIC LPLD_LPTMR_Deinit
        PUBLIC LPLD_LPTMR_DelayMs
        PUBLIC LPLD_LPTMR_DisableIrq
        PUBLIC LPLD_LPTMR_EnableIrq
        PUBLIC LPLD_LPTMR_GetPulseAcc
        PUBLIC LPLD_LPTMR_Init
        PUBLIC LPLD_LPTMR_ResetCounter
        PUBLIC LPTMR_ISR
        PUBLIC LPT_IRQHandler

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib\LPLD\HW\HW_LPTMR.c
//    1 /**
//    2  * @file HW_LPTMR.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief LPTMR底层模块相关函数
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
        LDR.N    R2,??DataTable7  ;; 0xe000e100
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
        LDR.N    R2,??DataTable7_1  ;; 0xe000e180
        MOVS     R3,#+1
        ANDS     R4,R0,#0x1F
        LSLS     R3,R3,R4
        STR      R3,[R2, R1, LSL #+2]
        POP      {R4}
        BX       LR               ;; return
//   24 #include "HW_LPTMR.h"
//   25 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 LPTMR_ISR_CALLBACK LPTMR_ISR[1];
LPTMR_ISR:
        DS8 4
//   27 
//   28 /*
//   29  * LPLD_LPTMR_Init
//   30  * LPTMR初始化函数
//   31  * 
//   32  * 参数:
//   33  *    lptmr_init_structure--LPTMR初始化结构体，
//   34  *                         具体定义见LPTMR_InitTypeDef 
//   35  * 输出:
//   36  *    0--配置错误
//   37  *    1--配置成功
//   38  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 uint8 LPLD_LPTMR_Init(LPTMR_InitTypeDef lptmr_init_structure)
//   40 {
LPLD_LPTMR_Init:
        PUSH     {R0-R2,R4,R5}
//   41   uint8  mode = lptmr_init_structure.LPTMR_Mode; 
        LDRB     R1,[SP, #+0]
//   42   uint16 period_ms = lptmr_init_structure.LPTMR_PeriodMs;
        LDRH     R2,[SP, #+2]
//   43   uint8  pluseacc_input = lptmr_init_structure.LPTMR_PluseAccInput;
        LDRB     R3,[SP, #+4]
//   44   LPTMR_ISR_CALLBACK isr_func = lptmr_init_structure.LPTMR_Isr;
        LDR      R4,[SP, #+8]
//   45 
//   46   ASSERT(mode <= LPTMR_MODE_PLACC );
//   47   ASSERT(pluseacc_input <= LPTMR_ALT2 );
//   48 
//   49   //初始化LPTMR时钟
//   50   SIM->SCGC5|=SIM_SCGC5_LPTIMER_MASK;  
        LDR.N    R0,??DataTable7_2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R5,??DataTable7_2  ;; 0x40048038
        STR      R0,[R5, #+0]
//   51    
//   52   //清空寄存器
//   53   LPTMR0->CSR = 0x00;                   
        LDR.N    R0,??DataTable7_3  ;; 0x40040000
        MOVS     R5,#+0
        STR      R5,[R0, #+0]
//   54   LPTMR0->PSR = 0x00;
        LDR.N    R0,??DataTable7_4  ;; 0x40040004
        MOVS     R5,#+0
        STR      R5,[R0, #+0]
//   55   LPTMR0->CMR = 0x00;
        LDR.N    R0,??DataTable7_5  ;; 0x40040008
        MOVS     R5,#+0
        STR      R5,[R0, #+0]
//   56    
//   57   if(mode == LPTMR_MODE_TIMER)          // 配置成低功耗定时器功能
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??LPLD_LPTMR_Init_0
//   58   {    
//   59     /* 配置LPTMR */
//   60     // LPO 1Khz
//   61     //设置比较的值
//   62     //使用内部时钟 分频系数Prescale为 2^(X+1)
//   63     //定时器的一个计数周期=时钟源(Clk_Src)/ 预分频值(Prescale)
//   64     //定时器的定时值=设置的比较值(compare_value)/定时器的一个计数周期
//   65     LPTMR0->CMR = LPTMR_CMR_COMPARE(period_ms);                 //设置比较值
        LDR.N    R0,??DataTable7_5  ;; 0x40040008
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R0, #+0]
//   66     LPTMR0->PSR = LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK;       //采用LPO时钟旁路使能
        LDR.N    R0,??DataTable7_4  ;; 0x40040004
        MOVS     R5,#+5
        STR      R5,[R0, #+0]
        B.N      ??LPLD_LPTMR_Init_1
//   67         
//   68   }
//   69   else if(mode == LPTMR_MODE_PLACC)             //配置成脉冲捕获模式
??LPLD_LPTMR_Init_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_LPTMR_Init_1
//   70   {
//   71     
//   72     if(pluseacc_input == LPTMR_ALT1)            //PTA19引脚
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??LPLD_LPTMR_Init_2
//   73     {
//   74       PORTA->PCR[19] = PORT_PCR_MUX(0x6);       //设置PTA19为脉冲累加
        LDR.N    R0,??DataTable7_6  ;; 0x4004904c
        MOV      R5,#+1536
        STR      R5,[R0, #+0]
        B.N      ??LPLD_LPTMR_Init_3
//   75     }
//   76     else if(pluseacc_input == LPTMR_ALT2)       //PTC5引脚
??LPLD_LPTMR_Init_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+2
        BNE.N    ??LPLD_LPTMR_Init_3
//   77     {
//   78       PORTC->PCR[5] = PORT_PCR_MUX(0x4);        //设置PTC5为脉冲累加  
        LDR.N    R0,??DataTable7_7  ;; 0x4004b014
        MOV      R5,#+1024
        STR      R5,[R0, #+0]
//   79     }
//   80 
//   81     //与所用的内部时钟无关
//   82     //外部输入的信号作为计数时钟
//   83     LPTMR0->PSR = LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK; 
??LPLD_LPTMR_Init_3:
        LDR.N    R0,??DataTable7_4  ;; 0x40040004
        MOVS     R5,#+5
        STR      R5,[R0, #+0]
//   84     LPTMR0->CSR = LPTMR_CSR_TPS(pluseacc_input);
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R0,R3,#+4
        ANDS     R0,R0,#0x30
        LDR.N    R5,??DataTable7_3  ;; 0x40040000
        STR      R0,[R5, #+0]
//   85     LPTMR0->CSR |= LPTMR_CSR_TMS_MASK; //捕获模式
        LDR.N    R0,??DataTable7_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R5,??DataTable7_3  ;; 0x40040000
        STR      R0,[R5, #+0]
//   86     LPTMR0->CSR |= LPTMR_CSR_TFC_MASK; //自由计数模式
        LDR.N    R0,??DataTable7_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R5,??DataTable7_3  ;; 0x40040000
        STR      R0,[R5, #+0]
//   87   }
//   88   
//   89   if(lptmr_init_structure.LPTMR_IntEnable == TRUE && isr_func != NULL)
??LPLD_LPTMR_Init_1:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+1
        BNE.N    ??LPLD_LPTMR_Init_4
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ.N    ??LPLD_LPTMR_Init_4
//   90   {
//   91     LPTMR_ISR[0] = isr_func;
        LDR.N    R0,??DataTable7_8
        STR      R4,[R0, #+0]
//   92     LPTMR0->CSR |= LPTMR_CSR_TIE_MASK;
        LDR.N    R0,??DataTable7_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R5,??DataTable7_3  ;; 0x40040000
        STR      R0,[R5, #+0]
//   93   }
//   94 
//   95   LPTMR0->CSR |= LPTMR_CSR_TEN_MASK; //开启LPTMR
??LPLD_LPTMR_Init_4:
        LDR.N    R0,??DataTable7_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R5,??DataTable7_3  ;; 0x40040000
        STR      R0,[R5, #+0]
//   96   return 1;
        MOVS     R0,#+1
        POP      {R1-R5}
        BX       LR               ;; return
//   97 }
//   98 
//   99 /*
//  100  * LPLD_LPTMR_DeInit
//  101  * LPTMR反初始化函数，关闭lptmrx
//  102  * 
//  103  * 参数:
//  104  *    无
//  105  *
//  106  * 输出:
//  107  *    0--配置错误
//  108  *    1--配置成功
//  109  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  110 uint8 LPLD_LPTMR_Deinit(void)
//  111 {
LPLD_LPTMR_Deinit:
        PUSH     {R7,LR}
//  112   //清空CSR寄存器
//  113   LPTMR0->CSR=0x00;  
        LDR.N    R0,??DataTable7_3  ;; 0x40040000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  114   //清空PSR寄存器
//  115   LPTMR0->PSR=0x00;
        LDR.N    R0,??DataTable7_4  ;; 0x40040004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  116   //清空CMR寄存器
//  117   LPTMR0->CMR=0x00;
        LDR.N    R0,??DataTable7_5  ;; 0x40040008
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  118   //禁止LPTimer中断
//  119   disable_irq(LPTimer_IRQn);
        MOVS     R0,#+85
        BL       NVIC_DisableIRQ
//  120   
//  121    //关闭LPTMR时钟
//  122   SIM->SCGC5 &= ~(SIM_SCGC5_LPTIMER_MASK);  
        LDR.N    R0,??DataTable7_2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable7_2  ;; 0x40048038
        STR      R0,[R1, #+0]
//  123   
//  124   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  125 }
//  126 
//  127 /*
//  128  *  LPLD_LPTMR_Reset
//  129  *  低功耗定时器复位，复位以后清空低功耗定时器Counter
//  130  * 
//  131  *  参数:
//  132  *      无
//  133  *  输出:
//  134  *      无
//  135  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  136 void LPLD_LPTMR_ResetCounter(void)
//  137 {
//  138   LPTMR0->CSR&=(~LPTMR_CSR_TEN_MASK);       //Reset LPTMR0 Counter
LPLD_LPTMR_ResetCounter:
        LDR.N    R0,??DataTable7_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//  139 }
        BX       LR               ;; return
//  140 /*
//  141  * LPLD_LPTMR_EnableIrq
//  142  * 使能LPTMR中断功能，在该函数中使能TIE位和LPTMR模块中断
//  143  * 
//  144  * 参数:
//  145  *    无
//  146  *
//  147  * 输出:
//  148  *    0--配置错误
//  149  *    1--配置成功
//  150  *
//  151  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  152 uint8 LPLD_LPTMR_EnableIrq(void)
//  153 {
LPLD_LPTMR_EnableIrq:
        PUSH     {R7,LR}
//  154   enable_irq(LPTimer_IRQn);
        MOVS     R0,#+85
        BL       NVIC_EnableIRQ
//  155   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  156 }
//  157 
//  158 /*
//  159  * LPLD_LPTMR_DisableIrq
//  160  * 禁止LPTMR中断
//  161  * 
//  162  * 参数:
//  163  *    无
//  164  *
//  165  * 输出:
//  166  *    0--配置错误
//  167  *    1--配置成功
//  168  *
//  169  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 uint8 LPLD_LPTMR_DisableIrq(void)
//  171 {
LPLD_LPTMR_DisableIrq:
        PUSH     {R7,LR}
//  172   disable_irq(LPTimer_IRQn); 
        MOVS     R0,#+85
        BL       NVIC_DisableIRQ
//  173   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  174 }
//  175 
//  176 /*
//  177  *  LPLD_LPTMR_GetPulseAcc
//  178  *  得到脉冲累加的值
//  179  * 
//  180  *  参数:
//  181  *      无
//  182  *  输出:
//  183  *      脉冲累加值
//  184  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 uint16 LPLD_LPTMR_GetPulseAcc(void)
//  186 {
//  187    return (uint16)LPTMR0->CNR;
LPLD_LPTMR_GetPulseAcc:
        LDR.N    R0,??DataTable7_9  ;; 0x4004000c
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  188 }
//  189 
//  190 /*
//  191  *  LPLD_LPTMR_DelayMs
//  192  *  低功耗定时器延时n个ms
//  193  * 
//  194  * 参数:
//  195  *    period_ms--设定定时器的定时值 单位ms
//  196  *    最大65535ms
//  197  *
//  198  *  输出:
//  199  *      无
//  200  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 void LPLD_LPTMR_DelayMs(uint16 period_ms)
//  202 {
//  203   if(!period_ms)
LPLD_LPTMR_DelayMs:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??LPLD_LPTMR_DelayMs_0
//  204     return;
//  205   
//  206   /* 开启LPTMR时钟 */
//  207   SIM->SCGC5|=SIM_SCGC5_LPTIMER_MASK; 
??LPLD_LPTMR_DelayMs_1:
        LDR.N    R1,??DataTable7_2  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable7_2  ;; 0x40048038
        STR      R1,[R2, #+0]
//  208   
//  209   /* 设置毫秒延时计数 */
//  210   LPTMR0->CMR = period_ms; 
        LDR.N    R1,??DataTable7_5  ;; 0x40040008
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
//  211   
//  212   /* 设置LPTMR不分频采用1kHz LPO为时钟源 */
//  213   LPTMR0->PSR = 0|LPTMR_PSR_PCS(1)|LPTMR_PSR_PBYP_MASK; 
        LDR.N    R1,??DataTable7_4  ;; 0x40040004
        MOVS     R2,#+5
        STR      R2,[R1, #+0]
//  214   
//  215   /* 开启定时器 */
//  216   LPTMR0->CSR |= LPTMR_CSR_TEN_MASK; 
        LDR.N    R1,??DataTable7_3  ;; 0x40040000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable7_3  ;; 0x40040000
        STR      R1,[R2, #+0]
//  217 
//  218   /* 等待计数达到设定值 */
//  219   while (!(LPTMR0->CSR & LPTMR_CSR_TCF_MASK));
??LPLD_LPTMR_DelayMs_2:
        LDR.N    R1,??DataTable7_3  ;; 0x40040000
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??LPLD_LPTMR_DelayMs_2
//  220   
//  221   /*清除定时比较标志 */
//  222   LPTMR0->CSR &= ~LPTMR_CSR_TEN_MASK;
        LDR.N    R1,??DataTable7_3  ;; 0x40040000
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable7_3  ;; 0x40040000
        STR      R1,[R2, #+0]
//  223   
//  224 }
??LPLD_LPTMR_DelayMs_0:
        BX       LR               ;; return
//  225 
//  226 
//  227 /*
//  228  * LPTMR中断处理函数
//  229  * 与启动文件startup_K60.s中的中断向量表关联
//  230  * 用户无需修改，程序自动进入对应通道中断函数
//  231  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 void LPT_IRQHandler(void)
//  233 {
LPT_IRQHandler:
        PUSH     {R7,LR}
//  234   LPTMR0->CSR|=LPTMR_CSR_TCF_MASK;  //清除LPT比较标志
        LDR.N    R0,??DataTable7_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable7_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//  235   LPTMR_ISR[0]();
        LDR.N    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        BLX      R0
//  236 }
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
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x40040004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x4004904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x4004b014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     LPTMR_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x4004000c

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
//   4 bytes in section .bss
// 454 bytes in section .text
// 
// 454 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: none
