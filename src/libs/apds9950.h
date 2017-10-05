#ifndef _APDS_9950_H_
#define _APDS_9950_H_

#include <i2c.h>

struct sAPDS9950Result
{
  uint16_t r, g, b, a;
  uint16_t proximity;
};


class CAPDS9950
{
  private:
    class CI2C_Interface *i2c;

  public:
    struct sAPDS9950Result result;

  public:
    CAPDS9950();
    ~CAPDS9950();

    int init(class CI2C_Interface *i2c);

    void read();
};

#endif
