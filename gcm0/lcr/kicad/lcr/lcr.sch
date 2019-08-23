EESchema Schematic File Version 4
LIBS:lcr-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L MCU_ST_STM32F0:STM32F030F4Px U?
U 1 1 5D54DBB7
P 11700 6450
F 0 "U?" H 11700 5561 50  0000 C CNN
F 1 "STM32F030F4Px" H 11700 5470 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 11300 5750 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 11700 6450 50  0001 C CNN
	1    11700 6450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U?
U 1 1 5D54FD07
P 1950 9400
F 0 "U?" H 1950 9642 50  0000 C CNN
F 1 "L7805" H 1950 9551 50  0000 C CNN
F 2 "" H 1975 9250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1950 9350 50  0001 C CNN
	1    1950 9400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7905 U?
U 1 1 5D550EC4
P 1950 10450
F 0 "U?" H 1950 10301 50  0000 C CNN
F 1 "L7905" H 1950 10210 50  0000 C CNN
F 2 "" H 1950 10250 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c9/16/86/41/c7/2b/45/f2/CD00000450.pdf/files/CD00000450.pdf/jcr:content/translations/en.CD00000450.pdf" H 1950 10450 50  0001 C CNN
	1    1950 10450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U?
U 1 1 5D55236C
P 3300 9400
F 0 "U?" H 3300 9642 50  0000 C CNN
F 1 "LM1117-3.3" H 3300 9551 50  0000 C CNN
F 2 "" H 3300 9400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 3300 9400 50  0001 C CNN
	1    3300 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 9700 1950 9950
$Comp
L Device:Battery_Cell BT?
U 1 1 5D5566A7
P 700 9600
F 0 "BT?" H 818 9696 50  0000 L CNN
F 1 "Battery_Cell" H 818 9605 50  0000 L CNN
F 2 "" V 700 9660 50  0001 C CNN
F 3 "~" V 700 9660 50  0001 C CNN
	1    700  9600
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5D5597F9
P 700 10300
F 0 "BT?" H 818 10396 50  0000 L CNN
F 1 "Battery_Cell" H 818 10305 50  0000 L CNN
F 2 "" V 700 10360 50  0001 C CNN
F 3 "~" V 700 10360 50  0001 C CNN
	1    700  10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 9400 700  9400
Wire Wire Line
	1650 10450 700  10450
Wire Wire Line
	700  10100 700  9950
Wire Wire Line
	1950 9950 700  9950
Connection ~ 1950 9950
Wire Wire Line
	1950 9950 1950 10150
Connection ~ 700  9950
Wire Wire Line
	700  9950 700  9700
Wire Wire Line
	3300 9700 3300 9950
Wire Wire Line
	3300 9950 2500 9950
$Comp
L Device:CP C?
U 1 1 5D55D1D5
P 2850 9700
F 0 "C?" H 2968 9746 50  0000 L CNN
F 1 "CP" H 2968 9655 50  0000 L CNN
F 2 "" H 2888 9550 50  0001 C CNN
F 3 "~" H 2850 9700 50  0001 C CNN
	1    2850 9700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5D55EA1D
P 2850 10300
F 0 "C?" H 2968 10346 50  0000 L CNN
F 1 "CP" H 2968 10255 50  0000 L CNN
F 2 "" H 2888 10150 50  0001 C CNN
F 3 "~" H 2850 10300 50  0001 C CNN
	1    2850 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 10450 2500 10450
Wire Wire Line
	2850 10150 2850 9850
Wire Wire Line
	3000 9400 2850 9400
Wire Wire Line
	2850 9550 2850 9400
Connection ~ 2850 9400
$Comp
L Device:D D?
U 1 1 5D5604DB
P 1950 9000
F 0 "D?" H 1950 9216 50  0000 C CNN
F 1 "D" H 1950 9125 50  0000 C CNN
F 2 "" H 1950 9000 50  0001 C CNN
F 3 "~" H 1950 9000 50  0001 C CNN
	1    1950 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5D561A82
P 1950 11000
F 0 "D?" H 1950 10784 50  0000 C CNN
F 1 "D" H 1950 10875 50  0000 C CNN
F 2 "" H 1950 11000 50  0001 C CNN
F 3 "~" H 1950 11000 50  0001 C CNN
	1    1950 11000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 9000 700  9000
Wire Wire Line
	700  9000 700  9400
Connection ~ 700  9400
Wire Wire Line
	1800 11000 700  11000
Wire Wire Line
	700  10400 700  10450
Connection ~ 700  10450
Wire Wire Line
	700  10450 700  11000
Wire Wire Line
	2100 11000 2500 11000
Connection ~ 2500 10450
Wire Wire Line
	2500 10450 2850 10450
$Comp
L Device:D D?
U 1 1 5D565212
P 2500 10200
F 0 "D?" V 2454 10279 50  0000 L CNN
F 1 "D" V 2545 10279 50  0000 L CNN
F 2 "" H 2500 10200 50  0001 C CNN
F 3 "~" H 2500 10200 50  0001 C CNN
	1    2500 10200
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5D56718B
P 2500 9700
F 0 "D?" V 2454 9779 50  0000 L CNN
F 1 "D" V 2545 9779 50  0000 L CNN
F 2 "" H 2500 9700 50  0001 C CNN
F 3 "~" H 2500 9700 50  0001 C CNN
	1    2500 9700
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 9400 2500 9400
Wire Wire Line
	2500 9550 2500 9400
Connection ~ 2500 9400
Wire Wire Line
	2500 9400 2850 9400
Wire Wire Line
	2500 9400 2500 9000
Wire Wire Line
	2100 9000 2500 9000
Wire Wire Line
	2500 10450 2500 10350
Wire Wire Line
	2500 10050 2500 9950
Connection ~ 2500 9950
Wire Wire Line
	2500 9950 1950 9950
Wire Wire Line
	2500 9850 2500 9950
Wire Wire Line
	3600 9400 3650 9400
Wire Wire Line
	3300 9950 3650 9950
