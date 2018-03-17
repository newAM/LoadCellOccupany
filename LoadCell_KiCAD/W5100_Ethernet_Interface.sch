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
Sheet 3 3
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
L Crystal Y2
U 1 1 5A3B6D54
P 5150 4700
F 0 "Y2" H 5150 4850 50  0000 C CNN
F 1 "25MHz" H 5150 4550 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_HC49-SD" H 5150 4700 50  0001 C CNN
F 3 "" H 5150 4700 50  0000 C CNN
F 4 "535-10235-1-ND" H 5150 4700 60  0001 C CNN "DigiKey Part Number"
	1    5150 4700
	0    1    1    0   
$EndComp
$Comp
L C C15
U 1 1 5A3B6D5C
P 4500 5250
F 0 "C15" H 4525 5350 50  0000 L CNN
F 1 "18p" H 4525 5150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4538 5100 50  0001 C CNN
F 3 "" H 4500 5250 50  0001 C CNN
F 4 "1276-1089-1-ND" H 4500 5250 60  0001 C CNN "DigiKey Part Number"
	1    4500 5250
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 5A3B6D64
P 4800 5250
F 0 "C17" H 4825 5350 50  0000 L CNN
F 1 "18p" H 4825 5150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4838 5100 50  0001 C CNN
F 3 "" H 4800 5250 50  0001 C CNN
F 4 "1276-1089-1-ND" H 4800 5250 60  0001 C CNN "DigiKey Part Number"
	1    4800 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5A3B6D6B
P 5150 6200
F 0 "#PWR021" H 5150 5950 50  0001 C CNN
F 1 "GND" H 5150 6050 50  0000 C CNN
F 2 "" H 5150 6200 50  0000 C CNN
F 3 "" H 5150 6200 50  0000 C CNN
	1    5150 6200
	1    0    0    -1  
$EndComp
$Comp
L W5100 U5
U 1 1 5A3B6D72
P 5900 3750
F 0 "U5" H 5600 6200 60  0000 C CNN
F 1 "W5100" H 5950 1400 60  0000 C CNN
F 2 "Housings_QFP:LQFP-80_10x10mm_Pitch0.4mm" H 6400 6400 60  0001 C CNN
F 3 "http://wiznethome.cafe24.com/wp-content/uploads/wiznethome/Chip/W5100/Document/W5100_Datasheet_v1.2.5.pdf" H 8050 6500 60  0001 C CNN
F 4 "1278-1002-ND" H 5700 6300 60  0001 C CNN "DigiKey Part Number"
	1    5900 3750
	1    0    0    -1  
$EndComp
NoConn ~ 6550 2650
NoConn ~ 6550 2550
NoConn ~ 6550 2450
NoConn ~ 6550 1800
$Comp
L GND #PWR022
U 1 1 5A3B6D7D
P 4800 6200
F 0 "#PWR022" H 4800 5950 50  0001 C CNN
F 1 "GND" H 4800 6050 50  0000 C CNN
F 2 "" H 4800 6200 50  0000 C CNN
F 3 "" H 4800 6200 50  0000 C CNN
	1    4800 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5A3B6D83
P 4500 6200
F 0 "#PWR023" H 4500 5950 50  0001 C CNN
F 1 "GND" H 4500 6050 50  0000 C CNN
F 2 "" H 4500 6200 50  0000 C CNN
F 3 "" H 4500 6200 50  0000 C CNN
	1    4500 6200
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5A3B6D8F
P 6650 1150
F 0 "R16" V 6730 1150 50  0000 C CNN
F 1 "12k" V 6650 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6580 1150 50  0001 C CNN
F 3 "" H 6650 1150 50  0000 C CNN
F 4 "311-12.0KHRCT-ND" V 6650 1150 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 6650 1150 60  0001 C CNN "Tolerance"
	1    6650 1150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR024
U 1 1 5A3B6D96
P 6650 900
F 0 "#PWR024" H 6650 750 50  0001 C CNN
F 1 "+3.3V" H 6650 1040 50  0000 C CNN
F 2 "" H 6650 900 50  0000 C CNN
F 3 "" H 6650 900 50  0000 C CNN
	1    6650 900 
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5A3B6D9E
P 5100 4300
F 0 "R15" V 5180 4300 50  0000 C CNN
F 1 "12k" V 5100 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5030 4300 50  0001 C CNN
F 3 "" H 5100 4300 50  0000 C CNN
F 4 "311-12.0KHRCT-ND" V 5100 4300 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 5100 4300 60  0001 C CNN "Tolerance"
	1    5100 4300
	0    -1   -1   0   
