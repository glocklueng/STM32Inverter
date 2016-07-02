/*
 * usart.h
 *
 *  Created on: 2 lip 2016
 *      Author: Rafau
 */

#ifndef UART_USART_H_
#define UART_USART_H_

#include "stm32f10x.h"

void uart_init (void);
void send_char(char c);
int __io_putchar(int c);

#endif /* UART_USART_H_ */
