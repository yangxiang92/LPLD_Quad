///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    20/Mar/2014  08:42:18 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_DiskIO.c                                         /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_DiskIO.c -D LPLD_K60 -lCN                        /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\RAM\Li /
//                    st\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\ia /
//                    r\RAM\List\ -o E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V2\iar\RAM\Obj\ --no_cse --no_unroll --no_inline      /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\app /
//                    \ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\. /
//                    .\lib\CPU\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad /
//                    _V2\iar\..\lib\common\ -I E:\ShawnDocuments\IAR_WorkSpa /
//                    ce\LPLD_Quad_V2\iar\..\lib\LPLD\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \LPLD\HW\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_ /
//                    V2\iar\..\lib\LPLD\DEV\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \uCOS-II\Ports\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V2\iar\..\lib\uCOS-II\Source\ -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2 /
//                    \iar\..\lib\FatFs\option\ -I                            /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qu /
//                    ad_V2\iar\..\lib\USB\driver\ -I                         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \USB\descriptor\ -I E:\ShawnDocuments\IAR_WorkSpace\LPL /
//                    D_Quad_V2\iar\..\lib\USB\class\ -Ol -I "D:\Program      /
//                    Files\IAR Systems\Embedded Workbench                    /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\RAM\Li /
//                    st\DEV_DiskIO.s                                         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME DEV_DiskIO

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_SDHC_InitCard
        EXTERN LPLD_SDHC_ReadBlocks
        EXTERN LPLD_SDHC_WriteBlocks
        EXTERN sdcard_ptr

        PUBLIC LPLD_Disk_IOC
        PUBLIC LPLD_Disk_Initialize
        PUBLIC LPLD_Disk_Read
        PUBLIC LPLD_Disk_Status
        PUBLIC LPLD_Disk_Write

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\DEV\DEV_DiskIO.c
//    1 /**
//    2  * @file DEV_DiskIO.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief �����豸����ؽӿں����������SDHC�ײ�����
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
//   22 #include "common.h"
//   23 #include "DEV_DiskIO.h"
//   24 
//   25 //SD����Ϣȫ�ֱ���
//   26 extern SDCARD_STRUCT_PTR sdcard_ptr;
//   27 
//   28 /*
//   29  * LPLD_Disk_Initialize
//   30  * ���̳�ʼ��
//   31  * 
//   32  * ����:
//   33  *    drv--������̺ţ�ֻ��Ϊ0
//   34  *
//   35  * ���:
//   36  *    RES_OK--�ɹ�
//   37  *    RES_ERROR--��/д����
//   38  *    RES_WRPRT--д����
//   39  *    RES_NOTRDY--δ׼����
//   40  *    RES_PARERR--��������
//   41  *    RES_NONRSPNS--δ��Ӧ 
//   42  */
//   43 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 DSTATUS LPLD_Disk_Initialize(uint8 drv)
//   45 {
LPLD_Disk_Initialize:
        PUSH     {R7,LR}
//   46   if(drv)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LPLD_Disk_Initialize_0
//   47     return RES_PARERR;
        MOVS     R0,#+4
        B.N      ??LPLD_Disk_Initialize_1
//   48  
//   49   return LPLD_SDHC_InitCard();
??LPLD_Disk_Initialize_0:
        BL       LPLD_SDHC_InitCard
??LPLD_Disk_Initialize_1:
        POP      {R1,PC}          ;; return
//   50 }
//   51 
//   52 /*
//   53  * LPLD_Disk_Status
//   54  * ���ش���״̬
//   55  * 
//   56  * ����:
//   57  *    drv--������̺ţ�ֻ��Ϊ0
//   58  *
//   59  * ���:
//   60  *    RES_OK--�ɹ�
//   61  *    RES_ERROR--��/д����
//   62  *    RES_WRPRT--д����
//   63  *    RES_NOTRDY--δ׼����
//   64  *    RES_PARERR--��������
//   65  *    RES_NONRSPNS--δ��Ӧ 
//   66  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 DSTATUS LPLD_Disk_Status(uint8 drv)
//   68 {
//   69   return sdcard_ptr->STATUS;
LPLD_Disk_Status:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+20]
        BX       LR               ;; return
