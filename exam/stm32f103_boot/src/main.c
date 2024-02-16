/*
 * main.c
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 */

#include "main.h"

int main(void)
{
  hwInit();
  apInit();

  apMain();

  return 0;
}

