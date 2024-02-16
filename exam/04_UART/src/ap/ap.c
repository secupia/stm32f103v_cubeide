/*
 * ap.c
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 */

#include "ap.h"


extern uint32_t cdcAvailable(void);
extern uint8_t cdcRead(void);
extern void cdcDataIn(uint8_t rx_data);
extern uint32_t cdcWrite(uint8_t *p_data, uint32_t length);

void apInit(void)
{
  uartOpen(_DEF_UART1, 57600);  // USB
  uartOpen(_DEF_UART2, 57600);
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
    }

    if(uartAvailable(_DEF_UART1) > 0)
    {
      uint8_t rx_data;

      rx_data = uartRead(_DEF_UART1);
      uartPrintf(_DEF_UART1, "USB Rx %c %X \n", rx_data, rx_data);
    }

    if(uartAvailable(_DEF_UART2) > 0)
    {
      uint8_t rx_data;

      rx_data = uartRead(_DEF_UART2);
      uartPrintf(_DEF_UART2, "Uart1 Rx %c %X \n", rx_data, rx_data);
    }
  }
}

