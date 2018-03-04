EESchema Schematic File Version 2
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
LIBS:hex_display-cache
EELAYER 25 0
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
L 7SEGMENT_CA U2
U 1 1 5A9975A1
P 5800 2700
F 0 "U2" H 5700 3075 50  0000 R CNN
F 1 "7SEGMENT_CA" H 5700 3000 50  0000 R CNN
F 2 "Local:VDMR10A1" H 6250 2400 50  0001 L CNN
F 3 "" H 5800 2690 50  0001 L CNN
	1    5800 2700
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENT_CA U3
U 1 1 5A99764F
P 6950 2700
F 0 "U3" H 6850 3075 50  0000 R CNN
F 1 "7SEGMENT_CA" H 6850 3000 50  0000 R CNN
F 2 "Local:VDMR10A1" H 7400 2400 50  0001 L CNN
F 3 "" H 6950 2690 50  0001 L CNN
	1    6950 2700
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENT_CA U4
U 1 1 5A99767A
P 8000 2700
F 0 "U4" H 7900 3075 50  0000 R CNN
F 1 "7SEGMENT_CA" H 7900 3000 50  0000 R CNN
F 2 "Local:VDMR10A1" H 8450 2400 50  0001 L CNN
F 3 "" H 8000 2690 50  0001 L CNN
	1    8000 2700
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENT_CA U5
U 1 1 5A9976A1
P 9100 2700
F 0 "U5" H 9000 3075 50  0000 R CNN
F 1 "7SEGMENT_CA" H 9000 3000 50  0000 R CNN
F 2 "Local:VDMR10A1" H 9550 2400 50  0001 L CNN
F 3 "" H 9100 2690 50  0001 L CNN
	1    9100 2700
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA164A-AU U1
U 1 1 5A9995C1
P 3050 3600
F 0 "U1" H 2200 5480 50  0000 L BNN
F 1 "ATMEGA164A-AU" H 3450 1650 50  0000 L BNN
F 2 "Housings_QFP:TQFP-44-1EP_10x10mm_Pitch0.8mm" H 3050 3600 50  0001 C CIN
F 3 "" H 3050 3600 50  0001 C CNN
	1    3050 3600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x14 J1
U 1 1 5A99AE5C
P 800 1450
F 0 "J1" H 800 2150 50  0000 C CNN
F 1 "Conn_01x14" H 800 650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 800 1450 50  0001 C CNN
F 3 "" H 800 1450 50  0001 C CNN
	1    800  1450
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x14 J2
U 1 1 5A99BB27
P 800 3200
F 0 "J2" H 800 3900 50  0000 C CNN
F 1 "Conn_01x14" H 800 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 800 3200 50  0001 C CNN
F 3 "" H 800 3200 50  0001 C CNN
	1    800  3200
	-1   0    0    -1  
