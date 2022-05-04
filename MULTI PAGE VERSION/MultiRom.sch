EESchema Schematic File Version 4
EELAYER 30 0
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
L Memory_Flash:SST39SF040 U1
U 1 1 621683D6
P 9500 2400
F 0 "U1" H 9500 3881 50  0000 C CNN
F 1 "SST39SF040" H 9500 3790 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 9500 2700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 9500 2700 50  0001 C CNN
	1    9500 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Male J2
U 1 1 62169E12
P 2300 1950
F 0 "J2" H 2408 2831 50  0000 C CNN
F 1 "Conn_01x15_Male" H 2408 2740 50  0001 C CNN
F 2 "Custom:EdgeConn_15" H 2300 1950 50  0001 C CNN
F 3 "~" H 2300 1950 50  0001 C CNN
	1    2300 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Male J1
U 1 1 6216B2B7
P 2050 1950
F 0 "J1" H 2158 2831 50  0000 C CNN
F 1 "Conn_01x15_Male" H 2158 2740 50  0001 C CNN
F 2 "Custom:EdgeConn_15" H 2050 1950 50  0001 C CNN
F 3 "~" H 2050 1950 50  0001 C CNN
	1    2050 1950
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS133 U3
U 1 1 62173639
P 3700 4200
F 0 "U3" H 3700 5025 50  0000 C CNN
F 1 "74LS133" H 3700 4934 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3700 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS133" H 3700 4200 50  0001 C CNN
	1    3700 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6218BCE8
P 6050 4000
F 0 "#PWR0101" H 6050 3750 50  0001 C CNN
F 1 "GND" H 6055 3827 50  0000 C CNN
F 2 "" H 6050 4000 50  0001 C CNN
F 3 "" H 6050 4000 50  0001 C CNN
	1    6050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3900 6050 4000
Wire Wire Line
	5550 3600 5550 3900
Wire Wire Line
	5550 3900 6050 3900
Wire Wire Line
	6550 2700 8900 2700
Wire Wire Line
	6550 2800 8900 2800
Wire Wire Line
	6550 2900 8900 2900
Wire Wire Line
	6550 3000 8900 3000
NoConn ~ 6550 3100
NoConn ~ 6550 3200
Text GLabel 1600 1350 0    50   BiDi ~ 0
A12
Text GLabel 1400 1450 0    50   BiDi ~ 0
A11
Text GLabel 1600 1550 0    50   BiDi ~ 0
A10
Text GLabel 1400 1650 0    50   BiDi ~ 0
A9
Text GLabel 1600 1750 0    50   BiDi ~ 0
A8
Text GLabel 1400 1850 0    50   BiDi ~ 0
A7
Text GLabel 1600 1950 0    50   BiDi ~ 0
A6
Text GLabel 1400 2050 0    50   BiDi ~ 0
A5
Text GLabel 1600 2150 0    50   BiDi ~ 0
A4
Text GLabel 1400 2250 0    50   BiDi ~ 0
A3
Text GLabel 1600 2350 0    50   BiDi ~ 0
A2
Text GLabel 1400 2450 0    50   BiDi ~ 0
A1
Text GLabel 1600 2550 0    50   BiDi ~ 0
A0
Text GLabel 2700 1550 2    50   BiDi ~ 0
A13
Text GLabel 2900 1650 2    50   BiDi ~ 0
CS
Text GLabel 2700 1750 2    50   BiDi ~ 0
D7
Text GLabel 2900 1850 2    50   BiDi ~ 0
D6
Text GLabel 2700 1950 2    50   BiDi ~ 0
D5
Text GLabel 2900 2050 2    50   BiDi ~ 0
D4
Text GLabel 2700 2150 2    50   BiDi ~ 0
D3
Text GLabel 2900 2250 2    50   BiDi ~ 0
D2
Text GLabel 2700 2350 2    50   BiDi ~ 0
D1
Text GLabel 2900 2450 2    50   BiDi ~ 0
D0
Text GLabel 2700 2650 2    50   BiDi ~ 0
RW
Text GLabel 5400 3300 0    50   BiDi ~ 0
A7
Text GLabel 5200 3200 0    50   BiDi ~ 0
A6
Text GLabel 5400 3100 0    50   BiDi ~ 0
A5
Text GLabel 5200 3000 0    50   BiDi ~ 0
A4
Text GLabel 5400 2900 0    50   BiDi ~ 0
A3
Text GLabel 5200 2800 0    50   BiDi ~ 0
A2
Text GLabel 5400 2700 0    50   BiDi ~ 0
A1
Text GLabel 5200 2600 0    50   BiDi ~ 0
A0
Text GLabel 10350 1900 2    50   BiDi ~ 0
D7
Text GLabel 10550 1800 2    50   BiDi ~ 0
D6
Text GLabel 10350 1700 2    50   BiDi ~ 0
D5
Text GLabel 10550 1600 2    50   BiDi ~ 0
D4
Text GLabel 10350 1500 2    50   BiDi ~ 0
D3
Text GLabel 10550 1400 2    50   BiDi ~ 0
D2
Text GLabel 10350 1300 2    50   BiDi ~ 0
D1
Text GLabel 10550 1200 2    50   BiDi ~ 0
D0
Wire Wire Line
	10100 1900 10350 1900
