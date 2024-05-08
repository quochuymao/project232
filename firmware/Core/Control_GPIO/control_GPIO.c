#include "control_GPIO.h"

void buckControl(int stateBuck)
{
	HAL_GPIO_WritePin(BUCK_EN_GPIO_Port, BUCK_EN_Pin, stateBuck);
}
void loadControl(int stateLoad)
{
	HAL_GPIO_WritePin(LOAD_CTR_GPIO_Port, LOAD_CTR_Pin, stateLoad);
}


