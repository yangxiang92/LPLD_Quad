///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    19/Mar/2014  22:08:20 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\FatFs\ /
//                    diskio.c                                                /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\FatFs\ /
//                    diskio.c -D LPLD_K60 -lCN E:\ShawnDocuments\IAR_WorkSpa /
//                    ce\LPLD_Quad_V2\iar\RAM\List\ -lB                       /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\RAM\Li /
//                    st\ -o E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar /
//                    \RAM\Obj\ --no_cse --no_unroll --no_inline              /
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
//                    st\diskio.s                                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME diskio

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_SDHC_InitCard
        EXTERN LPLD_SDHC_ReadBlocks
        EXTERN LPLD_SDHC_WriteBlocks
        EXTERN sdcard_ptr

        PUBLIC disk_initialize
        PUBLIC disk_ioctl
        PUBLIC disk_read
        PUBLIC disk_status
        PUBLIC disk_write

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\FatFs\diskio.c
//    1 /*-----------------------------------------------------------------------*/
//    2 /* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2013        */
//    3 /*-----------------------------------------------------------------------*/
//    4 /* If a working storage control module is available, it should be        */
//    5 /* attached to the FatFs via a glue function rather than modifying it.   */
//    6 /* This is an example of glue functions to attach various exsisting      */
//    7 /* storage control module to the FatFs module with a defined API.        */
//    8 /*-----------------------------------------------------------------------*/
//    9 
//   10 #include "diskio.h"		/* FatFs lower layer API */
//   11 //#include "usbdisk.h"	/* Example: USB drive control */
//   12 //#include "atadrive.h"	/* Example: ATA drive control */
//   13 //#include "sdcard.h"		/* Example: MMC/SDC contorl */
//   14 #include "common.h"     //����LPLD�ײ���K60���ļ�[By LPLD]
//   15 
//   16 
//   17 //SD����Ϣȫ�ֱ���[By LPLD]
//   18 extern SDCARD_STRUCT_PTR sdcard_ptr;
//   19 
//   20 /*-----------------------------------------------------------------------*/
//   21 /* Inidialize a Drive                                                    */
//   22 /*-----------------------------------------------------------------------*/
//   23 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 DSTATUS disk_initialize (
//   25 	BYTE pdrv				/* Physical drive nmuber (0..) */
//   26 )
//   27 {
disk_initialize:
        PUSH     {R7,LR}
//   28   if(pdrv)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_0
//   29     return RES_PARERR;
        MOVS     R0,#+4
        B.N      ??disk_initialize_1
//   30  
//   31   return (DSTATUS)LPLD_SDHC_InitCard();
??disk_initialize_0:
        BL       LPLD_SDHC_InitCard
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??disk_initialize_1:
        POP      {R1,PC}          ;; return
