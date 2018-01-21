#ifndef _MOTOR_H_
#define _MOTOR_H_

#include <avr/io.h>


class Motor
{
  public:
    Motor();
    ~Motor();

    void run(int left, int right);

};

#endif
