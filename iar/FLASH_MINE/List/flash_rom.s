///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:38 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\flash_rom.c                                         /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\flash_rom.c -D LPLD_K60 -lCN                        /
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
//                    MINE\List\flash_rom.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME flash_rom

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_Flash_ByteProgram
        EXTERN LPLD_Flash_Init
        EXTERN LPLD_Flash_SectorErase
        EXTERN __aeabi_memclr4

        PUBLIC EraseFlashStorage
        PUBLIC FlashStorageByteProgram
        PUBLIC FlashStorageSectorErase
        PUBLIC InitFlashRom
        PUBLIC MemoryBytesCompare
        PUBLIC ReadFlashStorage
        PUBLIC WriteFlashStorage

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\flash_rom.c
//    1 /****************************************************************************** 
//    2  *       flash_rom.c ----- The use FLASH as a EEPROM          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  flash_rom.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/30 11:12:59                                                       *
//   10  ******************************************************************************/
//   11 #include "flash_rom.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void InitFlashRom(void)
//   14 {
InitFlashRom:
        PUSH     {R7,LR}
//   15     LPLD_Flash_Init();
        BL       LPLD_Flash_Init
//   16 }
        POP      {R0,PC}          ;; return
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 uint8 EraseFlashStorage(void)
//   19 {
EraseFlashStorage:
        PUSH     {R3-R5,LR}
//   20     uint8 success = 0;
        MOVS     R4,#+0
//   21     uint8 result = NULL;
        MOVS     R5,#+0
//   22 
//   23     result = FlashStorageSectorErase();
        BL       FlashStorageSectorErase
        MOVS     R5,R0
//   24 
//   25     if(result == FLASH_OK)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??EraseFlashStorage_0
//   26     {
//   27         success = 1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??EraseFlashStorage_1
//   28     }
//   29     else
//   30     {
//   31         success = 0;
??EraseFlashStorage_0:
        MOVS     R0,#+0
        MOVS     R4,R0
//   32     }
//   33 
//   34     return success;
??EraseFlashStorage_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//   35 }
//   36 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 uint8 WriteFlashStorage(uint32 addr_offset, void * p_data, uint32 byte_size)
//   38 {
WriteFlashStorage:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+512
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   39     int i = 0;
        MOVS     R7,#+0
//   40     uint8 result = 0;
        MOVS     R8,#+0
//   41     uint8 flash_storage_data_buff[FLASH_STORAGE_SIZE] = {0};
        ADD      R0,SP,#+0
        MOV      R1,#+512
        BL       __aeabi_memclr4
//   42     
//   43     if((addr_offset + byte_size) > FLASH_STORAGE_SIZE)  // 检查数据大小是否合法 
        ADDS     R0,R6,R4
        CMP      R0,#+512
        BLS.N    ??WriteFlashStorage_0
//   44     {
//   45         return 0;
        MOVS     R0,#+0
        B.N      ??WriteFlashStorage_1
//   46     }
//   47 
//   48     if(!ReadFlashStorage(0, flash_storage_data_buff, FLASH_STORAGE_SIZE))  // 确定能够正确地读出flash数据 
??WriteFlashStorage_0:
        MOV      R2,#+512
        ADD      R1,SP,#+0
        MOVS     R0,#+0
        BL       ReadFlashStorage
        CMP      R0,#+0
        BNE.N    ??WriteFlashStorage_2
//   49     {
//   50         return 0;
        MOVS     R0,#+0
        B.N      ??WriteFlashStorage_1
//   51     }
//   52 
//   53     if(MemoryBytesCompare((flash_storage_data_buff + addr_offset), p_data, byte_size) != 0)
??WriteFlashStorage_2:
        MOVS     R2,R6
        MOVS     R1,R5
        ADD      R0,SP,#+0
        ADDS     R0,R4,R0
        BL       MemoryBytesCompare
        CMP      R0,#+0
        BEQ.N    ??WriteFlashStorage_3
//   54     {
//   55         for(i = 0; i < byte_size; i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??WriteFlashStorage_4:
        CMP      R7,R6
        BCS.N    ??WriteFlashStorage_5
//   56         {                                            // 把flash中需要改变的数据改变（以便于重新写入） 
//   57             flash_storage_data_buff[addr_offset + i] = ((uint8 *)p_data)[i];
        ADDS     R0,R7,R4
        ADD      R1,SP,#+0
        LDRB     R2,[R7, R5]
        STRB     R2,[R0, R1]
//   58         }
        ADDS     R7,R7,#+1
        B.N      ??WriteFlashStorage_4
//   59 
//   60         if(!EraseFlashStorage())
??WriteFlashStorage_5:
        BL       EraseFlashStorage
        CMP      R0,#+0
        BNE.N    ??WriteFlashStorage_6
//   61         {                                            // 确定flash扇区被正常擦除 
//   62             return 0;
        MOVS     R0,#+0
        B.N      ??WriteFlashStorage_1
//   63         }
//   64 
//   65         result = FlashStorageByteProgram(flash_storage_data_buff, FLASH_STORAGE_SIZE);
??WriteFlashStorage_6:
        MOV      R1,#+512
        ADD      R0,SP,#+0
        BL       FlashStorageByteProgram
        MOV      R8,R0
