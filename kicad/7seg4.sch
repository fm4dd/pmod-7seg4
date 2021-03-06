EESchema Schematic File Version 4
LIBS:7seg-4x-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PMOD - 7Segment 4x"
Date ""
Rev "V1.0"
Comp "FM4DD"
Comment1 "2020 (C) FM4DD"
Comment2 ""
Comment3 "License: CC-BY-SA 4.0"
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J1
U 1 1 5AB98614
P 3350 2450
F 0 "J1" H 3300 2750 50  0000 L CNN
F 1 "PMOD" H 3200 2850 50  0000 L CNN
F 2 "01_FM4DD:PMODHeader_2x06_P2.54mm_Horizontal" H 3350 2450 50  0001 C CNN
F 3 "~" H 3350 2450 50  0001 C CNN
F 4 "ANY" H 3350 2450 50  0001 C CNN "Source"
	1    3350 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3050 2650 2850 2650
Wire Wire Line
	2850 2650 2850 2850
$Comp
L power:GND #PWR0103
U 1 1 5AB9BCCE
P 2850 2850
F 0 "#PWR0103" H 2850 2600 50  0001 C CNN
F 1 "GND" H 2855 2674 50  0000 C CNN
F 2 "" H 2850 2850 50  0001 C CNN
F 3 "" H 2850 2850 50  0001 C CNN
	1    2850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2650 3750 2650
Wire Wire Line
	3750 2650 3750 2850
$Comp
L power:GND #PWR0104
U 1 1 5AAB3559
P 3750 2850
F 0 "#PWR0104" H 3750 2600 50  0001 C CNN
F 1 "GND" H 3755 2674 50  0000 C CNN
F 2 "" H 3750 2850 50  0001 C CNN
F 3 "" H 3750 2850 50  0001 C CNN
	1    3750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2750 3650 2750
Wire Wire Line
	3650 2750 3650 2150
Wire Wire Line
	3050 2750 2950 2750
Wire Wire Line
	2950 2750 2950 2150
$Comp
L power:+3V3 #PWR0101
U 1 1 5AED6787
P 3650 2150
F 0 "#PWR0101" H 3650 2000 50  0001 C CNN
F 1 "+3V3" H 3665 2326 50  0000 C CNN
F 2 "" H 3650 2150 50  0001 C CNN
F 3 "" H 3650 2150 50  0001 C CNN
	1    3650 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0102
U 1 1 5AED679F
P 2950 2150
F 0 "#PWR0102" H 2950 2000 50  0001 C CNN
F 1 "+3V3" H 2965 2326 50  0000 C CNN
F 2 "" H 2950 2150 50  0001 C CNN
F 3 "" H 2950 2150 50  0001 C CNN
	1    2950 2150
	1    0    0    -1  
$EndComp
Text Label 3750 2550 0    50   ~ 0
DS
Text Label 2850 2550 2    50   ~ 0
DPS
Text Label 3750 2450 0    50   ~ 0
CS
Text Label 2850 2450 2    50   ~ 0
GS
Text Label 3750 2350 0    50   ~ 0
BS
Text Label 2850 2350 2    50   ~ 0
FS
$Comp
L 01_FM4DD:7SEG_OSL40391 U1
U 1 1 5E1AF012
P 6650 2650
F 0 "U1" H 7730 2696 50  0000 L CNN
F 1 "7SEG_OSL40391" H 7730 2605 50  0000 L CNN
F 2 "01_FM4DD:7SEG-OSL40391" H 6650 2050 50  0001 C CNN
F 3 "http://www.kyohritsu.jp/eclib/OTHER/DATASHEET/LED/osl40391xx.pdf" H 6270 2680 50  0001 C CNN
	1    6650 2650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q2
U 1 1 5E1B0AA5
P 6350 5100
F 0 "Q2" H 6300 5250 50  0000 L CNN
F 1 "2N3906" V 6550 4950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6550 5025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6350 5100 50  0001 L CNN
	1    6350 5100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q3
U 1 1 5E1B1138
P 6850 5100
F 0 "Q3" H 6800 5250 50  0000 L CNN
F 1 "2N3906" V 7050 4950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7050 5025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6850 5100 50  0001 L CNN
	1    6850 5100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q4
