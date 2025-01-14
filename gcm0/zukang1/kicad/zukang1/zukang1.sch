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
L Regulator_Linear:L7805 U1
U 1 1 5FEEE26F
P 2100 6800
F 0 "U1" H 2100 7042 50  0000 C CNN
F 1 "L7805" H 2100 6951 50  0000 C CNN
F 2 "" H 2125 6650 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2100 6750 50  0001 C CNN
	1    2100 6800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FEF04A8
P 900 6800
F 0 "J1" H 1008 6981 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1008 6890 50  0000 C CNN
F 2 "" H 900 6800 50  0001 C CNN
F 3 "~" H 900 6800 50  0001 C CNN
	1    900  6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FEF1A81
P 2100 7500
F 0 "#PWR0101" H 2100 7250 50  0001 C CNN
F 1 "GND" H 2105 7327 50  0000 C CNN
F 2 "" H 2100 7500 50  0001 C CNN
F 3 "" H 2100 7500 50  0001 C CNN
	1    2100 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7100 2100 7350
$Comp
L Device:C C1
U 1 1 5FEF3837
P 1550 6950
F 0 "C1" H 1665 6996 50  0000 L CNN
F 1 "C" H 1665 6905 50  0000 L CNN
F 2 "" H 1588 6800 50  0001 C CNN
F 3 "~" H 1550 6950 50  0001 C CNN
	1    1550 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6800 1450 6800
Connection ~ 1550 6800
Wire Wire Line
	1550 6800 1800 6800
Wire Wire Line
	1100 6900 1100 7350
Wire Wire Line
	1100 7350 1550 7350
Connection ~ 2100 7350
Wire Wire Line
	2100 7350 2100 7500
Wire Wire Line
	1550 7100 1550 7350
Connection ~ 1550 7350
Wire Wire Line
	1550 7350 2100 7350
$Comp
L Device:C C2
U 1 1 5FEF9B41
P 2500 6950
F 0 "C2" H 2615 6996 50  0000 L CNN
F 1 "C" H 2615 6905 50  0000 L CNN
F 2 "" H 2538 6800 50  0001 C CNN
F 3 "~" H 2500 6950 50  0001 C CNN
	1    2500 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7100 2500 7350
Wire Wire Line
	2400 6800 2500 6800
$Comp
L Regulator_Linear:LM1117-3.3 U2
U 1 1 5FEFA971
P 3550 6800
F 0 "U2" H 3550 7042 50  0000 C CNN
F 1 "LM1117-3.3" H 3550 6951 50  0000 C CNN
F 2 "" H 3550 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 3550 6800 50  0001 C CNN
	1    3550 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6800 2950 6800
Wire Wire Line
	3550 7100 3550 7350
Wire Wire Line
	2100 7350 2500 7350
Wire Wire Line
	2950 7350 3550 7350
$Comp
L Device:C C3
U 1 1 5FEFBEE8
P 4050 6950
F 0 "C3" H 4165 6996 50  0000 L CNN
F 1 "C" H 4165 6905 50  0000 L CNN
F 2 "" H 4088 6800 50  0001 C CNN
F 3 "~" H 4050 6950 50  0001 C CNN
	1    4050 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FEFCA9B
P 4550 6950
F 0 "C4" H 4665 6996 50  0000 L CNN
F 1 "C" H 4665 6905 50  0000 L CNN
F 2 "" H 4588 6800 50  0001 C CNN
F 3 "~" H 4550 6950 50  0001 C CNN
	1    4550 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6800 4050 6800
Connection ~ 4050 6800
Wire Wire Line
	4050 6800 4350 6800
Wire Wire Line
	4050 7100 4050 7350
Wire Wire Line
	4050 7350 3550 7350
Connection ~ 3550 7350
Wire Wire Line
	4550 7100 4550 7350
Wire Wire Line
	4550 7350 4050 7350
Connection ~ 4050 7350
$Comp
L power:+3.3V #PWR0102
U 1 1 5FEFE3B2
P 4350 6800
F 0 "#PWR0102" H 4350 6650 50  0001 C CNN
F 1 "+3.3V" H 4365 6973 50  0000 C CNN
F 2 "" H 4350 6800 50  0001 C CNN
F 3 "" H 4350 6800 50  0001 C CNN
	1    4350 6800
	1    0    0    -1  
