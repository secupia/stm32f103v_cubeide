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
  rtcInit();

  resetInit();
  ledInit();
  usbInit();
  uartInit();

}
