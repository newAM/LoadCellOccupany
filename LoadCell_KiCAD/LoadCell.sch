EESchema Schematic File Version 2
LIBS:LoadCell-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:AlexComponents
LIBS:LoadCell-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title "Load Cell Occupancy Sensor"
Date "2018-03-17"
Rev "4"
Comp "Alex M."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C3
U 1 1 57C43FBE
P 3100 6200
F 0 "C3" H 3125 6300 50  0000 L CNN
F 1 "100n" H 3125 6100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3138 6050 50  0001 C CNN
F 3 "" H 3100 6200 50  0000 C CNN
F 4 "1276-1005-1-ND" H 3100 6200 60  0001 C CNN "DigiKey Part Number"
	1    3100 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 57C4717D
P 3400 6550
F 0 "#PWR01" H 3400 6300 50  0001 C CNN
F 1 "GND" H 3400 6400 50  0000 C CNN
F 2 "" H 3400 6550 50  0000 C CNN
F 3 "" H 3400 6550 50  0000 C CNN
	1    3400 6550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 57C47DEA
P 3700 4900
F 0 "#PWR02" H 3700 4750 50  0001 C CNN
F 1 "+3.3V" H 3700 5040 50  0000 C CNN
F 2 "" H 3700 4900 50  0000 C CNN
F 3 "" H 3700 4900 50  0000 C CNN
	1    3700 4900
	1    0    0    -1  
$EndComp
$Comp
L L_Small L2
U 1 1 57C55489
P 3700 5150
F 0 "L2" H 3730 5190 50  0000 L CNN
F 1 "1uH" V 3650 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3700 5150 50  0001 C CNN
F 3 "" H 3700 5150 50  0000 C CNN
F 4 "445-3163-1-ND" H 3700 5150 60  0001 C CNN "DigiKey Part Number"
	1    3700 5150
	1    0    0    -1  
$EndComp
$Comp
L 0813-1X1T-57-F X5
U 1 1 57CC3A1B
P 1350 6050
F 0 "X5" H 800 6900 60  0000 C CNN
F 1 "0813-1X1T-57-F" H 1350 5350 60  0000 C CNN
F 2 "AlexComponents:0813-1X1T-57-F_RJ45-Jack" H 1750 5750 60  0001 C CNN
F 3 "http://belfuse.com/pdfs/0813-1X1T-57-F.pdf" H 1750 5750 60  0001 C CNN
F 4 "507-1421-ND" H 1350 6050 60  0001 C CNN "DigiKey Part Number"
	1    1350 6050
	1    0    0    -1  
$EndComp
$Sheet
S 3100 6900 1350 750 
U 57D5D75D
F0 "PoE_PD_Interface" 60
F1 "PoE_PD_Interface.sch" 60
F2 "VC12" I L 3100 7050 60 
F3 "VC36" I L 3100 7200 60 
F4 "VC45" I L 3100 7350 60 
F5 "VC78" I L 3100 7500 60 
F6 "GND" O R 4450 7500 60 
F7 "3.3V" O R 4450 7100 60 
$EndSheet
$Comp
L GND #PWR03
U 1 1 57D688DE
P 4600 7650
F 0 "#PWR03" H 4600 7400 50  0001 C CNN
F 1 "GND" H 4600 7500 50  0000 C CNN
F 2 "" H 4600 7650 50  0000 C CNN
F 3 "" H 4600 7650 50  0000 C CNN
	1    4600 7650
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 57C43F09
P 2850 5950
F 0 "R6" V 2930 5950 50  0000 C CNN
F 1 "49.9" V 2850 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2780 5950 50  0001 C CNN
F 3 "" H 2850 5950 50  0000 C CNN
F 4 "RNCP0805FTD49R9CT-ND" V 2850 5950 60  0001 C CNN "DigiKey Part Number"
	1    2850 5950
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 59EAED8F
P 4600 6900
F 0 "#PWR04" H 4600 6750 50  0001 C CNN
F 1 "+3.3V" H 4600 7040 50  0000 C CNN
F 2 "" H 4600 6900 50  0000 C CNN
F 3 "" H 4600 6900 50  0000 C CNN
	1    4600 6900
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-AU-RESCUE-LoadCell U2
U 1 1 5A35D927
P 9050 5050
F 0 "U2" H 8400 6100 60  0000 C CNN
F 1 "ATMEGA328P-AU" H 9100 3800 60  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 8800 5250 60  0001 C CNN
F 3 "http://www.atmel.com/images/Atmel-8271-8-bit-AVR-Microcontroller-ATmega48A-48PA-88A-88PA-168A-168PA-328-328P_datasheet_Complete.pdf" H 8800 5250 60  0001 C CNN
F 4 "ATMEGA328P-AU-ND" H 8500 6250 60  0001 C CNN "DigiKey Part Number"
	1    9050 5050
	1    0    0    -1  