$EndComp
Text Label 1000 3900 0    60   ~ 0
VCC
Text Label 1000 2150 0    60   ~ 0
GND
Text Label 1000 850  0    60   ~ 0
OE
Text Label 1000 2600 0    60   ~ 0
LE
Text Label 1000 950  0    60   ~ 0
A0
Text Label 1000 1050 0    60   ~ 0
A1
Text Label 1000 1150 0    60   ~ 0
A2
Text Label 1000 1250 0    60   ~ 0
A3
Text Label 1000 1350 0    60   ~ 0
A4
Text Label 1000 1450 0    60   ~ 0
A5
Text Label 1000 1550 0    60   ~ 0
A6
Text Label 1000 1650 0    60   ~ 0
A7
Text Label 1000 1750 0    60   ~ 0
A8
Text Label 1000 1850 0    60   ~ 0
A9
Text Label 1000 1950 0    60   ~ 0
A10
Text Label 1000 2050 0    60   ~ 0
A11
Text Label 1000 2700 0    60   ~ 0
A12
Text Label 1000 2800 0    60   ~ 0
A13
Text Label 1000 2900 0    60   ~ 0
A14
Text Label 1000 3000 0    60   ~ 0
A15
Text Label 1000 3800 0    60   ~ 0
MOSI
Text Label 1000 3700 0    60   ~ 0
MISO
Text Label 1000 3600 0    60   ~ 0
SCK
Text Label 1000 3500 0    60   ~ 0
RESET
Text Label 4050 3300 0    60   ~ 0
MOSI
Text Label 4050 3400 0    60   ~ 0
MISO
Text Label 4050 3500 0    60   ~ 0
SCK
Text Label 2050 1900 2    60   ~ 0
RESET
Text Label 4050 1900 0    60   ~ 0
A0
Text Label 4050 2000 0    60   ~ 0
A1
Text Label 4050 2100 0    60   ~ 0
A2
Text Label 4050 2200 0    60   ~ 0
A3
Text Label 4050 2300 0    60   ~ 0
A4
Text Label 4050 2400 0    60   ~ 0
A5
Text Label 4050 2500 0    60   ~ 0
A6
Text Label 4050 2600 0    60   ~ 0
A7
Text Label 4050 3700 0    60   ~ 0
A8
Text Label 4050 3800 0    60   ~ 0
A9
Text Label 4050 3900 0    60   ~ 0
A10
Text Label 4050 4000 0    60   ~ 0
A11
Text Label 4050 4100 0    60   ~ 0
A12
Text Label 4050 4200 0    60   ~ 0
A13
Text Label 4050 4300 0    60   ~ 0
A14
Text Label 4050 4400 0    60   ~ 0
A15
Text Label 2850 5700 0    60   ~ 0
GND
Text Label 3150 1600 0    60   ~ 0
VCC
Text Label 4350 3100 0    60   ~ 0
An0
Text Label 4350 3000 0    60   ~ 0
An1
Text Label 4350 2900 0    60   ~ 0
An2
Text Label 4350 2800 0    60   ~ 0
An3
Text Label 5600 2000 2    60   ~ 0
An0
Text Label 6750 2000 2    60   ~ 0
An1
Text Label 7800 2000 2    60   ~ 0
An2
Text Label 8900 2000 2    60   ~ 0
An3
Text Label 5400 3100 3    60   ~ 0
Ca
Text Label 5500 3100 3    60   ~ 0
Cb
Text Label 6550 3100 3    60   ~ 0
Ca
Text Label 7600 3100 3    60   ~ 0
Ca
Text Label 8700 3100 3    60   ~ 0
Ca
Text Label 6650 3100 3    60   ~ 0
Cb
Text Label 7700 3100 3    60   ~ 0
Cb
Text Label 8800 3100 3    60   ~ 0
Cb
Text Label 5600 3100 3    60   ~ 0
Cc
Text Label 6750 3100 3    60   ~ 0
Cc
Text Label 7800 3100 3    60   ~ 0
Cc
Text Label 8900 3100 3    60   ~ 0
Cc
Text Label 5700 3100 3    60   ~ 0
Cd
Text Label 6850 3100 3    60   ~ 0
Cd
Text Label 7900 3100 3    60   ~ 0
Cd
Text Label 9000 3100 3    60   ~ 0
Cd
Text Label 5800 3100 3    60   ~ 0
Ce
Text Label 6950 3100 3    60   ~ 0
Ce
Text Label 8000 3100 3    60   ~ 0
Ce
Text Label 9100 3100 3    60   ~ 0
Ce
Text Label 5900 3100 3    60   ~ 0
Cf
Text Label 7050 3100 3    60   ~ 0
Cf
Text Label 8100 3100 3    60   ~ 0
Cf
Text Label 9200 3100 3    60   ~ 0
Cf
Text Label 6000 3100 3    60   ~ 0
Cg
Text Label 7150 3100 3    60   ~ 0
Cg
Text Label 8200 3100 3    60   ~ 0
Cg
Text Label 9300 3100 3    60   ~ 0
Cg
$Comp
L Q_PNP_BEC Q1
U 1 1 5A9ADC0A
P 5800 2000
F 0 "Q1" H 6000 2050 50  0000 L CNN
F 1 "MMBT3906" H 6000 1950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23" H 6000 2100 50  0001 C CNN
F 3 "" H 5800 2000 50  0001 C CNN
	1    5800 2000
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_BEC Q2
U 1 1 5A9ADCB4
P 6950 2000
F 0 "Q2" H 7150 2050 50  0000 L CNN
F 1 "MMBT3906" H 7150 1950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23" H 7150 2100 50  0001 C CNN
F 3 "" H 6950 2000 50  0001 C CNN
	1    6950 2000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A9ADE59
P 4200 2800
F 0 "R1" V 4280 2800 50  0000 C CNN
F 1 "300" V 4200 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 2800 50  0001 C CNN
F 3 "" H 4200 2800 50  0001 C CNN
	1    4200 2800
	0    1    1    0   
$EndComp
$Comp
L Q_PNP_BEC Q3
U 1 1 5A9AE0FE
P 8000 2000
F 0 "Q3" H 8200 2050 50  0000 L CNN
F 1 "MMBT3906" H 8200 1950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23" H 8200 2100 50  0001 C CNN
F 3 "" H 8000 2000 50  0001 C CNN
	1    8000 2000
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_BEC Q4
U 1 1 5A9AE214
P 9100 2000
F 0 "Q4" H 9300 2050 50  0000 L CNN
F 1 "MMBT3906" H 9300 1950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23" H 9300 2100 50  0001 C CNN
F 3 "" H 9100 2000 50  0001 C CNN
	1    9100 2000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A9AE3C9
