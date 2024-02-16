################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bsp/bsp.c \
../src/bsp/stm32f1xx_hal_msp.c \
../src/bsp/stm32f1xx_it.c \
../src/bsp/syscalls.c \
../src/bsp/sysmem.c \
../src/bsp/system_stm32f1xx.c 

OBJS += \
./src/bsp/bsp.o \
./src/bsp/stm32f1xx_hal_msp.o \
./src/bsp/stm32f1xx_it.o \
./src/bsp/syscalls.o \
./src/bsp/sysmem.o \
./src/bsp/system_stm32f1xx.o 

C_DEPS += \
./src/bsp/bsp.d \
./src/bsp/stm32f1xx_hal_msp.d \
./src/bsp/stm32f1xx_it.d \
./src/bsp/syscalls.d \
./src/bsp/sysmem.d \
./src/bsp/system_stm32f1xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/bsp/bsp.o: ../src/bsp/bsp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/01_led/src" -I"D:/stm32f103v_cubeide/exam/01_led/src/ap" -I"D:/stm32f103v_cubeide/exam/01_led/src/bsp" -I"D:/stm32f103v_cubeide/exam/01_led/src/common" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/core" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/01_led/src/hw" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/bsp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/bsp/stm32f1xx_hal_msp.o: ../src/bsp/stm32f1xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/01_led/src" -I"D:/stm32f103v_cubeide/exam/01_led/src/ap" -I"D:/stm32f103v_cubeide/exam/01_led/src/bsp" -I"D:/stm32f103v_cubeide/exam/01_led/src/common" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/core" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/01_led/src/hw" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/stm32f1xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/bsp/stm32f1xx_it.o: ../src/bsp/stm32f1xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/01_led/src" -I"D:/stm32f103v_cubeide/exam/01_led/src/ap" -I"D:/stm32f103v_cubeide/exam/01_led/src/bsp" -I"D:/stm32f103v_cubeide/exam/01_led/src/common" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/core" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/01_led/src/hw" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/stm32f1xx_it.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/bsp/syscalls.o: ../src/bsp/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/01_led/src" -I"D:/stm32f103v_cubeide/exam/01_led/src/ap" -I"D:/stm32f103v_cubeide/exam/01_led/src/bsp" -I"D:/stm32f103v_cubeide/exam/01_led/src/common" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/core" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/01_led/src/hw" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/syscalls.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/bsp/sysmem.o: ../src/bsp/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/01_led/src" -I"D:/stm32f103v_cubeide/exam/01_led/src/ap" -I"D:/stm32f103v_cubeide/exam/01_led/src/bsp" -I"D:/stm32f103v_cubeide/exam/01_led/src/common" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/core" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/01_led/src/hw" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/sysmem.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/bsp/system_stm32f1xx.o: ../src/bsp/system_stm32f1xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/01_led/src" -I"D:/stm32f103v_cubeide/exam/01_led/src/ap" -I"D:/stm32f103v_cubeide/exam/01_led/src/bsp" -I"D:/stm32f103v_cubeide/exam/01_led/src/common" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/core" -I"D:/stm32f103v_cubeide/exam/01_led/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/01_led/src/hw" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/01_led/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/bsp/system_stm32f1xx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

