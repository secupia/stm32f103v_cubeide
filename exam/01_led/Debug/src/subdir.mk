################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c 

OBJS += \
./src/main.o 

C_DEPS += \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/main.o: ../src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/01_led/src" -I"D:/stm32f103v_cubeide/exam/01_led/src/ap" -I"D:/stm32f103v_cubeide/exam/01_led/src/bsp" -I"D:/stm32f103v_cubeide/exam/01_led/src/common" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/core" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/01_led/src/hw" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