U 1 1 5E1B1437
P 7350 5100
F 0 "Q4" H 7300 5250 50  0000 L CNN
F 1 "2N3906" V 7550 4950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7550 5025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 7350 5100 50  0001 L CNN
	1    7350 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0109
U 1 1 5E1B8752
P 8300 5000
F 0 "#PWR0109" H 8300 4850 50  0001 C CNN
F 1 "+3V3" H 8315 5176 50  0000 C CNN
F 2 "" H 8300 5000 50  0001 C CNN
F 3 "" H 8300 5000 50  0001 C CNN
	1    8300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5400 7450 5300
Wire Wire Line
	6950 5400 6950 5300
Wire Wire Line
	6450 5400 6450 5300
Wire Wire Line
	5950 5400 5950 5300
Connection ~ 6450 5400
Text Label 5950 3300 3    50   ~ 0
CAP1
Text Label 6150 3300 3    50   ~ 0
CAP2
Text Label 5950 4700 1    50   ~ 0
CAP1
Text Label 6450 4700 1    50   ~ 0
CAP2
Text Label 6950 4700 1    50   ~ 0
CAP3
Text Label 7450 4700 1    50   ~ 0
CAP4
Text Label 6950 3300 3    50   ~ 0
CAP3
Text Label 7350 3300 3    50   ~ 0
CAP4
NoConn ~ 6750 2050
NoConn ~ 7150 2050
NoConn ~ 7350 2050
Wire Wire Line
	6450 5400 5950 5400
Connection ~ 6950 5400
Wire Wire Line
	6950 5400 7450 5400
Wire Wire Line
	7950 5400 8150 5400
Text Label 5650 4700 1    50   ~ 0
CAS1
Text Label 6150 4700 1    50   ~ 0
CAS2
Text Label 6650 4700 1    50   ~ 0
CAS3
Text Label 7150 4700 1    50   ~ 0
CAS4
Wire Wire Line
	6150 4050 6450 4050
Text Label 3750 2250 0    50   ~ 0
AS
Text Label 2850 2250 2    50   ~ 0
ES
$Comp
L Device:R R1
U 1 1 5E1EC5E1
P 4750 2200
F 0 "R1" V 4700 2050 50  0000 C CNN
F 1 "470" V 4750 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4680 2200 50  0001 C CNN
F 3 "~" H 4750 2200 50  0001 C CNN
	1    4750 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E1ECC39
P 4750 2350
F 0 "R2" V 4700 2200 50  0000 C CNN
F 1 "470" V 4750 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4680 2350 50  0001 C CNN
F 3 "~" H 4750 2350 50  0001 C CNN
	1    4750 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E1ECDB1
P 4750 2500
F 0 "R3" V 4700 2350 50  0000 C CNN
F 1 "470" V 4750 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4680 2500 50  0001 C CNN
F 3 "~" H 4750 2500 50  0001 C CNN
	1    4750 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E1ECFF7
P 4750 2650
F 0 "R4" V 4700 2500 50  0000 C CNN
F 1 "470" V 4750 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4680 2650 50  0001 C CNN
F 3 "~" H 4750 2650 50  0001 C CNN
	1    4750 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E1ED1C2
P 4800 3700
F 0 "R5" V 4750 3550 50  0000 C CNN
F 1 "470" V 4800 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4730 3700 50  0001 C CNN
F 3 "~" H 4800 3700 50  0001 C CNN
	1    4800 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E1ED3AA
P 4750 2800
F 0 "R6" V 4700 2650 50  0000 C CNN
F 1 "470" V 4750 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4680 2800 50  0001 C CNN
F 3 "~" H 4750 2800 50  0001 C CNN
	1    4750 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E1ED545
P 4750 2950
F 0 "R7" V 4700 2800 50  0000 C CNN
F 1 "470" V 4750 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4680 2950 50  0001 C CNN
F 3 "~" H 4750 2950 50  0001 C CNN
	1    4750 2950
	0    -1   -1   0   
