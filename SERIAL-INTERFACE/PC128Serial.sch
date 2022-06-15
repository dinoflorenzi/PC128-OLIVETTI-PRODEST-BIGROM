EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PC128OP SERIAL INTERFACE"
Date "2022-06-15"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:DB9_Female J2
U 1 1 62A999BC
P 5750 2700
F 0 "J2" H 5930 2746 50  0000 L CNN
F 1 "DB9_Female" H 5930 2655 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Vertical_P2.77x2.84mm_MountingHoles" H 5750 2700 50  0001 C CNN
F 3 " ~" H 5750 2700 50  0001 C CNN
	1    5750 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 62A9A8F3
P 3750 2700
F 0 "J1" H 3858 3081 50  0000 C CNN
F 1 "Conn_01x06_Holes" H 3858 2990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3750 2700 50  0001 C CNN
F 3 "~" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3000 5450 3000
Wire Wire Line
	3950 2900 5450 2900
Wire Wire Line
	3950 2800 4650 2800
Wire Wire Line
	4650 2800 4650 2700
Wire Wire Line
	4650 2700 5450 2700
Text Notes 3950 3000 0    50   ~ 0
GND
Text Notes 3950 2900 0    50   ~ 0
RXD
Text Notes 3950 2800 0    50   ~ 0
TXD
Wire Wire Line
	3950 2600 4050 2600
Wire Wire Line
	4050 2600 4050 2500
Wire Wire Line
	4050 2500 3950 2500
NoConn ~ 3950 2700
NoConn ~ 5450 2800
NoConn ~ 5450 3100
NoConn ~ 5450 2600
NoConn ~ 5450 2500
NoConn ~ 5450 2400
NoConn ~ 5450 2300
$EndSCHEMATC