//   70 }
//   71 
//   72 /*
//   73  * LPLD_Disk_Read
//   74  * �����̵�һ����������
//   75  * 
//   76  * ����:
//   77  *    drv--������̺ţ�ֻ��Ϊ0
//   78  *    buff--���ݶ�������ĵ�ַָ��
//   79  *    sector--������ʼ��
//   80  *    count--������������
//   81  *
//   82  * ���:
//   83  *    RES_OK--�ɹ�
//   84  *    RES_ERROR--��/д����
//   85  *    RES_WRPRT--д����
//   86  *    RES_NOTRDY--δ׼����
//   87  *    RES_PARERR--��������
//   88  *    RES_NONRSPNS--δ��Ӧ 
//   89  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 DRESULT LPLD_Disk_Read(uint8 drv, uint8* buff, uint32 sector, uint8 count)
//   91 {
LPLD_Disk_Read:
        PUSH     {R4,LR}
        MOVS     R4,R1
        MOVS     R1,R2
        MOVS     R2,R3
//   92   if(drv || (count == 0))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_Disk_Read_0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_Disk_Read_1
//   93     return RES_PARERR;
??LPLD_Disk_Read_0:
        MOVS     R0,#+4
        B.N      ??LPLD_Disk_Read_2
//   94 
//   95   return LPLD_SDHC_ReadBlocks(buff, sector, count);
??LPLD_Disk_Read_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SDHC_ReadBlocks
??LPLD_Disk_Read_2:
        POP      {R4,PC}          ;; return
//   96 }
//   97 
//   98 //�������ϵͳΪֻ�����򲻱������º���
//   99 #if	_READONLY == 0
//  100 /*
//  101  * LPLD_Disk_Write
//  102  * д���̵�һ����������
//  103  * 
//  104  * ����:
//  105  *    drv--������̺ţ�ֻ��Ϊ0
//  106  *    buff--���ݶ�������ĵ�ַָ��
//  107  *    sector--������ʼ��
//  108  *    count--������������
//  109  *
//  110  * ���:
//  111  *    RES_OK--�ɹ�
//  112  *    RES_ERROR--��/д����
//  113  *    RES_WRPRT--д����
//  114  *    RES_NOTRDY--δ׼����
//  115  *    RES_PARERR--��������
//  116  *    RES_NONRSPNS--δ��Ӧ 
//  117  */
//  118 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 DRESULT LPLD_Disk_Write(uint8 drv, const uint8* buff, uint32 sector, uint8 count)
//  120 {
LPLD_Disk_Write:
        PUSH     {R4,LR}
        MOVS     R4,R1
        MOVS     R1,R2
        MOVS     R2,R3
//  121   if(drv || (count == 0))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_Disk_Write_0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_Disk_Write_1
//  122     return RES_PARERR;
??LPLD_Disk_Write_0:
        MOVS     R0,#+4
        B.N      ??LPLD_Disk_Write_2
//  123   
//  124   return LPLD_SDHC_WriteBlocks((uint8*)buff, sector, count);
??LPLD_Disk_Write_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SDHC_WriteBlocks
??LPLD_Disk_Write_2:
        POP      {R4,PC}          ;; return
//  125 }
//  126 #endif
//  127 
//  128 /*
//  129  * LPLD_Disk_IOC
//  130  * ���̹��ܿ��ƺ���
//  131  * 
//  132  * ����:
//  133  *    drv--������̺ţ�ֻ��Ϊ0
//  134  *    ctrl--��������
//  135  *    buff--IO�����������ݵ�ָ��
//  136  *
//  137  * ���:
//  138  *    RES_OK--�ɹ�
//  139  *    RES_ERROR--��/д����
//  140  *    RES_WRPRT--д����
//  141  *    RES_NOTRDY--δ׼����
//  142  *    RES_PARERR--��������
//  143  *    RES_NONRSPNS--δ��Ӧ 
//  144  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  145 DRESULT LPLD_Disk_IOC(uint8 drv, uint8 ctrl, void* buff)
//  146 {
//  147   DRESULT result = RES_OK;
LPLD_Disk_IOC:
        MOVS     R3,#+0
//  148   
//  149   if(drv)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LPLD_Disk_IOC_0
//  150     return RES_PARERR;
        MOVS     R0,#+4
        B.N      ??LPLD_Disk_IOC_1
