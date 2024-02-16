################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/lib/cubemx_f103v/USB_DEVICE/Target/subdir.mk
-include src/lib/cubemx_f103v/USB_DEVICE/App/subdir.mk
-include src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Core/Src/subdir.mk
-include src/lib/cubemx_f103v/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/subdir.mk
-include src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include src/hw/driver/subdir.mk
-include src/hw/subdir.mk
-include src/common/core/subdir.mk
-include src/bsp/startup/subdir.mk
-include src/bsp/subdir.mk
-include src/ap/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

BUILD_ARTIFACT_NAME := 19_FreeRTOS_Remove
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX := 
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME).$(BUILD_ARTIFACT_EXTENSION)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
19_FreeRTOS_Remove.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
19_FreeRTOS_Remove.list \

OBJCOPY_HEX += \
19_FreeRTOS_Remove.hex \

OBJCOPY_BIN += \
19_FreeRTOS_Remove.bin \


# All Target
all: main-build

# Main-build Target
main-build: 19_FreeRTOS_Remove.elf secondary-outputs

# Tool invocations
19_FreeRTOS_Remove.elf: $(OBJS) $(USER_OBJS) D:\stm32f103v_cubeide\exam\19_FreeRTOS_Remove\src\bsp\ldscript\STM32F103VETX_FLASH.ld
	arm-none-eabi-gcc -o "19_FreeRTOS_Remove.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"D:\stm32f103v_cubeide\exam\19_FreeRTOS_Remove\src\bsp\ldscript\STM32F103VETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="19_FreeRTOS_Remove.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

19_FreeRTOS_Remove.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "19_FreeRTOS_Remove.list"
	@echo 'Finished building: $@'
	@echo ' '

19_FreeRTOS_Remove.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "19_FreeRTOS_Remove.hex"
	@echo 'Finished building: $@'
	@echo ' '

19_FreeRTOS_Remove.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "19_FreeRTOS_Remove.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents fail-specified-linker-script-missing warn-no-linker-script-specified
.SECONDARY:

-include ../makefile.targets