//   32 }
//   33 
//   34 
//   35 
//   36 /*-----------------------------------------------------------------------*/
//   37 /* Get Disk Status                                                       */
//   38 /*-----------------------------------------------------------------------*/
//   39 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 DSTATUS disk_status (
//   41 	BYTE pdrv		/* Physical drive nmuber (0..) */
//   42 )
//   43 {
//   44   return (DSTATUS)sdcard_ptr->STATUS;
disk_status:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+20]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   45 }
//   46 
//   47 
//   48 
//   49 /*-----------------------------------------------------------------------*/
//   50 /* Read Sector(s)                                                        */
//   51 /*-----------------------------------------------------------------------*/
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 DRESULT disk_read (
//   54 	BYTE pdrv,		/* Physical drive nmuber (0..) */
//   55 	BYTE *buff,		/* Data buffer to store read data */
//   56 	DWORD sector,	/* Sector address (LBA) */
//   57 	BYTE count		/* Number of sectors to read (1..128) */
//   58 )
//   59 {
disk_read:
        PUSH     {R4,LR}
        MOVS     R4,R1
        MOVS     R1,R2
        MOVS     R2,R3
//   60   if(pdrv || (count == 0))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??disk_read_0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??disk_read_1
//   61     return RES_PARERR;
??disk_read_0:
        MOVS     R0,#+4
        B.N      ??disk_read_2
//   62 
//   63   return (DRESULT)LPLD_SDHC_ReadBlocks(buff, sector, count);
??disk_read_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SDHC_ReadBlocks
??disk_read_2:
        POP      {R4,PC}          ;; return
//   64 }
//   65 
//   66 
//   67 
//   68 /*-----------------------------------------------------------------------*/
//   69 /* Write Sector(s)                                                       */
//   70 /*-----------------------------------------------------------------------*/
//   71 
//   72 #if _USE_WRITE

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 DRESULT disk_write (
//   74 	BYTE pdrv,			/* Physical drive nmuber (0..) */
//   75 	const BYTE *buff,	/* Data to be written */
//   76 	DWORD sector,		/* Sector address (LBA) */
//   77 	BYTE count			/* Number of sectors to write (1..128) */
//   78 )
//   79 {
disk_write:
        PUSH     {R4,LR}
        MOVS     R4,R1
        MOVS     R1,R2
        MOVS     R2,R3
//   80   if(pdrv || (count == 0))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??disk_write_0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??disk_write_1
//   81     return RES_PARERR;
??disk_write_0:
        MOVS     R0,#+4
        B.N      ??disk_write_2
//   82   
//   83   return (DRESULT)LPLD_SDHC_WriteBlocks((uint8*)buff, sector, count);
??disk_write_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SDHC_WriteBlocks
??disk_write_2:
        POP      {R4,PC}          ;; return
//   84 }
//   85 #endif
//   86 
//   87 
//   88 /*-----------------------------------------------------------------------*/
//   89 /* Miscellaneous Functions                                               */
//   90 /*-----------------------------------------------------------------------*/
//   91 
//   92 #if _USE_IOCTL

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 DRESULT disk_ioctl (
//   94 	BYTE pdrv,		/* Physical drive nmuber (0..) */
//   95 	BYTE cmd,		/* Control code */
//   96 	void *buff		/* Buffer to send/receive control data */
//   97 )
//   98 {
//   99   DRESULT result = RES_OK;
disk_ioctl:
        MOVS     R3,#+0
//  100   
//  101   if(pdrv)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??disk_ioctl_0
//  102     return RES_PARERR;
        MOVS     R0,#+4
        B.N      ??disk_ioctl_1
//  103   
//  104   switch(cmd)
??disk_ioctl_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??disk_ioctl_2
        CMP      R1,#+2
        BEQ.N    ??disk_ioctl_3
        BCC.N    ??disk_ioctl_4
        CMP      R1,#+4
        BEQ.N    ??disk_ioctl_5
        BCC.N    ??disk_ioctl_6
        B.N      ??disk_ioctl_7
//  105   {
//  106     case CTRL_SYNC:
//  107       /*
//  108       ȷ�����������Ѿ����д��������Ĵ���. 
//  109       ������IOģ����һ����д���棬��������������. ���������ֻ��ģʽʹ��.
//  110       */
//  111       // ��POLLINGģʽ�У�����д��������ɡ�
//  112       break;
//  113     case GET_SECTOR_SIZE:
//  114       /*
//  115       ��WORD��ָ���������ʽ����������С.
//  116       ����������ڿɱ�������С������, 
//  117       _MAX_SS Ϊ 512.
//  118       */
//  119       if(buff == NULL)
//  120         result = RES_PARERR;
//  121       else
//  122         *(uint32*)buff = IO_SDCARD_BLOCK_SIZE;
//  123       
//  124       break;
//  125     case GET_SECTOR_COUNT:
//  126       /*
//  127       ��UINT32��ָ���������ʽ���ش��̵Ŀ���������. 
//  128       ���������f_mkfs���������Ծ����ɴ������ľ�. 
//  129       */
//  130       if(buff == NULL)
//  131         result = RES_PARERR;
//  132       else
//  133         *(uint32*)buff = sdcard_ptr->NUM_BLOCKS;
//  134       break;
//  135     case GET_BLOCK_SIZE:
//  136       /*
//  137       ��UINT32���͵�ָ��������ط���flash�ڴ��в�����������.
//  138       �Ϸ�����ֵΪ2��1��32768�η�.
//  139       ����1���������С������豸δ֪.
//  140       ���������f_mkfs�������ò���ͼ�������������߽�������ݶ���.
//  141       */
//  142       result = RES_PARERR;
//  143       break;
//  144     case CTRL_ERASE_SECTOR:
//  145       /*
//  146       ������UINT32����ָ������ָ����flash�ڴ�,{<start sector>, <end sector>}.
//  147       �������Ϊ��flash�ڴ�,���������Ч.
//  148       FatFsϵͳ��������,�������ʧ��Ҳ����Ӱ���ļ�����.
//  149       ��_USE_ERASEΪ1ʱ�ƶ�һ����������ô�����.
//  150       */
//  151       result = RES_PARERR;
//  152       break;
//  153     default:
//  154       return RES_PARERR;
//  155     
//  156   }
//  157   return result;
??disk_ioctl_2:
??disk_ioctl_8:
        MOVS     R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??disk_ioctl_1:
        BX       LR               ;; return
??disk_ioctl_3:
        CMP      R2,#+0
        BNE.N    ??disk_ioctl_9
        MOVS     R3,#+4
        B.N      ??disk_ioctl_10
??disk_ioctl_9:
        MOV      R0,#+512
        STR      R0,[R2, #+0]
??disk_ioctl_10:
        B.N      ??disk_ioctl_8
??disk_ioctl_4:
        CMP      R2,#+0
        BNE.N    ??disk_ioctl_11
        MOVS     R3,#+4
        B.N      ??disk_ioctl_12
??disk_ioctl_11:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        STR      R0,[R2, #+0]
??disk_ioctl_12:
        B.N      ??disk_ioctl_8
??disk_ioctl_6:
        MOVS     R3,#+4
        B.N      ??disk_ioctl_8
??disk_ioctl_5:
        MOVS     R3,#+4
        B.N      ??disk_ioctl_8
??disk_ioctl_7:
        MOVS     R0,#+4
        B.N      ??disk_ioctl_1
//  158 }

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
//  159 #endif
// 
// 186 bytes in section .text
// 
// 186 bytes of CODE memory
//
//Errors: none
//Warnings: none
