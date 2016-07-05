################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/PWM/stm32f10x_it.c 

OBJS += \
./src/PWM/stm32f10x_it.o 

C_DEPS += \
./src/PWM/stm32f10x_it.d 


# Each subdirectory must supply rules for building sources it contributes
src/PWM/%.o: ../src/PWM/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -DSTM32F1 -DNUCLEO_F103RB -DSTM32F103RBTx -DSTM32 -DDEBUG -DUSE_STDPERIPH_DRIVER -DSTM32F10X_MD -IC:/Users/Rafau/forbot/workspace/Inverter/inc -IC:/Users/Rafau/forbot/workspace/Inverter/CMSIS/core -IC:/Users/Rafau/forbot/workspace/Inverter/CMSIS/device -IC:/Users/Rafau/forbot/workspace/Inverter/StdPeriph_Driver/inc -IC:/Users/Rafau/forbot/workspace/Inverter/Utilities/STM32F1xx-Nucleo -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


