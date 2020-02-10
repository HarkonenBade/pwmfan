EESchema Schematic File Version 4
LIBS:pwmfan-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Q_NMOS_DGS Q1
U 1 1 5E2F7255
P 4700 4550
F 0 "Q1" H 4906 4596 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 4906 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4900 4650 50  0001 C CNN
F 3 "~" H 4700 4550 50  0001 C CNN
	1    4700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR013
U 1 1 5E2F72D8
P 4800 3850
F 0 "#PWR013" H 4800 3700 50  0001 C CNN
F 1 "+12V" H 4815 4023 50  0000 C CNN
F 2 "" H 4800 3850 50  0001 C CNN
F 3 "" H 4800 3850 50  0001 C CNN
	1    4800 3850
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5E2F730E
P 2250 3750
F 0 "#PWR019" H 2250 3600 50  0001 C CNN
F 1 "+3.3V" H 2265 3923 50  0000 C CNN
F 2 "" H 2250 3750 50  0001 C CNN
F 3 "" H 2250 3750 50  0001 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5E2F76F0
P 2900 1100
F 0 "D2" H 2850 1050 50  0000 R CNN
F 1 "LED_Small" V 2855 1032 50  0001 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm" V 2900 1100 50  0001 C CNN
F 3 "~" V 2900 1100 50  0001 C CNN
	1    2900 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 5E2F7BC2
P 2800 1100
F 0 "D3" H 2750 1050 50  0000 R CNN
F 1 "LED_Small" V 2755 1032 50  0001 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm" V 2800 1100 50  0001 C CNN
F 3 "~" V 2800 1100 50  0001 C CNN
	1    2800 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 5E2F7BE0
P 2700 1100
F 0 "D4" H 2650 1050 50  0000 R CNN
F 1 "LED_Small" V 2655 1032 50  0001 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm" V 2700 1100 50  0001 C CNN
F 3 "~" V 2700 1100 50  0001 C CNN
	1    2700 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5E2F7FCC
P 2900 1400
F 0 "R2" V 2950 1200 50  0000 L CNN
F 1 "680r" V 2900 1400 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2900 1400 50  0001 C CNN
F 3 "~" H 2900 1400 50  0001 C CNN
	1    2900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1200 2800 1300
Wire Wire Line
	2900 1300 2900 1200
Wire Wire Line
	3000 1200 3000 1300
NoConn ~ 4500 4050
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J1
U 1 1 5E2FF7FD
P 2250 4350
F 0 "J1" H 1810 4396 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 1810 4305 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 2300 3800 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 1900 3100 50  0001 C CNN
	1    2250 4350
	1    0    0    -1  
$EndComp
Text GLabel 4200 4550 0    50   Input ~ 0
PWM
Wire Wire Line
	2250 4950 2150 4950
NoConn ~ 2750 4550
Text GLabel 2750 4050 2    50   Input ~ 0
nRST
Text GLabel 2750 4250 2    50   Input ~ 0
SWDCLK
Text GLabel 2750 4350 2    50   Input ~ 0
SWDIO
$Comp
L MCU_ST_STM32F0:STM32F042F6Px U2
U 1 1 5E33A44F
P 1900 2000
F 0 "U2" H 1900 2100 50  0000 C CNN
F 1 "STM32F042F6Px" H 1900 2000 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 1400 1300 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00105814.pdf" H 1900 2000 50  0001 C CNN
	1    1900 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5E33A506
P 950 1050
F 0 "#PWR01" H 950 900 50  0001 C CNN
F 1 "+3.3V" H 965 1223 50  0000 C CNN
F 2 "" H 950 1050 50  0001 C CNN
F 3 "" H 950 1050 50  0001 C CNN
	1    950  1050
	1    0    0    -1  
