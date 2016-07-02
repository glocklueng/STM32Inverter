################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/UART/usart.c 

OBJS += \
./src/UART/usart.o 

C_DEPS += \
./src/UART/usart.d 


# Each subdirectory must supply rules for building sources it contributes
src/UART/%.o: ../src/UART/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -DSTM32F1 -DNUCLEO_F103RB -DSTM32F103RBTx -DSTM32 -DDEBUG -DUSE_STDPERIPH_DRIVER -DSTM32F10X_MD -IC:/Users/Rafau/forbot/workspace/Inverter/inc -IC:/Users/Rafau/forbot/workspace/Inverter/CMSIS/core -IC:/Users/Rafau/forbot/workspace/Inverter/CMSIS/device -IC:/Users/Rafau/forbot/workspace/Inverter/StdPeriph_Driver/inc -IC:/Users/Rafau/forbot/workspace/Inverter/Utilities/STM32F1xx-Nucleo -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


