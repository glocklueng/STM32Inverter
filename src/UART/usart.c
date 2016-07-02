/*
 * usart.c
 *
 *  Created on: 2 lip 2016
 *      Author: Rafau
 */

#include "stm32f10x.h"


void uart_init(void)
{
	 GPIO_InitTypeDef gpio;
	 USART_InitTypeDef uart;

	 RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD, ENABLE);
	 RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
	 RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);

	 GPIO_StructInit(&gpio);
	 gpio.GPIO_Pin = GPIO_Pin_2;
	 gpio.GPIO_Mode = GPIO_Mode_AF_PP;
	 GPIO_Init(GPIOA, &gpio);

	 gpio.GPIO_Pin = GPIO_Pin_3;
	 gpio.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	 GPIO_Init(GPIOA, &gpio);

	 USART_StructInit(&uart);
	 uart.USART_BaudRate = 9600;
	 USART_Init(USART2, &uart);

	 USART_Cmd(USART2, ENABLE);
}

void send_char(char c)
{
 while (USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET);
 USART_SendData(USART2, c);
}

int __io_putchar(int c)
{
 if (c=='\n')
 send_char('\r');
 send_char(c);
 return c;
}
