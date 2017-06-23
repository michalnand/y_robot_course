#ifndef _ROBOT_CONTROLL_H_
#define _ROBOT_CONTROLL_H_

#include "timer.h"
#include "motor.h"
#include "gyro.h"


class CRobotControll
{
  private:
    class CMotor motor;
    class CGyro gyro;

  private:
    float k0, k1, k2;
    float e0, e1, e2, u;

  public:
    CRobotControll();
    ~CRobotControll();

    void init();

    int main();

    void pid_init(float kp, float ki, float kd);
    float pid_process(float required_value, float plant_output);
};

#endif