Connection ~ 3300 9950
$Comp
L Device:C C?
U 1 1 5D56ACD1
P 3650 9650
F 0 "C?" H 3765 9696 50  0000 L CNN
F 1 "C" H 3765 9605 50  0000 L CNN
F 2 "" H 3688 9500 50  0001 C CNN
F 3 "~" H 3650 9650 50  0001 C CNN
	1    3650 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 9500 3650 9400
Wire Wire Line
	3650 9800 3650 9950
Wire Notes Line
	4450 11150 550  11150
$Comp
L Device:C C?
U 1 1 5D587F20
P 10950 5950
F 0 "C?" V 10698 5950 50  0000 C CNN
F 1 "C" V 10789 5950 50  0000 C CNN
F 2 "" H 10988 5800 50  0001 C CNN
F 3 "~" H 10950 5950 50  0001 C CNN
	1    10950 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D589788
P 10750 6400
F 0 "R?" V 10543 6400 50  0000 C CNN
F 1 "R" V 10634 6400 50  0000 C CNN
F 2 "" V 10680 6400 50  0001 C CNN
F 3 "~" H 10750 6400 50  0001 C CNN
	1    10750 6400
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5D58A74D
P 10300 6800
F 0 "Y?" V 10346 6669 50  0000 R CNN
F 1 "Crystal" V 10255 6669 50  0000 R CNN
F 2 "" H 10300 6800 50  0001 C CNN
F 3 "~" H 10300 6800 50  0001 C CNN
	1    10300 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10300 6950 11200 6950
Wire Wire Line
	11200 6950 11200 6850
Wire Wire Line
	10300 6650 11200 6650
Wire Wire Line
	11200 6650 11200 6750
Wire Wire Line
	10900 6350 11200 6350
Wire Wire Line
	11200 6350 11200 6150
Wire Wire Line
	11100 5950 11200 5950
Wire Wire Line
	10800 5950 10600 5950
Wire Wire Line
	10600 5950 10600 6200
$Comp
L Device:C C?
U 1 1 5D59039B
P 10300 6500
F 0 "C?" H 10415 6546 50  0000 L CNN
F 1 "C" H 10415 6455 50  0000 L CNN
F 2 "" H 10338 6350 50  0001 C CNN
F 3 "~" H 10300 6500 50  0001 C CNN
	1    10300 6500
	1    0    0    -1  
$EndComp
Connection ~ 10300 6650
$Comp
L Device:C C?
U 1 1 5D590DCA
P 10300 7100
F 0 "C?" H 10415 7146 50  0000 L CNN
F 1 "C" H 10415 7055 50  0000 L CNN
F 2 "" H 10338 6950 50  0001 C CNN
F 3 "~" H 10300 7100 50  0001 C CNN
	1    10300 7100
	1    0    0    -1  
$EndComp
Connection ~ 10300 6950
Wire Wire Line
	10300 6350 10300 6200
Wire Wire Line
	10300 6200 10600 6200
Connection ~ 10600 6200
Wire Wire Line
	10600 6200 10600 6400
Wire Wire Line
	10300 7250 10100 7250
Wire Wire Line
	10100 7250 10100 6600
Wire Wire Line
	10100 6200 10300 6200
Connection ~ 10300 6200
$Comp
L power:GND #PWR?
U 1 1 5D593E23
P 9850 6700
F 0 "#PWR?" H 9850 6450 50  0001 C CNN
F 1 "GND" H 9855 6527 50  0000 C CNN
F 2 "" H 9850 6700 50  0001 C CNN
F 3 "" H 9850 6700 50  0001 C CNN
	1    9850 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 6700 9850 6600
Wire Wire Line
	9850 6600 10100 6600
Connection ~ 10100 6600
Wire Wire Line
	10100 6600 10100 6200
Wire Wire Line
	2500 10450 2500 11000
$Comp
L Device:CP C?
U 1 1 5D59ADC4
P 4000 9650
F 0 "C?" H 4118 9696 50  0000 L CNN
F 1 "CP" H 4118 9605 50  0000 L CNN
F 2 "" H 4038 9500 50  0001 C CNN
F 3 "~" H 4000 9650 50  0001 C CNN
	1    4000 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 9800 4000 9950
Wire Wire Line
	4000 9500 4000 9400
Wire Wire Line
	4000 9400 3650 9400
Connection ~ 3650 9400
Wire Wire Line
	4000 9950 3650 9950
Connection ~ 3650 9950
$Comp
L power:+3.3V #PWR?
U 1 1 5D59EE08
P 4000 9400
F 0 "#PWR?" H 4000 9250 50  0001 C CNN
F 1 "+3.3V" H 4015 9573 50  0000 C CNN
F 2 "" H 4000 9400 50  0001 C CNN
F 3 "" H 4000 9400 50  0001 C CNN
	1    4000 9400
	1    0    0    -1  
$EndComp
Connection ~ 4000 9400
$Comp
L power:+5V #PWR?
U 1 1 5D5A0A92
P 2500 9000
F 0 "#PWR?" H 2500 8850 50  0001 C CNN
F 1 "+5V" H 2515 9173 50  0000 C CNN
F 2 "" H 2500 9000 50  0001 C CNN
F 3 "" H 2500 9000 50  0001 C CNN
	1    2500 9000
	1    0    0    -1  
$EndComp
Connection ~ 2500 9000
$Comp
L power:-5V #PWR?
U 1 1 5D5A269B
P 3300 10400
F 0 "#PWR?" H 3300 10500 50  0001 C CNN
F 1 "-5V" H 3315 10573 50  0000 C CNN
F 2 "" H 3300 10400 50  0001 C CNN
F 3 "" H 3300 10400 50  0001 C CNN
	1    3300 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 10400 3300 10450
Wire Wire Line
	3300 10450 2850 10450
Connection ~ 2850 10450
$Comp
L power:GND #PWR?
U 1 1 5D5A6A47
P 4000 9950
F 0 "#PWR?" H 4000 9700 50  0001 C CNN
F 1 "GND" H 4005 9777 50  0000 C CNN
F 2 "" H 4000 9950 50  0001 C CNN
F 3 "" H 4000 9950 50  0001 C CNN
	1    4000 9950
	1    0    0    -1  
