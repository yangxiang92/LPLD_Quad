///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:23 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \LPLD\HW\HW_NVIC.c                                      /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \LPLD\HW\HW_NVIC.c -D LPLD_K60 -lCN                     /
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
//                    MINE\List\HW_NVIC.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME HW_NVIC

        #define SHT_PROGBITS 0x1

        PUBLIC LPLD_NVIC_Init

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib\LPLD\HW\HW_NVIC.c
//    1 /**
//    2  * @file HW_NVIC.c
//    3  * @version 3.02[By LPLD]
//    4  * @date 2013-11-29
//    5  * @brief 内核NVIC模块相关函数
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
//   22 #include "HW_NVIC.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_SetPriorityGrouping(uint32_t)
NVIC_SetPriorityGrouping:
        ANDS     R2,R0,#0x7
        LDR.N    R3,??DataTable3  ;; 0xe000ed0c
        LDR      R3,[R3, #+0]
        MOVS     R1,R3
        MOVW     R3,#+63743
        ANDS     R1,R3,R1
        LDR.N    R3,??DataTable3_1  ;; 0x5fa0000
        ORRS     R3,R3,R2, LSL #+8
        ORRS     R1,R3,R1
        LDR.N    R3,??DataTable3  ;; 0xe000ed0c
        STR      R1,[R3, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        PUSH     {R4}
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.N    R2,??DataTable3_2  ;; 0xe000e100
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
        LDR.N    R2,??DataTable3_3  ;; 0xe000e180
        MOVS     R3,#+1
        ANDS     R4,R0,#0x1F
        LSLS     R3,R3,R4
        STR      R3,[R2, R1, LSL #+2]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_SetPriority(IRQn_Type, uint32_t)
NVIC_SetPriority:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BPL.N    ??NVIC_SetPriority_0
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R2,R0,#0xF
        LDR.N    R3,??DataTable3_4  ;; 0xe000ed18
        ADDS     R2,R2,R3
        LSLS     R3,R1,#+4
        STRB     R3,[R2, #-4]
        B.N      ??NVIC_SetPriority_1
??NVIC_SetPriority_0:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable3_5  ;; 0xe000e400
        LSLS     R3,R1,#+4
        STRB     R3,[R0, R2]
??NVIC_SetPriority_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0xe000ed0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x5fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp uint32_t NVIC_EncodePriority(uint32_t, uint32_t, uint32_t)
NVIC_EncodePriority:
        PUSH     {R4-R6}
        MOVS     R3,R0
        ANDS     R4,R3,#0x7
        RSBS     R6,R4,#+7
        CMP      R6,#+5
        BCC.N    ??NVIC_EncodePriority_0
        MOVS     R0,#+4
        B.N      ??NVIC_EncodePriority_1
??NVIC_EncodePriority_0:
        RSBS     R0,R4,#+7
??NVIC_EncodePriority_1:
        ADDS     R6,R4,#+4
        CMP      R6,#+7
        BCS.N    ??NVIC_EncodePriority_2
        MOVS     R5,#+0
        B.N      ??NVIC_EncodePriority_3
??NVIC_EncodePriority_2:
        SUBS     R5,R4,#+3
??NVIC_EncodePriority_3:
        MOVS     R6,#+1
        LSLS     R0,R6,R0
        SUBS     R0,R0,#+1
        ANDS     R0,R0,R1
        LSLS     R0,R0,R5
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        SUBS     R1,R1,#+1
        ANDS     R1,R1,R2
        ORRS     R0,R1,R0
        POP      {R4-R6}
        BX       LR               ;; return
//   23 
//   24 /*
//   25  * LPLD_NVIC_Init
//   26  *
//   27  * 在该函数中配置IRQn_Type通道优先级，并根据需要在NVIC中使能IRQn_Type
//   28  * 在函数中调用了core_m4.h中的NVIC函数管理M4内核的16个中断优先级
//   29  * 16个中断优先级通过分组的形式进行管理，将NVIC中的优先级分为5组，NVIC_PriorityGroup_0 -- 5
//   30  * 每组包含抢占式优先级（NVIC_IRQChannelPreemptionPriority）和响应式优先级（NVIC_IRQChannelSubPriority）
//   31  *
//   32  * 优先级仲裁:
//   33  * >1 PreemptionPriority优先级高的才能抢占PreemptionPriority优先级低的中断异常;
//   34  * (即NVIC_IRQChannelPreemptionPriority值越小优先级越高);
//   35  * >2 PreemptionPriority优先级相同的中断异常之间不能相互抢占;
//   36  * >3 如果PreemptionPriority优先级相等，再比较SubPriority响应优先级，SubPriority响应优先级值越小中断优先级越高;
//   37  *
//   38  * NVIC中的优先级分组划分见NVIC_InitTypeDef中的NVIC 中断分组
//   39  * 
//   40  * 参数:
//   41  *    NVIC_InitStructure--NVIC初始化结构体，
//   42  *                        具体定义见NVIC_InitTypeDef
//   43  * 输出:
//   44  *    0:配置失败
//   45  *    1:配置成功
//   46  *
//   47 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 uint8 LPLD_NVIC_Init(NVIC_InitTypeDef NVIC_InitStructure)
//   49 {
LPLD_NVIC_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R10,LR}
//   50   uint8  request = 1;
        MOVS     R4,#+1
//   51   IRQn_Type int_id = NVIC_InitStructure.NVIC_IRQChannel;
        LDRSB    R5,[SP, #+32]
//   52   uint32 nvic_priority_group = NVIC_InitStructure.NVIC_IRQChannelGroupPriority; 
        LDR      R6,[SP, #+36]
//   53   uint32 nvic_preemption_priority = NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority;
        LDR      R7,[SP, #+40]
//   54   uint32 nvic_sub_priority = NVIC_InitStructure.NVIC_IRQChannelSubPriority;
        LDR      R8,[SP, #+44]
//   55   boolean status = NVIC_InitStructure.NVIC_IRQChannelEnable;
        LDRB     R9,[SP, #+48]
//   56   uint32 temp;
//   57   //参数检查
//   58   ASSERT(IS_NVIC_PRIORITY_GROUP(nvic_priority_group));
//   59   ASSERT(IS_NVIC_PREEMPTION_PRIORITY(nvic_preemption_priority));
//   60   ASSERT(IS_NVIC_SUB_PRIORITY(nvic_sub_priority));
//   61   //根据 NVIC中断分组 配置抢占优先级
//   62   switch(nvic_priority_group)
        CMP      R6,#+3
        BEQ.N    ??LPLD_NVIC_Init_0
        BCC.N    ??LPLD_NVIC_Init_1
        CMP      R6,#+5
        BEQ.N    ??LPLD_NVIC_Init_2
        BCC.N    ??LPLD_NVIC_Init_3
        CMP      R6,#+7
        BEQ.N    ??LPLD_NVIC_Init_4
        BCC.N    ??LPLD_NVIC_Init_5
        B.N      ??LPLD_NVIC_Init_1
//   63   {
//   64       case NVIC_PriorityGroup_0: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_0);
??LPLD_NVIC_Init_4:
        MOVS     R0,#+7
        BL       NVIC_SetPriorityGrouping
//   65               if(nvic_preemption_priority > 0 || nvic_sub_priority >15)
        CMP      R7,#+0
        BNE.N    ??LPLD_NVIC_Init_6
        CMP      R8,#+16
        BCC.N    ??LPLD_NVIC_Init_7
//   66                 request = 0;
??LPLD_NVIC_Init_6:
        MOVS     R0,#+0
        MOVS     R4,R0
//   67               break;
??LPLD_NVIC_Init_7:
        B.N      ??LPLD_NVIC_Init_8
//   68       case NVIC_PriorityGroup_1: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_1);
??LPLD_NVIC_Init_5:
        MOVS     R0,#+6
        BL       NVIC_SetPriorityGrouping
//   69               if(nvic_preemption_priority > 1 || nvic_sub_priority >7)
        CMP      R7,#+2
        BCS.N    ??LPLD_NVIC_Init_9
        CMP      R8,#+8
        BCC.N    ??LPLD_NVIC_Init_10
//   70                 request = 0;
??LPLD_NVIC_Init_9:
        MOVS     R0,#+0
        MOVS     R4,R0
//   71               break;
??LPLD_NVIC_Init_10:
        B.N      ??LPLD_NVIC_Init_8
//   72       case NVIC_PriorityGroup_2: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_2);
??LPLD_NVIC_Init_2:
        MOVS     R0,#+5
        BL       NVIC_SetPriorityGrouping
//   73               if(nvic_preemption_priority > 3 || nvic_sub_priority >3)
        CMP      R7,#+4
        BCS.N    ??LPLD_NVIC_Init_11
        CMP      R8,#+4
        BCC.N    ??LPLD_NVIC_Init_12
//   74                 request = 0;
??LPLD_NVIC_Init_11:
        MOVS     R0,#+0
        MOVS     R4,R0
//   75               break;
??LPLD_NVIC_Init_12:
        B.N      ??LPLD_NVIC_Init_8
//   76       case NVIC_PriorityGroup_3: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_3);
??LPLD_NVIC_Init_3:
        MOVS     R0,#+4
        BL       NVIC_SetPriorityGrouping
//   77               if(nvic_preemption_priority > 7 || nvic_sub_priority >1)
        CMP      R7,#+8
        BCS.N    ??LPLD_NVIC_Init_13
        CMP      R8,#+2
        BCC.N    ??LPLD_NVIC_Init_14
//   78                 request = 0;
??LPLD_NVIC_Init_13:
        MOVS     R0,#+0
        MOVS     R4,R0
//   79               break;
??LPLD_NVIC_Init_14:
        B.N      ??LPLD_NVIC_Init_8
//   80       case NVIC_PriorityGroup_4: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_4);
??LPLD_NVIC_Init_0:
        MOVS     R0,#+3
        BL       NVIC_SetPriorityGrouping
//   81               if(nvic_preemption_priority > 15 || nvic_sub_priority >0)
        CMP      R7,#+16
        BCS.N    ??LPLD_NVIC_Init_15
        CMP      R8,#+0
        BEQ.N    ??LPLD_NVIC_Init_16
//   82                 request = 0;
??LPLD_NVIC_Init_15:
        MOVS     R0,#+0
        MOVS     R4,R0
//   83               break;
??LPLD_NVIC_Init_16:
        B.N      ??LPLD_NVIC_Init_8
//   84       default:return 0;
??LPLD_NVIC_Init_1:
        MOVS     R0,#+0
        B.N      ??LPLD_NVIC_Init_17
//   85   }
//   86   //根据中断分抢占设置中断抢占优先级
//   87   //根据中断分抢占设置中断响应优先级
//   88   temp = NVIC_EncodePriority(nvic_priority_group,\ 
//   89                              nvic_preemption_priority,\ 
//   90                              nvic_sub_priority);
??LPLD_NVIC_Init_8:
        MOV      R2,R8
        MOVS     R1,R7
        MOVS     R0,R6
        BL       NVIC_EncodePriority
        MOV      R10,R0
//   91   //设置中断向量号,并在M4内核中设置NVIC优先级
//   92   NVIC_SetPriority(int_id,temp);
        MOV      R1,R10
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_SetPriority
//   93   
//   94   if(status == TRUE)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_NVIC_Init_18
//   95   {
//   96     NVIC_EnableIRQ(int_id);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_NVIC_Init_19
//   97   }
//   98   else
//   99   {
//  100     NVIC_DisableIRQ(int_id);
??LPLD_NVIC_Init_18:
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  101   }
//  102   return request;
??LPLD_NVIC_Init_19:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_NVIC_Init_17:
        POP      {R4-R10}
        LDR      PC,[SP], #+20    ;; return
//  103 }

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
// 418 bytes in section .text
// 
// 418 bytes of CODE memory
//
//Errors: none
//Warnings: none