$EndComp
$Comp
L R R13
U 1 1 5A3B6DA7
P 4700 4300
F 0 "R13" V 4780 4300 50  0000 C CNN
F 1 "300" V 4700 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4630 4300 50  0001 C CNN
F 3 "" H 4700 4300 50  0000 C CNN
F 4 "311-300HRCT-ND" V 4700 4300 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 4700 4300 60  0001 C CNN "Tolerance"
	1    4700 4300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 5A3B6DAE
P 4200 6200
F 0 "#PWR025" H 4200 5950 50  0001 C CNN
F 1 "GND" H 4200 6050 50  0000 C CNN
F 2 "" H 4200 6200 50  0000 C CNN
F 3 "" H 4200 6200 50  0000 C CNN
	1    4200 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5A3B6DB4
P 6650 6200
F 0 "#PWR026" H 6650 5950 50  0001 C CNN
F 1 "GND" H 6650 6050 50  0000 C CNN
F 2 "" H 6650 6200 50  0000 C CNN
F 3 "" H 6650 6200 50  0000 C CNN
	1    6650 6200
	1    0    0    -1  
$EndComp
NoConn ~ 5350 3400
NoConn ~ 5350 3500
NoConn ~ 5350 3600
NoConn ~ 5350 3700
NoConn ~ 5350 2700
NoConn ~ 5350 2800
NoConn ~ 5350 2900
NoConn ~ 5350 3000
NoConn ~ 5350 3100
NoConn ~ 5350 3200
$Comp
L C C19
U 1 1 5A3B6DCE
P 5100 2650
F 0 "C19" H 5125 2750 50  0000 L CNN
F 1 "100n" H 5125 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5138 2500 50  0001 C CNN
F 3 "" H 5100 2650 50  0000 C CNN
F 4 "1276-1005-1-ND" H 5100 2650 60  0001 C CNN "DigiKey Part Number"
	1    5100 2650
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 5A3B6DD6
P 4850 2650
F 0 "C18" H 4875 2750 50  0000 L CNN
F 1 "100n" H 4875 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4888 2500 50  0001 C CNN
F 3 "" H 4850 2650 50  0000 C CNN
F 4 "1276-1005-1-ND" H 4850 2650 60  0001 C CNN "DigiKey Part Number"
	1    4850 2650
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5A3B6DDE
P 4600 2650
F 0 "C16" H 4625 2750 50  0000 L CNN
F 1 "100n" H 4625 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4638 2500 50  0001 C CNN
F 3 "" H 4600 2650 50  0000 C CNN
F 4 "1276-1005-1-ND" H 4600 2650 60  0001 C CNN "DigiKey Part Number"
	1    4600 2650
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5A3B6DE6
P 4350 2650
F 0 "C14" H 4375 2750 50  0000 L CNN
F 1 "100n" H 4375 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4388 2500 50  0001 C CNN
F 3 "" H 4350 2650 50  0000 C CNN
F 4 "1276-1005-1-ND" H 4350 2650 60  0001 C CNN "DigiKey Part Number"
	1    4350 2650
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 5A3B6DEE
P 4100 2650
F 0 "C13" H 4125 2750 50  0000 L CNN
F 1 "100n" H 4125 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4138 2500 50  0001 C CNN
F 3 "" H 4100 2650 50  0000 C CNN
F 4 "1276-1005-1-ND" H 4100 2650 60  0001 C CNN "DigiKey Part Number"
	1    4100 2650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR027
U 1 1 5A3B6DFD
P 4100 900
F 0 "#PWR027" H 4100 750 50  0001 C CNN
F 1 "+3.3V" H 4100 1040 50  0000 C CNN
F 2 "" H 4100 900 50  0000 C CNN
F 3 "" H 4100 900 50  0000 C CNN
	1    4100 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5A3B6E03
P 4100 3000
F 0 "#PWR028" H 4100 2750 50  0001 C CNN
F 1 "GND" H 4100 2850 50  0000 C CNN
F 2 "" H 4100 3000 50  0000 C CNN
F 3 "" H 4100 3000 50  0000 C CNN
	1    4100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4500 5350 4500
Wire Wire Line
	5150 4500 5150 4550
Wire Wire Line
	4800 4900 5350 4900
Wire Wire Line
	5150 4900 5150 4850
Wire Wire Line
	4500 4500 4500 5100
Connection ~ 5150 4500
Wire Wire Line
	4800 4850 4800 5100
Connection ~ 5150 4900
Wire Wire Line
	5350 5100 5150 5100
