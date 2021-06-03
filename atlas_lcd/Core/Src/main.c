/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "gpio.h"
#include "octospi.h"
#include "ltdc_mod.h"
#include "tim.h"
#include "sdmmc.h"
#include "fatfs.h"
#include "hagl.h"
#include "hagl_hal.h"
#include "font9x18.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <wchar.h>
#define LOADBMP_IMPLEMENTATION
#include "loadbmp.h"
//#include "stm32h7xx_ll_delayblock.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
void metaballs_init();
void metaballs_animate();
void metaballs_render();
void SWD_Init(void);
void SWO_PrintData(uint32_t * addr, uint32_t count);
void SWO_PrintChar(char c);
void SWO_PrintString(const char *s);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
__attribute__((section(".fb1"))) uint8_t fb[272*480];
/* USER CODE END 0 */

struct vector2 {
    int16_t x;
    int16_t y;
};

struct ball {
    struct vector2 position;
    struct vector2 velocity;
    uint16_t radius;
    uint16_t color;
};

struct ball balls[16];

static const uint8_t NUM_BALLS = 4;
static const uint8_t MIN_VELOCITY = 1;
static const uint8_t MAX_VELOCITY = 2;
static const uint8_t MIN_RADIUS = 15;
static const uint8_t MAX_RADIUS = 32;
static const uint8_t PIXEL_SIZE = 4;

void metaballs_init()
{
    /* Set up imaginary balls inside screen coordinates. */
    for (int16_t i = 0; i < NUM_BALLS; i++) {
        balls[i].radius = (rand() % MAX_RADIUS) + MIN_RADIUS;
        balls[i].color = 0xffff;
        balls[i].position.x = rand() % DISPLAY_WIDTH;
        balls[i].position.y = rand() % DISPLAY_HEIGHT;
        balls[i].velocity.x = (rand() % MAX_VELOCITY) + MIN_VELOCITY;
        balls[i].velocity.y = (rand() % MAX_VELOCITY) + MIN_VELOCITY;
    }
}

void metaballs_animate()
{
    for (int16_t i = 0; i < NUM_BALLS; i++) {
        balls[i].position.x += balls[i].velocity.x;
        balls[i].position.y += balls[i].velocity.y;

        /* Touch left or right edge, change direction. */
        if ((balls[i].position.x < 0) | (balls[i].position.x > DISPLAY_WIDTH)) {
            balls[i].velocity.x = balls[i].velocity.x * -1;
        }

        /* Touch top or bottom edge, change direction. */
        if ((balls[i].position.y < 0) | (balls[i].position.y > DISPLAY_HEIGHT)) {
            balls[i].velocity.y = balls[i].velocity.y * -1;
        }
    }
}

/* http://www.geisswerks.com/ryan/BLOBS/blobs.html */
void metaballs_render()
{
    const color_t background = hagl_color(0, 0, 0);
    const color_t black = hagl_color(0, 0, 0);
    const color_t white = hagl_color(255, 255, 255);
    const color_t green = hagl_color(0, 255, 0);
    color_t color;

    for (uint16_t y = 0; y < DISPLAY_HEIGHT; y += PIXEL_SIZE) {
        for (uint16_t x = 0; x < DISPLAY_WIDTH; x += PIXEL_SIZE) {
            float sum = 0;
            for (uint8_t i = 0; i < NUM_BALLS; i++) {
                const float dx = x - balls[i].position.x;
                const float dy = y - balls[i].position.y;
                const float d2 = dx * dx + dy * dy;
                sum += balls[i].radius * balls[i].radius / d2;
                // sum += balls[i].radius / sqrt(d2);
            }

            if (sum > 0.65) {
                color = black;
            } else if (sum > 0.5) {
                color = white;
            } else if (sum > 0.4) {
                color = green;
            } else {
                color = background;
            }

            if (1 == PIXEL_SIZE) {
                hagl_put_pixel(x, y, color);
            } else {
                hagl_fill_rectangle(x, y, x + PIXEL_SIZE - 1, y + PIXEL_SIZE - 1, color);
            }
        }
    }
}