$EndComp
NoConn ~ 8150 5700
NoConn ~ 8150 5800
$Comp
L Resonator-RESCUE-LoadCell Y1
U 1 1 5A35F17B
P 7850 5300
F 0 "Y1" H 7850 5450 60  0000 C CNN
F 1 "8MHz" V 8000 5450 60  0000 C CNN
F 2 "AlexComponents:CERALOCK_CSTCE_Resonator" H 7850 5300 60  0001 C CNN
F 3 "http://www.murata.com/~/media/webrenewal/support/library/catalog/products/timingdevice/ceralock/p16e.ashx" H 7850 5300 60  0001 C CNN
F 4 "490-1195-1-ND" H 7850 5300 60  0001 C CNN "DigiKey Part Number"
	1    7850 5300
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 5A36021D
P 3400 6200
F 0 "C5" H 3425 6300 50  0000 L CNN
F 1 "100n" H 3425 6100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3438 6050 50  0001 C CNN
F 3 "" H 3400 6200 50  0000 C CNN
F 4 "1276-1005-1-ND" H 3400 6200 60  0001 C CNN "DigiKey Part Number"
	1    3400 6200
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A360407
P 2850 5750
F 0 "R5" V 2930 5750 50  0000 C CNN
F 1 "49.9" V 2850 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2780 5750 50  0001 C CNN
F 3 "" H 2850 5750 50  0000 C CNN
F 4 "RNCP0805FTD49R9CT-ND" V 2850 5750 60  0001 C CNN "DigiKey Part Number"
	1    2850 5750
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5A360473
P 2850 5550
F 0 "R4" V 2930 5550 50  0000 C CNN
F 1 "49.9" V 2850 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2780 5550 50  0001 C CNN
F 3 "" H 2850 5550 50  0000 C CNN
F 4 "RNCP0805FTD49R9CT-ND" V 2850 5550 60  0001 C CNN "DigiKey Part Number"
	1    2850 5550
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5A3604DE
P 2850 5350
F 0 "R3" V 2930 5350 50  0000 C CNN
F 1 "49.9" V 2850 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2780 5350 50  0001 C CNN
F 3 "" H 2850 5350 50  0000 C CNN
F 4 "RNCP0805FTD49R9CT-ND" V 2850 5350 60  0001 C CNN "DigiKey Part Number"
	1    2850 5350
	0    -1   -1   0   
$EndComp
$Comp
L C C9
U 1 1 5A360882
P 7700 4750
F 0 "C9" H 7725 4850 50  0000 L CNN
F 1 "100n" H 7725 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7738 4600 50  0001 C CNN
F 3 "" H 7700 4750 50  0000 C CNN
F 4 "1276-1005-1-ND" H 7700 4750 60  0001 C CNN "DigiKey Part Number"
	1    7700 4750
	1    0    0    -1  
$EndComp
Text GLabel 4650 4000 2    60   Input ~ 0
SCK
Text GLabel 4650 4150 2    60   Input ~ 0
SS
Text GLabel 4650 4300 2    60   Input ~ 0
MOSI
Text GLabel 4650 4450 2    60   Output ~ 0
MISO
$Comp
L R R9
U 1 1 5A3653BC
P 7800 4100
F 0 "R9" V 7880 4100 50  0000 C CNN
F 1 "12k" V 7800 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7730 4100 50  0001 C CNN
F 3 "" H 7800 4100 50  0000 C CNN
F 4 "311-12.0KHRCT-ND" V 7800 4100 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 7800 4100 60  0001 C CNN "Tolerance"
	1    7800 4100
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 5A36E935
P 4000 2350
F 0 "C6" H 4025 2450 50  0000 L CNN
F 1 "100n" H 4025 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4038 2200 50  0001 C CNN
F 3 "" H 4000 2350 50  0000 C CNN
F 4 "1276-1005-1-ND" H 4000 2350 60  0001 C CNN "DigiKey Part Number"
	1    4000 2350
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5A370DB4
P 7400 4750
F 0 "C8" H 7425 4850 50  0000 L CNN
F 1 "100n" H 7425 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7438 4600 50  0001 C CNN
F 3 "" H 7400 4750 50  0000 C CNN
F 4 "1276-1005-1-ND" H 7400 4750 60  0001 C CNN "DigiKey Part Number"
	1    7400 4750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 5A37156F
