/*<BASDKey>
 **********************************************************************************************************************
 *
 * COPYRIGHT RESERVED, FeedLiTech, 2019. All rights reserved.
 * The reproduction, distribution and utilization of this document as well as the communication of its contents to
 * others without explicit authorization is prohibited. Offenders will be held liable for the payment of damages.
 * All rights reserved in the event of the grant of a patent, utility model or design.
 *
 **********************************************************************************************************************
</BASDKey>*/

#include "BootApp_Cfg.h"
#include "BootApp_Cfg_Board.h"
#include "BootApp_Type.h"
#include "BootApp_Priv.h"

static BootApp_GetApp_init_ten BootApp_GetApp_init_en = BOOTAPP_GETAPP_NOT_INI;
static void BootApp_Gpio_Init(void);
static void BootApp_Uart_Init(void);
static uint8_t BootApp_Get_Cfg_Gpio(const BootApp_Gpio_tst ** gpio_cfg);
static uint8_t BootApp_Get_Cfg_Uart(const BootApp_Uart_tst ** uart_cfg);

void BootApp_Prog_init(void)
{
    /*init external devices and communication*/
    if( (void *)0 != BootApp_App_Cfg_cpcst )
    {
        BootApp_GetApp_init_en = BOOTAPP_GETAPP_INI;
    }
    else
    {
        BootApp_GetApp_init_en = BOOTAPP_GETAPP_NOT_INI;
    }

    BootApp_Gpio_Init();
    BootApp_Uart_Init();

}


uint8_t BootApp_Get_Cfg_Gpio(const BootApp_Gpio_tst ** gpio_cfg)
{
    uint8_t ret;
    if(BOOTAPP_GETAPP_INI == BootApp_GetApp_init_en)
    {
        *gpio_cfg = BootApp_App_Cfg_cpcst->app_cfg_gpio_cpcst;
        ret = 1;
    }
    else
    {
        ret = 0;
    }
    return ret;
}

uint8_t BootApp_Get_Cfg_Uart(const BootApp_Uart_tst ** uart_cfg)
{
    uint8_t ret;
    if(BOOTAPP_GETAPP_INI == BootApp_GetApp_init_en)
    {
        *uart_cfg = BootApp_App_Cfg_cpcst->app_cfg_uart_cpcst;
        ret = 1;
    }
    else
    {
        ret = 0;
    }
    return ret;
}

void BootApp_Gpio_Init(void)
{
    uint8_t ret;
    uint8_t i;
    const BootApp_Gpio_tst * gpio_cfg = (void *) 0;

    ret = BootApp_Get_Cfg_Gpio(&gpio_cfg);
    if(ret)
    {
        for(i=0; i<gpio_cfg->app_cfg_gpio_num; i++)
        {
            BootApp_GPIO_Init( gpio_cfg->app_cfg_gpio_init_past[i].app_cfg_gpio,
                               &gpio_cfg->app_cfg_gpio_init_past[i].app_cfg_gpio_pin_st);
        }
    }
    else
    {
    }
}

void BootApp_Uart_Init(void)
{
    uint8_t ret;
    uint8_t i;
    const BootApp_Uart_tst * uart_cfg = (void *) 0;

    ret = BootApp_Get_Cfg_Uart(&uart_cfg);
    if(ret)
    {
        for(i=0; i<uart_cfg->app_cfg_uart_num; i++)
        {
            BootApp_UART_Init( uart_cfg->app_cfg_uart_init_past[i].app_cfg_uart,
                               &uart_cfg->app_cfg_uart_init_past[i].app_cfg_uart_port_st);
        }
    }
    else
    {
    }
}



/*<BASDKey>
 ***********************************************************************************************************************
 * $History___:
 *
 * U1.0.0;      20.05.2019 new created for BootLoader he.huang@feedlitech.com
 *
 * $
 ***********************************************************************************************************************
</BASDKey>*/