$EndComp
Connection ~ 4000 9950
$Comp
L power:+3.3V #PWR?
U 1 1 5D5A8D39
P 11700 5600
F 0 "#PWR?" H 11700 5450 50  0001 C CNN
F 1 "+3.3V" H 11715 5773 50  0000 C CNN
F 2 "" H 11700 5600 50  0001 C CNN
F 3 "" H 11700 5600 50  0001 C CNN
	1    11700 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 5750 11700 5650
Wire Wire Line
	11800 5750 11800 5650
Wire Wire Line
	11800 5650 11700 5650
Connection ~ 11700 5650
Wire Wire Line
	11700 5650 11700 5600
Wire Wire Line
	10900 6400 10900 6350
$Comp
L Amplifier_Operational:TL084 U?
U 1 1 5D5BB7DB
P 6300 4300
F 0 "U?" H 6300 4667 50  0000 C CNN
F 1 "TL084" H 6300 4576 50  0000 C CNN
F 2 "" H 6250 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 6350 4500 50  0001 C CNN
	1    6300 4300
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 2 1 5D5C444A
P 7650 3750
F 0 "U?" H 7650 4117 50  0000 C CNN
F 1 "TL084" H 7650 4026 50  0000 C CNN
F 2 "" H 7600 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 7700 3950 50  0001 C CNN
	2    7650 3750
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 3 1 5D5C55BD
P 9350 3850
F 0 "U?" H 9350 4217 50  0000 C CNN
F 1 "TL084" H 9350 4126 50  0000 C CNN
F 2 "" H 9300 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 9400 4050 50  0001 C CNN
	3    9350 3850
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 4 1 5D5C66C7
P 6300 3000
F 0 "U?" H 6300 3367 50  0000 C CNN
F 1 "TL084" H 6300 3276 50  0000 C CNN
F 2 "" H 6250 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 6350 3200 50  0001 C CNN
	4    6300 3000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 5 1 5D5C7C9A
P 10500 3350
F 0 "U?" H 10458 3396 50  0000 L CNN
F 1 "TL084" H 10458 3305 50  0000 L CNN
F 2 "" H 10450 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 10550 3550 50  0001 C CNN
	5    10500 3350
	1    0    0    -1  
$EndComp
Text Notes 4150 8850 2    157  ~ 31
dian_yuan
Wire Notes Line
	4450 8500 550  8500
Wire Notes Line
	4450 8500 4450 11150
Wire Notes Line
	550  8500 550  11150
$Comp
L Device:R R?
U 1 1 5D5EEE1F
P 6950 3000
F 0 "R?" V 6743 3000 50  0000 C CNN
F 1 "R" V 6834 3000 50  0000 C CNN
F 2 "" V 6880 3000 50  0001 C CNN
F 3 "~" H 6950 3000 50  0001 C CNN
	1    6950 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D5F0832
P 7800 3000
F 0 "R?" V 7593 3000 50  0000 C CNN
F 1 "R" V 7684 3000 50  0000 C CNN
F 2 "" V 7730 3000 50  0001 C CNN
F 3 "~" H 7800 3000 50  0001 C CNN
	1    7800 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D5F8DBA
P 6950 4300
F 0 "R?" V 6743 4300 50  0000 C CNN
F 1 "R" V 6834 4300 50  0000 C CNN
F 2 "" V 6880 4300 50  0001 C CNN
F 3 "~" H 6950 4300 50  0001 C CNN
	1    6950 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D5F9F97
P 7800 4300
F 0 "R?" V 7593 4300 50  0000 C CNN
F 1 "R" V 7684 4300 50  0000 C CNN
F 2 "" V 7730 4300 50  0001 C CNN
F 3 "~" H 7800 4300 50  0001 C CNN
	1    7800 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D5FADB2
P 6250 3450
F 0 "R?" V 6043 3450 50  0000 C CNN
F 1 "R" V 6134 3450 50  0000 C CNN
F 2 "" V 6180 3450 50  0001 C CNN
F 3 "~" H 6250 3450 50  0001 C CNN
	1    6250 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D60073B
P 6250 4000
F 0 "R?" V 6043 4000 50  0000 C CNN
F 1 "R" V 6134 4000 50  0000 C CNN
F 2 "" V 6180 4000 50  0001 C CNN
F 3 "~" H 6250 4000 50  0001 C CNN
	1    6250 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D601C03
P 6000 3700
F 0 "R?" H 6070 3746 50  0000 L CNN
F 1 "R" H 6070 3655 50  0000 L CNN
F 2 "" V 5930 3700 50  0001 C CNN
F 3 "~" H 6000 3700 50  0001 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3450 6000 3450
Wire Wire Line
	6000 3450 6000 3100
Wire Wire Line
	6400 3450 6600 3450
Wire Wire Line
	6600 3450 6600 3000
Wire Wire Line
	6000 4200 6000 4000
Wire Wire Line
	6000 4000 6100 4000
Wire Wire Line
	6400 4000 6600 4000
Wire Wire Line
	6600 4000 6600 4300
Wire Wire Line
	6000 3850 6000 4000
Connection ~ 6000 4000
Wire Wire Line
	6000 3550 6000 3450
Connection ~ 6000 3450
Wire Wire Line
	6800 3000 6600 3000
Connection ~ 6600 3000
Wire Wire Line
	7100 3000 7350 3000
Wire Wire Line
	6800 4300 6600 4300
Connection ~ 6600 4300
Wire Wire Line
	7100 4300 7350 4300
Wire Wire Line
	7350 3850 7350 4300
Connection ~ 7350 4300
Wire Wire Line
	7350 4300 7650 4300
Wire Wire Line
	7350 3650 7350 3000
Connection ~ 7350 3000
Wire Wire Line
	7350 3000 7650 3000
Wire Wire Line
	7950 3750 7950 4000
$Comp
L power:GND #PWR?
U 1 1 5D61A15D
P 8050 3100
F 0 "#PWR?" H 8050 2850 50  0001 C CNN
F 1 "GND" H 8055 2927 50  0000 C CNN
F 2 "" H 8050 3100 50  0001 C CNN
F 3 "" H 8050 3100 50  0001 C CNN
	1    8050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3650 7950 3750
