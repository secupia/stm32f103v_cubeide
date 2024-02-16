################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.c 

OBJS += \
./src/lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.o 

C_DEPS += \
./src/lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.o: ../src/lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/ap" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/bsp" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/common" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/common/core" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/hw" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/cubemx_f103v/USB_DEVICE/App" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/cubemx_f103v/USB_DEVICE/Target" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/FreeRTOS/Source/CMSIS_RTOS" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/FreeRTOS/Source/include" -I"D:/stm32f103v_cubeide/exam/18_FreeRTOS/src/lib/FreeRTOS/Source/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