Wire Wire Line
	10100 1800 10550 1800
Wire Wire Line
	10100 1700 10350 1700
Wire Wire Line
	10100 1600 10550 1600
Wire Wire Line
	10100 1500 10350 1500
Wire Wire Line
	10100 1400 10550 1400
Wire Wire Line
	10100 1300 10350 1300
Wire Wire Line
	10100 1200 10550 1200
Wire Wire Line
	5200 2600 5550 2600
Wire Wire Line
	5400 2700 5550 2700
Wire Wire Line
	5200 2800 5550 2800
Wire Wire Line
	5400 2900 5550 2900
Wire Wire Line
	5200 3000 5550 3000
Wire Wire Line
	5400 3100 5550 3100
Wire Wire Line
	5200 3200 5550 3200
Wire Wire Line
	5400 3300 5550 3300
Wire Wire Line
	2500 2450 2900 2450
Wire Wire Line
	2500 2350 2700 2350
Wire Wire Line
	2500 2250 2900 2250
Wire Wire Line
	2500 2150 2700 2150
Wire Wire Line
	2500 2050 2900 2050
Wire Wire Line
	2500 1950 2700 1950
Wire Wire Line
	2500 1850 2900 1850
Wire Wire Line
	2500 1750 2700 1750
Text GLabel 8750 3400 0    50   BiDi ~ 0
CS
Wire Wire Line
	8900 3400 8750 3400
$Comp
L 74xx:74LS04 U5
U 2 1 62184A0F
P 2650 5000
F 0 "U5" H 2650 5317 50  0000 C CNN
F 1 "74LS04" H 2650 5226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2650 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2650 5000 50  0001 C CNN
	2    2650 5000
	1    0    0    -1  
$EndComp
Text GLabel 2050 5000 0    50   BiDi ~ 0
RW
Wire Wire Line
	2050 5000 2350 5000
Wire Wire Line
	2700 2650 2500 2650
$Comp
L power:GND #PWR0102
U 1 1 6218A53A
P 3100 2800
F 0 "#PWR0102" H 3100 2550 50  0001 C CNN
F 1 "GND" H 3105 2627 50  0000 C CNN
F 2 "" H 3100 2800 50  0001 C CNN
F 3 "" H 3100 2800 50  0001 C CNN
	1    3100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2550 3100 2550
Wire Wire Line
	3100 2550 3100 2800
Wire Wire Line
	2900 1650 2500 1650