Connection ~ 7950 3750
$Comp
L power:GND #PWR?
U 1 1 5D63F2F0
P 9200 5150
F 0 "#PWR?" H 9200 4900 50  0001 C CNN
F 1 "GND" H 9205 4977 50  0000 C CNN
F 2 "" H 9200 5150 50  0001 C CNN
F 3 "" H 9200 5150 50  0001 C CNN
	1    9200 5150
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:WC1602A DS?
U 1 1 5D6545D1
P 9450 9700
F 0 "DS?" H 9450 10681 50  0000 C CNN
F 1 "WC1602A" H 9450 10590 50  0000 C CNN
F 2 "Display:WC1602A" H 9450 8800 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 10150 9700 50  0001 C CNN
	1    9450 9700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 5D65711B
P 7850 9650
F 0 "U?" H 7850 10431 50  0000 C CNN
F 1 "74HC595" H 7850 10340 50  0000 C CNN
F 2 "" H 7850 9650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7850 9650 50  0001 C CNN
	1    7850 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 9250 8500 9250
Wire Wire Line
	8500 9250 8500 9300
Wire Wire Line
	8500 9300 9050 9300
Wire Wire Line
	8250 9350 8700 9350
Wire Wire Line
	8700 9350 8700 9100
Wire Wire Line
	8700 9100 9050 9100
Wire Wire Line
	8250 9450 8950 9450
Wire Wire Line
	8950 9450 8950 10000
Wire Wire Line
	8950 10000 9050 10000
Wire Wire Line
	8250 9550 8900 9550
Wire Wire Line
	8900 9550 8900 10100
Wire Wire Line
	8900 10100 9050 10100
Wire Wire Line
	8250 9650 8850 9650
Wire Wire Line
	8850 9650 8850 10200
Wire Wire Line
	8850 10200 9050 10200
Wire Wire Line
	8250 9750 8800 9750
Wire Wire Line
	8800 9750 8800 10300
Wire Wire Line
	8800 10300 9050 10300
$Comp
L power:GND #PWR?
U 1 1 5D671AFB
P 9450 10500
F 0 "#PWR?" H 9450 10250 50  0001 C CNN
F 1 "GND" H 9455 10327 50  0000 C CNN
F 2 "" H 9450 10500 50  0001 C CNN
F 3 "" H 9450 10500 50  0001 C CNN
	1    9450 10500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D673157
P 8800 8850
F 0 "#PWR?" H 8800 8600 50  0001 C CNN
F 1 "GND" V 8805 8722 50  0000 R CNN
F 2 "" H 8800 8850 50  0001 C CNN
F 3 "" H 8800 8850 50  0001 C CNN
	1    8800 8850
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 9200 8950 9200
Wire Wire Line
	8950 9200 8950 8850
Wire Wire Line
	8950 8850 8800 8850
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5D67B1CA
P 10200 9100
F 0 "RV?" V 10085 9100 50  0000 C CNN
F 1 "R_POT_TRIM" V 9994 9100 50  0000 C CNN
F 2 "" H 10200 9100 50  0001 C CNN
F 3 "~" H 10200 9100 50  0001 C CNN
	1    10200 9100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9850 9100 10050 9100
Wire Wire Line
	10200 8950 10200 8900
Wire Wire Line
	10200 8900 10350 8900
Wire Wire Line
	10350 8900 10350 9100
$Comp
L power:GND #PWR?
U 1 1 5D68A1E3
P 10550 9000
F 0 "#PWR?" H 10550 8750 50  0001 C CNN
F 1 "GND" H 10555 8827 50  0000 C CNN
F 2 "" H 10550 9000 50  0001 C CNN
F 3 "" H 10550 9000 50  0001 C CNN
	1    10550 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 9000 10550 8900
Wire Wire Line
	10550 8900 10350 8900
Connection ~ 10350 8900
$Comp
L power:+5V #PWR?
U 1 1 5D68F439
P 9150 8800
F 0 "#PWR?" H 9150 8650 50  0001 C CNN
F 1 "+5V" H 9165 8973 50  0000 C CNN
F 2 "" H 9150 8800 50  0001 C CNN
F 3 "" H 9150 8800 50  0001 C CNN
	1    9150 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 8800 9150 8900
Wire Wire Line
	9150 8900 9450 8900
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5D695802
P 6850 9950
F 0 "Q?" H 7041 9996 50  0000 L CNN
F 1 "BC547" H 7041 9905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7050 9875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6850 9950 50  0001 L CNN
	1    6850 9950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5D698A24
P 6050 9650
F 0 "Q?" H 6241 9696 50  0000 L CNN
F 1 "BC547" H 6241 9605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6250 9575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6050 9650 50  0001 L CNN
	1    6050 9650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5D699821
P 6100 9150
F 0 "Q?" H 6291 9196 50  0000 L CNN
F 1 "BC547" H 6291 9105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6300 9075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6100 9150 50  0001 L CNN
	1    6100 9150
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D69A438
P 7150 9100
F 0 "R?" H 7080 9054 50  0000 R CNN
F 1 "R" H 7080 9145 50  0000 R CNN
F 2 "" V 7080 9100 50  0001 C CNN
F 3 "~" H 7150 9100 50  0001 C CNN
	1    7150 9100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D69C587
P 6900 9100
F 0 "R?" H 6970 9146 50  0000 L CNN
F 1 "R" H 6970 9055 50  0000 L CNN
F 2 "" V 6830 9100 50  0001 C CNN
F 3 "~" H 6900 9100 50  0001 C CNN
	1    6900 9100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D69D465
P 6650 9100
F 0 "R?" H 6720 9146 50  0000 L CNN
F 1 "R" H 6720 9055 50  0000 L CNN
F 2 "" V 6580 9100 50  0001 C CNN
F 3 "~" H 6650 9100 50  0001 C CNN
	1    6650 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 9250 7300 9250
Wire Wire Line
	6900 9250 6900 9450
Wire Wire Line
	6900 9450 7450 9450
