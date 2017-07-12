#ifndef _USART_H_
#define _USART_H_


#define NO_CHAR       0xffff

class CUSART
{
  public:
    CUSART();
    ~CUSART();

    void putchar(char c);
    char getchar();

    unsigned int ischar();
};


#endif