Text GLabel 8800 1200 0    50   BiDi ~ 0
A0
Text GLabel 8600 1300 0    50   BiDi ~ 0
A1
Text GLabel 8800 1400 0    50   BiDi ~ 0
A2
Text GLabel 8600 1500 0    50   BiDi ~ 0
A3
Text GLabel 8800 1600 0    50   BiDi ~ 0
A4
Text GLabel 8600 1700 0    50   BiDi ~ 0
A5
Text GLabel 8800 1800 0    50   BiDi ~ 0
A6
Text GLabel 8600 1900 0    50   BiDi ~ 0
A7
Text GLabel 8800 2000 0    50   BiDi ~ 0
A8
Text GLabel 8600 2100 0    50   BiDi ~ 0
A9
Text GLabel 8800 2200 0    50   BiDi ~ 0
A10
Text GLabel 8600 2300 0    50   BiDi ~ 0
A11
Text GLabel 8800 2400 0    50   BiDi ~ 0
A12
Connection ~ 6050 3900
$Comp
L 74xx:74LS373 U2
U 1 1 62172A77
P 6050 3100
F 0 "U2" H 6050 4081 50  0000 C CNN
F 1 "74LS373" H 6050 3990 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6050 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS373" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1200 8900 1200
Wire Wire Line
	8600 1300 8900 1300
Wire Wire Line
	8800 1400 8900 1400
Wire Wire Line
	8600 1500 8900 1500
Wire Wire Line
	8800 1600 8900 1600
Wire Wire Line
	8600 1700 8900 1700
Wire Wire Line
	8800 1800 8900 1800
Wire Wire Line
	8600 1900 8900 1900
Wire Wire Line
	8800 2000 8900 2000
Wire Wire Line
	8600 2100 8900 2100
Wire Wire Line
	8800 2200 8900 2200
Wire Wire Line
	8600 2300 8900 2300
Wire Wire Line
	8800 2400 8900 2400
Text GLabel 8600 2500 0    50   BiDi ~ 0
A13
Wire Wire Line
	8600 2500 8900 2500
Wire Wire Line
	2700 1550 2500 1550
Text GLabel 1400 1250 0    50   BiDi ~ 0
A15
Text GLabel 2900 1250 2    50   BiDi ~ 0
A14
Wire Wire Line
	1850 1350 1600 1350
Wire Wire Line
	2900 1250 2500 1250
Wire Wire Line
	1850 2550 1600 2550
Wire Wire Line
	1400 2450 1850 2450
Wire Wire Line
	1850 2350 1600 2350
Wire Wire Line
	1400 2250 1850 2250
Wire Wire Line
	1850 2150 1600 2150
Wire Wire Line
	1400 2050 1850 2050
Wire Wire Line
	1850 1950 1600 1950
Wire Wire Line
	1400 1850 1850 1850
Wire Wire Line
	1850 1750 1600 1750
Wire Wire Line
	1400 1650 1850 1650
Wire Wire Line
	1850 1550 1600 1550
Wire Wire Line
	1400 1450 1850 1450
Wire Wire Line
	1850 1250 1400 1250
$Comp
L power:+5V #PWR0103
U 1 1 6222FAA5
P 3450 1350
F 0 "#PWR0103" H 3450 1200 50  0001 C CNN
F 1 "+5V" H 3465 1523 50  0000 C CNN
F 2 "" H 3450 1350 50  0001 C CNN
F 3 "" H 3450 1350 50  0001 C CNN
	1    3450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1350 2600 1350
Wire Wire Line
	2500 1450 2600 1450
Wire Wire Line
	2600 1450 2600 1350
Connection ~ 2600 1350
Wire Wire Line
	2600 1350 3450 1350
Text GLabel 3050 3600 0    50   BiDi ~ 0
A15
Wire Wire Line
	3400 3600 3050 3600
Wire Wire Line
	4000 4200 4150 4200
