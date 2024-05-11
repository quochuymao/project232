#include "PWM_Control.h"

const int TIM_CLOCK = 24000000;

void PWM_Control(int dutyCycle, int frequency)
{
	int tim = TIM1->PSC;
	TIM1->ARR  =  TIM_CLOCK/frequency;
	int arr = TIM1->ARR;
	TIM1->CCR1 = ((dutyCycle)*(TIM1->ARR))/100;
	int ccr = TIM1->CCR1;
}

void PWM_Enable(void)
{
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
}

void PWM_Disable(void)
{
	HAL_TIM_PWM_Stop(&htim1, TIM_CHANNEL_1);
}
