///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    21/Mar/2014  14:38:50 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\lib /
//                    \LPLD\HW\HW_NVIC.c                                      /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\lib /
//                    \LPLD\HW\HW_NVIC.c -D LPLD_K60 -lCN                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\BOOT\L /
//                    ist\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\i /
//                    ar\BOOT\List\ -o E:\ShawnDocuments\IAR_WorkSpace\LPLD_Q /
//                    uad_V2\iar\BOOT\Obj\ --no_cse --no_unroll --no_inline   /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\app\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V /
//                    2\iar\..\source\module\ -I                              /
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
//                    rce\lib\USB\class\ -Ol -I "D:\Program Files\IAR         /
//                    Systems\Embedded Workbench 6.4\arm\CMSIS\Include\" -D   /
//                    ARM_MATH_CM4                                            /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\BOOT\L /
//                    ist\HW_NVIC.s                                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME HW_NVIC

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC LPLD_NVIC_Init

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\lib\LPLD\HW\HW_NVIC.c
//    1 /**
//    2  * @file HW_NVIC.c
//    3  * @version 3.02[By LPLD]
//    4  * @date 2013-11-29
//    5  * @brief �ں�NVICģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "HW_NVIC.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_SetPriorityGrouping(uint32_t)
NVIC_SetPriorityGrouping:
        ANDS     R1,R0,#0x7
        LDR.N    R0,??DataTable4  ;; 0xe000ed0c
        LDR      R0,[R0, #+0]
        MOVW     R2,#+63743
        ANDS     R0,R2,R0
        LDR.N    R2,??DataTable4_1  ;; 0x5fa0000
        ORRS     R1,R2,R1, LSL #+8
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable4  ;; 0xe000ed0c
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.N    R2,??DataTable4_2  ;; 0xe000e100
        MOVS     R3,#+1
        ANDS     R0,R0,#0x1F
        LSLS     R0,R3,R0
        STR      R0,[R2, R1, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.N    R2,??DataTable4_3  ;; 0xe000e180
        MOVS     R3,#+1
        ANDS     R0,R0,#0x1F
        LSLS     R0,R3,R0
        STR      R0,[R2, R1, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_SetPriority(IRQn_Type, uint32_t)
NVIC_SetPriority:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BPL.N    ??NVIC_SetPriority_0
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0xF
        LDR.N    R2,??DataTable4_4  ;; 0xe000ed18
        ADDS     R0,R0,R2
        LSLS     R1,R1,#+4
        STRB     R1,[R0, #-4]
        B.N      ??NVIC_SetPriority_1
??NVIC_SetPriority_0:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable4_5  ;; 0xe000e400
        LSLS     R1,R1,#+4
        STRB     R1,[R0, R2]
??NVIC_SetPriority_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp uint32_t NVIC_EncodePriority(uint32_t, uint32_t, uint32_t)
NVIC_EncodePriority:
        PUSH     {R4}
        ANDS     R0,R0,#0x7
        RSBS     R3,R0,#+7
        CMP      R3,#+5
        BCC.N    ??NVIC_EncodePriority_0
        MOVS     R3,#+4
        B.N      ??NVIC_EncodePriority_1
??NVIC_EncodePriority_0:
        RSBS     R3,R0,#+7
??NVIC_EncodePriority_1:
        ADDS     R4,R0,#+4
        CMP      R4,#+7
        BCS.N    ??NVIC_EncodePriority_2
        MOVS     R0,#+0
        B.N      ??NVIC_EncodePriority_3
??NVIC_EncodePriority_2:
        SUBS     R0,R0,#+3
??NVIC_EncodePriority_3:
        MOVS     R4,#+1
        LSLS     R3,R4,R3
        SUBS     R3,R3,#+1
        ANDS     R1,R3,R1
        LSLS     R1,R1,R0
        MOVS     R3,#+1
        LSLS     R0,R3,R0
        SUBS     R0,R0,#+1
        ANDS     R0,R0,R2
        ORRS     R0,R0,R1
        POP      {R4}
        BX       LR               ;; return
//   23 
//   24 /*
//   25  * LPLD_NVIC_Init
//   26  *
//   27  * �ڸú���������IRQn_Typeͨ�����ȼ�����������Ҫ��NVIC��ʹ��IRQn_Type
//   28  * �ں����е�����core_m4.h�е�NVIC��������M4�ں˵�16���ж����ȼ�
//   29  * 16���ж����ȼ�ͨ���������ʽ���й�����NVIC�е����ȼ���Ϊ5�飬NVIC_PriorityGroup_0 -- 5
//   30  * ÿ�������ռʽ���ȼ���NVIC_IRQChannelPreemptionPriority������Ӧʽ���ȼ���NVIC_IRQChannelSubPriority��
//   31  *
//   32  * ���ȼ��ٲ�:
//   33  * >1 PreemptionPriority���ȼ��ߵĲ�����ռPreemptionPriority���ȼ��͵��ж��쳣;
//   34  * (��NVIC_IRQChannelPreemptionPriorityֵԽС���ȼ�Խ��);
//   35  * >2 PreemptionPriority���ȼ���ͬ���ж��쳣֮�䲻���໥��ռ;
//   36  * >3 ���PreemptionPriority���ȼ���ȣ��ٱȽ�SubPriority��Ӧ���ȼ���SubPriority��Ӧ���ȼ�ֵԽС�ж����ȼ�Խ��;
//   37  *
//   38  * NVIC�е����ȼ����黮�ּ�NVIC_InitTypeDef�е�NVIC �жϷ���
//   39  * 
//   40  * ����:
//   41  *    NVIC_InitStructure--NVIC��ʼ���ṹ�壬
//   42  *                        ���嶨���NVIC_InitTypeDef
//   43  * ���:
//   44  *    0:����ʧ��
//   45  *    1:���óɹ�
//   46  *
//   47 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 uint8 LPLD_NVIC_Init(NVIC_InitTypeDef NVIC_InitStructure)
//   49 {
LPLD_NVIC_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R9,LR}
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
//   57   //�������
//   58   ASSERT(IS_NVIC_PRIORITY_GROUP(nvic_priority_group));
        CMP      R6,#+7
        BEQ.N    ??LPLD_NVIC_Init_0
        CMP      R6,#+6
        BEQ.N    ??LPLD_NVIC_Init_0
        CMP      R6,#+5
        BEQ.N    ??LPLD_NVIC_Init_0
        CMP      R6,#+4
        BEQ.N    ??LPLD_NVIC_Init_0
        CMP      R6,#+3
        BEQ.N    ??LPLD_NVIC_Init_0
        MOVS     R1,#+58
        LDR.N    R0,??DataTable4_6
        BL       assert_failed
//   59   ASSERT(IS_NVIC_PREEMPTION_PRIORITY(nvic_preemption_priority));
??LPLD_NVIC_Init_0:
        CMP      R7,#+16
        BCC.N    ??LPLD_NVIC_Init_1
        MOVS     R1,#+59
        LDR.N    R0,??DataTable4_6
        BL       assert_failed
//   60   ASSERT(IS_NVIC_SUB_PRIORITY(nvic_sub_priority));
??LPLD_NVIC_Init_1:
        CMP      R8,#+16
        BCC.N    ??LPLD_NVIC_Init_2
        MOVS     R1,#+60
        LDR.N    R0,??DataTable4_6
        BL       assert_failed
//   61   //���� NVIC�жϷ��� ������ռ���ȼ�
//   62   switch(nvic_priority_group)
??LPLD_NVIC_Init_2:
        CMP      R6,#+3
        BEQ.N    ??LPLD_NVIC_Init_3
        BCC.N    ??LPLD_NVIC_Init_4
        CMP      R6,#+5
        BEQ.N    ??LPLD_NVIC_Init_5
        BCC.N    ??LPLD_NVIC_Init_6
        CMP      R6,#+7
        BEQ.N    ??LPLD_NVIC_Init_7
        BCC.N    ??LPLD_NVIC_Init_8
        B.N      ??LPLD_NVIC_Init_4
//   63   {
//   64       case NVIC_PriorityGroup_0: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_0);
??LPLD_NVIC_Init_7:
        MOVS     R0,#+7
        BL       NVIC_SetPriorityGrouping
//   65               if(nvic_preemption_priority > 0 || nvic_sub_priority >15)
        CMP      R7,#+0
        BNE.N    ??LPLD_NVIC_Init_9
        CMP      R8,#+16
        BCC.N    ??LPLD_NVIC_Init_10
//   66                 request = 0;
??LPLD_NVIC_Init_9:
        MOVS     R4,#+0
//   67               break;
//   68       case NVIC_PriorityGroup_1: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_1);
//   69               if(nvic_preemption_priority > 1 || nvic_sub_priority >7)
//   70                 request = 0;
//   71               break;
//   72       case NVIC_PriorityGroup_2: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_2);
//   73               if(nvic_preemption_priority > 3 || nvic_sub_priority >3)
//   74                 request = 0;
//   75               break;
//   76       case NVIC_PriorityGroup_3: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_3);
//   77               if(nvic_preemption_priority > 7 || nvic_sub_priority >1)
//   78                 request = 0;
//   79               break;
//   80       case NVIC_PriorityGroup_4: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_4);
//   81               if(nvic_preemption_priority > 15 || nvic_sub_priority >0)
//   82                 request = 0;
//   83               break;
//   84       default:return 0;
//   85   }
//   86   //�����жϷ���ռ�����ж���ռ���ȼ�
//   87   //�����жϷ���ռ�����ж���Ӧ���ȼ�
//   88   temp = NVIC_EncodePriority(nvic_priority_group,\ 
//   89                              nvic_preemption_priority,\ 
//   90                              nvic_sub_priority);
??LPLD_NVIC_Init_10:
??LPLD_NVIC_Init_11:
        MOV      R2,R8
        MOVS     R1,R7
        MOVS     R0,R6
        BL       NVIC_EncodePriority
        MOVS     R1,R0
//   91   //�����ж�������,����M4�ں�������NVIC���ȼ�
//   92   NVIC_SetPriority(int_id,temp);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_SetPriority
//   93   
//   94   if(status == TRUE)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_NVIC_Init_12
//   95   {
//   96     NVIC_EnableIRQ(int_id);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_NVIC_Init_13
//   97   }
??LPLD_NVIC_Init_8:
        MOVS     R0,#+6
        BL       NVIC_SetPriorityGrouping
        CMP      R7,#+2
        BCS.N    ??LPLD_NVIC_Init_14
        CMP      R8,#+8
        BCC.N    ??LPLD_NVIC_Init_15
??LPLD_NVIC_Init_14:
        MOVS     R4,#+0
??LPLD_NVIC_Init_15:
        B.N      ??LPLD_NVIC_Init_11
??LPLD_NVIC_Init_5:
        MOVS     R0,#+5
        BL       NVIC_SetPriorityGrouping
        CMP      R7,#+4
        BCS.N    ??LPLD_NVIC_Init_16
        CMP      R8,#+4
        BCC.N    ??LPLD_NVIC_Init_17
??LPLD_NVIC_Init_16:
        MOVS     R4,#+0
??LPLD_NVIC_Init_17:
        B.N      ??LPLD_NVIC_Init_11
??LPLD_NVIC_Init_6:
        MOVS     R0,#+4
        BL       NVIC_SetPriorityGrouping
        CMP      R7,#+8
        BCS.N    ??LPLD_NVIC_Init_18
        CMP      R8,#+2
        BCC.N    ??LPLD_NVIC_Init_19
??LPLD_NVIC_Init_18:
        MOVS     R4,#+0
??LPLD_NVIC_Init_19:
        B.N      ??LPLD_NVIC_Init_11
??LPLD_NVIC_Init_3:
        MOVS     R0,#+3
        BL       NVIC_SetPriorityGrouping
        CMP      R7,#+16
        BCS.N    ??LPLD_NVIC_Init_20
        CMP      R8,#+0
        BEQ.N    ??LPLD_NVIC_Init_21
??LPLD_NVIC_Init_20:
        MOVS     R4,#+0
??LPLD_NVIC_Init_21:
        B.N      ??LPLD_NVIC_Init_11
??LPLD_NVIC_Init_4:
        MOVS     R0,#+0
        B.N      ??LPLD_NVIC_Init_22
//   98   else
//   99   {
//  100     NVIC_DisableIRQ(int_id);
??LPLD_NVIC_Init_12:
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  101   }
//  102   return request;
??LPLD_NVIC_Init_13:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_NVIC_Init_22:
        POP      {R1,R4-R9}
        LDR      PC,[SP], #+20    ;; return
//  103 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0xe000ed0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x5fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     `?<Constant "E:\\\\ShawnDocuments\\\\IAR...">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "E:\\\\ShawnDocuments\\\\IAR...">`:
        DATA
        DC8 45H, 3AH, 5CH, 53H, 68H, 61H, 77H, 6EH
        DC8 44H, 6FH, 63H, 75H, 6DH, 65H, 6EH, 74H
        DC8 73H, 5CH, 49H, 41H, 52H, 5FH, 57H, 6FH
        DC8 72H, 6BH, 53H, 70H, 61H, 63H, 65H, 5CH
        DC8 4CH, 50H, 4CH, 44H, 5FH, 51H, 75H, 61H
        DC8 64H, 5FH, 56H, 32H, 5CH, 73H, 6FH, 75H
        DC8 72H, 63H, 65H, 5CH, 6CH, 69H, 62H, 5CH
        DC8 4CH, 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH
        DC8 48H, 57H, 5FH, 4EH, 56H, 49H, 43H, 2EH
        DC8 63H, 0
        DC8 0, 0

        END
// 
//  76 bytes in section .rodata
// 456 bytes in section .text
// 
// 456 bytes of CODE  memory
//  76 bytes of CONST memory
//
//Errors: none
//Warnings: none
