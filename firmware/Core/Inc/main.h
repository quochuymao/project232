/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
typedef enum {POWER_DISPLAY,STATUS_SYSTEM,VOL_DISPLAY,CURR_DISPLAY} state_display;
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define TEST_Pin GPIO_PIN_13
#define TEST_GPIO_Port GPIOC
#define CURRENT_IN_Pin GPIO_PIN_0
#define CURRENT_IN_GPIO_Port GPIOA
#define CURRENT_OUT_Pin GPIO_PIN_1
#define CURRENT_OUT_GPIO_Port GPIOA
#define VOLTAGE_IN_Pin GPIO_PIN_2
#define VOLTAGE_IN_GPIO_Port GPIOA
#define VOLTAGE_OUT_Pin GPIO_PIN_3
#define VOLTAGE_OUT_GPIO_Port GPIOA
#define CHANGE_DISPLAY_Pin GPIO_PIN_4
#define CHANGE_DISPLAY_GPIO_Port GPIOA
#define CHANGE_DISPLAY_EXTI_IRQn EXTI4_IRQn
#define LOAD_CTR_Pin GPIO_PIN_0
#define LOAD_CTR_GPIO_Port GPIOB
#define PWM_OUT_Pin GPIO_PIN_8
#define PWM_OUT_GPIO_Port GPIOA
#define BUCK_EN_Pin GPIO_PIN_9
#define BUCK_EN_GPIO_Port GPIOA

/* USER CODE BEGIN Private defines */
#define ENABLE_CONTROL 1
#define DISABLE_CONTROL 0
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
