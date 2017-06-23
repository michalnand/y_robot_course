#ifndef _MOTOR_H_
#define _MOTOR_H_

#include <avr/io.h>


class CMotor
{
  public:
    CMotor();
    ~CMotor();

    void run(int left, int right);

};

#endif
