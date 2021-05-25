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
void SWD_Init(void);
void SWO_PrintData(uint32_t * addr, uint32_t count);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
__attribute__((section(".fb1"))) uint8_t fb[272*480];
/* USER CODE END 0 */

uint8_t aTxBuffer[] = "****Memory-mapped OSPI communication********Memory-mapped OSPI communication********Memory-mapped OSPI communication****";


/**
  * @brief  The application entry point.
  * @retval int
  */
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

  MX_OCTOSPI1_Init();

  HAL_Delay(100);

  HAL_GPIO_WritePin(LCD_REG_EN_GPIO_Port, LCD_REG_EN_Pin, GPIO_PIN_SET);

  MX_LTDC_Init();

  MX_TIM2_Init();
  /* USER CODE BEGIN 2 */
  HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_4);
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
for(uint16_t y = 0; y < 272; y++) {
    for(uint16_t x = 0; x < 480; x++) {       
        fb[x+(y*480)] = 0;
    }
}

  uint16_t xoffset = 0;
  uint16_t yoffset = 0;
  uint32_t address = 0;
  uint16_t index;
 __IO uint32_t *mem_addr;
  while (1)
  {
    /*// Intensive Access -----------------------------------------------
    mem_addr = (__IO uint32_t *)(OCTOSPI1_BASE + address);

    for (index = 0; index < 121; (index += 4))
    {
      // Writing Sequence ---------------------------------------------------
      *mem_addr = *(uint32_t *)&aTxBuffer[index];

      //HAL_Delay(1);

      // Reading Sequence ---------------------------------------------------
      if (*mem_addr != *(uint32_t *)&aTxBuffer[index])
      {
        HAL_GPIO_WritePin(LED_R_GPIO_Port, LED_R_Pin, GPIO_PIN_SET);
      }
      mem_addr++;
    }

    HAL_Delay(100);

    address += 256;
    if(address >= 16384)
    {
      address = 0;
    }*/
    
    for(uint16_t y = 0; y < 272; y++) {
        for(uint16_t x = 0; x < 480; x++) {       
            fb[x+(y*480)] = ((x+xoffset)>>4) + ((y+yoffset)>>2);
        }
    }

    HAL_GPIO_TogglePin(LED_C_GPIO_Port, LED_C_Pin);
    HAL_Delay(16);
    xoffset+=2;
    yoffset+=sin(xoffset/100)*2;
  }



    //fb[0] = 0xFF0000FF;
    //fb[480] = 0xFF00FF00;
    //fb[480*272] = 0xFFFF0000;
    //fb[(480*272)-480] = 0xFFFF00FF;

    /*for(uint16_t y = 0; y < 272; y++) {
        for(uint16_t x = 0; x < 480; x++) {       
            //img[x+(y*240)] = 0xFFFFFFFF*(y==x);
            fb[x+(y*480)] = (y/68 == 0) ? x : (y/68 == 1) ? x << 8 : (y/68 == 2) ? x << 16: (x | x << 8 | x << 16);
        }
    }*/
        
  /*while (1)
  {

    for(uint16_t y = 0; y < 128; y++) {
        for(uint16_t x = 0; x < 128; x++) {
           fb[x+(y*128)] = x+(y*128);
        }
    }

    HAL_Delay(10);
    
    //for(uint16_t y = 0; y < 272; y++) {
    //    for(uint16_t x = 0; x < 480; x++) {       
    //        //fb[x+(y*240)] = 0xFFFFFFFF*(y==x);
    //        fb[x+(y*480)] = col++;
    //        HAL_Delay(1);
    //    }
    //}

    //HAL_GPIO_TogglePin(LED_C_GPIO_Port, LED_C_Pin);
  }*/
  /* USER CODE END 3 */
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
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 2;
  RCC_OscInitStruct.PLL.PLLN = 100;
  RCC_OscInitStruct.PLL.PLLP = 1;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_2;
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

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }

  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_LTDC|RCC_PERIPHCLK_OSPI;
  PeriphClkInitStruct.PLL3.PLL3M = 4;
  PeriphClkInitStruct.PLL3.PLL3N = 111;
  PeriphClkInitStruct.PLL3.PLL3P = 2;
  PeriphClkInitStruct.PLL3.PLL3Q = 2;
  PeriphClkInitStruct.PLL3.PLL3R = 24;
  PeriphClkInitStruct.PLL3.PLL3RGE = RCC_PLL3VCIRANGE_1;
  PeriphClkInitStruct.PLL3.PLL3VCOSEL = RCC_PLL3VCOWIDE;
  PeriphClkInitStruct.PLL3.PLL3FRACN = 0;
  PeriphClkInitStruct.OspiClockSelection = RCC_OSPICLKSOURCE_PLL;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  __HAL_RCC_CSI_ENABLE() ;

  __HAL_RCC_SYSCFG_CLK_ENABLE() ;

  HAL_EnableCompensationCell();

  //__HAL_RCC_CSI_ENABLE() ;

//  __HAL_RCC_SYSCFG_CLK_ENABLE() ;

  //HAL_EnableCompensationCell();

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
