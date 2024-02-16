/*
 * pvd.c
 *
 *  Created on: 2024. 2. 16.
 *      Author: Marshall
 */

#include "pvd.h"

void PVD_Init(void)
{

  /* Enable Power Clock */
  __HAL_RCC_PWR_CLK_ENABLE();

  /* Configure the NVIC for PVD */
  HAL_NVIC_SetPriority(PVD_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(PVD_IRQn);

  /* Configure the PVD Level to */
  PWR_PVDTypeDef sConfigPVD;

  sConfigPVD.PVDLevel = PWR_PVDLEVEL_7;    // PWR_CR_PLS_2V9
  sConfigPVD.Mode = PWR_PVD_MODE_IT_RISING_FALLING;
  //HAL_PWR_PVDConfig(&sConfigPVD);
  HAL_PWR_ConfigPVD(&sConfigPVD);

  /* Enable the PVD Output */
  HAL_PWR_EnablePVD();

}

void HAL_PWR_PVDCallback()
{
#define __DEBUG_PVD_CALLBACK  0

#if(__DEBUG_PVD_CALLBACK)
  printf("HAL_PWR_PVDCallback\r\n");

  if(__HAL_PWR_GET_FLAG(PWR_FLAG_PVDO) == 0)
  {
    printf("PVDO Low: Normal\r\n");
  }
#endif

}
