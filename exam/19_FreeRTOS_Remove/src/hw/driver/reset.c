/*
 * reset.c
 *
 *  Created on: 2024. 1. 24.
 *      Author: Marshall
 */


#include "reset.h"
#include "rtc.h"

#ifdef _USE_HW_RESET

static uint32_t reset_count = 0;



bool resetInit(void)
{
  bool ret = true;

  /* if reset pin on */
  if(RCC->CSR & (1<<26))
  {
    rtcBackupRegWrite(1, rtcBackupRegRead(1) + 1);
    delay(500);
    reset_count = rtcBackupRegRead(1);
  }

  rtcBackupRegWrite(1, 0);

  return ret;
}

uint32_t resetGetCount(void)
{
  return reset_count;
}

#endif