$EndComp
Text Label 4450 2200 0    50   ~ 0
AS
Text Label 4450 2350 0    50   ~ 0
BS
Text Label 4450 2500 0    50   ~ 0
CS
Text Label 4450 2650 0    50   ~ 0
DS
Text Label 4500 3700 0    50   ~ 0
ES
Text Label 4450 2800 0    50   ~ 0
FS
Text Label 4450 2950 0    50   ~ 0
GS
Text Label 5050 2200 0    50   ~ 0
A
Text Label 5050 2350 0    50   ~ 0
B
Text Label 5050 2500 0    50   ~ 0
C
Text Label 5050 2650 0    50   ~ 0
D
Text Label 5100 3700 0    50   ~ 0
E
Text Label 5050 2800 0    50   ~ 0
F
Text Label 5050 2950 0    50   ~ 0
G
Text Label 6350 3400 0    50   ~ 0
D
Text Label 6750 3400 0    50   ~ 0
E
Text Label 7150 3400 0    50   ~ 0
DP
Text Label 5950 2000 0    50   ~ 0
B
Text Label 6150 2000 0    50   ~ 0
G
Text Label 6350 2000 0    50   ~ 0
A
Text Label 6550 2000 0    50   ~ 0
C
Text Label 6950 2000 0    50   ~ 0
F
$Comp
L Transistor_BJT:2N3906 Q5
U 1 1 5E20CD75
P 7850 5100
F 0 "Q5" H 7800 5250 50  0000 L CNN
F 1 "2N3906" V 8050 4950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8050 5025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 7850 5100 50  0001 L CNN
	1    7850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5400 7950 5400
Wire Wire Line
	7950 5400 7950 5300
Connection ~ 7450 5400
Connection ~ 7950 5400
Text Label 6550 3300 3    50   ~ 0
CAP5
Text Label 7950 4700 1    50   ~ 0
CAP5
Text Label 7650 4700 1    50   ~ 0
CAS5
$Comp
L Device:R R10
U 1 1 5E1DAE00
P 6150 4950
F 0 "R10" V 6250 4950 50  0000 C CNN
F 1 "10K" V 6150 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6080 4950 50  0001 C CNN
F 3 "~" H 6150 4950 50  0001 C CNN
	1    6150 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5E1DB06D
P 6650 4950
F 0 "R11" V 6750 4950 50  0000 C CNN
F 1 "10K" V 6650 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6580 4950 50  0001 C CNN
F 3 "~" H 6650 4950 50  0001 C CNN
	1    6650 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5E1DB268
P 7150 4950
F 0 "R12" V 7250 4950 50  0000 C CNN
F 1 "10K" V 7150 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7080 4950 50  0001 C CNN
F 3 "~" H 7150 4950 50  0001 C CNN
	1    7150 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5E1DB4BD
P 7650 4950
F 0 "R13" V 7750 4950 50  0000 C CNN
F 1 "10K" V 7650 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7580 4950 50  0001 C CNN
F 3 "~" H 7650 4950 50  0001 C CNN
	1    7650 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5E1DABF0
P 5650 4950
F 0 "R9" V 5750 4950 50  0000 C CNN
F 1 "10K" V 5650 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5580 4950 50  0001 C CNN
F 3 "~" H 5650 4950 50  0001 C CNN
	1    5650 4950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q1
U 1 1 5E1AFC1D
P 5850 5100
F 0 "Q1" H 5800 5250 50  0000 L CNN
F 1 "2N3906" V 6050 4950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6050 5025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 5850 5100 50  0001 L CNN
	1    5850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3250 6750 3700
Wire Wire Line
	6350 3250 6350 3550
Wire Wire Line
	5950 3250 5950 4900
Wire Wire Line
	6950 3250 6950 4900
Text Label 5100 3850 0    50   ~ 0
DP
Text Label 4450 3850 0    50   ~ 0
DPS
$Comp
L Device:R R8
U 1 1 5E1ED6F0
P 4800 3850
F 0 "R8" V 4750 3700 50  0000 C CNN
F 1 "470" V 4800 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4730 3850 50  0001 C CNN
F 3 "~" H 4800 3850 50  0001 C CNN
	1    4800 3850
	0    -1   -1   0   