$EndComp
Connection ~ 4350 6800
Wire Wire Line
	4350 6800 4550 6800
$Comp
L power:+9V #PWR0103
U 1 1 5FEFF34E
P 1450 6800
F 0 "#PWR0103" H 1450 6650 50  0001 C CNN
F 1 "+9V" H 1465 6973 50  0000 C CNN
F 2 "" H 1450 6800 50  0001 C CNN
F 3 "" H 1450 6800 50  0001 C CNN
	1    1450 6800
	1    0    0    -1  
$EndComp
Connection ~ 1450 6800
Wire Wire Line
	1450 6800 1550 6800
$Comp
L MCU_ST_STM32F0:STM32F030F4Px U4
U 1 1 5FF00FF7
P 7250 4950
F 0 "U4" H 7250 4061 50  0000 C CNN
F 1 "STM32F030F4Px" H 7250 3970 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6850 4250 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 7250 4950 50  0001 C CNN
	1    7250 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5FF031FD
P 2100 6350
F 0 "D1" H 2100 6567 50  0000 C CNN
F 1 "D" H 2100 6476 50  0000 C CNN
F 2 "" H 2100 6350 50  0001 C CNN
F 3 "~" H 2100 6350 50  0001 C CNN
	1    2100 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5FF05FBC
P 2950 7050
F 0 "D2" V 2904 7130 50  0000 L CNN
F 1 "D" V 2995 7130 50  0000 L CNN
F 2 "" H 2950 7050 50  0001 C CNN
F 3 "~" H 2950 7050 50  0001 C CNN
	1    2950 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 6900 2950 6800
Wire Wire Line
	2950 7200 2950 7350
Wire Wire Line
	2950 7350 2500 7350
Connection ~ 2950 7350
Connection ~ 2500 7350
Wire Wire Line
	2950 6800 2500 6800
Connection ~ 2950 6800
Connection ~ 2500 6800
Wire Wire Line
	2250 6350 2950 6350
Wire Wire Line
	2950 6350 2950 6800
Wire Wire Line
	1950 6350 1550 6350
Wire Wire Line
	1550 6350 1550 6800
$Comp
L power:+3.3V #PWR0104
U 1 1 5FF0A2CB
P 7250 4050
F 0 "#PWR0104" H 7250 3900 50  0001 C CNN
F 1 "+3.3V" H 7265 4223 50  0000 C CNN
F 2 "" H 7250 4050 50  0001 C CNN
F 3 "" H 7250 4050 50  0001 C CNN
	1    7250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4050 7250 4250
Wire Wire Line
	7250 4250 7350 4250
Connection ~ 7250 4250
$Comp
L power:GND #PWR0105
U 1 1 5FF0D1FE
P 6800 5750
F 0 "#PWR0105" H 6800 5500 50  0001 C CNN
F 1 "GND" H 6805 5577 50  0000 C CNN
F 2 "" H 6800 5750 50  0001 C CNN
F 3 "" H 6800 5750 50  0001 C CNN
	1    6800 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5750 7250 5750
$Comp
L Device:C C7
U 1 1 5FF0FD79
P 6500 4450
F 0 "C7" V 6248 4450 50  0000 C CNN
F 1 "C" V 6339 4450 50  0000 C CNN
F 2 "" H 6538 4300 50  0001 C CNN
F 3 "~" H 6500 4450 50  0001 C CNN
	1    6500 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FF10B92
P 6500 4650
F 0 "R4" V 6707 4650 50  0000 C CNN
F 1 "R" V 6616 4650 50  0000 C CNN
F 2 "" V 6430 4650 50  0001 C CNN
F 3 "~" H 6500 4650 50  0001 C CNN
	1    6500 4650
	0    -1   1    0   
$EndComp
Wire Wire Line
	6750 4450 6650 4450
Wire Wire Line
	6750 4650 6650 4650
Wire Wire Line
	6350 4650 6150 4650
Wire Wire Line
	6000 4650 6000 4750
Wire Wire Line
	6350 4450 6000 4450
Wire Wire Line
	6000 4450 6000 4650