//  151   
//  152   switch(ctrl)
??LPLD_Disk_IOC_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_Disk_IOC_2
        CMP      R1,#+2
        BEQ.N    ??LPLD_Disk_IOC_3
        BCC.N    ??LPLD_Disk_IOC_4
        CMP      R1,#+4
        BEQ.N    ??LPLD_Disk_IOC_5
        BCC.N    ??LPLD_Disk_IOC_6
        B.N      ??LPLD_Disk_IOC_7
//  153   {
//  154     case CTRL_SYNC:
//  155       /*
//  156       ȷ�����������Ѿ����д��������Ĵ���. 
//  157       ������IOģ����һ����д���棬��������������. ���������ֻ��ģʽʹ��.
//  158       */
//  159       // ��POLLINGģʽ�У�����д��������ɡ�
//  160       break;
//  161     case GET_SECTOR_SIZE:
//  162       /*
//  163       ��WORD��ָ���������ʽ����������С.
//  164       ����������ڿɱ�������С������, 
//  165       _MAX_SS Ϊ 512.
//  166       */
//  167       if(buff == NULL)
//  168         result = RES_PARERR;
//  169       else
//  170         *(uint32*)buff = IO_SDCARD_BLOCK_SIZE;
//  171       
//  172       break;
//  173     case GET_SECTOR_COUNT:
//  174       /*
//  175       ��UINT32��ָ���������ʽ���ش��̵Ŀ���������. 
//  176       ���������f_mkfs���������Ծ����ɴ������ľ�. 
//  177       */
//  178       if(buff == NULL)
//  179         result = RES_PARERR;
//  180       else
//  181         *(uint32*)buff = sdcard_ptr->NUM_BLOCKS;
//  182       break;
//  183     case GET_BLOCK_SIZE:
//  184       /*
//  185       ��UINT32���͵�ָ��������ط���flash�ڴ��в�����������.
//  186       �Ϸ�����ֵΪ2��1��32768�η�.
//  187       ����1���������С������豸δ֪.
//  188       ���������f_mkfs�������ò���ͼ�������������߽�������ݶ���.
//  189       */
//  190       result = RES_PARERR;
//  191       break;
//  192     case CTRL_ERASE_SECTOR:
//  193       /*
//  194       ������UINT32����ָ������ָ����flash�ڴ�,{<start sector>, <end sector>}.
//  195       �������Ϊ��flash�ڴ�,���������Ч.
//  196       FatFsϵͳ��������,�������ʧ��Ҳ����Ӱ���ļ�����.
//  197       ��_USE_ERASEΪ1ʱ�ƶ�һ����������ô�����.
//  198       */
//  199       result = RES_PARERR;
//  200       break;
//  201     default:
//  202       return RES_PARERR;
//  203     
//  204   }
//  205   return result;
??LPLD_Disk_IOC_2:
??LPLD_Disk_IOC_8:
        MOVS     R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_Disk_IOC_1:
        BX       LR               ;; return
??LPLD_Disk_IOC_3:
        CMP      R2,#+0
        BNE.N    ??LPLD_Disk_IOC_9
        MOVS     R3,#+4
        B.N      ??LPLD_Disk_IOC_10
??LPLD_Disk_IOC_9:
        MOV      R0,#+512
        STR      R0,[R2, #+0]
??LPLD_Disk_IOC_10:
        B.N      ??LPLD_Disk_IOC_8
??LPLD_Disk_IOC_4:
        CMP      R2,#+0
        BNE.N    ??LPLD_Disk_IOC_11
        MOVS     R3,#+4
        B.N      ??LPLD_Disk_IOC_12
??LPLD_Disk_IOC_11:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        STR      R0,[R2, #+0]
??LPLD_Disk_IOC_12:
        B.N      ??LPLD_Disk_IOC_8
??LPLD_Disk_IOC_6:
        MOVS     R3,#+4
        B.N      ??LPLD_Disk_IOC_8
??LPLD_Disk_IOC_5:
        MOVS     R3,#+4
        B.N      ??LPLD_Disk_IOC_8
??LPLD_Disk_IOC_7:
        MOVS     R0,#+4
        B.N      ??LPLD_Disk_IOC_1
//  206 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     sdcard_ptr

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  207 
// 
// 182 bytes in section .text
// 
// 182 bytes of CODE memory
//
//Errors: none
//Warnings: 2