P 4200 2900
F 0 "R2" V 4280 2900 50  0000 C CNN
F 1 "300" V 4200 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 2900 50  0001 C CNN
F 3 "" H 4200 2900 50  0001 C CNN
	1    4200 2900
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5A9AE44E
P 4200 3000
F 0 "R3" V 4280 3000 50  0000 C CNN
F 1 "300" V 4200 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 3000 50  0001 C CNN
F 3 "" H 4200 3000 50  0001 C CNN
	1    4200 3000
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A9AE454
P 4200 3100
F 0 "R4" V 4280 3100 50  0000 C CNN
F 1 "300" V 4200 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 3100 50  0001 C CNN
F 3 "" H 4200 3100 50  0001 C CNN
	1    4200 3100
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5A9AE546
P 4200 4600
F 0 "R5" V 4280 4600 50  0000 C CNN
F 1 "115" V 4200 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 4600 50  0001 C CNN
F 3 "" H 4200 4600 50  0001 C CNN
	1    4200 4600
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5A9AE5B5
P 4200 4700
F 0 "R6" V 4280 4700 50  0000 C CNN
F 1 "115" V 4200 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 4700 50  0001 C CNN
F 3 "" H 4200 4700 50  0001 C CNN
	1    4200 4700
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5A9AE5F1
P 4200 4800
F 0 "R7" V 4280 4800 50  0000 C CNN
F 1 "115" V 4200 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 4800 50  0001 C CNN
F 3 "" H 4200 4800 50  0001 C CNN
	1    4200 4800
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5A9AE5F7
P 4200 4900
F 0 "R8" V 4280 4900 50  0000 C CNN
F 1 "115" V 4200 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 4900 50  0001 C CNN
F 3 "" H 4200 4900 50  0001 C CNN
	1    4200 4900
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5A9AE687
P 4200 5000
F 0 "R9" V 4280 5000 50  0000 C CNN
F 1 "115" V 4200 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 5000 50  0001 C CNN
F 3 "" H 4200 5000 50  0001 C CNN
	1    4200 5000
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5A9AE68D
P 4200 5100
F 0 "R10" V 4280 5100 50  0000 C CNN
F 1 "115" V 4200 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 5100 50  0001 C CNN
F 3 "" H 4200 5100 50  0001 C CNN
	1    4200 5100
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5A9AE693
P 4200 5200
F 0 "R11" V 4280 5200 50  0000 C CNN
F 1 "115" V 4200 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 5200 50  0001 C CNN
F 3 "" H 4200 5200 50  0001 C CNN
	1    4200 5200
	0    1    1    0   
$EndComp
Text Label 4350 4600 0    60   ~ 0
Ca
Text Label 4350 4700 0    60   ~ 0
Cb
Text Label 4350 4800 0    60   ~ 0
Cc
Text Label 4350 4900 0    60   ~ 0
Cd
Text Label 4350 5000 0    60   ~ 0
Ce
Text Label 4350 5100 0    60   ~ 0
Cf
Text Label 4350 5200 0    60   ~ 0
Cg
NoConn ~ 2050 2300
NoConn ~ 2050 2700
NoConn ~ 2050 3100
NoConn ~ 1000 3200
NoConn ~ 1000 3300
NoConn ~ 1000 3100
Text Label 4050 5300 0    60   ~ 0
LE
Text Label 4050 3200 0    60   ~ 0
OE
NoConn ~ 6200 3100
NoConn ~ 7350 3100
NoConn ~ 8400 3100
NoConn ~ 9500 3100
Text Label 1000 3400 0    60   ~ 0
DVCC
Connection ~ 2950 5600
Connection ~ 2850 5600
Wire Wire Line
	2850 5600 2850 5700
Connection ~ 2950 1600
Wire Wire Line
	5900 2300 5800 2300
Wire Wire Line
	7050 2300 6950 2300
Wire Wire Line
	8100 2300 8000 2300
Wire Wire Line
	9200 2300 9100 2300
Wire Wire Line
	5900 2300 5900 2200
Connection ~ 5900 2300
Wire Wire Line
	7050 2300 7050 2200
Connection ~ 7050 2300
Wire Wire Line
	8100 2200 8100 2300
Connection ~ 8100 2300
Wire Wire Line
	9200 2200 9200 2300
Connection ~ 9200 2300
Wire Wire Line
	2750 5600 3050 5600
Wire Wire Line
	2750 1600 3150 1600
Connection ~ 2850 1600
Wire Wire Line
	5900 1800 9200 1800
Connection ~ 7050 1800
Connection ~ 8100 1800
Text Label 9200 1800 0    60   ~ 0
DVCC
$Comp
L C C1
U 1 1 5A9B50C1
P 1250 4650
F 0 "C1" H 1275 4750 50  0000 L CNN
F 1 "0.1uF" H 1275 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1288 4500 50  0001 C CNN
F 3 "" H 1250 4650 50  0001 C CNN
	1    1250 4650
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A9B5327
P 1600 4650
F 0 "C2" H 1625 4750 50  0000 L CNN
F 1 "0.1uF" H 1625 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1638 4500 50  0001 C CNN
F 3 "" H 1600 4650 50  0001 C CNN
	1    1600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4500 1600 4500
Wire Wire Line
	1250 4800 1600 4800
Text Label 1600 4800 0    60   ~ 0
GND
Text Label 1600 4500 0    60   ~ 0
VCC
$EndSCHEMATC
