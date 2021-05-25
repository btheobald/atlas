/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
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
#include "stm32h7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
extern uint8_t fb[272*480];
/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define MCU_3V3_EN_Pin GPIO_PIN_1
#define MCU_3V3_EN_GPIO_Port GPIOC
#define SW_L_Pin GPIO_PIN_2
#define SW_L_GPIO_Port GPIOC
#define LED_C_Pin GPIO_PIN_3
#define LED_C_GPIO_Port GPIOC
#define SW_PWR_C_Pin GPIO_PIN_0
#define SW_PWR_C_GPIO_Port GPIOA
#define LCD_BACKLIGHT_Pin GPIO_PIN_3
#define LCD_BACKLIGHT_GPIO_Port GPIOA
#define LED_R_Pin GPIO_PIN_4
#define LED_R_GPIO_Port GPIOC
#define STM_VCORE_EN_Pin GPIO_PIN_12
#define STM_VCORE_EN_GPIO_Port GPIOB
#define STM_VCORE_D2_Pin GPIO_PIN_13
#define STM_VCORE_D2_GPIO_Port GPIOB
#define STM_VCORE_D1_Pin GPIO_PIN_14
#define STM_VCORE_D1_GPIO_Port GPIOB
#define STM_VCORE_D0_Pin GPIO_PIN_15
#define STM_VCORE_D0_GPIO_Port GPIOB
#define LCD_REG_EN_Pin GPIO_PIN_13
#define LCD_REG_EN_GPIO_Port GPIOD
#define GPS_3DF_Pin GPIO_PIN_1
#define GPS_3DF_GPIO_Port GPIOD
/* USER CODE BEGIN Private defines */
#define LTDC_G7_Pin GPIO_PIN_3
#define LTDC_G7_GPIO_Port GPIOD
#define BUFFERSIZE                 0x4000
#define DLYB_BUFFERSIZE                  (COUNTOF(Cal_buffer) - 1)    
#define COUNTOF(__BUFFER__)         (sizeof(__BUFFER__) / sizeof(*(__BUFFER__)))
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