Wire Wire Line
	5150 5100 5150 6200
Wire Wire Line
	5350 5200 5150 5200
Connection ~ 5150 5200
Wire Wire Line
	5350 5300 5150 5300
Connection ~ 5150 5300
Wire Wire Line
	5150 5500 5350 5500
Connection ~ 5150 5500
Wire Wire Line
	4500 5400 4500 6200
Wire Wire Line
	5350 5600 5150 5600
Connection ~ 5150 5600
Wire Wire Line
	5350 5700 5150 5700
Connection ~ 5150 5700
Wire Wire Line
	5350 5800 5150 5800
Connection ~ 5150 5800
Wire Wire Line
	5350 5900 5150 5900
Connection ~ 5150 5900
Wire Wire Line
	5350 6000 5150 6000
Connection ~ 5150 6000
Wire Wire Line
	4800 5400 4800 6200
Wire Wire Line
	6650 1300 6650 1700
Wire Wire Line
	6650 1700 6550 1700
Wire Wire Line
	4850 4300 4950 4300
Wire Wire Line
	5250 4300 5350 4300
Wire Wire Line
	4550 4300 4200 4300
Wire Wire Line
	4200 4300 4200 6200
Wire Wire Line
	6650 6000 6550 6000
Wire Wire Line
	6650 2800 6650 6200
Wire Wire Line
	6550 2800 6650 2800
Connection ~ 6650 6000
Wire Wire Line
	6550 2900 6650 2900
Connection ~ 6650 2900
Wire Wire Line
	6550 3000 6650 3000
Connection ~ 6650 3000
Wire Wire Line
	6550 3100 6650 3100
Connection ~ 6650 3100
Wire Wire Line
	6550 3200 6650 3200
Connection ~ 6650 3200
Wire Wire Line
	6550 3300 6650 3300
Connection ~ 6650 3300
Wire Wire Line
	6550 3400 6650 3400
Connection ~ 6650 3400
Wire Wire Line
	6550 3500 6650 3500
Connection ~ 6650 3500
Wire Wire Line
	6550 3600 6650 3600
Connection ~ 6650 3600
Wire Wire Line
	6550 3700 6650 3700
Connection ~ 6650 3700
Wire Wire Line
	6550 3800 6650 3800
Connection ~ 6650 3800
Wire Wire Line
	6550 3900 6650 3900
Connection ~ 6650 3900
Wire Wire Line
	6550 4000 6650 4000
Connection ~ 6650 4000
Wire Wire Line
	6550 4100 6650 4100
Connection ~ 6650 4100
Wire Wire Line
	6550 4200 6650 4200
Connection ~ 6650 4200
Wire Wire Line
	6550 4400 6650 4400
Connection ~ 6650 4400
Wire Wire Line
	6550 4500 6650 4500
Connection ~ 6650 4500
Wire Wire Line
	6550 4600 6650 4600
Connection ~ 6650 4600
Wire Wire Line
	6550 4700 6650 4700
Connection ~ 6650 4700
Wire Wire Line
	6550 4800 6650 4800
Connection ~ 6650 4800
Wire Wire Line
	6550 4900 6650 4900
Connection ~ 6650 4900
Wire Wire Line
	6550 5000 6650 5000
Connection ~ 6650 5000
Wire Wire Line
	6550 5100 6650 5100
Connection ~ 6650 5100
Wire Wire Line
	6550 5300 6650 5300
Connection ~ 6650 5300
Wire Wire Line
	6550 5400 6650 5400
Connection ~ 6650 5400
Wire Wire Line
	6550 5500 6650 5500
Connection ~ 6650 5500
Wire Wire Line
	6550 5700 6650 5700
Connection ~ 6650 5700
Wire Wire Line
	6550 5800 6650 5800
Connection ~ 6650 5800
Wire Wire Line
	6550 5900 6650 5900
Connection ~ 6650 5900
Wire Wire Line
	5100 1400 5350 1400
Wire Wire Line
	5250 2500 5350 2500
Wire Wire Line
	5250 1900 5250 2500
Connection ~ 5250 2400
Wire Wire Line
	5250 2300 5350 2300
Wire Wire Line
	4850 1900 5350 1900
Wire Wire Line
	5350 2000 5250 2000
Connection ~ 5250 2000
Wire Wire Line
	5250 2100 5350 2100
Connection ~ 5250 2100
Wire Wire Line
	5350 2200 5250 2200
Connection ~ 5250 2200
Wire Wire Line
	4850 1900 4850 2500
Connection ~ 5250 1900
Wire Wire Line
	4600 1500 4600 2500