$EndComp
Text GLabel 1000 1500 0    50   Input ~ 0
nRST
Text GLabel 2500 2500 2    50   Input ~ 0
SWDIO
Text GLabel 2500 2600 2    50   Input ~ 0
SWDCLK
$Comp
L Device:C_Small C3
U 1 1 5E33AE96
P 1400 1150
F 0 "C3" H 1492 1196 50  0000 L CNN
F 1 "100n" H 1492 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1400 1150 50  0001 C CNN
F 3 "~" H 1400 1150 50  0001 C CNN
	1    1400 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E33AFB8
P 1050 1150
F 0 "C1" H 1142 1196 50  0000 L CNN
F 1 "4.7u" H 1142 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1050 1150 50  0001 C CNN
F 3 "~" H 1050 1150 50  0001 C CNN
	1    1050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5E33B034
P 1900 1150
F 0 "C4" H 1992 1196 50  0000 L CNN
F 1 "10n" H 1992 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1900 1150 50  0001 C CNN
F 3 "~" H 1900 1150 50  0001 C CNN
	1    1900 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5E33B16B
P 2200 1150
F 0 "C5" H 2292 1196 50  0000 L CNN
F 1 "1u" H 2292 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2200 1150 50  0001 C CNN
F 3 "~" H 2200 1150 50  0001 C CNN
	1    2200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1300 1700 1050
Wire Wire Line
	1700 1050 1400 1050
Connection ~ 1050 1050
Wire Wire Line
	1050 1050 950  1050
Connection ~ 1400 1050
Wire Wire Line
	1400 1050 1050 1050
Wire Wire Line
	1800 1300 1800 1050
Wire Wire Line
	1800 1050 1900 1050
Connection ~ 1900 1050
Wire Wire Line
	1900 1050 2200 1050
Connection ~ 2200 1050
Wire Wire Line
	2200 1050 2450 1050
$Comp
L power:+3.3V #PWR07
U 1 1 5E33C1A9
P 2450 1050
F 0 "#PWR07" H 2450 900 50  0001 C CNN
F 1 "+3.3V" H 2465 1223 50  0000 C CNN
F 2 "" H 2450 1050 50  0001 C CNN
F 3 "" H 2450 1050 50  0001 C CNN
	1    2450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E33C1E2
P 950 1250
F 0 "#PWR02" H 950 1000 50  0001 C CNN
F 1 "GND" H 955 1077 50  0001 C CNN
F 2 "" H 950 1250 50  0001 C CNN
F 3 "" H 950 1250 50  0001 C CNN
	1    950  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1250 1050 1250
Connection ~ 1050 1250
Wire Wire Line
	1050 1250 1400 1250
$Comp
L power:GND #PWR08
U 1 1 5E33CB3F
P 2450 1250
F 0 "#PWR08" H 2450 1000 50  0001 C CNN
F 1 "GND" H 2455 1077 50  0001 C CNN
F 2 "" H 2450 1250 50  0001 C CNN
F 3 "" H 2450 1250 50  0001 C CNN
	1    2450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1250 2200 1250
Connection ~ 2200 1250
Wire Wire Line
	2200 1250 1900 1250
$Comp
L power:GND #PWR04
U 1 1 5E33E034
P 1700 2800
F 0 "#PWR04" H 1700 2550 50  0001 C CNN
F 1 "GND" H 1705 2627 50  0001 C CNN
F 2 "" H 1700 2800 50  0001 C CNN
F 3 "" H 1700 2800 50  0001 C CNN
	1    1700 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5E33E06D
P 2250 4950
F 0 "#PWR020" H 2250 4700 50  0001 C CNN
F 1 "GND" H 2255 4777 50  0001 C CNN
F 2 "" H 2250 4950 50  0001 C CNN
F 3 "" H 2250 4950 50  0001 C CNN
	1    2250 4950
	1    0    0    -1  
$EndComp
Connection ~ 2250 4950
$Comp
L power:GND #PWR014
U 1 1 5E33E0A6
P 4800 4750
F 0 "#PWR014" H 4800 4500 50  0001 C CNN
F 1 "GND" H 4805 4577 50  0001 C CNN
F 2 "" H 4800 4750 50  0001 C CNN
F 3 "" H 4800 4750 50  0001 C CNN
	1    4800 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E33E2C3
