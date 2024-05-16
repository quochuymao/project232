################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/PWM_Generation/PWM_Control.c 

OBJS += \
./Core/PWM_Generation/PWM_Control.o 

C_DEPS += \
./Core/PWM_Generation/PWM_Control.d 


# Each subdirectory must supply rules for building sources it contributes
Core/PWM_Generation/%.o Core/PWM_Generation/%.su Core/PWM_Generation/%.cyclo: ../Core/PWM_Generation/%.c Core/PWM_Generation/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/LE TUAN THANH/STM32CubeIDE/workspace_1.13.1/DOAN2/project232/firmware/Core" -I"C:/Users/LE TUAN THANH/STM32CubeIDE/workspace_1.13.1/DOAN2/project232/firmware/Core/ADC" -I"C:/Users/LE TUAN THANH/STM32CubeIDE/workspace_1.13.1/DOAN2/project232/firmware/Core/Control_GPIO" -I"C:/Users/LE TUAN THANH/STM32CubeIDE/workspace_1.13.1/DOAN2/project232/firmware/Core/LCD_I2C" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-PWM_Generation

clean-Core-2f-PWM_Generation:
	-$(RM) ./Core/PWM_Generation/PWM_Control.cyclo ./Core/PWM_Generation/PWM_Control.d ./Core/PWM_Generation/PWM_Control.o ./Core/PWM_Generation/PWM_Control.su

.PHONY: clean-Core-2f-PWM_Generation