P 7400 3900
F 0 "#PWR05" H 7400 3750 50  0001 C CNN
F 1 "+3.3V" H 7400 4040 50  0000 C CNN
F 2 "" H 7400 3900 50  0000 C CNN
F 3 "" H 7400 3900 50  0000 C CNN
	1    7400 3900
	1    0    0    -1  
$EndComp
Text GLabel 7950 3900 0    60   Input ~ 0
RST
$Comp
L GND #PWR06
U 1 1 5A372950
P 7400 6400
F 0 "#PWR06" H 7400 6150 50  0001 C CNN
F 1 "GND" H 7400 6250 50  0000 C CNN
F 2 "" H 7400 6400 50  0000 C CNN
F 3 "" H 7400 6400 50  0000 C CNN
	1    7400 6400
	1    0    0    -1  
$EndComp
NoConn ~ 9900 4100
NoConn ~ 9900 4200
Text GLabel 10100 4300 2    60   Output ~ 0
SS
Text GLabel 10100 4400 2    60   BiDi ~ 0
MOSI
Text GLabel 10100 4500 2    60   BiDi ~ 0
MISO
Text GLabel 10100 4600 2    60   BiDi ~ 0
SCK
$Comp
L HX711 U1
U 1 1 5A362181
P 4850 1900
F 0 "U1" H 4600 2350 60  0000 C CNN
F 1 "HX711" H 4850 1450 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 4850 1350 60  0001 C CNN
F 3 "https://www.mouser.com/ds/2/813/hx711_english-1022875.pdf" H 4850 1250 60  0001 C CNN
	1    4850 1900
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_BEC Q1
U 1 1 5A36423E
P 3750 1450
F 0 "Q1" H 4050 1500 50  0000 R CNN
F 1 "MMBT4403" H 4350 1400 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3950 1550 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 3750 1450 50  0001 C CNN
F 4 "MMBT4403LT3GOSCT-ND" H 3750 1450 60  0001 C CNN "DigiKey Part Number"
	1    3750 1450
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 5A365772
P 4100 1150
F 0 "#PWR07" H 4100 1000 50  0001 C CNN
F 1 "+3.3V" H 4100 1290 50  0000 C CNN
F 2 "" H 4100 1150 50  0000 C CNN
F 3 "" H 4100 1150 50  0000 C CNN
	1    4100 1150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 5A36656C
P 3650 1150
F 0 "#PWR08" H 3650 1000 50  0001 C CNN
F 1 "+3.3V" H 3650 1290 50  0000 C CNN
F 2 "" H 3650 1150 50  0000 C CNN
F 3 "" H 3650 1150 50  0000 C CNN
	1    3650 1150
	1    0    0    -1  
