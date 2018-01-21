#include "pid.h"


PID::PID()
{
  init(0, 0, 0, 0);
}

PID::PID(float kp, float ki, float kd, float range)
{
  init(kp, ki, kd, range);
}


PID::~PID()
{

}

void PID::init(float kp, float ki, float kd, float range)
{
  u = 0.0;
  this->range = range;

  e0 = 0.0;
  e1 = 0.0;
  e2 = 0.0;

  k0 = kp + ki + kd;
  k1 = -kp -2.0*kd;
  k2 = kd;
}


float PID::process(float error)
{
  e2 = e1;
  e1 = e0;
  e0 = error;

  u+= k0*e0 + k1*e1 + k2*e2;

  if (u > range)
    u = range;

  if (u < -range)
    u = -range;

  return u;
}