Wire Wire Line
	6650 9250 6650 9750
Wire Wire Line
	6650 9750 6950 9750
$Comp
L power:GND #PWR?
U 1 1 5D6AB6B0
P 7300 9850
F 0 "#PWR?" H 7300 9600 50  0001 C CNN
F 1 "GND" H 7305 9677 50  0000 C CNN
F 2 "" H 7300 9850 50  0001 C CNN
F 3 "" H 7300 9850 50  0001 C CNN
	1    7300 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 9850 7300 9850
$Comp
L power:+5V #PWR?
U 1 1 5D6B251C
P 7250 9550
F 0 "#PWR?" H 7250 9400 50  0001 C CNN
F 1 "+5V" V 7265 9678 50  0000 L CNN
F 2 "" H 7250 9550 50  0001 C CNN
F 3 "" H 7250 9550 50  0001 C CNN
	1    7250 9550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 9550 7250 9550
$Comp
L power:GND #PWR?
U 1 1 5D6B89EC
P 7850 10350
F 0 "#PWR?" H 7850 10100 50  0001 C CNN
F 1 "GND" H 7855 10177 50  0000 C CNN
F 2 "" H 7850 10350 50  0001 C CNN
F 3 "" H 7850 10350 50  0001 C CNN
	1    7850 10350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D6B9B19
P 7500 8850
F 0 "#PWR?" H 7500 8700 50  0001 C CNN
F 1 "+5V" H 7515 9023 50  0000 C CNN
F 2 "" H 7500 8850 50  0001 C CNN
F 3 "" H 7500 8850 50  0001 C CNN
	1    7500 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 9050 7850 9050
Wire Wire Line
	7500 8850 7500 8950
Wire Wire Line
	6650 8950 6900 8950
Wire Wire Line
	6900 8950 7150 8950
Connection ~ 6900 8950
Wire Wire Line
	7150 8950 7500 8950
Connection ~ 7150 8950
Connection ~ 7500 8950
Wire Wire Line
	7500 8950 7500 9050
Wire Wire Line
	6150 9450 6900 9450
Connection ~ 6900 9450
Wire Wire Line
	7300 9350 7300 9250
Connection ~ 7300 9250
Wire Wire Line
	7300 9250 7450 9250
Text GLabel 5900 9150 0    51   Input ~ 0
SER
Text GLabel 5850 9650 0    51   Input ~ 0
SRCLK
Text GLabel 6650 9950 0    51   Input ~ 0
RCLK
Connection ~ 6950 9750
Wire Wire Line
	6950 9750 7450 9750
Wire Wire Line
	6200 9350 7300 9350
$Comp
L power:GND #PWR?
U 1 1 5D74F70D
P 6950 10150
F 0 "#PWR?" H 6950 9900 50  0001 C CNN
F 1 "GND" H 6955 9977 50  0000 C CNN
F 2 "" H 6950 10150 50  0001 C CNN
F 3 "" H 6950 10150 50  0001 C CNN
	1    6950 10150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D750779
P 6150 9850
F 0 "#PWR?" H 6150 9600 50  0001 C CNN
F 1 "GND" H 6155 9677 50  0000 C CNN
F 2 "" H 6150 9850 50  0001 C CNN
F 3 "" H 6150 9850 50  0001 C CNN
	1    6150 9850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D751518
P 6200 8950
F 0 "#PWR?" H 6200 8700 50  0001 C CNN
F 1 "GND" H 6205 8777 50  0000 C CNN
F 2 "" H 6200 8950 50  0001 C CNN
F 3 "" H 6200 8950 50  0001 C CNN
	1    6200 8950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 9950 8250 9950
Wire Wire Line
	8500 9850 8250 9850
Wire Notes Line
	4600 8500 4600 11150
Wire Notes Line
	4600 11150 10950 11150
Wire Notes Line
	10950 11150 10950 8500
Wire Notes Line
	10950 8500 4600 8500
$Comp
L power:+5V #PWR?
U 1 1 5D81E3AD
P 10400 3050
F 0 "#PWR?" H 10400 2900 50  0001 C CNN
F 1 "+5V" H 10415 3223 50  0000 C CNN
F 2 "" H 10400 3050 50  0001 C CNN
F 3 "" H 10400 3050 50  0001 C CNN
	1    10400 3050
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5D81F8D5
P 10400 3650
F 0 "#PWR?" H 10400 3750 50  0001 C CNN
F 1 "-5V" H 10415 3823 50  0000 C CNN
F 2 "" H 10400 3650 50  0001 C CNN
F 3 "" H 10400 3650 50  0001 C CNN
	1    10400 3650
	-1   0    0    1   
$EndComp
Text Notes 5850 10650 2    118  ~ 24
LCD_1602
$Comp
L Amplifier_Operational:NE5532 U?
U 1 1 5D8BDB9F
P 3300 1800
F 0 "U?" H 3300 2167 50  0000 C CNN
F 1 "NE5532" H 3300 2076 50  0000 C CNN
F 2 "" H 3300 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 3300 1800 50  0001 C CNN
	1    3300 1800
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U?
U 2 1 5D8C1AAD
P 12850 3400
F 0 "U?" H 12850 3767 50  0000 C CNN
F 1 "NE5532" H 12850 3676 50  0000 C CNN
F 2 "" H 12850 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 12850 3400 50  0001 C CNN
	2    12850 3400
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U?
U 3 1 5D8C4A76
P 10850 3350
F 0 "U?" H 10808 3396 50  0000 L CNN
F 1 "NE5532" H 10808 3305 50  0000 L CNN
F 2 "" H 10850 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 10850 3350 50  0001 C CNN
	3    10850 3350
	1    0    0    -1  
