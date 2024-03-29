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

  cliOpen(_DEF_UART1, 57600);
  cliOpenLog(_DEF_UART2, 57600);
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
    }

    if (uartAvailable(_DEF_UART2) > 0)
    {
      uint8_t rx_data;
      rx_data = uartRead(_DEF_UART2);

      uartPrintf(_DEF_UART2, "Rx : 0x%X\n", rx_data);
    }

    cliMain();
  }

}