P 1300 1600
F 0 "C2" H 1392 1646 50  0000 L CNN
F 1 "100n" H 1392 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1300 1600 50  0001 C CNN
F 3 "~" H 1300 1600 50  0001 C CNN
	1    1300 1600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E33EDB6
P 1300 1700
F 0 "#PWR03" H 1300 1450 50  0001 C CNN
F 1 "GND" H 1305 1527 50  0001 C CNN
F 2 "" H 1300 1700 50  0001 C CNN
F 3 "" H 1300 1700 50  0001 C CNN
	1    1300 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5E33F55A
P 2850 1000
F 0 "#PWR09" H 2850 850 50  0001 C CNN
F 1 "+3.3V" H 2865 1173 50  0000 C CNN
F 2 "" H 2850 1000 50  0001 C CNN
F 3 "" H 2850 1000 50  0001 C CNN
	1    2850 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5E33F72D
P 2800 1400
F 0 "R3" V 2850 1200 50  0000 L CNN
F 1 "680r" V 2800 1400 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 1400 50  0001 C CNN
F 3 "~" H 2800 1400 50  0001 C CNN
	1    2800 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5E33F769
P 2700 1400
F 0 "R4" V 2750 1200 50  0000 L CNN
F 1 "680r" V 2700 1400 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2700 1400 50  0001 C CNN
F 3 "~" H 2700 1400 50  0001 C CNN
	1    2700 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5E33F89F
P 3000 1400
F 0 "R1" V 3050 1200 50  0000 L CNN
F 1 "680r" V 3000 1400 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3000 1400 50  0001 C CNN
F 3 "~" H 3000 1400 50  0001 C CNN
	1    3000 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5E33F8F5
P 3000 1100
F 0 "D1" H 2950 1050 50  0000 R CNN
F 1 "LED_Small" V 2955 1032 50  0001 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm" V 3000 1100 50  0001 C CNN
F 3 "~" V 3000 1100 50  0001 C CNN
	1    3000 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 1300 2700 1200
Text GLabel 2500 2100 2    50   Input ~ 0
PWM
Wire Notes Line
	550  3050 3400 3050
Wire Notes Line
	3400 550  550  550 
Wire Notes Line
	550  550  550  3050
Text Notes 650  700  0    50   ~ 0
MCU
Wire Notes Line
	650  5400 3300 5400
Wire Notes Line
	3300 5400 3300 3200
Wire Notes Line
	3300 3200 650  3200
Wire Notes Line
	650  3200 650  5400
Text Notes 700  3350 0    50   ~ 0
Debug/Program Port
$Comp
L Regulator_Linear:NCP1117-3.3_SOT223 U3
U 1 1 5E3539BE
P 4750 1150
F 0 "U3" H 4750 1392 50  0000 C CNN
F 1 "NCP1117-3.3_SOT223" H 4750 1301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4750 1350 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 4850 900 50  0001 C CNN
	1    4750 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5E353A34
P 5200 1250
F 0 "C7" H 5292 1296 50  0000 L CNN
F 1 "10u" H 5292 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5200 1250 50  0001 C CNN
F 3 "~" H 5200 1250 50  0001 C CNN
	1    5200 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5E353C82
P 4300 1250
F 0 "C6" H 4392 1296 50  0000 L CNN
F 1 "10u" H 4392 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4300 1250 50  0001 C CNN
F 3 "~" H 4300 1250 50  0001 C CNN
	1    4300 1250
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 5E353DD5
P 5350 1150
F 0 "#PWR016" H 5350 1000 50  0001 C CNN
F 1 "+3.3V" H 5365 1323 50  0000 C CNN
F 2 "" H 5350 1150 50  0001 C CNN
F 3 "" H 5350 1150 50  0001 C CNN
	1    5350 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR010
