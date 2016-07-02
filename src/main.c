/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/

#include "stm32f10x.h"
#include "UART/usart.h"

int main(void)
{
uart_init();

	 while (1)
	 {
	 printf("Dej Inverter!\n");
	 }
}
