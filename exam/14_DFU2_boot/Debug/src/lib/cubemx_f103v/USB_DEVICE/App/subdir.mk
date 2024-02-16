################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/cubemx_f103v/USB_DEVICE/App/usb_device.c \
../src/lib/cubemx_f103v/USB_DEVICE/App/usbd_desc.c \
../src/lib/cubemx_f103v/USB_DEVICE/App/usbd_dfu_if.c 

OBJS += \
./src/lib/cubemx_f103v/USB_DEVICE/App/usb_device.o \
./src/lib/cubemx_f103v/USB_DEVICE/App/usbd_desc.o \
./src/lib/cubemx_f103v/USB_DEVICE/App/usbd_dfu_if.o 

C_DEPS += \
./src/lib/cubemx_f103v/USB_DEVICE/App/usb_device.d \
./src/lib/cubemx_f103v/USB_DEVICE/App/usbd_desc.d \
./src/lib/cubemx_f103v/USB_DEVICE/App/usbd_dfu_if.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/cubemx_f103v/USB_DEVICE/App/usb_device.o: ../src/lib/cubemx_f103v/USB_DEVICE/App/usb_device.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/ap" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/bsp" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/common" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/common/core" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/hw" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Inc" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/USB_DEVICE/App" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/USB_DEVICE/Target" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/lib/cubemx_f103v/USB_DEVICE/App/usb_device.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/lib/cubemx_f103v/USB_DEVICE/App/usbd_desc.o: ../src/lib/cubemx_f103v/USB_DEVICE/App/usbd_desc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/ap" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/bsp" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/common" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/common/core" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/hw" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Inc" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/USB_DEVICE/App" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/USB_DEVICE/Target" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/lib/cubemx_f103v/USB_DEVICE/App/usbd_desc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
src/lib/cubemx_f103v/USB_DEVICE/App/usbd_dfu_if.o: ../src/lib/cubemx_f103v/USB_DEVICE/App/usbd_dfu_if.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32F103xE -c -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/ap" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/bsp" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/common" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/common/core" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/common/hw/include" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/hw" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Drivers/CMSIS/Include" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Inc" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/USB_DEVICE/App" -I"D:/stm32f103v_cubeide/exam/14_DFU2_boot/src/lib/cubemx_f103v/USB_DEVICE/Target" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/lib/cubemx_f103v/USB_DEVICE/App/usbd_dfu_if.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