Connection ~ 6000 4650
$Comp
L Device:Crystal Y1
U 1 1 5FF144A4
P 6250 5300
F 0 "Y1" V 6204 5431 50  0000 L CNN
F 1 "Crystal" V 6295 5431 50  0000 L CNN
F 2 "" H 6250 5300 50  0001 C CNN
F 3 "~" H 6250 5300 50  0001 C CNN
	1    6250 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 5150 6750 5150
Wire Wire Line
	6750 5150 6750 5250
Wire Wire Line
	6250 5450 6750 5450
Wire Wire Line
	6750 5450 6750 5350
$Comp
L Device:C C5
U 1 1 5FF163F1
P 5900 5150
F 0 "C5" V 6152 5150 50  0000 C CNN
F 1 "20p" V 6061 5150 50  0000 C CNN
F 2 "" H 5938 5000 50  0001 C CNN
F 3 "~" H 5900 5150 50  0001 C CNN
	1    5900 5150
	0    1    -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 5FF18176
P 5900 5550
F 0 "C6" V 6152 5550 50  0000 C CNN
F 1 "20p" V 6061 5550 50  0000 C CNN
F 2 "" H 5938 5400 50  0001 C CNN
F 3 "~" H 5900 5550 50  0001 C CNN
	1    5900 5550
	0    1    -1   0   
$EndComp
Wire Wire Line
	6050 5550 6050 5450
Wire Wire Line
	6050 5450 6250 5450
Connection ~ 6250 5450
Wire Wire Line
	6050 5150 6250 5150
Connection ~ 6250 5150
Wire Wire Line
	5750 5150 5750 5550
Wire Wire Line
	6000 4750 5750 4750
Wire Wire Line
	5750 4750 5750 5150
Connection ~ 5750 5150
$Comp
L power:GND #PWR0106
U 1 1 5FF22148
P 6150 4650
F 0 "#PWR0106" H 6150 4400 50  0001 C CNN
F 1 "GND" H 6155 4477 50  0000 C CNN
F 2 "" H 6150 4650 50  0001 C CNN
F 3 "" H 6150 4650 50  0001 C CNN
	1    6150 4650
	1    0    0    -1  
$EndComp
Connection ~ 6150 4650
Wire Wire Line
	6150 4650 6000 4650
$Comp
L 74xx:74HC595 U3
U 1 1 5FF231B8
P 8100 2400
F 0 "U3" H 8100 3181 50  0000 C CNN
F 1 "74HC595" H 8100 3090 50  0000 C CNN
F 2 "" H 8100 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8100 2400 50  0001 C CNN
	1    8100 2400
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:WC1602A DS1
U 1 1 5FF26114
P 9200 1900
F 0 "DS1" H 9200 2881 50  0000 C CNN
F 1 "WC1602A" H 9200 2790 50  0000 C CNN
F 2 "Display:WC1602A" H 9200 1000 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 9900 1900 50  0001 C CNN
	1    9200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2000 8500 1500
Wire Wire Line
	8500 2100 8550 2100
$Comp
L power:GND #PWR0107
U 1 1 5FF793D7
P 8400 1400
F 0 "#PWR0107" H 8400 1150 50  0001 C CNN
F 1 "GND" V 8405 1272 50  0000 R CNN
F 2 "" H 8400 1400 50  0001 C CNN
F 3 "" H 8400 1400 50  0001 C CNN
	1    8400 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 2100 8550 1300
$Comp
L power:+5V #PWR0108
U 1 1 5FF8083F
P 8950 1050
F 0 "#PWR0108" H 8950 900 50  0001 C CNN
F 1 "+5V" H 8965 1223 50  0000 C CNN
F 2 "" H 8950 1050 50  0001 C CNN
F 3 "" H 8950 1050 50  0001 C CNN
	1    8950 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5FF8283E
P 2950 6350
F 0 "#PWR0110" H 2950 6200 50  0001 C CNN
F 1 "+5V" H 2965 6523 50  0000 C CNN
F 2 "" H 2950 6350 50  0001 C CNN
F 3 "" H 2950 6350 50  0001 C CNN
	1    2950 6350
	1    0    0    -1  
$EndComp
Connection ~ 2950 6350
Wire Wire Line
	8950 1050 8950 1100