$EndComp
$Comp
L L_Small L1
U 1 1 5A3678E2
P 3400 1750
F 0 "L1" H 3430 1790 50  0000 L CNN
F 1 "1uH" V 3350 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3400 1750 50  0001 C CNN
F 3 "" H 3400 1750 50  0000 C CNN
F 4 "445-3163-1-ND" H 3400 1750 60  0001 C CNN "DigiKey Part Number"
	1    3400 1750
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 5A367FF1
P 2850 2000
F 0 "C2" H 2875 2100 50  0000 L CNN
F 1 "100n" H 2875 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2888 1850 50  0001 C CNN
F 3 "" H 2850 2000 50  0000 C CNN
F 4 "1276-1005-1-ND" H 2850 2000 60  0001 C CNN "DigiKey Part Number"
	1    2850 2000
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A369702
P 3650 2000
F 0 "R7" V 3730 2000 50  0000 C CNN
F 1 "20k" V 3650 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3580 2000 50  0001 C CNN
F 3 "" H 3650 2000 50  0000 C CNN
F 4 "311-20.0KHRCT-ND" V 3650 2000 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 3650 2000 60  0001 C CNN "Tolerance"
	1    3650 2000
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A36A1BE
P 3650 2400
F 0 "R8" V 3730 2400 50  0000 C CNN
F 1 "8.2k" V 3650 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3580 2400 50  0001 C CNN
F 3 "" H 3650 2400 50  0000 C CNN
F 4 "311-8.20KHRCT-ND" V 3650 2400 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 3650 2400 60  0001 C CNN "Tolerance"
	1    3650 2400
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A36A8A0
P 2050 1400
F 0 "R1" V 2130 1400 50  0000 C CNN
F 1 "100" V 2050 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1980 1400 50  0001 C CNN
F 3 "" H 2050 1400 50  0000 C CNN
F 4 "311-100HRCT-ND" V 2050 1400 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 2050 1400 60  0001 C CNN "Tolerance"
	1    2050 1400
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5A36ACD2
P 2050 1950
F 0 "R2" V 2130 1950 50  0000 C CNN
F 1 "100" V 2050 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1980 1950 50  0001 C CNN
F 3 "" H 2050 1950 50  0000 C CNN
F 4 "311-100HRCT-ND" V 2050 1950 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 2050 1950 60  0001 C CNN "Tolerance"
	1    2050 1950
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 5A36B2A3
P 3150 2000
F 0 "C4" H 3175 2100 50  0000 L CNN
F 1 "10u" H 3175 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3188 1850 50  0001 C CNN
F 3 "" H 3150 2000 50  0000 C CNN
F 4 "1276-6456-1-ND" H 3150 2000 60  0001 C CNN "DigiKey Part Number"
	1    3150 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A36C3D3
P 3650 2650
F 0 "#PWR09" H 3650 2400 50  0001 C CNN
F 1 "GND" H 3650 2500 50  0000 C CNN
F 2 "" H 3650 2650 50  0000 C CNN
F 3 "" H 3650 2650 50  0000 C CNN
	1    3650 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A36CE67
P 3150 2650
F 0 "#PWR010" H 3150 2400 50  0001 C CNN
F 1 "GND" H 3150 2500 50  0000 C CNN
F 2 "" H 3150 2650 50  0000 C CNN
F 3 "" H 3150 2650 50  0000 C CNN
	1    3150 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5A36CEF3
P 2850 2650
F 0 "#PWR011" H 2850 2400 50  0001 C CNN
F 1 "GND" H 2850 2500 50  0000 C CNN
F 2 "" H 2850 2650 50  0000 C CNN
F 3 "" H 2850 2650 50  0000 C CNN
	1    2850 2650
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A36DAE4
P 2300 1650
F 0 "C1" H 2325 1750 50  0000 L CNN
F 1 "100n" H 2325 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2338 1500 50  0001 C CNN
F 3 "" H 2300 1650 50  0000 C CNN
F 4 "1276-1005-1-ND" H 2300 1650 60  0001 C CNN "DigiKey Part Number"
	1    2300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5950 3100 5950
Wire Wire Line
	3100 5750 3100 6050
Wire Wire Line
	3100 5750 3000 5750
Connection ~ 3100 5950
Wire Wire Line
	3000 5350 3400 5350
Wire Wire Line
	3100 6350 3100 6450
Wire Wire Line
	2600 7050 3100 7050
Wire Wire Line
	2500 7200 3100 7200
Wire Wire Line
	2400 7350 3100 7350
Wire Wire Line
	2300 7500 3100 7500
Wire Wire Line
	4450 7500 4600 7500
Wire Wire Line
	4600 7500 4600 7650
Connection ~ 2300 5350
Connection ~ 2400 5550
Connection ~ 2500 5750
Connection ~ 2600 5950
Wire Wire Line
	2200 5350 2700 5350
Wire Wire Line
	2200 5550 2700 5550
Wire Wire Line
	2200 5750 2700 5750
Wire Wire Line
	2200 5950 2700 5950
Wire Wire Line
	2600 7050 2600 6050
Wire Wire Line
	2600 6050 2200 6050
Wire Wire Line
	2500 7200 2500 6150
Wire Wire Line
	2500 6150 2200 6150
Wire Wire Line
	2400 7350 2400 6250
Wire Wire Line
	2400 6250 2200 6250
Wire Wire Line
	2300 7500 2300 6350
Wire Wire Line
	2300 6350 2200 6350
Wire Wire Line
	3000 5550 3400 5550
Connection ~ 3400 5550
Wire Wire Line
	3100 6450 3700 6450
Wire Wire Line
	3400 6350 3400 6550
Connection ~ 3400 6450
Wire Wire Line
	4600 6900 4600 7100
