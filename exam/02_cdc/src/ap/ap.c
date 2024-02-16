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
    //delay(500);

    //CDC_Transmit_FS("test\n", 6);
    //CDC_Transmit_FS("test\n", sizeof("test\n"));

    if (uartAvailable(_DEF_UART1) > 0)
    {
      uint8_t rx_data;
      rx_data = uartRead(_DEF_UART1);

      uartPrintf(_DEF_UART1, "RxData : 0x%X %c\n", rx_data, rx_data);
    }

  }
}