Text GLabel 3050 3800 0    50   BiDi ~ 0
A13
Text GLabel 2750 3700 0    50   BiDi ~ 0
A14
Wire Wire Line
	2750 3700 3400 3700
Wire Wire Line
	2950 5000 3100 5000
$Comp
L power:+5V #PWR0105
U 1 1 622E784A
P 6050 1950
F 0 "#PWR0105" H 6050 1800 50  0001 C CNN
F 1 "+5V" H 6065 2123 50  0000 C CNN
F 2 "" H 6050 1950 50  0001 C CNN
F 3 "" H 6050 1950 50  0001 C CNN
	1    6050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2300 6050 2100
Text GLabel 3750 5000 2    50   BiDi ~ 0
OE
Text GLabel 8750 3500 0    50   BiDi ~ 0
OE
Wire Wire Line
	8750 3500 8900 3500
$Comp
L power:+5V #PWR0107
U 1 1 623198BB
P 4250 1250
F 0 "#PWR0107" H 4250 1100 50  0001 C CNN
F 1 "+5V" H 4265 1423 50  0000 C CNN
F 2 "" H 4250 1250 50  0001 C CNN
F 3 "" H 4250 1250 50  0001 C CNN
	1    4250 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 6231A02C
P 4650 1450
F 0 "#PWR0108" H 4650 1200 50  0001 C CNN
F 1 "GND" H 4655 1277 50  0000 C CNN
F 2 "" H 4650 1450 50  0001 C CNN
F 3 "" H 4650 1450 50  0001 C CNN
	1    4650 1450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6231AE15
P 4650 1250
F 0 "#FLG0101" H 4650 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 4650 1423 50  0000 C CNN
F 2 "" H 4650 1250 50  0001 C CNN
F 3 "~" H 4650 1250 50  0001 C CNN
	1    4650 1250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 62322323
P 4250 1450
F 0 "#FLG0102" H 4250 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 4250 1623 50  0000 C CNN
F 2 "" H 4250 1450 50  0001 C CNN
F 3 "~" H 4250 1450 50  0001 C CNN
	1    4250 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 1450 4250 1250
Wire Wire Line
	4650 1450 4650 1250
$Comp
L power:+5V #PWR0109
U 1 1 62340025
P 9500 850
F 0 "#PWR0109" H 9500 700 50  0001 C CNN
F 1 "+5V" H 9515 1023 50  0000 C CNN
F 2 "" H 9500 850 50  0001 C CNN
F 3 "" H 9500 850 50  0001 C CNN
	1    9500 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1100 9500 950 
$Comp
L power:GND #PWR0110
U 1 1 62348199
P 9500 3800
F 0 "#PWR0110" H 9500 3550 50  0001 C CNN
F 1 "GND" H 9505 3627 50  0000 C CNN
F 2 "" H 9500 3800 50  0001 C CNN
F 3 "" H 9500 3800 50  0001 C CNN
	1    9500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3800 9500 3600
$Comp
L 74xx:74LS04 U5
U 4 1 62366C45
P 4700 3500
F 0 "U5" H 4700 3817 50  0000 C CNN
F 1 "74LS04" H 4700 3726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4700 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4700 3500 50  0001 C CNN
	4    4700 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U5
U 5 1 62367868
P 1000 6900
F 0 "U5" H 1000 7217 50  0000 C CNN
F 1 "74LS04" H 1000 7126 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1000 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1000 6900 50  0001 C CNN
	5    1000 6900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U5
U 6 1 623684D7
P 1000 7400
F 0 "U5" H 1000 7717 50  0000 C CNN
F 1 "74LS04" H 1000 7626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1000 7400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1000 7400 50  0001 C CNN
	6    1000 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  7400 700  6900
