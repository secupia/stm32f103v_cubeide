/*
 * ap.c
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 */

#include "ap.h"

void apInit(void)
{

}

void apMain(void)
{
  int count = 0;
  while(1)
  {
    ledToggle(_DEF_LED3);
    //printf("Hello STM32 Eclipse %d\r\n", count++);

    delay(1000);
  }
}

