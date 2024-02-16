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
  uartOpen(_DEF_UART2, 57600);  // UART1
}

void apMain(void)
{
  uint32_t pre_time;
  uint8_t rx_buf[128];
  uint32_t rx_len;

  pre_time = millis();

  while(1)
  {
    if(millis()-pre_time >= 500)
    {
      pre_time = millis();
      ledToggle(_DEF_LED3);

      //uartPrintf(_DEF_UART2, "Uart1 %d \n", millis());
    }

    if(uartGetBaud(_DEF_UART1) != uartGetBaud(_DEF_UART2))
    {
      uartOpen(_DEF_UART2, uartGetBaud(_DEF_UART1));
    }

    // USB -> UART
    rx_len = uartAvailable(_DEF_UART1);
    if(rx_len > 128)
    {
      rx_len = 128;
    }

    if(rx_len > 0)
    {
      for(int i=0; i<rx_len; i++)
      {
        rx_buf[i] = uartRead(_DEF_UART1);
      }
      uartWrite(_DEF_UART2, rx_buf, rx_len);
    }

    // UART -> USB
    rx_len = uartAvailable(_DEF_UART2);
    if(rx_len > 128)
    {
      rx_len = 128;
    }

    if(rx_len > 0)
    {
      for(int i=0; i<rx_len; i++)
      {
        rx_buf[i] = uartRead(_DEF_UART2);
      }
      uartWrite(_DEF_UART1, rx_buf, rx_len);
    }
  }
}