Connection ~ 700  6900
$Comp
L power:+5V #PWR0111
U 1 1 623703DD
P 700 5450
F 0 "#PWR0111" H 700 5300 50  0001 C CNN
F 1 "+5V" H 715 5623 50  0000 C CNN
F 2 "" H 700 5450 50  0001 C CNN
F 3 "" H 700 5450 50  0001 C CNN
	1    700  5450
	1    0    0    -1  
$EndComp
NoConn ~ 1300 6900
NoConn ~ 1300 7400
$Comp
L 74xx:74LS04 U5
U 7 1 623CF320
P 3550 6850
F 0 "U5" H 3550 7167 50  0000 C CNN
F 1 "74LS04" H 3550 7076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3550 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3550 6850 50  0001 C CNN
	7    3550 6850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS133 U3
U 2 1 623D9B74
P 4650 6850
F 0 "U3" H 4650 7675 50  0000 C CNN
F 1 "74LS133" H 4650 7584 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4650 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS133" H 4650 6850 50  0001 C CNN
	2    4650 6850
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C1
U 1 1 623DDCF7
P 4000 6850
F 0 "C1" H 4178 6896 50  0000 L CNN
F 1 "100nF" H 4178 6805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4000 6850 50  0001 C CNN
F 3 "~" H 4000 6850 50  0001 C CNN
	1    4000 6850
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C3
U 1 1 62406269
P 5100 6850
F 0 "C3" H 5278 6896 50  0000 L CNN
F 1 "100nF" H 5278 6805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5100 6850 50  0001 C CNN
F 3 "~" H 5100 6850 50  0001 C CNN
	1    5100 6850
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C5
U 1 1 6240FDDF
P 5600 2100
F 0 "C5" V 5285 2100 50  0000 C CNN
F 1 "100nF" V 5376 2100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5600 2100 50  0001 C CNN
F 3 "~" H 5600 2100 50  0001 C CNN
	1    5600 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 6350 4000 6350
Connection ~ 4650 6350
Wire Wire Line
	4650 6350 5100 6350
Wire Wire Line
	3550 7350 4000 7350
Connection ~ 4650 7350
Wire Wire Line
	4650 7350 5100 7350
Wire Wire Line
	4000 7100 4000 7350
Connection ~ 4000 7350
Wire Wire Line
	4000 6600 4000 6350
Connection ~ 4000 6350
Wire Wire Line
	5100 7100 5100 7350
Wire Wire Line
	5100 6600 5100 6350
$Comp
L power:GND #PWR0114
U 1 1 624848AE
P 3550 7350
F 0 "#PWR0114" H 3550 7100 50  0001 C CNN
F 1 "GND" H 3555 7177 50  0000 C CNN
F 2 "" H 3550 7350 50  0001 C CNN
F 3 "" H 3550 7350 50  0001 C CNN
	1    3550 7350
	1    0    0    -1  
$EndComp
Connection ~ 3550 7350
$Comp
L power:+5V #PWR0115
U 1 1 624852AF
P 3550 6350
F 0 "#PWR0115" H 3550 6200 50  0001 C CNN
F 1 "+5V" H 3565 6523 50  0000 C CNN
F 2 "" H 3550 6350 50  0001 C CNN
F 3 "" H 3550 6350 50  0001 C CNN
	1    3550 6350
	1    0    0    -1  
$EndComp
Connection ~ 3550 6350
Wire Wire Line
	5850 2100 6050 2100
Connection ~ 6050 2100
Wire Wire Line
	6050 2100 6050 1950
Wire Wire Line
	8400 950  9500 950 
Connection ~ 9500 950 
Wire Wire Line
	9500 950  9500 850 
$Comp
L power:GND #PWR0116
U 1 1 62499C0D
P 5350 2200
F 0 "#PWR0116" H 5350 1950 50  0001 C CNN
F 1 "GND" H 5355 2027 50  0000 C CNN
F 2 "" H 5350 2200 50  0001 C CNN
F 3 "" H 5350 2200 50  0001 C CNN
	1    5350 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 6249B8DF