Wire Wire Line
	4600 7100 4450 7100
Wire Wire Line
	2300 4000 2300 5350
Wire Wire Line
	2500 4300 2500 5750
Wire Wire Line
	2600 4450 2600 5950
Wire Wire Line
	2400 4150 2400 5550
Wire Wire Line
	8150 5500 7850 5500
Wire Wire Line
	7850 5100 8150 5100
Wire Wire Line
	7950 4100 8150 4100
Wire Wire Line
	8050 4700 8150 4700
Wire Wire Line
	8050 4300 8050 4700
Wire Wire Line
	7400 4300 8150 4300
Wire Wire Line
	8150 4400 8050 4400
Connection ~ 8050 4400
Wire Wire Line
	8150 4500 8050 4500
Connection ~ 8050 4500
Wire Wire Line
	7650 4100 7400 4100
Wire Wire Line
	7400 3900 7400 4600
Wire Wire Line
	7400 5300 7600 5300
Wire Wire Line
	7400 4900 7400 6400
Wire Wire Line
	7700 4900 7700 5000
Wire Wire Line
	7700 5000 7400 5000
Connection ~ 7400 5000
Wire Wire Line
	7700 4600 7700 4300
Connection ~ 8050 4300
Connection ~ 7400 4300
Connection ~ 7700 4300
Connection ~ 7400 4100
Wire Wire Line
	7950 3900 8050 3900
Wire Wire Line
	8050 3800 8050 4100
Connection ~ 8050 4100
Wire Wire Line
	7400 6000 8150 6000
Connection ~ 7400 5300
Wire Wire Line
	7400 6100 8150 6100
Connection ~ 7400 6000
Wire Wire Line
	7400 6200 8150 6200
Connection ~ 7400 6100
Connection ~ 7400 6200
Wire Wire Line
	9900 4300 10100 4300
Wire Wire Line
	9900 4400 10100 4400
Wire Wire Line
	9900 4500 10100 4500
Wire Wire Line
	9900 4600 10100 4600
Wire Wire Line
	4100 1550 4350 1550
Wire Wire Line
	4100 1550 4100 1150
Wire Wire Line
	4050 1650 4350 1650
Wire Wire Line
	4050 1650 4050 1450
Wire Wire Line
	4050 1450 3950 1450
Wire Wire Line
	3500 1750 4350 1750
Wire Wire Line
	3650 1650 3650 1850
Wire Wire Line
	3650 1250 3650 1150
Wire Wire Line
	2850 1750 3300 1750
Wire Wire Line
	3150 1750 3150 1850
Wire Wire Line
	2850 850  2850 1850
Connection ~ 3150 1750
Connection ~ 3650 1750
Wire Wire Line
	3800 1850 4350 1850
Wire Wire Line
	3800 1850 3800 2200
Wire Wire Line
	3800 2200 3650 2200
Wire Wire Line
	3650 2150 3650 2250
Connection ~ 3650 2200
Wire Wire Line
	3650 2550 3650 2650
Connection ~ 3650 2600
Wire Wire Line
	2850 2150 2850 2650
Wire Wire Line
	3150 2650 3150 2150
Wire Wire Line
	3850 1950 4350 1950
Wire Wire Line
	3850 1950 3850 2600
Wire Wire Line
	3650 2600 4000 2600
Wire Wire Line
	4000 2600 4000 2500
Connection ~ 3850 2600
Wire Wire Line
	4000 2200 4000 2050
Wire Wire Line
	4000 2050 4350 2050
Connection ~ 2850 1750
NoConn ~ 5350 1850
NoConn ~ 5350 1950
NoConn ~ 5350 2050
$Comp
L SJ1-2503A X4
U 1 1 5A38B65F
P 1300 2550
F 0 "X4" H 1300 2750 60  0000 C CNN
F 1 "SJ1-2503A" H 1400 2300 60  0000 C CNN
F 2 "AlexComponents:SJ1-2503A" H 1100 1900 60  0001 L CNN
F 3 "http://www.cui.com/product/resource/sj1-2503a.pdf" H 1100 2000 60  0001 L CNN
F 4 "CP1-2503A-ND" H 1100 2100 60  0001 L CNN "DigiKey Part Number"
	1    1300 2550
	1    0    0    -1  
