#include "usart.h"
#include <avr/io.h>


#define TERMINAL_BAUDRATE   9600
#define UBRR_VALUE ((((uint32_t)10000000 / (TERMINAL_BAUDRATE * 16UL))) - 1)

USART::USART()
{
  //set baud rate
  UBRRH = (uint8_t)(UBRR_VALUE>>8);
  UBRRL = (uint8_t)UBRR_VALUE;

  //set frame format to 8 data bits, no parity, 1 stop bit
  UCSRC|= (1<<URSEL)|(1<<UCSZ0)|(1<<UCSZ1);   // 8bit data format

  //enable transmission and reception
  UCSRB |= (1<<RXEN)|(1<<TXEN);
}


USART::~USART()
{


}

void USART::putchar(char c)
{
  //transmit data
  UDR = c;

  //wait while previous byte is completed
  while(!(UCSRA&(1<<UDRE)))
    __asm("nop");
}

char USART::getchar()
{
  unsigned int c;
  while ( (c = ischar()) == NO_CHAR)
    __asm("nop");

  return c;
}

unsigned int USART::ischar()
{
  if ((UCSRA&(1<<RXC)) == 0)
    return NO_CHAR;

  return UDR;
}
