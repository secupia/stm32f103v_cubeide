/*
 * led.c
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 */

#include "led.h"

#define LED_MAX_CH   4

typedef struct
{
	GPIO_TypeDef *port;
	uint16_t      pin;
	GPIO_PinState on_state;
	GPIO_PinState off_state;
} led_tbl_t;

led_tbl_t led_tbl[LED_MAX_CH] =
{
		{GPIOB, GPIO_PIN_12, GPIO_PIN_SET, GPIO_PIN_RESET},
		{GPIOB, GPIO_PIN_13, GPIO_PIN_SET, GPIO_PIN_RESET},
		{GPIOB, GPIO_PIN_14, GPIO_PIN_SET, GPIO_PIN_RESET},
		{GPIOB, GPIO_PIN_15, GPIO_PIN_SET, GPIO_PIN_RESET},
};

void ledInit(void)
{
#if 0
	 GPIO_InitTypeDef GPIO_InitStruct = {0};

	  /* GPIO Ports Clock Enable */
	  __HAL_RCC_GPIOB_CLK_ENABLE();
	  __HAL_RCC_GPIOA_CLK_ENABLE();

	  /*Configure GPIO pin Output Level */
	  HAL_GPIO_WritePin(GPIOB, LED_1_Pin|LED_2_Pin|LED_3_Pin|LED_4_Pin, GPIO_PIN_RESET);

	  /*Configure GPIO pins : PBPin PBPin PBPin PBPin */
	  GPIO_InitStruct.Pin = LED_1_Pin|LED_2_Pin|LED_3_Pin|LED_4_Pin;
	  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	  GPIO_InitStruct.Pull = GPIO_NOPULL;
	  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
#endif
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  //HAL_GPIO_WritePin(LED1_GPIO_Port, LED1_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : LED1_Pin */
  //GPIO_InitStruct.Pin = LED1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  //HAL_GPIO_Init(LED1_GPIO_Port, &GPIO_InitStruct);
  for( int i=0; i<LED_MAX_CH; i++)
  {
  	GPIO_InitStruct.Pin = led_tbl[i].pin;
  	HAL_GPIO_Init(led_tbl[i].port, &GPIO_InitStruct);

  	ledOff(i);
  }
}

void ledOn(uint8_t ch)
{
	if(ch >= LED_MAX_CH) return;
  //HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_SET);
	HAL_GPIO_WritePin(led_tbl[ch].port, led_tbl[ch].pin, led_tbl[ch].on_state);
}

void ledOff(uint8_t ch)
{
	if(ch >= LED_MAX_CH) return;
  //HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(led_tbl[ch].port, led_tbl[ch].pin, led_tbl[ch].off_state);
}

void ledToggle(uint8_t ch)
{
	if(ch >= LED_MAX_CH) return;
  //HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);
  //HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
  HAL_GPIO_TogglePin(led_tbl[ch].port, led_tbl[ch].pin);
}