$EndComp
$Comp
L SJ1-2503A X2
U 1 1 5A38B7C0
P 1300 1450
F 0 "X2" H 1300 1650 60  0000 C CNN
F 1 "SJ1-2503A" H 1400 1200 60  0000 C CNN
F 2 "AlexComponents:SJ1-2503A" H 1100 800 60  0001 L CNN
F 3 "http://www.cui.com/product/resource/sj1-2503a.pdf" H 1100 900 60  0001 L CNN
F 4 "CP1-2503A-ND" H 1100 1000 60  0001 L CNN "DigiKey Part Number"
	1    1300 1450
	1    0    0    -1  
$EndComp
$Comp
L SJ1-2503A X3
U 1 1 5A38B894
P 1300 2000
F 0 "X3" H 1300 2200 60  0000 C CNN
F 1 "SJ1-2503A" H 1400 1750 60  0000 C CNN
F 2 "AlexComponents:SJ1-2503A" H 1100 1350 60  0001 L CNN
F 3 "http://www.cui.com/product/resource/sj1-2503a.pdf" H 1100 1450 60  0001 L CNN
F 4 "CP1-2503A-ND" H 1100 1550 60  0001 L CNN "DigiKey Part Number"
	1    1300 2000
	1    0    0    -1  
$EndComp
$Comp
L SJ1-2503A X1
U 1 1 5A38B965
P 1300 900
F 0 "X1" H 1300 1100 60  0000 C CNN
F 1 "SJ1-2503A" H 1400 650 60  0000 C CNN
F 2 "AlexComponents:SJ1-2503A" H 1100 250 60  0001 L CNN
F 3 "http://www.cui.com/product/resource/sj1-2503a.pdf" H 1100 350 60  0001 L CNN
F 4 "CP1-2503A-ND" H 1100 450 60  0001 L CNN "DigiKey Part Number"
	1    1300 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1600 1700 1600
Wire Wire Line
	1700 1600 1700 1050
Wire Wire Line
	1700 1050 1650 1050
Wire Wire Line
	1650 2700 1700 2700
Wire Wire Line
	1700 2700 1700 2150
Wire Wire Line
	1700 2150 1650 2150
Text Notes 600  2600 0    60   ~ 0
Upper Left
Text Notes 600  950  0    60   ~ 0
Lower Right
Text Notes 600  1500 0    60   ~ 0
Upper Right
Text Notes 600  2050 0    60   ~ 0
Lower Left
Wire Wire Line
	1650 1400 1900 1400
Wire Wire Line
	1650 1950 1900 1950
Wire Wire Line
	2200 1400 2650 1400
Wire Wire Line
	2300 1400 2300 1500
Wire Wire Line
	2200 1950 2550 1950
Wire Wire Line
	2300 1950 2300 1800
$Comp
L GND #PWR012
U 1 1 5A398464
P 2300 2650
F 0 "#PWR012" H 2300 2400 50  0001 C CNN
F 1 "GND" H 2300 2500 50  0000 C CNN
F 2 "" H 2300 2650 50  0000 C CNN
F 3 "" H 2300 2650 50  0000 C CNN
	1    2300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2500 2300 2500
Wire Wire Line
	2300 2500 2300 2650
Wire Wire Line
	1650 850  2850 850 
Wire Wire Line
	4350 2150 4250 2150
Wire Wire Line
	4250 2150 4250 2850
Wire Wire Line
	4250 2850 2650 2850
Wire Wire Line
	2650 2850 2650 1400
Connection ~ 2300 1400
Wire Wire Line
	4350 2250 4300 2250
Wire Wire Line
	4300 2250 4300 2900
Wire Wire Line
	4300 2900 2550 2900
Wire Wire Line
	2550 2900 2550 1950
Connection ~ 2300 1950
$Comp
L +3.3V #PWR013
U 1 1 5A39E120
P 5750 1150
F 0 "#PWR013" H 5750 1000 50  0001 C CNN
F 1 "+3.3V" H 5750 1290 50  0000 C CNN
F 2 "" H 5750 1150 50  0000 C CNN
F 3 "" H 5750 1150 50  0000 C CNN
	1    5750 1150
	1    0    0    -1  
$EndComp
Text GLabel 5450 1750 2    60   Input ~ 0
CLK
Text GLabel 5450 1650 2    60   Output ~ 0
DAT
$Comp
L C C7
U 1 1 5A39F5E5
P 5750 2000
F 0 "C7" H 5775 2100 50  0000 L CNN
F 1 "100n" H 5775 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5788 1850 50  0001 C CNN
F 3 "" H 5750 2000 50  0000 C CNN
F 4 "1276-1005-1-ND" H 5750 2000 60  0001 C CNN "DigiKey Part Number"
	1    5750 2000
	1    0    0    -1  
