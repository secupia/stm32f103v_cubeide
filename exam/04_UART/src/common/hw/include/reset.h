/*
 * reset.h
 *
 *  Created on: 2024. 1. 24.
 *      Author: Marshall
 */

#ifndef SRC_HW_DRIVER_RESET_H_
#define SRC_HW_DRIVER_RESET_H_

#include "hw_def.h"

#ifdef _USE_HW_RESET

bool resetInit(void);
uint32_t resetGetCount(void);

#endif

#endif /* SRC_HW_DRIVER_RESET_H_ */
