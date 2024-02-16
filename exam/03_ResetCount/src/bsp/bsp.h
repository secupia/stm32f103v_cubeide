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

/* Private defines -----------------------------------------------------------*/
#define LED_1_Pin GPIO_PIN_12
#define LED_1_GPIO_Port GPIOB
#define LED_2_Pin GPIO_PIN_13
#define LED_2_GPIO_Port GPIOB
#define LED_3_Pin GPIO_PIN_14
#define LED_3_GPIO_Port GPIOB
#define LED_4_Pin GPIO_PIN_15
#define LED_4_GPIO_Port GPIOB

void bspInit(void);

void delay(uint32_t ms);
uint32_t millis(void);

void Error_Handler(void);

#endif /* SRC_BSP_BSP_H_ */
