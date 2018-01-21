#ifndef _TERMINAL_H_
#define _TERMINAL_H_

#include <usart.h>
#include <stdint.h>

class Terminal: public USART
{
  public:
    Terminal();
    ~Terminal();

    void puts(char *s);
    void puti(int32_t n);
    void putui(uint32_t n);
    void putx(uint32_t n);
    void putf(float n, unsigned char decimal_places);
    void printf(const char *str, ...);
};

extern class Terminal terminal;


#endif