U 1 1 5E354180
P 4150 1150
F 0 "#PWR010" H 4150 1000 50  0001 C CNN
F 1 "+12V" H 4165 1323 50  0000 C CNN
F 2 "" H 4150 1150 50  0001 C CNN
F 3 "" H 4150 1150 50  0001 C CNN
	1    4150 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 1150 4300 1150
Connection ~ 4300 1150
Wire Wire Line
	4300 1150 4450 1150
Wire Wire Line
	5050 1150 5200 1150
Connection ~ 5200 1150
Wire Wire Line
	5200 1150 5350 1150
Wire Wire Line
	4750 1450 4300 1450
Wire Wire Line
	4300 1450 4300 1350
Connection ~ 4750 1450
Wire Wire Line
	4750 1450 5200 1450
Wire Wire Line
	5200 1450 5200 1350
$Comp
L power:+3.3V #PWR017
U 1 1 5E35A13B
P 5200 2350
F 0 "#PWR017" H 5200 2200 50  0001 C CNN
F 1 "+3.3V" H 5215 2523 50  0000 C CNN
F 2 "" H 5200 2350 50  0001 C CNN
F 3 "" H 5200 2350 50  0001 C CNN
	1    5200 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5E35A182
P 5200 2850
F 0 "R10" V 5300 2800 50  0000 L CNN
F 1 "10k" V 5200 2850 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5200 2850 50  0001 C CNN
F 3 "~" H 5200 2850 50  0001 C CNN
	1    5200 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5E35A2D0
P 5200 2950
F 0 "#PWR018" H 5200 2700 50  0001 C CNN
F 1 "GND" H 5205 2777 50  0001 C CNN
F 2 "" H 5200 2950 50  0001 C CNN
F 3 "" H 5200 2950 50  0001 C CNN
	1    5200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2750 5800 2750
Text GLabel 5800 2750 2    50   Input ~ 0
SW_DOWN
$Comp
L Switch:SW_Push SW1
U 1 1 5E35DB7D
P 4050 2550
F 0 "SW1" V 4004 2698 50  0000 L CNN
F 1 "SW_Push" V 4095 2698 50  0000 L CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 4050 2750 50  0001 C CNN
F 3 "" H 4050 2750 50  0001 C CNN
	1    4050 2550
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 5E35DB83
P 4050 2350
F 0 "#PWR011" H 4050 2200 50  0001 C CNN
F 1 "+3.3V" H 4065 2523 50  0000 C CNN
F 2 "" H 4050 2350 50  0001 C CNN
F 3 "" H 4050 2350 50  0001 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5E35DB89
P 4050 2850
F 0 "R9" V 4150 2800 50  0000 L CNN
F 1 "10k" V 4050 2850 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4050 2850 50  0001 C CNN
F 3 "~" H 4050 2850 50  0001 C CNN
	1    4050 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E35DB8F
P 4050 2950
F 0 "#PWR012" H 4050 2700 50  0001 C CNN
F 1 "GND" H 4055 2777 50  0001 C CNN
F 2 "" H 4050 2950 50  0001 C CNN
F 3 "" H 4050 2950 50  0001 C CNN
	1    4050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2750 4650 2750
Text GLabel 4650 2750 2    50   Input ~ 0
SW_UP
Connection ~ 4050 2750
$Comp
L power:GND #PWR015
U 1 1 5E361496
P 4750 1450
F 0 "#PWR015" H 4750 1200 50  0001 C CNN
F 1 "GND" H 4755 1277 50  0001 C CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
Text GLabel 2500 2000 2    50   Input ~ 0
SW_UP
Text GLabel 2500 1900 2    50   Input ~ 0
SW_DOWN
$Comp
L Switch:SW_Push SW2
U 1 1 5E361F3B
P 5200 2550
F 0 "SW2" V 5154 2698 50  0000 L CNN
F 1 "SW_Push" V 5245 2698 50  0000 L CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 5200 2750 50  0001 C CNN
F 3 "" H 5200 2750 50  0001 C CNN
	1    5200 2550
	0    1    1    0   