$EndComp
Text Label 2850 4350 2    50   ~ 0
CAS5
Text Label 3750 4350 0    50   ~ 0
CAS4
NoConn ~ 3050 4250
NoConn ~ 3050 4150
NoConn ~ 3050 4050
Wire Wire Line
	2950 4550 2950 3950
Text Label 3750 4050 0    50   ~ 0
CAS1
Text Label 3750 4150 0    50   ~ 0
CAS2
Text Label 3750 4250 0    50   ~ 0
CAS3
$Comp
L power:+3V3 #PWR0108
U 1 1 5AED67C1
P 3650 3950
F 0 "#PWR0108" H 3650 3800 50  0001 C CNN
F 1 "+3V3" H 3665 4126 50  0000 C CNN
F 2 "" H 3650 3950 50  0001 C CNN
F 3 "" H 3650 3950 50  0001 C CNN
	1    3650 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0107
U 1 1 5AED67B0
P 2950 3950
F 0 "#PWR0107" H 2950 3800 50  0001 C CNN
F 1 "+3V3" H 2965 4126 50  0000 C CNN
F 2 "" H 2950 3950 50  0001 C CNN
F 3 "" H 2950 3950 50  0001 C CNN
	1    2950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4550 2950 4550
Wire Wire Line
	3650 4550 3650 3950
Wire Wire Line
	3550 4550 3650 4550
$Comp
L power:GND #PWR0106
U 1 1 5AAD5E47
P 2850 4750
F 0 "#PWR0106" H 2850 4500 50  0001 C CNN
F 1 "GND" H 2855 4574 50  0000 C CNN
F 2 "" H 2850 4750 50  0001 C CNN
F 3 "" H 2850 4750 50  0001 C CNN
	1    2850 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5AAD5E36
P 3750 4750
F 0 "#PWR0105" H 3750 4500 50  0001 C CNN
F 1 "GND" H 3755 4574 50  0000 C CNN
F 2 "" H 3750 4750 50  0001 C CNN
F 3 "" H 3750 4750 50  0001 C CNN
	1    3750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4450 3750 4450
Wire Wire Line
	3050 4450 2850 4450
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J2
U 1 1 5AACAA52
P 3350 4250
F 0 "J2" H 3300 4550 50  0000 L CNN
F 1 "PMOD" H 3200 4650 50  0000 L CNN
F 2 "01_FM4DD:PMODHeader_2x06_P2.54mm_Horizontal" H 3350 4250 50  0001 C CNN
F 3 "~" H 3350 4250 50  0001 C CNN
F 4 "ANY" H 3350 4250 50  0001 C CNN "Source"
	1    3350 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 4450 7650 4450
Wire Wire Line
	2750 4350 3050 4350
Wire Wire Line
	7650 4450 7650 4800
Wire Wire Line
	2750 4350 2750 4650
Wire Wire Line
	5450 4450 5450 4650
Wire Wire Line
	3750 4450 3750 4750
Wire Wire Line
	2850 4450 2850 4750
Wire Wire Line
	7150 4350 7150 4800
Wire Wire Line
	6650 4250 6650 4800
Wire Wire Line
	6150 4150 6150 4800
Wire Wire Line
	5650 4050 5650 4800
Wire Wire Line
	2750 4650 5450 4650
Wire Wire Line
	3550 4050 5650 4050
Wire Wire Line
	3550 4150 6150 4150
Wire Wire Line
	3550 4250 6650 4250
Wire Wire Line
	3550 4350 7150 4350
Wire Wire Line
	6450 4050 6450 4900
Wire Wire Line
	6150 3250 6150 4050
Wire Wire Line
	6550 4150 7950 4150
Wire Wire Line
	6550 3250 6550 4150
Wire Wire Line
	7950 4150 7950 4900
Wire Wire Line
	7350 4350 7450 4350
Wire Wire Line
	7450 4350 7450 4900
Wire Wire Line
	7350 3250 7350 4350
Wire Wire Line
	7150 3250 7150 3850
Wire Wire Line
	4950 3850 7150 3850
Wire Wire Line
	4950 3700 6750 3700
Wire Wire Line
	4250 3700 4250 3250
Wire Wire Line
	4250 3250 2650 3250
Wire Wire Line
	2650 3250 2650 2250
