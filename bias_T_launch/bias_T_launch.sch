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
L my_symbols:bias_T U1
U 1 1 6112FD1B
P 3000 3500
F 0 "U1" H 3294 3471 50  0000 L CNN
F 1 "bias_T" H 3294 3380 50  0000 L CNN
F 2 "my_rf:mini_circuits_gu1414" H 3000 3500 50  0001 C CNN
F 3 "" H 3000 3500 50  0001 C CNN
	1    3000 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 61130C5D
P 2150 3600
F 0 "J1" H 2078 3838 50  0000 C CNN
F 1 "Conn_Coaxial" H 2078 3747 50  0000 C CNN
F 2 "my_rf:44mil_microstrip" H 2150 3600 50  0001 C CNN
F 3 " ~" H 2150 3600 50  0001 C CNN
	1    2150 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 3600 2750 3600
Wire Wire Line
	2150 3800 2150 3900
Wire Wire Line
	2150 3900 3000 3900
$Comp
L Connector:Conn_Coaxial J3
U 1 1 611411CB
P 3850 3600
F 0 "J3" H 3950 3575 50  0000 L CNN
F 1 "Conn_Coaxial" H 3950 3484 50  0000 L CNN
F 2 "my_rf:cpw_31_trace_16p5_gap" H 3850 3600 50  0001 C CNN
F 3 " ~" H 3850 3600 50  0001 C CNN
	1    3850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3600 3250 3600
Wire Wire Line
	3850 3800 3850 3900
Wire Wire Line
	3850 3900 3000 3900
Connection ~ 3000 3900
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 61142390
P 3000 2850
F 0 "J2" H 3108 3031 50  0000 C CNN
F 1 "Conn_01x01_Male" H 3108 2940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3000 2850 50  0001 C CNN
F 3 "~" H 3000 2850 50  0001 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2850 3200 3100
Wire Wire Line
	3200 3250 3000 3250
$Comp
L pspice:CAP C1
U 1 1 6114418B
P 3550 3100
F 0 "C1" V 3235 3100 50  0000 C CNN
F 1 "CAP" V 3326 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3550 3100 50  0001 C CNN
F 3 "~" H 3550 3100 50  0001 C CNN
	1    3550 3100
	0    -1   1    0   
$EndComp
Wire Wire Line
	3300 3100 3200 3100
Connection ~ 3200 3100
Wire Wire Line
	3200 3100 3200 3250
Wire Wire Line
	3800 3100 4650 3100
Wire Wire Line
	4650 3100 4650 3900
Wire Wire Line
	4650 3900 3850 3900
Connection ~ 3850 3900
$EndSCHEMATC