$Comp
L Device:R R5
U 1 1 5FF84463
P 9850 1300
F 0 "R5" V 9643 1300 50  0000 C CNN
F 1 "R" V 9734 1300 50  0000 C CNN
F 2 "" V 9780 1300 50  0001 C CNN
F 3 "~" H 9850 1300 50  0001 C CNN
	1    9850 1300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5FF877D5
P 9200 2700
F 0 "#PWR0111" H 9200 2450 50  0001 C CNN
F 1 "GND" H 9205 2527 50  0000 C CNN
F 2 "" H 9200 2700 50  0001 C CNN
F 3 "" H 9200 2700 50  0001 C CNN
	1    9200 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FF8866E
P 10050 2000
F 0 "#PWR0112" H 10050 1750 50  0001 C CNN
F 1 "GND" H 10055 1827 50  0000 C CNN
F 2 "" H 10050 2000 50  0001 C CNN
F 3 "" H 10050 2000 50  0001 C CNN
	1    10050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1300 10100 1300
$Comp
L power:+5V #PWR0113
U 1 1 5FF8B9A8
P 7700 2300
F 0 "#PWR0113" H 7700 2150 50  0001 C CNN
F 1 "+5V" V 7715 2428 50  0000 L CNN
F 2 "" H 7700 2300 50  0001 C CNN
F 3 "" H 7700 2300 50  0001 C CNN
	1    7700 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FF8C815
P 7500 1800
F 0 "R3" H 7570 1846 50  0000 L CNN
F 1 "R" H 7570 1755 50  0000 L CNN
F 2 "" V 7430 1800 50  0001 C CNN
F 3 "~" H 7500 1800 50  0001 C CNN
	1    7500 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FF8D853
P 7150 1800
F 0 "R2" H 7220 1846 50  0000 L CNN
F 1 "R" H 7220 1755 50  0000 L CNN
F 2 "" V 7080 1800 50  0001 C CNN
F 3 "~" H 7150 1800 50  0001 C CNN
	1    7150 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FF8DE9C
P 6800 1800
F 0 "R1" H 6870 1846 50  0000 L CNN
F 1 "R" H 6870 1755 50  0000 L CNN
F 2 "" V 6730 1800 50  0001 C CNN
F 3 "~" H 6800 1800 50  0001 C CNN
	1    6800 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5FF8EA34
P 7150 1650
F 0 "#PWR0114" H 7150 1500 50  0001 C CNN
F 1 "+5V" H 7165 1823 50  0000 C CNN
F 2 "" H 7150 1650 50  0001 C CNN
F 3 "" H 7150 1650 50  0001 C CNN
	1    7150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1650 7150 1650
Connection ~ 7150 1650
Wire Wire Line
	7150 1650 7500 1650
Wire Wire Line
	7850 1650 7850 1800
Wire Wire Line
	7850 1800 8100 1800
Wire Wire Line
	7150 1950 7150 2200
Wire Wire Line
	7150 2200 7700 2200
Wire Wire Line
	6800 1950 6800 2500
Wire Wire Line
	6800 2500 7700 2500
$Comp
L power:GND #PWR0115
U 1 1 5FF9A2BA
P 8100 3100
F 0 "#PWR0115" H 8100 2850 50  0001 C CNN
F 1 "GND" H 8105 2927 50  0000 C CNN
F 2 "" H 8100 3100 50  0001 C CNN
F 3 "" H 8100 3100 50  0001 C CNN
	1    8100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2600 7700 3100
Wire Wire Line
	7700 3100 8100 3100
Connection ~ 8100 3100
Connection ~ 7500 1650
Wire Wire Line
	7500 1650 7850 1650
Wire Wire Line
	7700 2000 7500 2000
Wire Wire Line
	7500 2000 7500 1950
NoConn ~ 8800 2100
NoConn ~ 8800 2000
NoConn ~ 8800 1900
NoConn ~ 8800 1800
NoConn ~ 8500 2700
NoConn ~ 8500 2900
NoConn ~ 8500 2600
Wire Wire Line
	8500 2200 8800 2200
Wire Wire Line
	8500 2300 8800 2300
Wire Wire Line
	8500 2400 8800 2400
Wire Wire Line
	8500 2500 8800 2500
Wire Wire Line
	8500 1500 8800 1500
Wire Wire Line
	8550 1300 8800 1300
Wire Wire Line
	8400 1400 8800 1400
