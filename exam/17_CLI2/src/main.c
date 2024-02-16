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

int main(void)
{
  hwInit();
  apInit();

  apMain();

  return 0;
}

