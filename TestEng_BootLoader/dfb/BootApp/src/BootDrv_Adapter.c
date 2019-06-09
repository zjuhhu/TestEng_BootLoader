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

#if (BOOTAPP_BOARD_SUPPORT == TestEng_Debug)
void BootDrv_Reset(void)
{

}

uint8_t BootDrv_EreaseFlash(uint32_t str_addr, uint32_t sect_siz)
{
    return 1;
}

uint8_t BootDrv_ProgramFlash(uint32_t start_addr_u32, uint32_t end_addr_u32, uint32_t length_u32)
{
    return 1;
}
#else
void BootDrv_Reset(void)
{

}

uint8_t BootDrv_EreaseFlash(uint32_t str_addr, uint32_t sect_siz)
{
    return 1;
}

uint8_t BootDrv_ProgramFlash(uint32_t start_addr_u32, uint32_t end_addr_u32, uint32_t length_u32)
{
    return 1;
}
#endif


/*<BASDKey>
 ***********************************************************************************************************************
 * $History___:
 *
 * U1.0.0;      20.05.2019 new created for BootLoader he.huang@feedlitech.com
 *
 * $
 ***********************************************************************************************************************
</BASDKey>*/
