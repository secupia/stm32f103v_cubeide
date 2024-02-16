/*
 * pvd.h
 *
 *  Created on: 2024. 2. 16.
 *      Author: Marshall
 */

#ifndef SRC_HW_DRIVER_PVD_H_
#define SRC_HW_DRIVER_PVD_H_

#include "hw_def.h"

void PVD_Init(void);

void HAL_PWR_PVDCallback();

#endif /* SRC_HW_DRIVER_PVD_H_ */
