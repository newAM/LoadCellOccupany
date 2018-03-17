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
Sheet 2 3
Title "Load Cell Occupancy Sensor"
Date "2018-03-17"
Rev "4"
Comp "Alex M."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2050 2950 0    60   Input ~ 0
VC12
Text HLabel 2050 2850 0    60   Input ~ 0
VC36
Text HLabel 2050 3050 0    60   Input ~ 0
VC45
Text HLabel 2050 3150 0    60   Input ~ 0
VC78
Text HLabel 8200 3200 2    60   Output ~ 0
GND
$Comp
L ZENER D3
U 1 1 57D62558
P 4000 3000
F 0 "D3" H 4000 3100 50  0000 C CNN
F 1 "SMAJ58A" H 4000 2900 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 4000 3000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88390/smaj50a.pdf" H 4000 3000 50  0001 C CNN
F 4 "SMAJ58A-E3/61GICT-ND" H 4000 3000 60  0001 C CNN "DigiKey Part Number"
	1    4000 3000
	0    1    1    0   
$EndComp
$Comp
L C C10
U 1 1 57D62575
P 3550 3000
F 0 "C10" H 3575 3100 50  0000 L CNN
F 1 "100n" H 3575 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3588 2850 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/library/product-catalog/mlcc.jsp" H 3550 3000 50  0001 C CNN
F 4 "1276-6840-1-ND" H 3550 3000 60  0001 C CNN "DigiKey Part Number"
	1    3550 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 57D6261F
P 7700 3350
F 0 "#PWR020" H 7700 3100 50  0001 C CNN
F 1 "GND" H 7700 3200 50  0000 C CNN
F 2 "" H 7700 3350 50  0000 C CNN
F 3 "" H 7700 3350 50  0000 C CNN
	1    7700 3350
	1    0    0    -1  
$EndComp
$Comp
L MDB6S D1
U 1 1 57DD2149
P 2800 2600
F 0 "D1" V 2550 2700 60  0000 C CNN
F 1 "MDB6S" V 3050 2800 60  0000 C CNN
F 2 "AlexComponents:Micro-DIP-4" H 2850 2050 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/MD/MDB10S.pdf" H 2850 2250 60  0001 L CNN
F 4 "MDB6SFSCT-ND" H 2850 2150 60  0001 L CNN "DigiKey Part Number"
	1    2800 2600
	0    1    1    0   
$EndComp
$Comp
L MDB6S D2
U 1 1 57DD3729
P 2800 3400
F 0 "D2" V 2550 3500 60  0000 C CNN
F 1 "MDB6S" V 3050 3600 60  0000 C CNN
F 2 "AlexComponents:Micro-DIP-4" H 2850 2850 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/MD/MDB10S.pdf" H 2850 3050 60  0001 L CNN
F 4 "MDB6SFSCT-ND" H 2850 2950 60  0001 L CNN "DigiKey Part Number"
	1    2800 3400
	0    1    1    0   
$EndComp
$Comp
L NCP1090 U3
U 1 1 59E6F539
P 5350 3000
F 0 "U3" H 5100 3250 60  0000 C CNN
F 1 "NCP1090" H 5350 2750 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5350 2650 60  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/NCP1090-D.PDF" H 5350 2550 60  0001 C CNN
F 4 "NCP1090DGOS-ND" H 5350 2450 60  0001 C CNN "DigiKey Part Number"
	1    5350 3000
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 59E6FE35
P 4350 3400
F 0 "R11" V 4430 3400 50  0000 C CNN
F 1 "178k" V 4350 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4280 3400 50  0001 C CNN
F 3 "" H 4350 3400 50  0000 C CNN
F 4 "311-178KHRCT-ND" V 4350 3400 60  0001 C CNN "DigiKey Part Number"
	1    4350 3400
	-1   0    0    1   
$EndComp
$Comp
L R R12
U 1 1 59E6FEDA
P 4600 3400
F 0 "R12" V 4680 3400 50  0000 C CNN
F 1 "4420" V 4600 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 3400 50  0001 C CNN
F 3 "" H 4600 3400 50  0000 C CNN
F 4 "311-4.42KHRCT-ND " V 4600 3400 60  0001 C CNN "DigiKey Part Number"
	1    4600 3400
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 59E6FD02
P 4350 2600
F 0 "R10" V 4430 2600 50  0000 C CNN
F 1 "24.9k" V 4350 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4280 2600 50  0001 C CNN
F 3 "" H 4350 2600 50  0000 C CNN
F 4 "311-24.9KHRCT-ND " V 4350 2600 60  0001 C CNN "DigiKey Part Number"
	1    4350 2600
	-1   0    0    1   