$EndComp
Connection ~ 5200 2750
$Comp
L power:+12V #PWR024
U 1 1 5E369FB1
P 6350 1050
F 0 "#PWR024" H 6350 900 50  0001 C CNN
F 1 "+12V" H 6365 1223 50  0000 C CNN
F 2 "" H 6350 1050 50  0001 C CNN
F 3 "" H 6350 1050 50  0001 C CNN
	1    6350 1050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5E36A1B5
P 6350 1450
F 0 "#PWR023" H 6350 1200 50  0001 C CNN
F 1 "GND" H 6355 1277 50  0001 C CNN
F 2 "" H 6350 1450 50  0001 C CNN
F 3 "" H 6350 1450 50  0001 C CNN
	1    6350 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D9
U 1 1 5E36A53A
P 6150 1250
F 0 "D9" H 6150 1150 50  0000 C CNN
F 1 "TS4148RXG" H 6150 1350 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" V 6150 1250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2044153.pdf" V 6150 1250 50  0001 C CNN
F 4 "2708388" H 6150 1250 50  0001 C CNN "Farnell"
	1    6150 1250
	0    1    1    0   
$EndComp
Wire Notes Line
	6500 1750 3800 1750
Wire Notes Line
	3800 1750 3800 700 
Wire Notes Line
	3800 700  6500 700 
Wire Notes Line
	6500 700  6500 1750
Text Notes 3850 850  0    50   ~ 0
Power
Wire Notes Line
	6400 3100 3800 3100
Wire Notes Line
	3800 3100 3800 1900
Wire Notes Line
	3800 1900 6400 1900
Wire Notes Line
	6400 1900 6400 3100
Text Notes 3850 2050 0    50   ~ 0
Speed Controls
Wire Notes Line
	3700 5000 3700 3450
Wire Notes Line
	5500 3450 5500 5000
Text Notes 3750 3600 0    50   ~ 0
Fan Driver
$Comp
L Device:R_Small R6
U 1 1 5E34F28A
P 4450 4650
F 0 "R6" V 4550 4600 50  0000 L CNN
F 1 "100k" V 4450 4650 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4450 4650 50  0001 C CNN
F 3 "~" H 4450 4650 50  0001 C CNN
	1    4450 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E34F451
P 4450 4750
F 0 "#PWR0101" H 4450 4500 50  0001 C CNN
F 1 "GND" H 4455 4577 50  0001 C CNN
F 2 "" H 4450 4750 50  0001 C CNN
F 3 "" H 4450 4750 50  0001 C CNN
	1    4450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4550 4450 4550
Connection ~ 4450 4550
Wire Wire Line
	4450 4550 4500 4550
NoConn ~ 2750 4450
Wire Wire Line
	5950 1200 5950 1050
Wire Wire Line
	6350 1450 6150 1450
Wire Wire Line
	5950 1450 5950 1300
Wire Wire Line
	6150 1350 6150 1450
Connection ~ 6150 1450
Wire Wire Line
	6150 1450 5950 1450
Wire Wire Line
	6150 1150 6150 1050
Wire Wire Line
	6150 1050 6350 1050
$Comp
L Device:Polyfuse_Small F1
U 1 1 5E358D37
P 6050 1050
F 0 "F1" V 5950 1050 50  0000 C CNN
F 1 "SMD1812B050TF/30" V 5850 850 50  0000 C CNN
F 2 "Fuse:Fuse_1812_4532Metric" H 6100 850 50  0001 L CNN
F 3 "http://www.farnell.com/datasheets/2793530.pdf" H 6050 1050 50  0001 C CNN
F 4 "3052512" V 6050 1050 50  0001 C CNN "Farnell"
	1    6050 1050
	0    1    1    0   
$EndComp
Connection ~ 6150 1050
Wire Notes Line
	3700 3450 5500 3450
