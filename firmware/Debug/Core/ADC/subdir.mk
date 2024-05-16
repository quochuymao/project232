################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/ADC/ADC_VALUE.c 

OBJS += \
./Core/ADC/ADC_VALUE.o 

C_DEPS += \
./Core/ADC/ADC_VALUE.d 


# Each subdirectory must supply rules for building sources it contributes
Core/ADC/%.o Core/ADC/%.su Core/ADC/%.cyclo: ../Core/ADC/%.c Core/ADC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/BACHKHOA/HK232/DoAn2/firmware/Core" -I"C:/BACHKHOA/HK232/DoAn2/firmware/Core/ADC" -I"C:/BACHKHOA/HK232/DoAn2/firmware/Core/Control_GPIO" -I"C:/BACHKHOA/HK232/DoAn2/firmware/Core/LCD_I2C" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-ADC

clean-Core-2f-ADC:
	-$(RM) ./Core/ADC/ADC_VALUE.cyclo ./Core/ADC/ADC_VALUE.d ./Core/ADC/ADC_VALUE.o ./Core/ADC/ADC_VALUE.su

.PHONY: clean-Core-2f-ADC