$EndComp
$Comp
L CP1 C11
U 1 1 59E7BB76
P 6200 3000
F 0 "C11" H 6225 3100 50  0000 L CNN
F 1 "22u" H 6225 2900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.00mm" H 6200 3000 50  0001 C CNN
F 3 "" H 6200 3000 50  0000 C CNN
F 4 "493-12798-1-ND" H 6200 3000 60  0001 C CNN "DigiKey Part Number"
	1    6200 3000
	1    0    0    -1  
$EndComp
$Comp
L PG02S4805A U4
U 1 1 59E7C1EF
P 6950 3000
F 0 "U4" H 6700 3300 60  0000 C CNN
F 1 "PG02S4803A" H 6950 2700 60  0000 C CNN
F 2 "AlexComponents:PG02S" H 6550 2150 60  0001 L CNN
F 3 "http://www.deltaww.com/filecenter/products/download/01/0102/datasheet/DS_PG02S.pdf" H 5950 2500 60  0001 L CNN
F 4 "941-1185-ND" H 6650 2600 60  0001 L CNN "DigiKey Part Number"
	1    6950 3000
	1    0    0    -1  
$EndComp
NoConn ~ 5900 2950
NoConn ~ 6450 3000
Wire Wire Line
	3200 2600 3100 2600
Connection ~ 3200 2600
Connection ~ 2400 3400
Wire Wire Line
	2800 3100 2800 3050
Wire Wire Line
	2800 2950 2800 2900
Wire Wire Line
	2800 3700 2800 3750
Wire Wire Line
	2800 2300 2800 2250
Wire Wire Line
	2800 2250 2150 2250
Wire Wire Line
	2150 2250 2150 2850
Wire Wire Line
	2150 2850 2050 2850
Wire Wire Line
	2050 2950 2800 2950
Wire Wire Line
	2800 3750 2150 3750
Wire Wire Line
	2150 3750 2150 3150
Wire Wire Line
	2150 3150 2050 3150
Wire Wire Line
	2800 3050 2050 3050
Wire Wire Line
	2500 3400 2400 3400
Wire Wire Line
	3200 3400 3100 3400
Wire Wire Line
	2500 2600 2400 2600
Wire Wire Line
	2400 2600 2400 3900
Wire Wire Line
	3550 3900 3550 3150
Wire Wire Line
	3200 2100 3200 3400
Wire Wire Line
	3200 2100 6200 2100
Wire Wire Line
	3550 2100 3550 2850
Wire Wire Line
	4000 2100 4000 2800
Connection ~ 3550 2100
Wire Wire Line
	4000 3900 4000 3200
Connection ~ 3550 3900
Wire Wire Line
	4850 3900 4850 3150
Connection ~ 4000 3900
Wire Wire Line
	4850 3050 4600 3050
Wire Wire Line
	4600 3050 4600 3250
Wire Wire Line
	4850 2950 4350 2950
Wire Wire Line
	4350 2950 4350 3250
Wire Wire Line
	4850 2850 4350 2850
Wire Wire Line
	4350 2850 4350 2750
Wire Wire Line
	4350 2100 4350 2450
Connection ~ 4000 2100
Wire Wire Line
	4600 3900 4600 3550
Connection ~ 4600 3900
Wire Wire Line
	4350 3900 4350 3550
Connection ~ 4350 3900
Connection ~ 4350 2100
Wire Wire Line
	5900 3150 5950 3150
Wire Wire Line
	5950 3150 5950 3200
Wire Wire Line
	5950 3200 6450 3200
Connection ~ 6200 3200
Wire Wire Line
	5950 2800 6450 2800
Wire Wire Line
	5950 2800 5950 2850
Wire Wire Line
	5950 2850 5900 2850
Wire Wire Line
	6200 2100 6200 2850
Connection ~ 6200 2800
Connection ~ 7700 2800
Wire Wire Line
	7700 3150 7700 3350
Connection ~ 7700 3200
Text HLabel 8200 2800 2    60   Output ~ 0
3.3V
$Comp
L C C12
U 1 1 59EB18F9
P 7700 3000
F 0 "C12" H 7725 3100 50  0000 L CNN
F 1 "10u" H 7725 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7738 2850 50  0001 C CNN
F 3 "" H 7700 3000 50  0000 C CNN
F 4 "1276-6456-1-ND" H 7700 3000 60  0001 C CNN "DigiKey Part Number"
	1    7700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3900 4850 3900
Wire Wire Line
	6200 3200 6200 3150
Wire Wire Line
	7450 2800 8200 2800
Wire Wire Line
	7700 2800 7700 2850
Wire Wire Line
	7450 3200 8200 3200
Text Label 3200 2100 0    60   ~ 0
P
Text Label 3200 3900 0    60   ~ 0
N
$EndSCHEMATC
