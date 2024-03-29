///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       03/Nov/2019  11:14:57
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\modbus\modbus_port\portevent.c
//    Command line =  
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\modbus\modbus_port\portevent.c
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
//        D:\GitHub\TestEng_BootLoader\TestEng_BootLoader\Boot\BootPrj\BootOutput\List\portevent.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC xMBPortEventGet
        PUBLIC xMBPortEventInit
        PUBLIC xMBPortEventPost


        SECTION `.bss`:DATA:REORDER:NOROOT(0)
eQueuedEvent:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
xEventInQueue:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
xMBPortEventInit:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+0]
        MOVS     R0,#+1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
xMBPortEventPost:
        MOVS     R1,R0
        MOVS     R0,#+1
        LDR.N    R2,??DataTable2
        STRB     R0,[R2, #+0]
        LDR.N    R0,??DataTable2_1
        STRB     R1,[R0, #+0]
        MOVS     R0,#+1
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
xMBPortEventGet:
        MOVS     R1,R0
        MOVS     R0,#+0
        LDR.N    R2,??DataTable2
        LDRB     R2,[R2, #+0]
        CMP      R2,#+0
        BEQ.N    ??xMBPortEventGet_0
        LDR.N    R2,??DataTable2_1
        LDRB     R2,[R2, #+0]
        STRB     R2,[R1, #+0]
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2
        STRB     R2,[R3, #+0]
        MOVS     R2,#+1
        MOVS     R0,R2
??xMBPortEventGet_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     xEventInQueue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     eQueuedEvent

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
//  2 bytes in section .bss
// 66 bytes in section .text
// 
// 66 bytes of CODE memory
//  2 bytes of DATA memory
//
//Errors: none
//Warnings: none
