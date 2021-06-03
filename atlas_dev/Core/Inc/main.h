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
#define SPI4_NCS_ACCEL_Pin GPIO_PIN_3
#define SPI4_NCS_ACCEL_GPIO_Port GPIOE
#define SPI4_NCS_FLASH_Pin GPIO_PIN_4
#define SPI4_NCS_FLASH_GPIO_Port GPIOE
#define TOUCH_INT_Pin GPIO_PIN_13
#define TOUCH_INT_GPIO_Port GPIOC
#define LED_L_Pin GPIO_PIN_0
#define LED_L_GPIO_Port GPIOC
#define MCU_3V3_EN_Pin GPIO_PIN_1
#define MCU_3V3_EN_GPIO_Port GPIOC
#define SW_L_Pin GPIO_PIN_2
#define SW_L_GPIO_Port GPIOC
#define LED_C_Pin GPIO_PIN_3
#define LED_C_GPIO_Port GPIOC
#define SW_PWR_C_Pin GPIO_PIN_0
#define SW_PWR_C_GPIO_Port GPIOA
#define SW_R_Pin GPIO_PIN_1
#define SW_R_GPIO_Port GPIOA
#define USB_DET_Pin GPIO_PIN_2
#define USB_DET_GPIO_Port GPIOA
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
#define USART3_TX_NCP_Pin GPIO_PIN_8
#define USART3_TX_NCP_GPIO_Port GPIOD
#define USART3_RX_NCP_Pin GPIO_PIN_9
#define USART3_RX_NCP_GPIO_Port GPIOD
#define STM_VCORE_GOOD_Pin GPIO_PIN_10
#define STM_VCORE_GOOD_GPIO_Port GPIOD
#define USART3_CTS_NCP_Pin GPIO_PIN_11
#define USART3_CTS_NCP_GPIO_Port GPIOD
#define USART3_RTS_NCP_Pin GPIO_PIN_12
#define USART3_RTS_NCP_GPIO_Port GPIOD
#define LCD_REG_EN_Pin GPIO_PIN_13
#define LCD_REG_EN_GPIO_Port GPIOD
#define PD14_NCP_Pin GPIO_PIN_14
#define PD14_NCP_GPIO_Port GPIOD
#define PD15_NCP_Pin GPIO_PIN_15
#define PD15_NCP_GPIO_Port GPIOD
#define SD_DET_Pin GPIO_PIN_0
#define SD_DET_GPIO_Port GPIOD
#define GPS_3DF_Pin GPIO_PIN_1
#define GPS_3DF_GPIO_Port GPIOD
#define LTDC_G7_Pin GPIO_PIN_3
#define LTDC_G7_GPIO_Port GPIOD
#define GPS_EXTINT0_Pin GPIO_PIN_4
#define GPS_EXTINT0_GPIO_Port GPIOD
#define GPS_FORCE_ON_Pin GPIO_PIN_5
#define GPS_FORCE_ON_GPIO_Port GPIOD
#define ACCEL_INT2_Pin GPIO_PIN_6
#define ACCEL_INT2_GPIO_Port GPIOD
#define ACCEL_INT1_Pin GPIO_PIN_7
#define ACCEL_INT1_GPIO_Port GPIOD
#define FUEL_INT_Pin GPIO_PIN_4
#define FUEL_INT_GPIO_Port GPIOB
#define I2C4_SCL_SENSOR_PB6_Pin GPIO_PIN_6
#define I2C4_SCL_SENSOR_PB6_GPIO_Port GPIOB
#define I2C4_SDA_SENSOR_PB7_Pin GPIO_PIN_7
#define I2C4_SDA_SENSOR_PB7_GPIO_Port GPIOB
#define GPS_UART8_RX_Pin GPIO_PIN_0
#define GPS_UART8_RX_GPIO_Port GPIOE
#define GPS_UART8_TX_Pin GPIO_PIN_1
#define GPS_UART8_TX_GPIO_Port GPIOE
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