P 7900 1050
F 0 "#PWR0117" H 7900 800 50  0001 C CNN
F 1 "GND" H 7905 877 50  0000 C CNN
F 2 "" H 7900 1050 50  0001 C CNN
F 3 "" H 7900 1050 50  0001 C CNN
	1    7900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1050 7900 950 
Wire Wire Line
	5350 2200 5350 2100
$Comp
L pspice:CAP C6
U 1 1 62411E87
P 8150 950
F 0 "C6" V 7835 950 50  0000 C CNN
F 1 "100nF" V 7926 950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 8150 950 50  0001 C CNN
F 3 "~" H 8150 950 50  0001 C CNN
	1    8150 950 
	0    1    1    0   
$EndComp
Text Notes 1950 5650 0    50   ~ 0
1111 1111 111x xxxx - FFE0/FFFF
NoConn ~ 6550 3300
Wire Wire Line
	5000 3500 5550 3500
Wire Wire Line
	4150 4200 4150 3500
Wire Wire Line
	4150 3500 4400 3500
Wire Wire Line
	3050 3800 3400 3800
Text GLabel 2750 3900 0    50   BiDi ~ 0
A12
Wire Wire Line
	3400 3900 2750 3900
Text GLabel 3050 4000 0    50   BiDi ~ 0
A11
Wire Wire Line
	3050 4000 3400 4000
Text GLabel 2750 4100 0    50   BiDi ~ 0
A10
Wire Wire Line
	2750 4100 3400 4100
Text GLabel 3050 4200 0    50   BiDi ~ 0
A9
Wire Wire Line
	3050 4200 3400 4200
Text GLabel 2750 4300 0    50   BiDi ~ 0
A8
Wire Wire Line
	2750 4300 3400 4300
Wire Wire Line
	3100 5000 3100 4800
Wire Wire Line
	3100 4800 3400 4800
Connection ~ 3100 5000
Wire Wire Line
	2200 4700 3400 4700
Text GLabel 2750 4500 0    50   BiDi ~ 0
A6
Wire Wire Line
	2750 4500 3400 4500
Text GLabel 3050 4400 0    50   BiDi ~ 0
A7
Wire Wire Line
	3050 4400 3400 4400
Text GLabel 3050 4600 0    50   BiDi ~ 0
A5
Wire Wire Line
	3050 4600 3400 4600
Wire Wire Line
	4000 6350 4650 6350
Wire Wire Line
	4000 7350 4650 7350
Wire Wire Line
	6550 2600 8900 2600
Text GLabel 1350 2650 0    50   BiDi ~ 0
E
Wire Wire Line
	1850 2650 1350 2650
Text GLabel 2200 4700 0    50   BiDi ~ 0
E
Wire Wire Line
	3100 5000 3750 5000
Wire Wire Line
	700  5450 700  5750
Text GLabel 8750 3200 0    50   BiDi ~ 0
RW
Wire Wire Line
	8900 3200 8750 3200
$Comp
L 74xx:74LS04 U5
U 3 1 62587481
P 1000 6350
F 0 "U5" H 1000 6667 50  0000 C CNN
F 1 "74LS04" H 1000 6576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1000 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1000 6350 50  0001 C CNN
	3    1000 6350
	1    0    0    -1  
$EndComp
Connection ~ 700  6350
Wire Wire Line
	700  6350 700  6900
$Comp
L 74xx:74LS04 U5
U 1 1 6259679F
P 1000 5750
F 0 "U5" H 1000 6067 50  0000 C CNN
F 1 "74LS04" H 1000 5976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1000 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1000 5750 50  0001 C CNN
	1    1000 5750
	1    0    0    -1  
$EndComp
Connection ~ 700  5750
Wire Wire Line
	700  5750 700  6350
NoConn ~ 1300 6350
NoConn ~ 1300 5750
$EndSCHEMATC