$EndComp
Text GLabel 12200 6650 2    51   Input ~ 0
SER
Text GLabel 12200 6550 2    51   Input ~ 0
SRCLK
Text GLabel 12200 6450 2    51   Input ~ 0
RCLK
Text GLabel 12200 5950 2    51   Input ~ 0
ADC
Text GLabel 12200 6850 2    51   Input ~ 0
SPWM
Text GLabel 12200 6950 2    51   Input ~ 0
SWDIO
Text GLabel 12200 7050 2    51   Input ~ 0
SWCLK
$Comp
L power:GND #PWR?
U 1 1 5D8D6A9F
P 11200 7250
F 0 "#PWR?" H 11200 7000 50  0001 C CNN
F 1 "GND" H 11205 7077 50  0000 C CNN
F 2 "" H 11200 7250 50  0001 C CNN
F 3 "" H 11200 7250 50  0001 C CNN
	1    11200 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11200 7250 11700 7250
Wire Wire Line
	9050 3950 8950 3950
$Comp
L Device:R R?
U 1 1 5D5E9FB9
P 8400 3750
F 0 "R?" V 8193 3750 50  0000 C CNN
F 1 "R" V 8284 3750 50  0000 C CNN
F 2 "" V 8330 3750 50  0001 C CNN
F 3 "~" H 8400 3750 50  0001 C CNN
	1    8400 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D5EB6A2
P 9300 3350
F 0 "R?" V 9093 3350 50  0000 C CNN
F 1 "R" V 9184 3350 50  0000 C CNN
F 2 "" V 9230 3350 50  0001 C CNN
F 3 "~" H 9300 3350 50  0001 C CNN
	1    9300 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 3750 7950 3750
Wire Wire Line
	8550 3750 8800 3750
Wire Wire Line
	9150 3350 8800 3350
Wire Wire Line
	8800 3350 8800 3750
Connection ~ 8800 3750
Wire Wire Line
	8800 3750 9050 3750
Wire Wire Line
	9450 3350 9750 3350
Wire Wire Line
	9750 3350 9750 3850
Wire Wire Line
	9750 3850 9650 3850
Wire Wire Line
	8050 3100 8050 3000
Wire Wire Line
	8050 3000 7950 3000
Text GLabel 8150 4800 0    50   Input ~ 0
ADC1
Text GLabel 9900 4800 2    50   Input ~ 0
ADC
$Comp
L Device:R R?
U 1 1 5D61F74C
P 8300 4300
F 0 "R?" H 8370 4346 50  0000 L CNN
F 1 "R" H 8370 4255 50  0000 L CNN
F 2 "" V 8230 4300 50  0001 C CNN
F 3 "~" H 8300 4300 50  0001 C CNN
	1    8300 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D62211B
P 9750 4250
F 0 "R?" H 9820 4296 50  0000 L CNN
F 1 "R" H 9820 4205 50  0000 L CNN
F 2 "" V 9680 4250 50  0001 C CNN
F 3 "~" H 9750 4250 50  0001 C CNN
	1    9750 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D62393B
P 8900 4800
F 0 "C?" V 8648 4800 50  0000 C CNN
F 1 "C" V 8739 4800 50  0000 C CNN
F 2 "" H 8938 4650 50  0001 C CNN
F 3 "~" H 8900 4800 50  0001 C CNN
	1    8900 4800
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D625039
P 9400 4800
F 0 "C?" V 9148 4800 50  0000 C CNN
F 1 "C" V 9239 4800 50  0000 C CNN
F 2 "" H 9438 4650 50  0001 C CNN
F 3 "~" H 9400 4800 50  0001 C CNN
	1    9400 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 3950 8950 4300
Wire Wire Line
	8950 4300 9200 4300
Wire Wire Line
	9200 4300 9200 4800
Wire Wire Line
	9050 4800 9200 4800
Connection ~ 9200 4800
Wire Wire Line
	9200 4800 9200 5150
Wire Wire Line
	9250 4800 9200 4800
Wire Wire Line
	9550 4800 9750 4800
Wire Wire Line
	9750 4800 9750 4400
Wire Wire Line
	9750 4100 9750 3850
Connection ~ 9750 3850
Wire Wire Line
	8750 4800 8300 4800
Wire Wire Line
	8300 4800 8300 4450
Wire Wire Line
	8300 4150 8300 4000
Wire Wire Line
	8300 4000 7950 4000
Connection ~ 7950 4000
Wire Wire Line
	7950 4000 7950 4300
Wire Wire Line
	8150 4800 8300 4800
Connection ~ 8300 4800
Wire Wire Line
	9900 4800 9750 4800
Connection ~ 9750 4800
$Comp
L Amplifier_Operational:NE5532 U?
U 1 1 5D693768
P 3250 4500
F 0 "U?" H 3250 4867 50  0000 C CNN
F 1 "NE5532" H 3250 4776 50  0000 C CNN
F 2 "" H 3250 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 3250 4500 50  0001 C CNN
	1    3250 4500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U?
U 2 1 5D695BDD
P 12100 3400
F 0 "U?" H 12100 3767 50  0000 C CNN
F 1 "NE5532" H 12100 3676 50  0000 C CNN
F 2 "" H 12100 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 12100 3400 50  0001 C CNN
	2    12100 3400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U?
U 3 1 5D697B27
P 11350 3350
F 0 "U?" H 11308 3396 50  0000 L CNN
F 1 "NE5532" H 11308 3305 50  0000 L CNN
F 2 "" H 11350 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 11350 3350 50  0001 C CNN
	3    11350 3350
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:CD4053B U?
U 1 1 5D603FD1
P 4300 3700
F 0 "U?" H 4300 4581 50  0000 C CNN
F 1 "CD4053B" H 4300 4490 50  0000 C CNN
F 2 "" H 4450 2950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 4280 3900 50  0001 C CNN
	1    4300 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D619339
P 2300 4600
F 0 "R?" V 2507 4600 50  0000 C CNN
F 1 "R" V 2416 4600 50  0000 C CNN
F 2 "" V 2230 4600 50  0001 C CNN
F 3 "~" H 2300 4600 50  0001 C CNN
	1    2300 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D61B77D
P 2150 4900
F 0 "R?" H 2220 4946 50  0000 L CNN
F 1 "R" H 2220 4855 50  0000 L CNN
F 2 "" V 2080 4900 50  0001 C CNN
F 3 "~" H 2150 4900 50  0001 C CNN
	1    2150 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D63AA2B
