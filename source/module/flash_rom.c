/****************************************************************************** 
 *       flash_rom.c ----- The use FLASH as a EEPROM          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  flash_rom.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/30 11:12:59                                                       *
 ******************************************************************************/
#include "flash_rom.h"

void InitFlashRom(void)
{
    LPLD_Flash_Init();
}

uint8 EraseFlashStorage(void)
{
    uint8 success = 0;
    uint8 result = NULL;

    result = FlashStorageSectorErase();

    if(result == FLASH_OK)
    {
        success = 1;
    }
    else
    {
        success = 0;
    }

    return success;
}

uint8 WriteFlashStorage(uint32 addr_offset, void * p_data, uint32 byte_size)
{
    int i = 0;
    uint8 result = 0;
    uint8 flash_storage_data_buff[FLASH_STORAGE_SIZE] = {0};
    
    if((addr_offset + byte_size) > FLASH_STORAGE_SIZE)  // 检查数据大小是否合法 
    {
        return 0;
    }

    if(!ReadFlashStorage(0, flash_storage_data_buff, FLASH_STORAGE_SIZE))  // 确定能够正确地读出flash数据 
    {
        return 0;
    }

    if(MemoryBytesCompare((flash_storage_data_buff + addr_offset), p_data, byte_size) != 0)
    {
        for(i = 0; i < byte_size; i++)
        {                                            // 把flash中需要改变的数据改变（以便于重新写入） 
            flash_storage_data_buff[addr_offset + i] = ((uint8 *)p_data)[i];
        }

        if(!EraseFlashStorage())
        {                                            // 确定flash扇区被正常擦除 
            return 0;
        }

        result = FlashStorageByteProgram(flash_storage_data_buff, FLASH_STORAGE_SIZE);

        if(result == FLASH_OK)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    else
    {
        return 1;
    }
}

uint8 ReadFlashStorage(uint32 addr_offset, void * data_buf, uint32 byte_size)
{
    int i = 0;

    uint32 flash_to_read_addr = 0;
    flash_to_read_addr = FLASH_STORAGE_SECTOR_ADDR + addr_offset;

    uint8 * flash_to_read_pointer = (uint8 *)flash_to_read_addr;

    for(i = 0; i < byte_size; i ++)
    {
        ((uint8 *)data_buf)[i] = flash_to_read_pointer[i];
    }

    return 1;
}

uint8 FlashStorageByteProgram(uint8 * data_ptr, uint32 data_size)
{
    return LPLD_Flash_ByteProgram(FLASH_STORAGE_SECTOR_ADDR, (uint32 *)data_ptr, data_size);
}

uint8 FlashStorageSectorErase(void)
{
    return LPLD_Flash_SectorErase(FLASH_STORAGE_SECTOR_ADDR);
}

int8 MemoryBytesCompare(void * source1, void * source2, uint32 size)
{
    int i = 0;

    uint8 * ptr1 = NULL;
    uint8 * ptr2 = NULL;

    ptr1 = (uint8 *)source1;
    ptr2 = (uint8 *)source2;

    for(i = 0; i < size; i++)
    {
        if(ptr1[i] > ptr2[i])
        {
            return 1;
        }
        else if(ptr1[i] < ptr2[i])
        {
            return -1;
        }
    }

    return 0;
}    
