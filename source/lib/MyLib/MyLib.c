/****************************************************************************** 
 *       MyLib.c ----- The lib Function of my Owm          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  MyLib.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/23 16:52:26                                                       *
 ******************************************************************************/
#include "mylib.h"

GpioPinsEnum_Type PinNum2GpioPin(uint8 pin_num)
{
    GpioPinsEnum_Type ret;
    if(pin_num <= 31)
    {
        switch(pin_num)
        {
            case 0 : ret = GPIO_Pin0;
                     break;
            case 1 : ret = GPIO_Pin1;
                     break;
            case 2 : ret = GPIO_Pin2;
                     break;
            case 3 : ret = GPIO_Pin3;
                     break;
            case 4 : ret = GPIO_Pin4;
                     break;
            case 5 : ret = GPIO_Pin5;
                     break;
            case 6 : ret = GPIO_Pin6;
                     break;
            case 7 : ret = GPIO_Pin7;
                     break;
            case 8 : ret = GPIO_Pin8;
                     break;
            case 9 : ret = GPIO_Pin9;
                     break;
            case 10: ret = GPIO_Pin10;
                     break;
            case 11: ret = GPIO_Pin11;
                     break;
            case 12: ret = GPIO_Pin12;
                     break;
            case 13: ret = GPIO_Pin13;
                     break;
            case 14: ret = GPIO_Pin14;
                     break;
            case 15: ret = GPIO_Pin15;
                     break;
            case 16: ret = GPIO_Pin16;
                     break;
            case 17: ret = GPIO_Pin17;
                     break;
            case 18: ret = GPIO_Pin18;
                     break;
            case 19: ret = GPIO_Pin19;
                     break;
            case 20: ret = GPIO_Pin20;
                     break;
            case 21: ret = GPIO_Pin21;
                     break;
            case 22: ret = GPIO_Pin22;
                     break;
            case 23: ret = GPIO_Pin23;
                     break;
            case 24: ret = GPIO_Pin24;
                     break;
            case 25: ret = GPIO_Pin25;
                     break;
            case 26: ret = GPIO_Pin26;
                     break;
            case 27: ret = GPIO_Pin27;
                     break;
            case 28: ret = GPIO_Pin28;
                     break;
            case 29: ret = GPIO_Pin29;
                     break;
            case 30: ret = GPIO_Pin30;
                     break;
            case 31: ret = GPIO_Pin31;
                     break;
            default:
                     break;
        }
    }
    return ret;
}