//   66 
//   67         if(result == FLASH_OK)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??WriteFlashStorage_7
//   68         {
//   69             return 1;
        MOVS     R0,#+1
        B.N      ??WriteFlashStorage_1
//   70         }
//   71         else
//   72         {
//   73             return 0;
??WriteFlashStorage_7:
        MOVS     R0,#+0
        B.N      ??WriteFlashStorage_1
//   74         }
//   75     }
//   76     else
//   77     {
//   78         return 1;
??WriteFlashStorage_3:
        MOVS     R0,#+1
??WriteFlashStorage_1:
        ADD      SP,SP,#+512
        POP      {R4-R8,PC}       ;; return
//   79     }
//   80 }
//   81 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   82 uint8 ReadFlashStorage(uint32 addr_offset, void * data_buf, uint32 byte_size)
//   83 {
ReadFlashStorage:
        PUSH     {R4-R6}
        MOVS     R3,R0
//   84     int i = 0;
        MOVS     R4,#+0
//   85 
//   86     uint32 flash_to_read_addr = 0;
        MOVS     R5,#+0
//   87     flash_to_read_addr = FLASH_STORAGE_SECTOR_ADDR + addr_offset;
        ADDS     R0,R3,#+501760
        MOVS     R5,R0
//   88 
//   89     uint8 * flash_to_read_pointer = (uint8 *)flash_to_read_addr;
        MOVS     R6,R5
//   90 
//   91     for(i = 0; i < byte_size; i ++)
        MOVS     R0,#+0
        MOVS     R4,R0
??ReadFlashStorage_0:
        CMP      R4,R2
        BCS.N    ??ReadFlashStorage_1
//   92     {
//   93         ((uint8 *)data_buf)[i] = flash_to_read_pointer[i];
        LDRB     R0,[R4, R6]
        STRB     R0,[R4, R1]
//   94     }
        ADDS     R4,R4,#+1
        B.N      ??ReadFlashStorage_0
//   95 
//   96     return 1;
??ReadFlashStorage_1:
        MOVS     R0,#+1
        POP      {R4-R6}
        BX       LR               ;; return
//   97 }
//   98 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   99 uint8 FlashStorageByteProgram(uint8 * data_ptr, uint32 data_size)
//  100 {
FlashStorageByteProgram:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  101     return LPLD_Flash_ByteProgram(FLASH_STORAGE_SECTOR_ADDR, (uint32 *)data_ptr, data_size);
        MOVS     R2,R5
        MOVS     R1,R4
        MOVS     R0,#+501760
        BL       LPLD_Flash_ByteProgram
        POP      {R1,R4,R5,PC}    ;; return
//  102 }
//  103 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  104 uint8 FlashStorageSectorErase(void)
//  105 {
FlashStorageSectorErase:
        PUSH     {R7,LR}
//  106     return LPLD_Flash_SectorErase(FLASH_STORAGE_SECTOR_ADDR);
        MOVS     R0,#+501760
        BL       LPLD_Flash_SectorErase
        POP      {R1,PC}          ;; return
//  107 }
//  108 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  109 int8 MemoryBytesCompare(void * source1, void * source2, uint32 size)
//  110 {
MemoryBytesCompare:
        PUSH     {R4-R7}
        MOVS     R3,R0
//  111     int i = 0;
        MOVS     R4,#+0
//  112 
//  113     uint8 * ptr1 = NULL;
        MOVS     R5,#+0
//  114     uint8 * ptr2 = NULL;
        MOVS     R6,#+0
//  115 
//  116     ptr1 = (uint8 *)source1;
        MOVS     R5,R3
//  117     ptr2 = (uint8 *)source2;
        MOVS     R6,R1
//  118 
//  119     for(i = 0; i < size; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??MemoryBytesCompare_0:
        CMP      R4,R2
        BCS.N    ??MemoryBytesCompare_1
//  120     {
//  121         if(ptr1[i] > ptr2[i])
        LDRB     R0,[R4, R6]
        LDRB     R7,[R4, R5]
        CMP      R0,R7
        BCS.N    ??MemoryBytesCompare_2
//  122         {
//  123             return 1;
        MOVS     R0,#+1
        B.N      ??MemoryBytesCompare_3
//  124         }
//  125         else if(ptr1[i] < ptr2[i])
??MemoryBytesCompare_2:
        LDRB     R0,[R4, R5]
        LDRB     R7,[R4, R6]
        CMP      R0,R7
        BCS.N    ??MemoryBytesCompare_4
//  126         {
//  127             return -1;
        MOVS     R0,#-1
        B.N      ??MemoryBytesCompare_3
//  128         }
//  129     }
??MemoryBytesCompare_4:
        ADDS     R4,R4,#+1
        B.N      ??MemoryBytesCompare_0
//  130 
//  131     return 0;
??MemoryBytesCompare_1:
        MOVS     R0,#+0
??MemoryBytesCompare_3:
        POP      {R4-R7}
        BX       LR               ;; return
//  132 }    

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 
// 512 bytes in section .rodata
// 320 bytes in section .text
// 
// 320 bytes of CODE  memory
// 512 bytes of CONST memory
//
//Errors: none
//Warnings: none