Wire Wire Line
	5250 1700 5350 1700
Wire Wire Line
	5250 1500 5250 1800
Wire Wire Line
	5250 1600 5350 1600
Wire Wire Line
	4100 1500 5350 1500
Connection ~ 5250 1600
Wire Wire Line
	4350 1500 4350 2500
Connection ~ 5250 1500
Wire Wire Line
	4100 900  4100 2500
Connection ~ 4350 1500
Connection ~ 4100 1500
Wire Wire Line
	4100 2900 5100 2900
Wire Wire Line
	4100 2800 4100 3000
Wire Wire Line
	4350 2900 4350 2800
Connection ~ 4100 2900
Wire Wire Line
	4600 2900 4600 2800
Connection ~ 4350 2900
Wire Wire Line
	4850 2900 4850 2800
Connection ~ 4600 2900
Wire Wire Line
	5100 2900 5100 2800
Connection ~ 4850 2900
Wire Wire Line
	5100 1900 5100 2500
Connection ~ 5100 1900
Wire Wire Line
	6650 1000 6650 900 
Text HLabel 2350 3900 0    60   Input ~ 0
RD+
Text HLabel 2350 4000 0    60   Input ~ 0
RD-
Text HLabel 2350 4100 0    60   Input ~ 0
TD+
Wire Wire Line
	5350 3900 2350 3900
Wire Wire Line
	2350 4000 5350 4000
Text HLabel 2350 4200 0    60   Input ~ 0
TD-
Wire Wire Line
	2350 4100 5350 4100
Wire Wire Line
	5350 4200 2350 4200
Text HLabel 8350 2300 2    60   Input ~ 0
SCK
Text HLabel 8350 2200 2    60   Input ~ 0
SS
Text HLabel 8350 2100 2    60   Input ~ 0
MOSI
Text HLabel 8350 2000 2    60   Output ~ 0
MISO
$Comp
L R R14
U 1 1 5A3C7DA5
P 5100 1150
F 0 "R14" V 5180 1150 50  0000 C CNN
F 1 "12k" V 5100 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5030 1150 50  0001 C CNN
F 3 "" H 5100 1150 50  0000 C CNN
F 4 "311-12.0KHRCT-ND" V 5100 1150 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 5100 1150 60  0001 C CNN "Tolerance"
	1    5100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1400 5100 1300
$Comp
L +3.3V #PWR029
U 1 1 5A3C8207
P 5100 900
F 0 "#PWR029" H 5100 750 50  0001 C CNN
F 1 "+3.3V" H 5100 1040 50  0000 C CNN
F 2 "" H 5100 900 50  0000 C CNN
F 3 "" H 5100 900 50  0000 C CNN
	1    5100 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1000 5100 900 
Text Label 5100 1900 0    60   ~ 0
1V8
Wire Wire Line
	8000 2000 8350 2000
Wire Wire Line
	8000 2100 8350 2100
Wire Wire Line
	8000 2200 8350 2200
Wire Wire Line
	8000 2300 8350 2300
NoConn ~ 6550 1600
NoConn ~ 6550 1500
NoConn ~ 6550 1400
$Comp
L R R17
U 1 1 5A8A3072
P 4800 4700
F 0 "R17" V 4880 4700 50  0000 C CNN
F 1 "1M" V 4800 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4730 4700 50  0001 C CNN
F 3 "" H 4800 4700 50  0000 C CNN
F 4 "311-1.00MHRCT-ND" V 4800 4700 60  0001 C CNN "DigiKey Part Number"
F 5 "1%" V 4800 4700 60  0001 C CNN "Tolerance"
	1    4800 4700
	1    0    0    -1  
$EndComp
Connection ~ 4800 4900
Wire Wire Line
	4800 4550 4800 4500
Connection ~ 4800 4500
$Comp
L Conn_02x04_Odd_Even X7
U 1 1 5A8AE176
P 7700 2100
F 0 "X7" H 7750 2300 50  0000 C CNN
F 1 "SPI Disconnect" H 7750 1800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 7700 2100 50  0001 C CNN
F 3 "" H 7700 2100 50  0001 C CNN
	1    7700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2300 7500 2300
Wire Wire Line
	6550 2200 7500 2200
Wire Wire Line
	6550 2100 7500 2100
Wire Wire Line
	6550 2000 7500 2000
Connection ~ 5250 1700
Wire Wire Line
	5250 1800 5350 1800
Connection ~ 4600 1500
Wire Wire Line
	5250 2400 5350 2400
Connection ~ 5250 2300
$EndSCHEMATC