Wire Wire Line
	2650 2250 3050 2250
Wire Wire Line
	4250 3700 4650 3700
Wire Wire Line
	4100 3850 4100 3400
Wire Wire Line
	4100 3400 2500 3400
Wire Wire Line
	2500 3400 2500 2550
Wire Wire Line
	2500 2550 3050 2550
Wire Wire Line
	4100 3850 4650 3850
Wire Wire Line
	2400 3550 3950 3550
Wire Wire Line
	3950 3550 3950 2950
Wire Wire Line
	3950 2950 4600 2950
Wire Wire Line
	2400 2450 2400 3550
Wire Wire Line
	2400 2450 3050 2450
Wire Wire Line
	2300 2350 2300 3150
Wire Wire Line
	2300 3150 4250 3150
Wire Wire Line
	4250 3150 4250 2800
Wire Wire Line
	4250 2800 4600 2800
Wire Wire Line
	4900 2800 5600 2800
Wire Wire Line
	4900 2950 5500 2950
Wire Wire Line
	4900 2650 5400 2650
Wire Wire Line
	5400 2650 5400 3550
Wire Wire Line
	5400 3550 6350 3550
Wire Wire Line
	3550 2350 4600 2350
Wire Wire Line
	4300 2450 4300 2500
Wire Wire Line
	3550 2450 4300 2450
Wire Wire Line
	4300 2500 4600 2500
Wire Wire Line
	4250 2550 4250 2650
Wire Wire Line
	4250 2650 4600 2650
Wire Wire Line
	3550 2550 4250 2550
Wire Wire Line
	4300 2250 4300 2200
Wire Wire Line
	4300 2200 4600 2200
Wire Wire Line
	3550 2250 4300 2250
Wire Wire Line
	4900 2350 5400 2350
Wire Wire Line
	4900 2200 5300 2200
Wire Wire Line
	4900 2500 5200 2500
Wire Wire Line
	5500 1800 6150 1800
Wire Wire Line
	5950 1900 5400 1900
Wire Wire Line
	2300 2350 3050 2350
Wire Wire Line
	5200 1600 6550 1600
Wire Wire Line
	5950 1900 5950 2050
Wire Wire Line
	6150 1800 6150 2050
Wire Wire Line
	6550 1600 6550 2050
Wire Wire Line
	6350 1700 6350 2050
Wire Wire Line
	6350 1700 5300 1700
Wire Wire Line
	6950 1500 5600 1500
Wire Wire Line
	6950 1500 6950 2050
Wire Wire Line
	5400 1900 5400 2350
Wire Wire Line
	5500 1800 5500 2950
Wire Wire Line
	5300 1700 5300 2200
Wire Wire Line
	5200 1600 5200 2500
Wire Wire Line
	5600 1500 5600 2800
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 5E33258E
P 8300 5400
F 0 "JP1" V 8254 5468 50  0000 L CNN
F 1 "common cathode selector" V 8345 5468 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_Pad1.0x1.5mm" H 8300 5400 50  0001 C CNN
F 3 "~" H 8300 5400 50  0001 C CNN
	1    8300 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 5000 8300 5200
Wire Notes Line
	8200 4000 9700 4000
Wire Notes Line
	9700 4000 9700 4700
Wire Notes Line
	9700 4700 8200 4700
Text Notes 8200 4650 0    50   ~ 0
The module works with both common\nanode and common cathode modules.\nDefault is common anode, driven by\n2N3906 NPN transistors. For common\ncathode modules, we use the 2N3904\nPNP transistor instead, connecting\nbase to GND while separating the\ntrace to 3.3V.
Wire Notes Line
	8200 4700 8200 4000
$Comp
L power:GND #PWR0110
U 1 1 5E35326A
P 8300 5850
F 0 "#PWR0110" H 8300 5600 50  0001 C CNN
F 1 "GND" H 8305 5677 50  0000 C CNN
F 2 "" H 8300 5850 50  0001 C CNN
F 3 "" H 8300 5850 50  0001 C CNN
	1    8300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5600 8300 5850
Wire Wire Line
	6800 5400 6950 5400
Wire Wire Line
	6450 5400 6950 5400
$EndSCHEMATC
