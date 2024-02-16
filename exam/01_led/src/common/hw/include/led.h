/*
 * led.h
 *
 *  Created on: 2021. 9. 4.
 *      Author: Marshall
 */

#ifndef SRC_COMMON_HW_INCLUDE_LED_H_
#define SRC_COMMON_HW_INCLUDE_LED_H_

#include "hw_def.h"

void ledInit(void);
void ledOn(uint8_t ch);
void ledOff(uint8_t ch);
void ledToggle(uint8_t);

#endif /* SRC_COMMON_HW_INCLUDE_LED_H_ */
