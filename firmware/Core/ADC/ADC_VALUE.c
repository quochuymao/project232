#include "ADC_VALUE.h"
#include "main.h"

float getCurrentIn(int adcValue)
{
	volatile float V_out = ((float)adcValue/4096)*3.3;
	return 0;
}
float getCurrentOut(int adcValue)
{
	volatile float V_out = ((float)adcValue/4096)*3.3;
	return V_out;
}
float getVoltageIn(int adcValue)
{

	return 0;
}
float getVoltageOut(int adcValue)
{
	volatile float V_out ;
	V_out = ((float)adcValue/4096)*3.3*5.51;
	return V_out;
}
