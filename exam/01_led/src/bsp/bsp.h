/*
 * bsp.h
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 */

#ifndef SRC_BSP_BSP_H_
#define SRC_BSP_BSP_H_

#include "def.h"

/* Use HAL Driver */
#include "stm32f1xx_hal.h"

//#define LED1_GPIO_Port   GPIOA
//#define LED1_Pin         GPIO_PIN_5

//UART_HandleTypeDef huart2;

void bspInit(void);

void delay(uint32_t ms);
uint32_t millis(void);



#endif /* SRC_BSP_BSP_H_ */