P 2300 4000
F 0 "#PWR?" H 2300 3750 50  0001 C CNN
F 1 "GND" H 2305 3827 50  0000 C CNN
F 2 "" H 2300 4000 50  0001 C CNN
F 3 "" H 2300 4000 50  0001 C CNN
	1    2300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3950 2300 4000
Wire Wire Line
	2150 4750 2150 4600
Wire Wire Line
	3550 5050 3550 4500
Wire Wire Line
	2450 4600 2950 4600
Wire Wire Line
	2150 5050 3550 5050
$Comp
L Device:R R?
U 1 1 5D7AC204
P 1250 3450
F 0 "R?" H 1320 3496 50  0000 L CNN
F 1 "R" H 1320 3405 50  0000 L CNN
F 2 "" V 1180 3450 50  0001 C CNN
F 3 "~" H 1250 3450 50  0001 C CNN
	1    1250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2900 5000 2900
Wire Wire Line
	5000 2900 5000 3300
Wire Wire Line
	5000 3300 4800 3300
Wire Wire Line
	6000 4400 5350 4400
Wire Wire Line
	5350 4400 5350 3900
Wire Wire Line
	5350 3900 4800 3900
Wire Wire Line
	4800 4000 5000 4000
Wire Wire Line
	5000 4000 5000 4100
Wire Wire Line
	5000 4200 4800 4200
Wire Wire Line
	4800 4100 5000 4100
Connection ~ 5000 4100
Wire Wire Line
	5000 4100 5000 4200
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5D81F0BC
P 4950 5000
F 0 "Q?" H 5141 5046 50  0000 L CNN
F 1 "BC547" H 5141 4955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5150 4925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4950 5000 50  0001 L CNN
	1    4950 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4800 5000 4800
Wire Wire Line
	5000 4800 5000 4200
Connection ~ 5000 4200
$Comp
L power:GND #PWR?
U 1 1 5D82C1F6
P 5050 5200
F 0 "#PWR?" H 5050 4950 50  0001 C CNN
F 1 "GND" H 5055 5027 50  0000 C CNN
F 2 "" H 5050 5200 50  0001 C CNN
F 3 "" H 5050 5200 50  0001 C CNN
	1    5050 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D82D7D7
P 5200 4800
F 0 "R?" V 4993 4800 50  0000 C CNN
F 1 "R" V 5084 4800 50  0000 C CNN
F 2 "" V 5130 4800 50  0001 C CNN
F 3 "~" H 5200 4800 50  0001 C CNN
	1    5200 4800
	0    1    1    0   
$EndComp
Connection ~ 5050 4800
$Comp
L power:+5V #PWR?
U 1 1 5D82ED93
P 5450 4800
F 0 "#PWR?" H 5450 4650 50  0001 C CNN
F 1 "+5V" H 5465 4973 50  0000 C CNN
F 2 "" H 5450 4800 50  0001 C CNN
F 3 "" H 5450 4800 50  0001 C CNN
	1    5450 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4800 5350 4800
Text GLabel 4750 5000 0    50   Input ~ 0
shaxiabiqiehuan
Text GLabel 12200 6750 2    50   Input ~ 0
shangxiabiqiehuan
$Comp
L Device:R R?
U 1 1 5D86F93B
P 1250 2750
F 0 "R?" H 1320 2796 50  0000 L CNN
F 1 "R" H 1320 2705 50  0000 L CNN
F 2 "" V 1180 2750 50  0001 C CNN
F 3 "~" H 1250 2750 50  0001 C CNN
	1    1250 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D87A0A8
P 1250 2150
F 0 "R?" H 1320 2196 50  0000 L CNN
F 1 "R" H 1320 2105 50  0000 L CNN
F 2 "" V 1180 2150 50  0001 C CNN
F 3 "~" H 1250 2150 50  0001 C CNN
	1    1250 2150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5D87B330
P 2050 3300
F 0 "D?" V 2004 3379 50  0000 L CNN
F 1 "1N4148" V 2095 3379 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2050 3125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2050 3300 50  0001 C CNN
	1    2050 3300
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5D87C87F
P 2050 3600
F 0 "D?" V 2004 3679 50  0000 L CNN
F 1 "1N4148" V 2095 3679 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2050 3425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2050 3600 50  0001 C CNN
	1    2050 3600
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5D87E736
P 1800 3300
F 0 "D?" V 1846 3221 50  0000 R CNN
F 1 "1N4148" V 1755 3221 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1800 3125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1800 3300 50  0001 C CNN
	1    1800 3300
	0    1    -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5D88F46E
P 1800 3600
F 0 "D?" V 1846 3521 50  0000 R CNN
F 1 "1N4148" V 1755 3521 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1800 3425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1800 3600 50  0001 C CNN
	1    1800 3600
	0    1    -1   0   
$EndComp
Wire Wire Line
	1800 3150 2050 3150
Wire Wire Line
	1800 3750 2050 3750
Wire Wire Line
	1800 3450 2050 3450
Connection ~ 1800 3450
Connection ~ 2050 3450
Wire Wire Line
	2050 3450 2550 3450
Wire Wire Line
	1250 3300 1250 3150
Wire Wire Line
	1250 3150 1800 3150
Connection ~ 1800 3150
Wire Wire Line
	1250 3600 1250 3750
Wire Wire Line
	1250 3750 1800 3750
Connection ~ 1800 3750
Wire Wire Line
	2550 3450 2550 3950
Wire Wire Line
	2550 4400 2950 4400
Wire Wire Line
	2300 3950 2550 3950
Connection ~ 2550 3950
Wire Wire Line
	2550 3950 2550 4400
Wire Wire Line
	2150 4600 2050 4600
Wire Wire Line
	2050 4600 2050 3750
Connection ~ 2150 4600
Connection ~ 2050 3750
Wire Wire Line
	1250 2900 1250 3150
Connection ~ 1250 3150
Wire Wire Line
	1250 2300 1250 2450
Wire Wire Line
	1250 2450 3400 2450
Wire Wire Line
	3400 2450 3400 3600
Wire Wire Line
	3400 3600 3800 3600