int main(void)
{
  /* MCU Configuration--------------------------------------------------------*/
  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  //MX_OCTOSPI1_Init();

  HAL_Delay(100);
  HAL_GPIO_WritePin(LCD_REG_EN_GPIO_Port, LCD_REG_EN_Pin, GPIO_PIN_SET);
  MX_LTDC_Init();

  MX_TIM2_Init();
  /* USER CODE BEGIN 2 */
  HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_4);
  __HAL_RCC_MDMA_CLK_ENABLE();

  const char sd[9] = "Start SD";

  SWD_Init();


  MX_SDMMC1_SD_Init();
  //SDMMC_PowerState_ON(&hsd1);

  //SDMMC_CmdAppCommand();
  //SDMMC_GetCmdResp1();
  //if(HAL_SD_Init(&hsd1) != HAL_OK)
  //{
  //  Error_Handler();
  //}


  /* USER CODE END 2 */

  /* USER CODE BEGIN 1 */
  /* Enable I-Cache */
  //SCB_EnableICache();

  /* Enable D-Cache */
  //SCB_EnableDCache();
  /* USER CODE END 1 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  HAL_GPIO_WritePin(LED_R_GPIO_Port, LED_R_Pin, GPIO_PIN_RESET);

  uint8_t t = 0;

  //metaballs_init();

  unsigned char *pixels = NULL;
  unsigned int dw;
  unsigned int dh;

  wchar_t message[32];

  hagl_clear_screen();

  bitmap_t dogebit = {0};
  HAL_Delay(100);

  retSD = HAL_ERROR;
  while(retSD != HAL_OK) {
    retSD = HAL_SD_Init(&hsd1);
    swprintf(message, 32, L"STATUS: %d, %d", retSD, HAL_GPIO_ReadPin(SD_DET_GPIO_Port, SD_DET_Pin));
    hagl_put_text(message, 10, 10, 255, font9x18);
    HAL_Delay(1000);
    HAL_GPIO_TogglePin(LED_R_GPIO_Port, LED_R_Pin);
  }

  MX_FATFS_Init();

  retSD = f_mount(&SDFatFS, SDPath, 1);
  if(retSD == FR_OK) {
    HAL_GPIO_WritePin(LED_R_GPIO_Port, LED_R_Pin, GPIO_PIN_SET);
    swprintf(message, 32, L"MOUNTED: %d", retSD);
    hagl_put_text(message, 10, 10, 255, font9x18);
  } else {
    HAL_GPIO_WritePin(LED_R_GPIO_Port, LED_R_Pin, GPIO_PIN_RESET);
    swprintf(message, 32, L"MOUNT FAILED: %d", retSD);
    hagl_put_text(message, 10, 10, 255, font9x18);
    Error_Handler();
  }

  swprintf(message, 32, L"DRIVERS: %d", FATFS_GetAttachedDriversNbr());
  hagl_put_text(message, 10, 30, 255, font9x18);

  retSD = f_open(&SDFile, "doge.bmp", FA_OPEN_EXISTING | FA_READ);
  if(retSD == FR_OK) {
    HAL_GPIO_WritePin(LED_C_GPIO_Port, LED_C_Pin, GPIO_PIN_SET);
  } else {
    HAL_GPIO_WritePin(LED_C_GPIO_Port, LED_C_Pin, GPIO_PIN_RESET);
    Error_Handler();
  }

  swprintf(message, 32, L"OPEN doge.bmp: %d", retSD);
  hagl_put_text(message, 10, 30, 255, font9x18);
 
  while (1)
  { 

  }
    /*HAL_Delay(100); 
    //hagl_clear_screen();
    DMA2D_HandleTypeDef hdma2d;
    hdma2d.Instance = DMA2D;
    hdma2d.Init.Mode = DMA2D_M2M;
    hdma2d.Init.ColorMode = DMA2D_OUTPUT_ARGB8888;
    hdma2d.Init.OutputOffset = DISPLAY_WIDTH - dw;
    // Foreground
    hdma2d.LayerCfg[1].AlphaMode = DMA2D_NO_MODIF_ALPHA;
    hdma2d.LayerCfg[1].InputColorMode = DMA2D_INPUT_ARGB8888;
    hdma2d.LayerCfg[1].InputOffset = 0;
    HAL_DMA2D_Init(&hdma2d);
    HAL_DMA2D_ConfigLayer(&hdma2d, 1);
    HAL_DMA2D_Start(&hdma2d, pixels, fb + (0 + 0 * DISPLAY_WIDTH) * 4, dw, dh);
    HAL_DMA2D_PollForTransfer(&hdma2d, 10);
    HAL_GPIO_TogglePin(LED_C_GPIO_Port, LED_C_Pin);*/

}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_LDO_SUPPLY);
  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE0);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}
  /** Macro to configure the PLL clock source
  */
  __HAL_RCC_PLL_PLLSOURCE_CONFIG(RCC_PLLSOURCE_HSE);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
 
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  //RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  //RCC_OscInitStruct.HSIState = RCC_HSI_DIV8;
  //RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 200;
  RCC_OscInitStruct.PLL.PLLP = 1;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_0;
  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOWIDE;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }

  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_SDMMC | RCC_PERIPHCLK_LTDC;
  PeriphClkInitStruct.PLL2.PLL2M = 2;
  PeriphClkInitStruct.PLL2.PLL2N = 25;
  PeriphClkInitStruct.PLL2.PLL2P = 2;
  PeriphClkInitStruct.PLL2.PLL2Q = 2;
  PeriphClkInitStruct.PLL2.PLL2R = 2;
  PeriphClkInitStruct.PLL2.PLL2RGE = RCC_PLL2VCIRANGE_2;
  PeriphClkInitStruct.PLL2.PLL2VCOSEL = RCC_PLL2VCOWIDE;
  PeriphClkInitStruct.PLL2.PLL2FRACN = 0;
  PeriphClkInitStruct.SdmmcClockSelection = RCC_SDMMCCLKSOURCE_PLL2;
  PeriphClkInitStruct.PLL3.PLL3M = 32;
  PeriphClkInitStruct.PLL3.PLL3N = 148;
  PeriphClkInitStruct.PLL3.PLL3P = 2;
  PeriphClkInitStruct.PLL3.PLL3Q = 2;
  PeriphClkInitStruct.PLL3.PLL3R = 4;
  PeriphClkInitStruct.PLL3.PLL3RGE = RCC_PLL3VCIRANGE_3;
  PeriphClkInitStruct.PLL3.PLL3VCOSEL = RCC_PLL3VCOMEDIUM;
  PeriphClkInitStruct.PLL3.PLL3FRACN = 0;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  __HAL_RCC_CSI_ENABLE() ;

  __HAL_RCC_SYSCFG_CLK_ENABLE() ;

  HAL_EnableCompensationCell();

}

