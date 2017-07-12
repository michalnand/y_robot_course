#include "stability_kernel.h"

TGpio<TGPIOA, 6, GPIO_MODE_OUT> led;

CStabilityKernel::CStabilityKernel()
{

}

CStabilityKernel::~CStabilityKernel()
{

}

void CStabilityKernel::init(bool pd_controller)
{
  gyro.init(&i2c);

  if (gyro.present)
    led = 0;
  else
    led = 1;

  if (pd_controller)
  {
    kp = 1.8;
    ki = 0.0;
    kd = 10.0;
  }
  else
  {
    kp = 1.0;
    ki = 0.0;
    kd = 0.0;
  }

  k0 = kp + ki + kd;
  k1 = -kp - 2.0*kd;
  k2 = kd;

  e0 = 0.0;
  e1 = 0.0;
  e2 = 0.0;
  u = 0.0;
}

void CStabilityKernel::operator()()
{
  float speed = 0;

    gyro.read();

    float angle = 0.0;

    angle = -gyro.angles.y*0.1;

    e2 = e1;
    e1 = e0;
    e0 = 0.0 - angle;   //subtract required and meassured value

    u+= k0*e0 + k1*e1 + k2*e2;  //process PID controller

    int left = saturate(u + speed, -256, 256);
    int right = saturate(-u + speed, -256, 256);

    motor.run(left, right);
}


float CStabilityKernel::saturate(float value, float min, float max)
{
  if (value < min)
    value = min;

  if (value > max)
    value = max;

  return value;
}
