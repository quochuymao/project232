#ifndef PWM_GENERATION_PWM_CONTROL_H_
#define PWM_GENERATION_PWM_CONTROL_H_

#include "main.h"

const int TIM_CLOCK;
extern TIM_HandleTypeDef htim1;

void PWM_Control(int dutyCycle, int frequency);

#endif /* PWM_GENERATION_PWM_CONTROL_H_ */
