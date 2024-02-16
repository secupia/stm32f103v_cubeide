/*
 * ap.c
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 */

#include "ap.h"


static void threadLed(void const *argument);

void apInit(void)
{
  uartOpen(_DEF_UART1, 57600);  // USB
  uartOpen(_DEF_UART2, 57600);  // UART1

  cliOpen(_DEF_UART1, 57600);
  //cliOpenLog(_DEF_UART2, 57600);

  osThreadDef(threadLed, threadLed, _HW_DEF_RTOS_THREAD_PRI_LED, 0, _HW_DEF_RTOS_THREAD_MEM_LED);
  if (osThreadCreate(osThread(threadLed), NULL) != NULL)
  {
    logPrintf("threadLed \t\t: OK\r\n");
  }
  else
  {
    logPrintf("threadLed \t\t: Fail\r\n");
    while(1);
  }
}

void apMain(void)
{
#if 0
  uint32_t pre_time;
  pre_time = millis();
#endif
  while(1)
  {
#if 0
    if(millis()-pre_time >= 500)
    {
      pre_time = millis();
      ledToggle(_DEF_LED3);
    }
#endif
#if 0
    if (uartAvailable(_DEF_UART2) > 0)
    {
      uint8_t rx_data;
      rx_data = uartRead(_DEF_UART2);

      uartPrintf(_DEF_UART2, "Rx : 0x%X\n", rx_data);
    }
#endif
    cliMain();
    delay(1);
    //osThreadYield();
  }

}

static void threadLed(void const *argument)
{
  UNUSED(argument);


  while(1)
  {
    ledToggle(_DEF_LED1);
    delay(500);
  }
}
