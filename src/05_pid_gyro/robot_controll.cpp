#include "robot_controll.h"


CRobotControll::CRobotControll()
{

}

CRobotControll::~CRobotControll()
{

}

void CRobotControll::init()
{
  gyro.init(&i2c);

  pid_init(1.0, 0.0, 0.5);
}

int CRobotControll::main()
{
  while (1)
  {
    gyro.read();

    float dif = pid_process(0.0, gyro.get_yaw());

    int left_motor = dif;
    int right_motor = -dif;

    motor.run(left_motor, right_motor);


    timer.delay_ms(10);
  }

  return 0;
}


void CRobotControll::pid_init(float kp, float ki, float kd)
{
  k0 = kp + ki + kd;
  k1 = -kp -2.0*kd;
  k2 = kd;

  e0 = 0.0;
  e1 = 0.0;
  e2 = 0.0;
  u = 0.0;
}

float CRobotControll::pid_process(float required_value, float plant_output)
{
  e2 = e1;
  e1 = e0;
  e0 = required_value - plant_output;

  u+= k0*e0 + k1*e1 + k2*e2;

  return u;
}