/* USER CODE BEGIN 4 */
void SWD_Init(void)
{
  /*
    This functions recommends system speed of 400000000Hz and will
    use SWO clock speed of 2000000Hz

    # GDB OpenOCD commands to connect to this:
    monitor tpiu config internal - uart off 400000000
    monitor itm port 0 on

    Code Gen Ref: https://gist.github.com/mofosyne/178ad947fdff0f357eb0e03a42bcef5c
  */

  /* Setup SWO and SWO funnel (Note: SWO_BASE and SWTF_BASE not defined in stm32h743xx.h) */
  // DBGMCU_CR : Enable D3DBGCKEN D1DBGCKEN TRACECLKEN Clock Domains
  DBGMCU->CR =  DBGMCU_CR_DBG_CKD3EN | DBGMCU_CR_DBG_CKD1EN | DBGMCU_CR_DBG_TRACECKEN; // DBGMCU_CR
  // SWO_LAR & SWTF_LAR : Unlock SWO and SWO Funnel
  *((uint32_t *)(0x5c003fb0)) = 0xC5ACCE55; // SWO_LAR
  *((uint32_t *)(0x5c004fb0)) = 0xC5ACCE55; // SWTF_LAR
  // SWO_CODR  : 400000000Hz -> 2000000Hz
  // Note: SWOPrescaler = ((sysclock_Hz / SWOSpeed_Hz) - 1) --> 0x0000c7 = 199 = (400000000 / 2000000) - 1)
  *((uint32_t *)(0x5c003010)) = ((SystemCoreClock /  2000000) - 1); // SWO_CODR
  // SWO_SPPR : (2:  SWO NRZ, 1:  SWO Manchester encoding)
  *((uint32_t *)(0x5c0030f0)) = 0x00000001; // SWO_SPPR
  // SWTF_CTRL : enable SWO
  *((uint32_t *)(0x5c004000)) |= 0x1; // SWTF_CTRL

  /* SWO GPIO Pin Setup */
  //RCC_AHB4ENR enable GPIOB clock
  *(__IO uint32_t*)(0x580244E0) |= 0x00000002;
  // Configure GPIOB pin 3 as AF
  *(__IO uint32_t*)(0x58020400) = (*(__IO uint32_t*)(0x58020400) & 0xffffff3f) | 0x00000080;
  // Configure GPIOB pin 3 Speed
  *(__IO uint32_t*)(0x58020408) |= 0x00000080;
  // Force AF0 for GPIOB pin 3
  *(__IO uint32_t*)(0x58020420) &= 0xFFFF0FFF;

/* Disabling FMC Bank1: After reset FMC_BCR1 = 0x000030DB where MBKEN = 1b meaning that FMC_Bank1 is enabledand MTYP[1:0]= 10 meaning that memory type is set to NOR Flash/OneNAND Flash*/
  //FMC_Bank1->BTCR[0] = 0x000030D2;
}