Connection ~ 1250 2450
Wire Wire Line
	1250 2450 1250 2600
Wire Wire Line
	3800 3500 3550 3500
Wire Wire Line
	3550 3500 3550 4500
Connection ~ 3550 4500
Wire Wire Line
	2050 3150 3000 3150
Wire Wire Line
	3000 3150 3000 3300
Wire Wire Line
	3000 3300 3800 3300
Connection ~ 2050 3150
Wire Wire Line
	2050 3750 3250 3750
Wire Wire Line
	3250 3750 3250 3200
Wire Wire Line
	3250 3200 3800 3200
Wire Wire Line
	10750 3050 10400 3050
Connection ~ 10400 3050
Wire Wire Line
	11250 3050 10750 3050
Connection ~ 10750 3050
Wire Wire Line
	11250 3650 10750 3650
Wire Wire Line
	10750 3650 10400 3650
Connection ~ 10750 3650
Connection ~ 10400 3650
$Comp
L power:+5V #PWR?
U 1 1 5DB3FCDD
P 4000 4500
F 0 "#PWR?" H 4000 4350 50  0001 C CNN
F 1 "+5V" V 4015 4628 50  0000 L CNN
F 2 "" H 4000 4500 50  0001 C CNN
F 3 "" H 4000 4500 50  0001 C CNN
	1    4000 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 4500 4000 4400
Wire Wire Line
	4000 4400 4200 4400
$Comp
L power:-5V #PWR?
U 1 1 5DB51EA0
P 4400 3000
F 0 "#PWR?" H 4400 3100 50  0001 C CNN
F 1 "-5V" H 4415 3173 50  0000 C CNN
F 2 "" H 4400 3000 50  0001 C CNN
F 3 "" H 4400 3000 50  0001 C CNN
	1    4400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB53652
P 4300 2850
F 0 "#PWR?" H 4300 2600 50  0001 C CNN
F 1 "GND" H 4305 2677 50  0000 C CNN
F 2 "" H 4300 2850 50  0001 C CNN
F 3 "" H 4300 2850 50  0001 C CNN
	1    4300 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 2850 4300 3000
$Comp
L power:GND #PWR?
U 1 1 5DB63D2B
P 4800 3000
F 0 "#PWR?" H 4800 2750 50  0001 C CNN
F 1 "GND" H 4805 2827 50  0000 C CNN
F 2 "" H 4800 3000 50  0001 C CNN
F 3 "" H 4800 3000 50  0001 C CNN
	1    4800 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 3000 4800 3200
$Comp
L Device:CP C?
U 1 1 5DB73CA6
P 2550 1800
F 0 "C?" V 2295 1800 50  0000 C CNN
F 1 "CP" V 2386 1800 50  0000 C CNN
F 2 "" H 2588 1650 50  0001 C CNN
F 3 "~" H 2550 1800 50  0001 C CNN
	1    2550 1800
	0    -1   1    0   
$EndComp
$Comp
L Device:CP C?
U 1 1 5DB75C4D
P 2250 1800
F 0 "C?" V 1995 1800 50  0000 C CNN
F 1 "CP" V 2086 1800 50  0000 C CNN
F 2 "" H 2288 1650 50  0001 C CNN
F 3 "~" H 2250 1800 50  0001 C CNN
	1    2250 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 1800 2950 1800
$Comp
L Device:R R?
U 1 1 5DBA1D7C
P 1950 1950
F 0 "R?" H 2020 1996 50  0000 L CNN
F 1 "R" H 2020 1905 50  0000 L CNN
F 2 "" V 1880 1950 50  0001 C CNN
F 3 "~" H 1950 1950 50  0001 C CNN
	1    1950 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DBA3300
P 1650 1800
F 0 "R?" V 1443 1800 50  0000 C CNN
F 1 "R" V 1534 1800 50  0000 C CNN
F 2 "" V 1580 1800 50  0001 C CNN
F 3 "~" H 1650 1800 50  0001 C CNN
	1    1650 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 1800 1950 1800
Wire Wire Line
	1950 1800 1800 1800
Connection ~ 1950 1800
Wire Wire Line
	3600 1900 3600 2150
Wire Wire Line
	3600 2150 2950 2150
Wire Wire Line
	2950 2150 2950 1800
Connection ~ 2950 1800
Wire Wire Line
	2950 1800 2700 1800
$Comp
L power:GND #PWR?
U 1 1 5DBEFC51
P 1950 2100
F 0 "#PWR?" H 1950 1850 50  0001 C CNN
F 1 "GND" H 1955 1927 50  0000 C CNN
F 2 "" H 1950 2100 50  0001 C CNN
F 3 "" H 1950 2100 50  0001 C CNN
	1    1950 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBF1737
P 3950 2100
F 0 "#PWR?" H 3950 1850 50  0001 C CNN
F 1 "GND" H 3955 1927 50  0000 C CNN
F 2 "" H 3950 2100 50  0001 C CNN
F 3 "" H 3950 2100 50  0001 C CNN
	1    3950 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DBF3A78
P 3950 1950
F 0 "C?" H 4065 1996 50  0000 L CNN
F 1 "C" H 4065 1905 50  0000 L CNN
F 2 "" H 3988 1800 50  0001 C CNN
F 3 "~" H 3950 1950 50  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1700 3950 1700
Wire Wire Line
	3950 1700 3950 1800
$Comp
L Device:R R?
U 1 1 5DC0413C
P 4400 1700
F 0 "R?" V 4193 1700 50  0000 C CNN
F 1 "R" V 4284 1700 50  0000 C CNN
F 2 "" V 4330 1700 50  0001 C CNN
F 3 "~" H 4400 1700 50  0001 C CNN
	1    4400 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 1700 3950 1700
Connection ~ 3950 1700
Wire Wire Line
	1500 1800 1250 1800
Wire Wire Line
	1250 1800 1250 2000
Text GLabel 4700 1700 2    50   Input ~ 0
spwm
Wire Wire Line
	4700 1700 4550 1700
Text GLabel 12200 6050 2    50   Input ~ 0
ADC1
$EndSCHEMATC
