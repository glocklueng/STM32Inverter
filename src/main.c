/**
 ******************************************************************************
 * @file    main.c
 * @author  Ac6
 * @version V1.0
 * @date    01-December-2013
 * @brief   Default main function.
 ******************************************************************************
 */

#include <stdio.h>
#include <stdint.h>

#include "stm32f10x.h"

#include "UART/usart.h"
#include "ADC/adc.h"

int main(void)
{
	uart_init();
	adc_init();

	while (1)
	{
		uint16_t adc = ADC_GetConversionValue(ADC1);
		uint8_t req_frequency = adc * 0.0122;
		printf("Required frequency = %d\n", req_frequency);
	}
}
