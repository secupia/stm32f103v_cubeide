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

  /* Initialize Hardware */
  ledInit();
  usbInit();
  uartInit();

}
