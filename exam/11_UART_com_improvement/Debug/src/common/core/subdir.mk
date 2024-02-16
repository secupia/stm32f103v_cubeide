################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/common/core/qbuffer.c 

OBJS += \
./src/common/core/qbuffer.o 

C_DEPS += \
./src/common/core/qbuffer.d 


# Each subdirectory must supply rules for building sources it contributes
src/common/core/qbuffer.o: ../src/common/core/qbuffer.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/ap" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/bsp" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/common" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/common/core" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/hw" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/lib" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/lib/cubemx_f103v/USB_DEVICE/App" -I"D:/stm32f103v_cubeide/exam/11_UART_com_improvement/src/lib/cubemx_f103v/USB_DEVICE/Target" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/common/core/qbuffer.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

