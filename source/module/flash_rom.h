/******************************************************************************
 *       flash_rom.h ----- The header of flash_rom.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  flash_rom.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/30 11:13:32                                                       *
 ******************************************************************************/
#ifndef _FLAHS_ROM_H_
#define _FLAHS_ROM_H_

#include "common.h"

#define FLASH_STORAGE_SECTOR        (245)
#define FLASH_STORAGE_SECTOR_ADDR   (FLASH_STORAGE_SECTOR * 2048)
#define FLASH_STORAGE_SIZE          (512)

void InitFlashRom(void);
uint8 EraseFlashStorage(void);
uint8 WriteFlashStorage(uint32 addr_offset, void * p_data, uint32 byte_size);
uint8 ReadFlashStorage(uint32 addr_offset, void * data_buf, uint32 byte_size);
uint8 FlashStorageByteProgram(uint8 * data_ptr, uint32 data_size);
uint8 FlashStorageSectorErase(void);
int8 MemoryBytesCompare(void * source1, void * source2, uint32 size);

#endif
