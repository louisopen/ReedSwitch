#pragma debug scope 1 1
#line 27 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
__stm0ah EQU [02dH]
__stm0al EQU [02cH]
__stm0dh EQU [02bH]
__stm0dl EQU [02aH]
__stm0c1 EQU [029H]
__stm0c0 EQU [028H]
__pasr EQU [026H]
__rstc EQU [025H]
__sadc2 EQU [024H]
__sadc1 EQU [023H]
__sadc0 EQU [022H]
__sadoh EQU [021H]
__sadol EQU [020H]
__eed EQU [01fH]
__eea EQU [01eH]
__smod1 EQU [01cH]
__tbc EQU [01bH]
__wdtc EQU [019H]
__ifs0 EQU [018H]
__pawu EQU [017H]
__papu EQU [016H]
__pac EQU [015H]
__pa EQU [014H]
__mfi0 EQU [011H]
__intc1 EQU [0fH]
__intc0 EQU [0eH]
__integ EQU [0dH]
__smod EQU [0bH]
__status EQU [0aH]
__tblh EQU [08H]
__tblp EQU [07H]
__pcl EQU [06H]
__acc EQU [05H]
__bp EQU [04H]
__mp1 EQU [03H]
__iar1 EQU [02H]
__mp0 EQU [01H]
__iar0 EQU [00H]
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 2 1 ; 30 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 30 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR [015H].6
#line 31 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR [014H].6
#line 33 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CALL _ClearRAM
#line 34 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR __smod
#line 35 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,0c1h
MOV __stm0c1,A
#line 36 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,0eeh
MOV __stm0al,A
#line 37 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR __stm0ah
#line 38 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET [011H].1
#line 39 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET [0FH].0
#line 40 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET [0EH].0
#line 41 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,018h
MOV __stm0c0,A
#line 41 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
JMP L3
L2:
#pragma debug scope 3 2 ; 44 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 44 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR WDT
#line 45 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SNZ _ScanKey_F
JMP L5
#line 45 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CALL _ScanKey
L5:
#line 46 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SNZ _Get_Out_F
JMP L7
#line 46 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CALL _Get_Out
L7:
L3:
#line 42 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#pragma debug scope 2 1 ; 42 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
JMP L2
L1:
#line 49 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
JMP $
_main ENDP
#line 54 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
@Get_Out .SECTION 'CODE'
PUBLIC _Get_Out
_Get_Out PROC
#pragma debug scope 4 1 ; 55 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 55 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,_OutCnt
SUB A,0ah
SNZ [0ah].0
JMP L10
#pragma debug scope 5 4 ; 57 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 57 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR _Get_Out_F
#line 58 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR [014H].6
L10:
L9:
RET
_Get_Out ENDP
#line 65 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
@ScanKey .SECTION 'CODE'
PUBLIC _ScanKey
_ScanKey PROC
#pragma debug scope 6 1 ; 66 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 66 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR _ScanKey_F
#line 67 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SNZ [014H].1
JMP L13
#line 68 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR _Rb
#line 68 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
JMP L14
L13:
#line 70 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,1
MOV _Rb,A
L14:
#line 72 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,_Rb
XOR A,_RbBuf
SNZ [0ah].2
JMP L15
#pragma debug scope 7 6 ; 74 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 74 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
INC _SwCnt
#line 75 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,_SwCnt
SUB A,04h
SNZ [0ah].0
JMP L16
#pragma debug scope 8 7 ; 77 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 77 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,04h
MOV _SwCnt,A
#line 78 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,_RbBuf
XOR A,01h
SNZ [0ah].2
JMP L19
#pragma debug scope 9 8 ; 80 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 80 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET _first_low_F
#line 81 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SNZ _first_high_F
JMP L16
#pragma debug scope 10 9 ; 83 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 83 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR _first_high_F
#line 84 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SZ [014H].5
JMP L16
#pragma debug scope 11 10 ; 86 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 86 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET [014H].6
#line 87 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET _Get_Out_F
#line 88 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR _OutCnt
#line 91 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#pragma debug scope 8 7 ; 91 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
JMP L16
L19:
#pragma debug scope 12 8 ; 93 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 93 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET _first_high_F
#line 94 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SNZ _first_low_F
JMP L16
#pragma debug scope 13 12 ; 96 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 96 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR _first_low_F
#line 97 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SZ [014H].5
JMP L16
#pragma debug scope 14 13 ; 99 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 99 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET [014H].6
#line 100 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET _Get_Out_F
#line 101 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR _OutCnt
#line 106 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#pragma debug scope 6 1 ; 106 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
JMP L16
L15:
#pragma debug scope 15 6 ; 108 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 108 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR _SwCnt
#line 109 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,_Rb
MOV _RbBuf,A
L16:
L12:
RET
_ScanKey ENDP
#line 116 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
@@timer0_isr .SECTION AT 010H 'CODE'
JMP _timer0_isr
@timer0_isr .SECTION 'CODE'
_timer0_isr PROC
MOV V4A,A
MOV A,[0AH]
MOV V4S,A
#pragma debug scope 16 1 ; 117 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 117 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR [011H].5
#line 118 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
SET _ScanKey_F
#line 119 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
INC _OutCnt
L29:
MOV A,V4S
MOV [0AH],A
MOV A,V4A
RETI
_timer0_isr ENDP
RAMBANK 0 @timer0_isr
@timer0_isr .SECTION 'DATA'
#line 125 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
@ClearRAM .SECTION 'CODE'
PUBLIC _ClearRAM
_ClearRAM PROC
#pragma debug scope 17 1 ; 126 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 126 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,040h
MOV __mp0,A
#line 126 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
JMP L34
L31:
#pragma debug scope 18 17 ; 128 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#line 128 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR __iar0
L32:
#line 126 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
#pragma debug scope 17 1 ; 126 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
INC __mp0
L34:
#line 126 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
MOV A,__mp0
SUB A,0ffh
SNZ [0AH].0
JMP L31
#line 130 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
CLR __iar0
L30:
RET
_ClearRAM ENDP
#line 13 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
PUBLIC _OutCnt
RAMBANK 0 @OutCnt
@OutCnt .SECTION 'DATA'
_OutCnt DB ? ; OutCnt
#pragma debug variable 8 1 _OutCnt OutCnt
#line 12 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
PUBLIC _SwCnt
RAMBANK 0 @SwCnt
@SwCnt .SECTION 'DATA'
_SwCnt DB ? ; SwCnt
#pragma debug variable 8 1 _SwCnt SwCnt
#line 11 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
PUBLIC _RbBuf
RAMBANK 0 @RbBuf
@RbBuf .SECTION 'DATA'
_RbBuf DB ? ; RbBuf
#pragma debug variable 8 1 _RbBuf RbBuf
#line 10 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
PUBLIC _Rb
RAMBANK 0 @Rb
@Rb .SECTION 'DATA'
_Rb DB ? ; Rb
#pragma debug variable 8 1 _Rb Rb
#line 17 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
RAMBANK 0 BITDATASEC
BITDATASEC .SECTION 'DATA'
PUBLIC _Get_Out_F
_Get_Out_F DBIT ; Get_Out_F
#pragma debug variable 2 1 _Get_Out_F Get_Out_F
#line 16 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
PUBLIC _first_high_F
_first_high_F DBIT ; first_high_F
#pragma debug variable 2 1 _first_high_F first_high_F
#line 15 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
PUBLIC _first_low_F
_first_low_F DBIT ; first_low_F
#pragma debug variable 2 1 _first_low_F first_low_F
#line 14 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
PUBLIC _ScanKey_F
_ScanKey_F DBIT ; ScanKey_F
#pragma debug variable 2 1 _ScanKey_F ScanKey_F
#line 26 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN V4A:BYTE
EXTERN V4S:BYTE
#line 26 "C:\IOT-BU\Realtek IOT\Ameba SOC applications\ReedSwitch\main.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