Wire Wire Line
	8950 1100 9200 1100
Wire Wire Line
	9700 1300 9600 1300
Text Label 7500 2000 2    50   ~ 0
PA7
Wire Wire Line
	7500 2000 7350 2000
Connection ~ 7500 2000
Connection ~ 7150 2200
Connection ~ 6800 2500
Text Label 6750 2500 2    50   ~ 0
PA6
Wire Wire Line
	6950 2200 7150 2200
Wire Wire Line
	6600 2500 6800 2500
Text Label 7100 2200 2    50   ~ 0
PA5
Wire Wire Line
	7750 5150 8050 5150
Wire Wire Line
	7750 5050 8050 5050
Wire Wire Line
	7750 4950 8050 4950
Text Label 7900 5150 0    50   ~ 0
PA7
Text Label 7900 5050 0    50   ~ 0
PA6
Text Label 7900 4950 0    50   ~ 0
PA5
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FFF5A29
P 5250 6800
F 0 "#FLG0101" H 5250 6875 50  0001 C CNN
F 1 "PWR_FLAG" H 5250 6973 50  0000 C CNN
F 2 "" H 5250 6800 50  0001 C CNN
F 3 "~" H 5250 6800 50  0001 C CNN
	1    5250 6800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FFF6A4D
P 5750 6800
F 0 "#FLG0102" H 5750 6875 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 6973 50  0000 C CNN
F 2 "" H 5750 6800 50  0001 C CNN
F 3 "~" H 5750 6800 50  0001 C CNN
	1    5750 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0116
U 1 1 5FFF7E21
P 5250 6800
F 0 "#PWR0116" H 5250 6650 50  0001 C CNN
F 1 "+9V" H 5265 6973 50  0000 C CNN
F 2 "" H 5250 6800 50  0001 C CNN
F 3 "" H 5250 6800 50  0001 C CNN
	1    5250 6800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5FFF8D14
P 5750 6800
F 0 "#PWR0117" H 5750 6550 50  0001 C CNN
F 1 "GND" H 5755 6627 50  0000 C CNN
F 2 "" H 5750 6800 50  0001 C CNN
F 3 "" H 5750 6800 50  0001 C CNN
	1    5750 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1600 9600 1600
$Comp
L Device:R R6
U 1 1 60035835
P 10050 1850
F 0 "R6" H 10120 1896 50  0000 L CNN
F 1 "R" H 10120 1805 50  0000 L CNN
F 2 "" V 9980 1850 50  0001 C CNN
F 3 "~" H 10050 1850 50  0001 C CNN
	1    10050 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5FF81D00
P 9700 1600
F 0 "#PWR0109" H 9700 1450 50  0001 C CNN
F 1 "+5V" H 9715 1773 50  0000 C CNN
F 2 "" H 9700 1600 50  0001 C CNN
F 3 "" H 9700 1600 50  0001 C CNN
	1    9700 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60071D63
P 10100 1300
F 0 "#PWR01" H 10100 1050 50  0001 C CNN
F 1 "GND" V 10105 1172 50  0000 R CNN
F 2 "" H 10100 1300 50  0001 C CNN
F 3 "" H 10100 1300 50  0001 C CNN
	1    10100 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 1700 10050 1700
$Comp
L Oscillator:Si5351A-B-GT U5
U 1 1 5FF3C16F
P 9950 5350
F 0 "U5" V 9904 4807 50  0000 R CNN
F 1 "Si5351A-B-GT" V 9995 4807 50  0000 R CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 9950 4550 50  0001 C CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/Si5351-B.pdf" H 9600 5250 50  0001 C CNN
	1    9950 5350
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal_GND24_Small Y2
U 1 1 5FF46625
P 10150 4450
F 0 "Y2" H 10294 4496 50  0000 L CNN
F 1 "Crystal_GND24_Small" H 10294 4405 50  0000 L CNN
F 2 "" H 10150 4450 50  0001 C CNN
F 3 "~" H 10150 4450 50  0001 C CNN
	1    10150 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FF4AB75
P 10150 4550
F 0 "#PWR04" H 10150 4300 50  0001 C CNN
F 1 "GND" H 10155 4377 50  0000 C CNN
F 2 "" H 10150 4550 50  0001 C CNN
F 3 "" H 10150 4550 50  0001 C CNN
	1    10150 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FF4BA07
