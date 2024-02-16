/*
 * ap.c
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 */

#include "ap.h"



void apInit(void)
{
  uartOpen(_DEF_UART1, 57600);  // USB
  uartOpen(_DEF_UART2, 57600);  // UART1
}

void apMain(void)
{
  uint32_t pre_time;

  pre_time = millis();

  while(1)
  {
    if(millis()-pre_time >= 500)
    {
      pre_time = millis();
      ledToggle(_DEF_LED3);

      //uartPrintf(_DEF_UART2, "Uart1 %d \n", millis());
      //printf("printf test \n");
      //logPrintf("logPrintf test %d\n", (int)millis());
    }

    if(uartAvailable(_DEF_UART1) > 0)
    {
      uint8_t rx_data;

      rx_data = uartRead(_DEF_UART1);

      if(rx_data == '1')
      {
        uint8_t buf[32];

        logPrintf("Read... \n");

        flashRead(0x08000000 + (60*2048), buf, 32);

        for(int i=0; i<32; i++)
        {
          logPrintf("0x%X : 0x%X\n", 0x08000000 + (60*2048)+i, buf[i]);
        }
      }

      if(rx_data == '2')
      {
        logPrintf("Erase... \n");

        if(flashErase(0x08000000 + (60*2048), 32) == true)
        {
          logPrintf("Erase OK\n");
        }
        else
        {
          logPrintf("Erase Fail\n");
        }
      }

      if(rx_data == '3')
      {
        uint8_t buf[32];

        for(int i=0; i<32; i++)
        {
          buf[i] = i;
        }

        logPrintf("Write... \n");

        if(flashWrite(0x08000000 + (60*2048), buf, 32) == true)
        {
          logPrintf("Write OK\n");
        }
        else
        {
          logPrintf("Write Fail\n");
        }
      }
    }

  }
}

