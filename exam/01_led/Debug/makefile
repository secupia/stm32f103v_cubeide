################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/lib/cubemx_f103v/Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include src/hw/driver/subdir.mk
-include src/hw/subdir.mk
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

BUILD_ARTIFACT_NAME := 01_led
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX := 
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME).$(BUILD_ARTIFACT_EXTENSION)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
01_led.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
01_led.list \

OBJCOPY_HEX += \
01_led.hex \

OBJCOPY_BIN += \
01_led.bin \


# All Target
all: main-build

# Main-build Target
main-build: 01_led.elf secondary-outputs

# Tool invocations
01_led.elf: $(OBJS) $(USER_OBJS) D:\stm32f103v_cubeide\exam\01_led\src\bsp\ldscript\STM32F103VETX_FLASH.ld
	arm-none-eabi-gcc -o "01_led.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"D:\stm32f103v_cubeide\exam\01_led\src\bsp\ldscript\STM32F103VETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="01_led.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

01_led.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "01_led.list"
	@echo 'Finished building: $@'
	@echo ' '

01_led.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "01_led.hex"
	@echo 'Finished building: $@'
	@echo ' '

01_led.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "01_led.bin"
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