$EndComp
Connection ~ 5750 1550
$Comp
L GND #PWR014
U 1 1 5A39FF7C
P 5450 2650
F 0 "#PWR014" H 5450 2400 50  0001 C CNN
F 1 "GND" H 5450 2500 50  0000 C CNN
F 2 "" H 5450 2650 50  0000 C CNN
F 3 "" H 5450 2650 50  0000 C CNN
	1    5450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2150 5450 2150
Wire Wire Line
	5450 2150 5450 2650
Wire Wire Line
	5350 2250 5450 2250
Connection ~ 5450 2250
$Comp
L GND #PWR015
U 1 1 5A3A0C38
P 5750 2650
F 0 "#PWR015" H 5750 2400 50  0001 C CNN
F 1 "GND" H 5750 2500 50  0000 C CNN
F 2 "" H 5750 2650 50  0000 C CNN
F 3 "" H 5750 2650 50  0000 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1150 5750 1850
Wire Wire Line
	5750 2150 5750 2650
Wire Wire Line
	5350 1650 5450 1650
Wire Wire Line
	5350 1750 5450 1750
Text GLabel 10100 6000 2    60   Input ~ 0
DAT
Text GLabel 10100 6100 2    60   Output ~ 0
CLK
Wire Wire Line
	5350 1550 5750 1550
$Comp
L CONN_02X03 X6
U 1 1 5A3A990F
P 9000 2750
F 0 "X6" H 9000 2950 50  0000 C CNN
F 1 "ICSP" H 9000 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 9000 1550 50  0001 C CNN
F 3 "" H 9000 1550 50  0000 C CNN
	1    9000 2750
	1    0    0    -1  
$EndComp
Text GLabel 8650 2650 0    60   Input ~ 0
MISO
Wire Wire Line
	8650 2650 8750 2650
Text GLabel 9350 2750 2    60   Output ~ 0
MOSI
Wire Wire Line
	9250 2750 9350 2750
Text GLabel 8650 2750 0    60   Output ~ 0
SCK
Wire Wire Line
	8650 2750 8750 2750
Text GLabel 8650 2850 0    60   Input ~ 0
RST
Wire Wire Line
	8650 2850 8750 2850
$Comp
L GND #PWR016
U 1 1 5A3AFF62
P 9350 2950
F 0 "#PWR016" H 9350 2700 50  0001 C CNN
F 1 "GND" H 9350 2800 50  0000 C CNN
F 2 "" H 9350 2950 50  0000 C CNN
F 3 "" H 9350 2950 50  0000 C CNN
	1    9350 2950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 5A3B0018
P 9350 2600
F 0 "#PWR017" H 9350 2450 50  0001 C CNN
F 1 "+3.3V" H 9350 2740 50  0000 C CNN
F 2 "" H 9350 2600 50  0000 C CNN
F 3 "" H 9350 2600 50  0000 C CNN
	1    9350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2650 9350 2650
Wire Wire Line
	9350 2650 9350 2600
Wire Wire Line
	9250 2850 9350 2850
Wire Wire Line
	9350 2850 9350 2950
$Sheet
S 3100 3850 1350 750 
U 5A3B29AF
F0 "W5100_Ethernet_Interface" 60
F1 "W5100_Ethernet_Interface.sch" 60
F2 "RD+" I L 3100 4300 60 
F3 "RD-" I L 3100 4450 60 
F4 "SCK" I R 4450 4000 60 
F5 "SS" I R 4450 4150 60 
F6 "MOSI" I R 4450 4300 60 
F7 "MISO" O R 4450 4450 60 
F8 "TD+" I L 3100 4000 60 
F9 "TD-" I L 3100 4150 60 
$EndSheet
Wire Wire Line
	4450 4450 4650 4450
Wire Wire Line
	4450 4300 4650 4300
Wire Wire Line
	4450 4150 4650 4150
Wire Wire Line
	4450 4000 4650 4000
Wire Wire Line
	3100 4000 2300 4000
Wire Wire Line
	2600 4450 3100 4450
Wire Wire Line
	2500 4300 3100 4300
Wire Wire Line
	2400 4150 3100 4150
Wire Wire Line
	3400 5350 3400 6050
