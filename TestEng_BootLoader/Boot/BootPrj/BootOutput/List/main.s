///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       03/Nov/2019  11:14:53
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootOth\src\main.c
//    Command line =  
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootOth\src\main.c
//        -lcN
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\BootOutput\List\
//        -lb
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\BootOutput\List\
//        -o
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\BootOutput\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M3 -e --fpu=None --dlib_config "D:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\BootApp\inc\
//        -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\BootDrv\inc\
//        -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\BootOth\inc\
//        -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\..\Libraries\CMSIS\
//        -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\..\Libraries\STM32F10x_StdPeriph_Driver\inc\
//        -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\modbus\ascii\
//        -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\modbus\include\
//        -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\modbus\modbus_port\
//        -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\modbus\rtu\
//        -I
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\..\modbus\tcp\
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\"
//    List file    =  
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\BootOutput\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BootApp_StateMachine
        EXTERN Delay_Init
        EXTERN SystemInit
        EXTERN init

        PUBLIC main


        SECTION `.text`:CODE:NOROOT(2)
        THUMB
main:
        PUSH     {R7,LR}
        BL       SystemInit
        BL       init
        MOVS     R0,#+72
        BL       Delay_Init
        LDR.N    R0,??main_0      ;; 0x40010004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??main_0      ;; 0x40010004
        STR      R0,[R1, #+0]
??main_1:
        BL       BootApp_StateMachine
        B.N      ??main_1
        Nop      
        DATA
??main_0:
        DC32     0x40010004

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 40 bytes in section .text
// 
// 40 bytes of CODE memory
//
//Errors: none
//Warnings: none