void SWO_PrintData(uint32_t * addr, uint32_t count) {
    volatile int timeout;

    /* Check if Trace Control Register (ITM->TCR at 0xE0000E80) is set */
    if ((ITM->TCR&ITM_TCR_ITMENA_Msk) == 0) { /* check Trace Control Register if ITM trace is enabled*/
        return; /* not enabled? */
    }
    /* Check if the requested channel stimulus port (ITM->TER at 0xE0000E00) is enabled */
    if ((ITM->TER & (1ul<<0))==0) { /* check Trace Enable Register if requested port is enabled */
        return; /* requested port not enabled? */
    }
    for(int i = 0; i < count; i++) {
        timeout = 5000; /* arbitrary timeout value */
        while (ITM->PORT[0].u32 == 0) {
            /* Wait until STIMx is ready, then send data */
            timeout--;
            if (timeout==0) {
                return; /* not able to send */
            }
        }
        ITM->PORT[0].u32 = addr[i];
    }
}

void SWO_PrintChar(char c) {
  //
  // Check if ITM_TCR.ITMENA is set
  //
  if ((ITM_TCR & 1) == 0) {
    return;
  }
  //
  // Check if stimulus port is enabled
  //
  if ((ITM_ENA & 1) == 0) {
    return;
  }
  //
  // Wait until STIMx is ready,
  // then send data
  //
  while ((ITM_STIM_U8 & 1) == 0);
  ITM_STIM_U8 = c;
}

void SWO_PrintString(const char *s) {
  //
  // Print out character per character
  //
  while (*s) {
    SWO_PrintChar(*s++);
  }
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
    
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