P 10150 4350
F 0 "#PWR03" H 10150 4100 50  0001 C CNN
F 1 "GND" H 10155 4177 50  0000 C CNN
F 2 "" H 10150 4350 50  0001 C CNN
F 3 "" H 10150 4350 50  0001 C CNN
	1    10150 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	10050 4450 10050 4850
Wire Wire Line
	10250 4450 10250 4850
$Comp
L power:+3.3V #PWR05
U 1 1 5FF5A711
P 8450 5850
F 0 "#PWR05" H 8450 5700 50  0001 C CNN
F 1 "+3.3V" H 8465 6023 50  0000 C CNN
F 2 "" H 8450 5850 50  0001 C CNN
F 3 "" H 8450 5850 50  0001 C CNN
	1    8450 5850
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5FF610B1
P 10700 5300
F 0 "#PWR06" H 10700 5150 50  0001 C CNN
F 1 "+3.3V" H 10715 5473 50  0000 C CNN
F 2 "" H 10700 5300 50  0001 C CNN
F 3 "" H 10700 5300 50  0001 C CNN
	1    10700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5250 10450 5300
Wire Wire Line
	10700 5300 10450 5300
Connection ~ 10450 5300
Wire Wire Line
	10450 5300 10450 5450
$Comp
L power:GND #PWR02
U 1 1 5FF67876
P 9450 5500
F 0 "#PWR02" H 9450 5250 50  0001 C CNN
F 1 "GND" H 9455 5327 50  0000 C CNN
F 2 "" H 9450 5500 50  0001 C CNN
F 3 "" H 9450 5500 50  0001 C CNN
	1    9450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5500 9450 5350
Wire Wire Line
	8750 5250 8750 4850
Wire Wire Line
	8750 4850 9650 4850
Wire Wire Line
	7750 5250 8600 5250
Wire Wire Line
	7750 5350 8200 5350
Wire Wire Line
	8650 5350 8650 4800
Wire Wire Line
	8650 4800 9750 4800
Wire Wire Line
	9750 4800 9750 4850
$Comp
L Device:R R?
U 1 1 5FFE78C6
P 8200 5600
F 0 "R?" H 8270 5646 50  0000 L CNN
F 1 "R" H 8270 5555 50  0000 L CNN
F 2 "" V 8130 5600 50  0001 C CNN
F 3 "~" H 8200 5600 50  0001 C CNN
	1    8200 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FFE89E3
P 8600 5600
F 0 "R?" H 8670 5646 50  0000 L CNN
F 1 "R" H 8670 5555 50  0000 L CNN
F 2 "" V 8530 5600 50  0001 C CNN
F 3 "~" H 8600 5600 50  0001 C CNN
	1    8600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5450 8200 5350
Connection ~ 8200 5350
Wire Wire Line
	8200 5350 8650 5350
Wire Wire Line
	8600 5450 8600 5250
Connection ~ 8600 5250
Wire Wire Line
	8600 5250 8750 5250
Wire Wire Line
	8600 5750 8600 5850
Wire Wire Line
	8600 5850 8450 5850
Wire Wire Line
	8200 5750 8200 5850
Wire Wire Line
	8200 5850 8450 5850
Connection ~ 8450 5850
$Comp
L RF:NE602 U?
U 1 1 600208FD
P 4100 2600
F 0 "U?" H 4100 2975 50  0000 C CNN
F 1 "NE602" H 4100 2884 50  0000 C CNN
F 2 "" H 4050 2850 50  0001 C CNN
F 3 "" H 4050 2850 50  0001 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600219E8
P 10400 6100
F 0 "C?" V 10148 6100 50  0000 C CNN
F 1 "C" V 10239 6100 50  0000 C CNN
F 2 "" H 10438 5950 50  0001 C CNN
F 3 "~" H 10400 6100 50  0001 C CNN
	1    10400 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 6100 10150 6100
Wire Wire Line
	10150 6100 10150 5850
Wire Wire Line
	10550 6100 10950 6100
Text Label 10850 6100 0    50   ~ 0
LO
Text Label 4600 2650 0    50   ~ 0
LO
Wire Wire Line
	4500 2650 4700 2650
$EndSCHEMATC
