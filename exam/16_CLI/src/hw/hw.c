/*
 * hw.c
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 */


#include "hw.h"

void hwInit(void)
{
  bspInit();
  cliInit();

  rtcInit();
  resetInit();
  ledInit();
  usbInit();
  uartInit();
  flashInit();
}
