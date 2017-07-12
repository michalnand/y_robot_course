#ifndef _STABILITY_KERNEL_H_
#define _STABILITY_KERNEL_H_


#include <gpio.h>
#include <timer.h>
#include <gyro.h>
#include <motor.h>
#include <terminal.h>



class CStabilityKernel
{
  private:
    float kp;
    float ki;
    float kd;

    float k0;
    float k1;
    float k2;

    float e0;
    float e1;
    float e2;
    float u;

    class CGyro gyro;
    class CMotor motor;


  public:
    CStabilityKernel();
    ~CStabilityKernel();

    void init(bool pd_controller);

    void operator ()();


  private:
    float saturate(float value, float min, float max);
};


#endif