Wire Notes Line
	3700 5000 5500 5000
$Comp
L Device:R_Small R5
U 1 1 5E36131F
P 4300 4550
F 0 "R5" V 4400 4500 50  0000 L CNN
F 1 "0r" V 4300 4550 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4300 4550 50  0001 C CNN
F 3 "~" H 4300 4550 50  0001 C CNN
	1    4300 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1000 2800 1000
Connection ~ 2800 1000
Wire Wire Line
	2800 1000 2850 1000
Connection ~ 2850 1000
Wire Wire Line
	2850 1000 2900 1000
Connection ~ 2900 1000
Wire Wire Line
	2900 1000 3000 1000
Wire Wire Line
	2500 1500 2700 1500
Wire Wire Line
	2800 1500 2800 1600
Wire Wire Line
	2800 1600 2500 1600
Wire Wire Line
	2900 1500 2900 1700
Wire Wire Line
	2900 1700 2500 1700
Wire Wire Line
	2500 1800 3000 1800
Wire Wire Line
	3000 1800 3000 1500
Wire Notes Line
	3400 3050 3400 550 
$Comp
L Mechanical:MountingHole H1
U 1 1 5E37E058
P 750 5600
F 0 "H1" H 850 5646 50  0000 L CNN
F 1 "MountingHole" H 850 5555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 750 5600 50  0001 C CNN
F 3 "~" H 750 5600 50  0001 C CNN
	1    750  5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E37E21F
P 750 5800
F 0 "H2" H 850 5846 50  0000 L CNN
F 1 "MountingHole" H 850 5755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 750 5800 50  0001 C CNN
F 3 "~" H 750 5800 50  0001 C CNN
	1    750  5800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E37E87B
P 6350 1050
F 0 "#FLG0101" H 6350 1125 50  0001 C CNN
F 1 "PWR_FLAG" V 6350 1178 50  0001 L CNN
F 2 "" H 6350 1050 50  0001 C CNN
F 3 "~" H 6350 1050 50  0001 C CNN
	1    6350 1050
	0    1    1    0   
$EndComp
Connection ~ 6350 1050
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E37E8EA
P 6350 1450
F 0 "#FLG0102" H 6350 1525 50  0001 C CNN
F 1 "PWR_FLAG" V 6350 1578 50  0001 L CNN
F 2 "" H 6350 1450 50  0001 C CNN
F 3 "~" H 6350 1450 50  0001 C CNN
	1    6350 1450
	0    1    1    0   
$EndComp
Connection ~ 6350 1450
NoConn ~ 1300 2200
NoConn ~ 1300 2300
NoConn ~ 5850 1100
Wire Wire Line
	5850 1200 5950 1200
Wire Wire Line
	5950 1300 5850 1300
Connection ~ 1300 1500
Wire Wire Line
	1000 1500 1300 1500
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5E35FA72
P 5650 1200
F 0 "J2" H 5550 1400 50  0000 C CNN
F 1 "PWR_IN" H 5550 1500 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 5650 1200 50  0001 C CNN
F 3 "~" H 5650 1200 50  0001 C CNN
	1    5650 1200
	-1   0    0    1   
$EndComp
NoConn ~ 5850 1000
$Comp
L Motor:Fan_4pin M1
U 1 1 5E360C36
P 4800 4150
F 0 "M1" H 4958 4246 50  0000 L CNN
F 1 "Fan_4pin" H 4958 4155 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 4800 4160 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 4800 4160 50  0001 C CNN
	1    4800 4150
	1    0    0    -1  
$EndComp
NoConn ~ 4500 4250
$Comp
L Device:Rotary_Encoder SW?
U 1 1 5E3FED57
P 6350 3850
F 0 "SW?" H 6579 3896 50  0000 L CNN
F 1 "Rotary_Encoder" H 6579 3805 50  0000 L CNN
F 2 "" H 6200 4010 50  0001 C CNN
F 3 "~" H 6350 4110 50  0001 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