$Comp
L C C20
U 1 1 5A8A17BE
P 3700 6200
F 0 "C20" H 3725 6300 50  0000 L CNN
F 1 "100n" H 3725 6100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3738 6050 50  0001 C CNN
F 3 "" H 3700 6200 50  0000 C CNN
F 4 "1276-1005-1-ND" H 3700 6200 60  0001 C CNN "DigiKey Part Number"
	1    3700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6450 3700 6350
Wire Wire Line
	2200 5450 3700 5450
Wire Wire Line
	3700 5250 3700 6050
Connection ~ 3700 5450
Wire Wire Line
	3700 5050 3700 4900
Text Label 2700 4000 0    60   ~ 0
TD+
Text Label 2700 4150 0    60   ~ 0
TD-
Text Label 2700 4300 0    60   ~ 0
RD+
Text Label 2700 4450 0    60   ~ 0
RD-
$Comp
L Conn_01x06 X8
U 1 1 5A8A6A3D
P 9350 1300
F 0 "X8" H 9350 1600 50  0000 C CNN
F 1 "Serial Interface" H 9350 900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 9350 1300 50  0001 C CNN
F 3 "" H 9350 1300 50  0001 C CNN
	1    9350 1300
	1    0    0    -1  
$EndComp
Text GLabel 8900 1400 0    60   Input ~ 0
RXI
Wire Wire Line
	8900 1400 9150 1400
Text GLabel 8900 1500 0    60   Output ~ 0
TXO
Wire Wire Line
	8900 1500 9150 1500
Text GLabel 8900 1600 0    60   Input ~ 0
DTR
Wire Wire Line
	8900 1600 9150 1600
Text GLabel 10100 5500 2    60   Input ~ 0
RXI
Wire Wire Line
	9900 5500 10100 5500
Text GLabel 10100 5600 2    60   Output ~ 0
TXO
Wire Wire Line
	9900 5600 10100 5600
NoConn ~ 9900 5700
NoConn ~ 9900 6200
NoConn ~ 9900 5300
NoConn ~ 9900 5200
NoConn ~ 9900 5100
NoConn ~ 9900 5000
NoConn ~ 9900 4900
NoConn ~ 9900 4800
$Comp
L +3.3V #PWR018
U 1 1 5A8AA26D
P 8800 850
F 0 "#PWR018" H 8800 700 50  0001 C CNN
F 1 "+3.3V" H 8800 990 50  0000 C CNN
F 2 "" H 8800 850 50  0000 C CNN
F 3 "" H 8800 850 50  0000 C CNN
	1    8800 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1300 8800 1300
Wire Wire Line
	8800 1300 8800 850 
$Comp
L GND #PWR019
U 1 1 5A8AA60D
P 8500 1750
F 0 "#PWR019" H 8500 1500 50  0001 C CNN
F 1 "GND" H 8500 1600 50  0000 C CNN
F 2 "" H 8500 1750 50  0000 C CNN
F 3 "" H 8500 1750 50  0000 C CNN
	1    8500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1200 8500 1200
Wire Wire Line
	9150 1100 8500 1100
Connection ~ 8500 1200
$Comp
L C C21
U 1 1 5A8ABC23
P 8050 3650
F 0 "C21" H 8075 3750 50  0000 L CNN
F 1 "100n" H 8075 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8088 3500 50  0001 C CNN
F 3 "" H 8050 3650 50  0000 C CNN
F 4 "1276-1005-1-ND" H 8050 3650 60  0001 C CNN "DigiKey Part Number"
	1    8050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1100 8500 1750
Text GLabel 7950 3400 0    60   Input ~ 0
DTR
Wire Wire Line
	8050 3400 8050 3500
Connection ~ 8050 3900
Wire Wire Line
	7950 3400 8050 3400
Wire Wire Line
	9900 6000 10100 6000
Wire Wire Line
	9900 6100 10100 6100
NoConn ~ 9900 5900
NoConn ~ 9900 5800
Wire Wire Line
	1650 2400 1800 2400
Wire Wire Line
	1800 2400 1800 1300
Wire Wire Line
	1800 1300 1650 1300
NoConn ~ 1650 1500
NoConn ~ 1650 2600
NoConn ~ 1650 950 
NoConn ~ 1650 2050
Wire Wire Line
	1650 1850 1750 1850
Wire Wire Line
	1750 1850 1750 750 
Wire Wire Line
	1750 750  1650 750 
$EndSCHEMATC
