/*
 * main.c
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 *
 *  Reference : https://github.com/chcbaram/stm32f103/blob/201219R1/stm32f103_fw/src/main.c
 *
 */

#include "main.h"

static void threadMain(void const *argument);

int main(void)
{
  hwInit();
  apInit();

  osThreadDef(threadMain, threadMain, _HW_DEF_RTOS_THREAD_PRI_MAIN, 0, _HW_DEF_RTOS_THREAD_MEM_MAIN);
  if (osThreadCreate(osThread(threadMain), NULL) != NULL)
  {
    logPrintf("threadMain \t\t: OK\r\n");
  }
  else
  {
    logPrintf("threadMain \t\t: Fail\r\n");
    while(1);
  }

  osKernelStart();
  return 0;
}

static void threadMain(void const *argument)
{
  UNUSED(argument);

  apMain();
}
