EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "pmsm"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_ST_STM32F0:STM32F030F4Px U5
U 1 1 5DCA2C21
P 3100 3050
F 0 "U5" H 3100 2161 50  0000 C CNN
F 1 "STM32F030F4P6" H 3100 2070 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2700 2350 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 3100 3050 50  0001 C CNN
	1    3100 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5DCA8C8B
P 2400 2550
F 0 "C17" V 2148 2550 50  0000 C CNN
F 1 "104" V 2239 2550 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L12.0mm_D6.5mm_P15.00mm_Horizontal" H 2438 2400 50  0001 C CNN
F 3 "~" H 2400 2550 50  0001 C CNN
	1    2400 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5DCA9FCF
P 2400 3000
F 0 "R14" V 2193 3000 50  0000 C CNN
F 1 "10K" V 2284 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 3000 50  0001 C CNN
F 3 "~" H 2400 3000 50  0001 C CNN
	1    2400 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 3000 2550 2750
Wire Wire Line
	2550 2750 2600 2750
Wire Wire Line
	2600 2550 2550 2550
Wire Wire Line
	3100 2350 3100 2250
Wire Wire Line
	3200 2350 3200 2250
Wire Wire Line
	3200 2250 3100 2250
Connection ~ 3100 2250
Wire Wire Line
	3100 2250 3100 2100
Wire Wire Line
	2600 3850 3100 3850
$Comp
L Device:Crystal Y1
U 1 1 5F1D29C8
P 2250 3350
F 0 "Y1" H 2250 3618 50  0000 C CNN
F 1 "8M" H 2250 3527 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 2250 3350 50  0001 C CNN
F 3 "~" H 2250 3350 50  0001 C CNN
	1    2250 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 3200 2600 3200
Wire Wire Line
	2600 3200 2600 3350
Wire Wire Line
	2250 3500 2600 3500
Wire Wire Line
	2600 3500 2600 3450
$Comp
L Display_Character:WC1602A DS1
U 1 1 5F2E3D73
P 14550 8550
F 0 "DS1" H 14550 9531 50  0000 C CNN
F 1 "WC1602A" H 14550 9440 50  0000 C CNN
F 2 "Display:WC1602A" H 14550 7650 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 15250 8550 50  0001 C CNN
	1    14550 8550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U9
U 1 1 5F2E558C
P 12800 8500
F 0 "U9" H 12800 9281 50  0000 C CNN
F 1 "74HC595" H 12800 9190 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12800 8500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 12800 8500 50  0001 C CNN
	1    12800 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14150 8850 14100 8850
Wire Wire Line
	14100 8850 14100 8300
Wire Wire Line
	14100 8300 13200 8300
Wire Wire Line
	14150 8950 14050 8950
Wire Wire Line
	14050 8950 14050 8400
Wire Wire Line
	14050 8400 13200 8400
Wire Wire Line
	14150 9050 14000 9050
Wire Wire Line
	14000 9050 14000 8500
Wire Wire Line
	14000 8500 13200 8500
Wire Wire Line
	14150 9150 13900 9150
Wire Wire Line
	13900 9150 13900 8600
Wire Wire Line
	13900 8600 13200 8600
Wire Wire Line
	13200 8100 13550 8100
Wire Wire Line
	13550 8100 13550 8150
Wire Wire Line
	13550 8150 14150 8150
Wire Wire Line
	13200 8200 13400 8200
Wire Wire Line
	13400 8200 13400 7950
Wire Wire Line
	13400 7950 14150 7950
Wire Wire Line
	14150 8050 13950 8050
Wire Wire Line
	14550 7750 15100 7750
Wire Wire Line
	15100 7750 15100 7700
Wire Wire Line
	15200 8250 14950 8250
$Comp
L Device:R R27
U 1 1 5F400164
P 15100 8500
F 0 "R27" H 15170 8546 50  0000 L CNN
F 1 "1K" H 15170 8455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 15030 8500 50  0001 C CNN
F 3 "~" H 15100 8500 50  0001 C CNN
	1    15100 8500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 5F42374B
P 15550 8100
F 0 "R29" H 15620 8146 50  0000 L CNN
F 1 "1K" H 15620 8055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 15480 8100 50  0001 C CNN
F 3 "~" H 15550 8100 50  0001 C CNN
	1    15550 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14950 7950 15550 7950
Wire Wire Line
	15100 8650 15100 8850
Wire Wire Line
	15100 8350 14950 8350
$Comp
L Device:R R17
U 1 1 5F48F898
P 11950 8100
F 0 "R17" H 12020 8146 50  0000 L CNN
F 1 "10K" H 12020 8055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11880 8100 50  0001 C CNN
F 3 "~" H 11950 8100 50  0001 C CNN
	1    11950 8100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5F4910AF
P 11650 8100
F 0 "R15" H 11720 8146 50  0000 L CNN
F 1 "10K" H 11720 8055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11580 8100 50  0001 C CNN
F 3 "~" H 11650 8100 50  0001 C CNN
	1    11650 8100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F492835
P 11350 8100
F 0 "R12" H 11420 8146 50  0000 L CNN
F 1 "10K" H 11420 8055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11280 8100 50  0001 C CNN
F 3 "~" H 11350 8100 50  0001 C CNN
	1    11350 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 7950 11650 7950
Connection ~ 11650 7950
Wire Wire Line
	11650 7950 11950 7950
Wire Wire Line
	11950 8250 12300 8250
Wire Wire Line
	12300 8250 12300 8100
Wire Wire Line
	12300 8100 12400 8100
Wire Wire Line
	11650 8300 11650 8250
Wire Wire Line
	12400 8600 11350 8600
Wire Wire Line
	11350 8600 11350 8250
Wire Wire Line
	12800 9200 12100 9200
Wire Wire Line
	12100 9200 12100 9300
Wire Wire Line
	12400 8700 12100 8700
Wire Wire Line
	12100 8700 12100 9200
Connection ~ 12100 9200
Wire Wire Line
	15500 9350 15500 8850
Connection ~ 15500 8850
Wire Wire Line
	15500 8850 15550 8850
Wire Wire Line
	12250 7750 12250 8100
Wire Wire Line
	12250 8100 12300 8100
Connection ~ 12300 8100
Wire Wire Line
	14550 9350 15500 9350
Text Label 11400 7150 0    197  ~ 39
LCD
Text Label 1500 2100 0    197  ~ 39
MCU
Text Label 3650 8850 0    197  ~ 39
dian_yuan
$Comp
L power:+12V #PWR?
U 1 1 60830F75
P 1000 9250
F 0 "#PWR?" H 1000 9100 50  0001 C CNN
F 1 "+12V" H 1015 9423 50  0000 C CNN
F 2 "" H 1000 9250 50  0001 C CNN
F 3 "" H 1000 9250 50  0001 C CNN
	1    1000 9250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60837F59
P 10250 8900
F 0 "#PWR?" H 10250 8750 50  0001 C CNN
F 1 "+3.3V" H 10265 9073 50  0000 C CNN
F 2 "" H 10250 8900 50  0001 C CNN
F 3 "" H 10250 8900 50  0001 C CNN
	1    10250 8900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 6083C7BB
P 1800 10750
F 0 "#PWR?" H 1800 10500 50  0001 C CNN
F 1 "GNDREF" H 1805 10577 50  0000 C CNN
F 2 "" H 1800 10750 50  0001 C CNN
F 3 "" H 1800 10750 50  0001 C CNN
	1    1800 10750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6083D183
P 1300 10750
F 0 "#PWR?" H 1300 10500 50  0001 C CNN
F 1 "GND" H 1305 10577 50  0000 C CNN
F 2 "" H 1300 10750 50  0001 C CNN
F 3 "" H 1300 10750 50  0001 C CNN
	1    1300 10750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6083DEC9
P 1300 10750
F 0 "#FLG?" H 1300 10825 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 10923 50  0000 C CNN
F 2 "" H 1300 10750 50  0001 C CNN
F 3 "~" H 1300 10750 50  0001 C CNN
	1    1300 10750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6083EF3B
P 1800 10750
F 0 "#FLG?" H 1800 10825 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 10923 50  0000 C CNN
F 2 "" H 1800 10750 50  0001 C CNN
F 3 "~" H 1800 10750 50  0001 C CNN
	1    1800 10750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6083F6EE
P 850 10750
F 0 "#FLG?" H 850 10825 50  0001 C CNN
F 1 "PWR_FLAG" H 850 10923 50  0000 C CNN
F 2 "" H 850 10750 50  0001 C CNN
F 3 "~" H 850 10750 50  0001 C CNN
	1    850  10750
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 6083FFF0
P 850 10750
F 0 "#PWR?" H 850 10600 50  0001 C CNN
F 1 "+12V" H 865 10923 50  0000 C CNN
F 2 "" H 850 10750 50  0001 C CNN
F 3 "" H 850 10750 50  0001 C CNN
	1    850  10750
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR?
U 1 1 60841D6E
P 5900 8900
F 0 "#PWR?" H 5900 8750 50  0001 C CNN
F 1 "+10V" H 5915 9073 50  0000 C CNN
F 2 "" H 5900 8900 50  0001 C CNN
F 3 "" H 5900 8900 50  0001 C CNN
	1    5900 8900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 60851CE6
P 9150 9800
F 0 "#PWR?" H 9150 9550 50  0001 C CNN
F 1 "GNDREF" H 9155 9627 50  0000 C CNN
F 2 "" H 9150 9800 50  0001 C CNN
F 3 "" H 9150 9800 50  0001 C CNN
	1    9150 9800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60852752
P 2550 10450
F 0 "#PWR?" H 2550 10200 50  0001 C CNN
F 1 "GND" H 2555 10277 50  0000 C CNN
F 2 "" H 2550 10450 50  0001 C CNN
F 3 "" H 2550 10450 50  0001 C CNN
	1    2550 10450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317_TO-220 U?
U 1 1 6086706F
P 2550 9300
F 0 "U?" H 2550 9542 50  0000 C CNN
F 1 "LM317_TO-220" H 2550 9451 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2550 9550 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 2550 9300 50  0001 C CNN
	1    2550 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6086EB5F
P 1300 9600
F 0 "C?" H 1415 9646 50  0000 L CNN
F 1 "104" H 1415 9555 50  0000 L CNN
F 2 "" H 1338 9450 50  0001 C CNN
F 3 "~" H 1300 9600 50  0001 C CNN
	1    1300 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 60872B46
P 1750 9600
F 0 "C?" H 1868 9646 50  0000 L CNN
F 1 "100UF" H 1868 9555 50  0000 L CNN
F 2 "" H 1788 9450 50  0001 C CNN
F 3 "~" H 1750 9600 50  0001 C CNN
	1    1750 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60874984
P 1900 9300
F 0 "R?" V 1693 9300 50  0000 C CNN
F 1 "100" V 1784 9300 50  0000 C CNN
F 2 "" V 1830 9300 50  0001 C CNN
F 3 "~" H 1900 9300 50  0001 C CNN
	1    1900 9300
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 9250 1000 9300
Wire Wire Line
	1000 9300 1300 9300
Wire Wire Line
	1300 9450 1300 9300
Connection ~ 1300 9300
Wire Wire Line
	1300 9300 1750 9300
Wire Wire Line
	1750 9450 1750 9300
$Comp
L Device:R R?
U 1 1 60884E0B
P 2550 9850
F 0 "R?" H 2620 9896 50  0000 L CNN
F 1 "1K" H 2620 9805 50  0000 L CNN
F 2 "" V 2480 9850 50  0001 C CNN
F 3 "~" H 2550 9850 50  0001 C CNN
	1    2550 9850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60885BF6
P 2550 10150
F 0 "R?" H 2620 10196 50  0000 L CNN
F 1 "1K" H 2620 10105 50  0000 L CNN
F 2 "" V 2480 10150 50  0001 C CNN
F 3 "~" H 2550 10150 50  0001 C CNN
	1    2550 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 10450 2550 10350
Wire Wire Line
	2550 9700 2550 9600
$Comp
L Device:R R?
U 1 1 60890EE5
P 2950 9450
F 0 "R?" H 2880 9404 50  0000 R CNN
F 1 "1K" H 2880 9495 50  0000 R CNN
F 2 "" V 2880 9450 50  0001 C CNN
F 3 "~" H 2950 9450 50  0001 C CNN
	1    2950 9450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60892589
P 3300 9450
F 0 "R?" H 3370 9496 50  0000 L CNN
F 1 "1K" H 3370 9405 50  0000 L CNN
F 2 "" V 3230 9450 50  0001 C CNN
F 3 "~" H 3300 9450 50  0001 C CNN
	1    3300 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60893515
P 3650 9450
F 0 "R?" H 3720 9496 50  0000 L CNN
F 1 "1K" H 3720 9405 50  0000 L CNN
F 2 "" V 3580 9450 50  0001 C CNN
F 3 "~" H 3650 9450 50  0001 C CNN
	1    3650 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60893DF8
P 4000 9450
F 0 "R?" H 4070 9496 50  0000 L CNN
F 1 "1K" H 4070 9405 50  0000 L CNN
F 2 "" V 3930 9450 50  0001 C CNN
F 3 "~" H 4000 9450 50  0001 C CNN
	1    4000 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 9300 2950 9300
Connection ~ 2950 9300
Wire Wire Line
	2950 9300 3300 9300
Connection ~ 3300 9300
Wire Wire Line
	3300 9300 3650 9300
Connection ~ 3650 9300
Wire Wire Line
	3650 9300 4000 9300
Wire Wire Line
	4000 9600 3650 9600
Connection ~ 2550 9600
Connection ~ 2950 9600
Wire Wire Line
	2950 9600 2550 9600
Connection ~ 3300 9600
Wire Wire Line
	3300 9600 2950 9600
Connection ~ 3650 9600
Wire Wire Line
	3650 9600 3300 9600
Connection ~ 1750 9300
$Comp
L Device:Q_PNP_BCE Q?
U 1 1 608A9873
P 2150 8850
F 0 "Q?" V 2478 8850 50  0000 C CNN
F 1 "Q_PNP_BCE" V 2387 8850 50  0000 C CNN
F 2 "" H 2350 8950 50  0001 C CNN
F 3 "~" H 2150 8850 50  0001 C CNN
	1    2150 8850
	0    1    -1   0   
$EndComp
Wire Wire Line
	1950 8750 1300 8750
Wire Wire Line
	1300 8750 1300 9300
Wire Wire Line
	2150 9050 2150 9300
Wire Wire Line
	2150 9300 2050 9300
Wire Wire Line
	2250 9300 2150 9300
Connection ~ 2150 9300
Wire Wire Line
	2350 8750 2950 8750
Wire Wire Line
	2950 8750 2950 9300
Wire Wire Line
	1300 9750 1750 9750
Wire Wire Line
	1750 9750 1750 10350
Wire Wire Line
	1750 10350 2550 10350
Connection ~ 1750 9750
Connection ~ 2550 10350
Wire Wire Line
	2550 10350 2550 10300
$Comp
L Device:CP C?
U 1 1 608CB528
P 4450 9450
F 0 "C?" H 4568 9496 50  0000 L CNN
F 1 "100UF" H 4568 9405 50  0000 L CNN
F 2 "" H 4488 9300 50  0001 C CNN
F 3 "~" H 4450 9450 50  0001 C CNN
	1    4450 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 608CC9E9
P 4950 9450
F 0 "C?" H 5065 9496 50  0000 L CNN
F 1 "104" H 5065 9405 50  0000 L CNN
F 2 "" H 4988 9300 50  0001 C CNN
F 3 "~" H 4950 9450 50  0001 C CNN
	1    4950 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 9300 4450 9300
Connection ~ 4000 9300
Connection ~ 4450 9300
Wire Wire Line
	4450 9300 4950 9300
Wire Wire Line
	4950 9600 4450 9600
Wire Wire Line
	4450 9600 4450 10350
Wire Wire Line
	4450 10350 2550 10350
Connection ~ 4450 9600
$Comp
L Device:R R?
U 1 1 609160D3
P 5900 9450
F 0 "R?" H 5970 9496 50  0000 L CNN
F 1 "20K" H 5970 9405 50  0000 L CNN
F 2 "" V 5830 9450 50  0001 C CNN
F 3 "~" H 5900 9450 50  0001 C CNN
	1    5900 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 609176F4
P 5900 9850
F 0 "R?" H 5970 9896 50  0000 L CNN
F 1 "20K" H 5970 9805 50  0000 L CNN
F 2 "" V 5830 9850 50  0001 C CNN
F 3 "~" H 5900 9850 50  0001 C CNN
	1    5900 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 9300 4950 9300
Connection ~ 4950 9300
Wire Wire Line
	5900 9600 5900 9650
Wire Wire Line
	5400 10350 4450 10350
Connection ~ 4450 10350
$Comp
L Amplifier_Operational:NE5532 U?
U 1 1 609293A5
P 6800 9350
F 0 "U?" H 6800 9717 50  0000 C CNN
F 1 "NE5532" H 6800 9626 50  0000 C CNN
F 2 "" H 6800 9350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 6800 9350 50  0001 C CNN
	1    6800 9350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U?
U 2 1 6092E72E
P 6800 9950
F 0 "U?" H 6800 10317 50  0000 C CNN
F 1 "NE5532" H 6800 10226 50  0000 C CNN
F 2 "" H 6800 9950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 6800 9950 50  0001 C CNN
	2    6800 9950
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:NE5532 U?
U 3 1 60932134
P 5500 9800
F 0 "U?" H 5458 9846 50  0000 L CNN
F 1 "NE5532" H 5458 9755 50  0000 L CNN
F 2 "" H 5500 9800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 5500 9800 50  0001 C CNN
	3    5500 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 9300 5400 9500
Wire Wire Line
	5400 10100 5400 10350
Wire Wire Line
	5900 10000 5900 10350
Wire Wire Line
	5900 10350 5400 10350
Connection ~ 5400 10350
Wire Wire Line
	5900 9300 5400 9300
Connection ~ 5400 9300
$Comp
L Device:R R?
U 1 1 60975CF4
P 7250 9350
F 0 "R?" V 7043 9350 50  0000 C CNN
F 1 "100" V 7134 9350 50  0000 C CNN
F 2 "" V 7180 9350 50  0001 C CNN
F 3 "~" H 7250 9350 50  0001 C CNN
	1    7250 9350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60977063
P 7250 9950
F 0 "R?" V 7043 9950 50  0000 C CNN
F 1 "100" V 7134 9950 50  0000 C CNN
F 2 "" V 7180 9950 50  0001 C CNN
F 3 "~" H 7250 9950 50  0001 C CNN
	1    7250 9950
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 9450 6500 9650
Wire Wire Line
	6500 9650 7400 9650
Connection ~ 6500 9650
Wire Wire Line
	6500 9650 6500 9850
Connection ~ 7400 9650
Wire Wire Line
	7400 9650 7400 9950
Wire Wire Line
	6500 9250 6400 9250
Wire Wire Line
	6400 9250 6400 9650
Wire Wire Line
	6400 10050 6500 10050
$Comp
L Device:R R?
U 1 1 609A44D9
P 6250 9650
F 0 "R?" V 6043 9650 50  0000 C CNN
F 1 "1K" V 6134 9650 50  0000 C CNN
F 2 "" V 6180 9650 50  0001 C CNN
F 3 "~" H 6250 9650 50  0001 C CNN
	1    6250 9650
	0    1    1    0   
$EndComp
Connection ~ 6400 9650
Wire Wire Line
	6400 9650 6400 10050
Wire Wire Line
	6100 9650 5900 9650
Connection ~ 5900 9650
Wire Wire Line
	5900 9650 5900 9700
$Comp
L Device:CP C?
U 1 1 609AD4DD
P 7700 9450
F 0 "C?" H 7818 9496 50  0000 L CNN
F 1 "100UF" H 7818 9405 50  0000 L CNN
F 2 "" H 7738 9300 50  0001 C CNN
F 3 "~" H 7700 9450 50  0001 C CNN
	1    7700 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 609AFDB9
P 7700 9850
F 0 "C?" H 7818 9896 50  0000 L CNN
F 1 "100UF" H 7818 9805 50  0000 L CNN
F 2 "" H 7738 9700 50  0001 C CNN
F 3 "~" H 7700 9850 50  0001 C CNN
	1    7700 9850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 609B139E
P 8200 9450
F 0 "C?" H 8315 9496 50  0000 L CNN
F 1 "104" H 8315 9405 50  0000 L CNN
F 2 "" H 8238 9300 50  0001 C CNN
F 3 "~" H 8200 9450 50  0001 C CNN
	1    8200 9450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 609B240C
P 8200 9850
F 0 "C?" H 8315 9896 50  0000 L CNN
F 1 "104" H 8315 9805 50  0000 L CNN
F 2 "" H 8238 9700 50  0001 C CNN
F 3 "~" H 8200 9850 50  0001 C CNN
	1    8200 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 9700 8200 9650
Wire Wire Line
	7700 9300 8200 9300
Wire Wire Line
	7700 10000 8200 10000
Wire Wire Line
	7700 9700 7700 9650
Wire Wire Line
	7400 9350 7400 9650
Wire Wire Line
	7400 9650 7700 9650
Connection ~ 7700 9650
Wire Wire Line
	7700 9650 7700 9600
Wire Wire Line
	7700 9650 8200 9650
Connection ~ 8200 9650
Wire Wire Line
	8200 9650 8200 9600
Wire Wire Line
	7700 9300 7700 8900
Wire Wire Line
	7700 8900 5900 8900
Wire Wire Line
	5900 8900 5900 9300
Connection ~ 7700 9300
Connection ~ 5900 9300
Wire Wire Line
	7700 10000 7700 10550
Wire Wire Line
	7700 10550 5900 10550
Wire Wire Line
	5900 10550 5900 10350
Connection ~ 7700 10000
Connection ~ 5900 10350
$Comp
L Regulator_Linear:LM1117-3.3 U?
U 1 1 60A039FA
P 9150 8900
F 0 "U?" H 9150 9142 50  0000 C CNN
F 1 "LM1117-3.3" H 9150 9051 50  0000 C CNN
F 2 "" H 9150 8900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 9150 8900 50  0001 C CNN
	1    9150 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 8900 7700 8900
Connection ~ 7700 8900
Wire Wire Line
	9150 9200 9150 9650
Wire Wire Line
	9150 9650 8200 9650
$Comp
L Device:C C?
U 1 1 60A164F5
P 9750 9100
F 0 "C?" H 9865 9146 50  0000 L CNN
F 1 "104" H 9865 9055 50  0000 L CNN
F 2 "" H 9788 8950 50  0001 C CNN
F 3 "~" H 9750 9100 50  0001 C CNN
	1    9750 9100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A1742E
P 10250 9100
F 0 "C?" H 10365 9146 50  0000 L CNN
F 1 "104" H 10365 9055 50  0000 L CNN
F 2 "" H 10288 8950 50  0001 C CNN
F 3 "~" H 10250 9100 50  0001 C CNN
	1    10250 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 8900 9750 8900
Wire Wire Line
	10250 8900 10250 8950
Wire Wire Line
	9750 8950 9750 8900
Connection ~ 9750 8900
Wire Wire Line
	9750 8900 10250 8900
Wire Wire Line
	9750 9250 9750 9650
Wire Wire Line
	9750 9650 9150 9650
Connection ~ 9150 9650
Wire Wire Line
	10250 9250 10250 9650
Wire Wire Line
	10250 9650 9750 9650
Connection ~ 9750 9650
Wire Wire Line
	9150 9800 9150 9650
Connection ~ 5900 8900
Connection ~ 10250 8900
$Comp
L power:GNDREF #PWR?
U 1 1 60A809DC
P 2600 3850
F 0 "#PWR?" H 2600 3600 50  0001 C CNN
F 1 "GNDREF" H 2605 3677 50  0000 C CNN
F 2 "" H 2600 3850 50  0001 C CNN
F 3 "" H 2600 3850 50  0001 C CNN
	1    2600 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 60AE2F3D
P 1600 3250
F 0 "#PWR?" H 1600 3000 50  0001 C CNN
F 1 "GNDREF" H 1605 3077 50  0000 C CNN
F 2 "" H 1600 3250 50  0001 C CNN
F 3 "" H 1600 3250 50  0001 C CNN
	1    1600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2550 2250 3000
$Comp
L Device:C C?
U 1 1 60AF3703
P 1950 3150
F 0 "C?" V 1698 3150 50  0000 C CNN
F 1 "22PF" V 1789 3150 50  0000 C CNN
F 2 "" H 1988 3000 50  0001 C CNN
F 3 "~" H 1950 3150 50  0001 C CNN
	1    1950 3150
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60B271F5
P 1950 3600
F 0 "C?" V 1698 3600 50  0000 C CNN
F 1 "22PF" V 1789 3600 50  0000 C CNN
F 2 "" H 1988 3450 50  0001 C CNN
F 3 "~" H 1950 3600 50  0001 C CNN
	1    1950 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 3150 2250 3150
Wire Wire Line
	2250 3150 2250 3200
Connection ~ 2250 3200
Wire Wire Line
	2100 3600 2250 3600
Wire Wire Line
	2250 3600 2250 3500
Connection ~ 2250 3500
Wire Wire Line
	1800 3600 1800 3150
Wire Wire Line
	2250 2550 1800 2550
Wire Wire Line
	1800 2550 1800 3150
Connection ~ 2250 2550
Connection ~ 1800 3150
Wire Wire Line
	1600 3250 1600 3150
Wire Wire Line
	1600 3150 1800 3150
$Comp
L power:+3.3V #PWR?
U 1 1 60B7719B
P 3100 2100
F 0 "#PWR?" H 3100 1950 50  0001 C CNN
F 1 "+3.3V" H 3115 2273 50  0000 C CNN
F 2 "" H 3100 2100 50  0001 C CNN
F 3 "" H 3100 2100 50  0001 C CNN
	1    3100 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 60B80510
P 12100 9300
F 0 "#PWR?" H 12100 9050 50  0001 C CNN
F 1 "GNDREF" H 12105 9127 50  0000 C CNN
F 2 "" H 12100 9300 50  0001 C CNN
F 3 "" H 12100 9300 50  0001 C CNN
	1    12100 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	15100 8850 15500 8850
$Comp
L power:GNDREF #PWR?
U 1 1 60B89070
P 15500 9350
F 0 "#PWR?" H 15500 9100 50  0001 C CNN
F 1 "GNDREF" H 15505 9177 50  0000 C CNN
F 2 "" H 15500 9350 50  0001 C CNN
F 3 "" H 15500 9350 50  0001 C CNN
	1    15500 9350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 60B91583
P 13950 8050
F 0 "#PWR?" H 13950 7800 50  0001 C CNN
F 1 "GNDREF" V 13955 7922 50  0000 R CNN
F 2 "" H 13950 8050 50  0001 C CNN
F 3 "" H 13950 8050 50  0001 C CNN
	1    13950 8050
	0    1    1    0   
$EndComp
$Comp
L power:+10V #PWR?
U 1 1 60B9A6DE
P 11650 7650
F 0 "#PWR?" H 11650 7500 50  0001 C CNN
F 1 "+10V" H 11665 7823 50  0000 C CNN
F 2 "" H 11650 7650 50  0001 C CNN
F 3 "" H 11650 7650 50  0001 C CNN
	1    11650 7650
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR?
U 1 1 60BBB2E6
P 15200 8250
F 0 "#PWR?" H 15200 8100 50  0001 C CNN
F 1 "+10V" H 15215 8423 50  0000 C CNN
F 2 "" H 15200 8250 50  0001 C CNN
F 3 "" H 15200 8250 50  0001 C CNN
	1    15200 8250
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR?
U 1 1 60BCB265
P 12400 8400
F 0 "#PWR?" H 12400 8250 50  0001 C CNN
F 1 "+10V" V 12415 8528 50  0000 L CNN
F 2 "" H 12400 8400 50  0001 C CNN
F 3 "" H 12400 8400 50  0001 C CNN
	1    12400 8400
	0    -1   -1   0   
$EndComp
$Comp
L power:+10V #PWR?
U 1 1 60BE181D
P 15100 7700
F 0 "#PWR?" H 15100 7550 50  0001 C CNN
F 1 "+10V" H 15115 7873 50  0000 C CNN
F 2 "" H 15100 7700 50  0001 C CNN
F 3 "" H 15100 7700 50  0001 C CNN
	1    15100 7700
	1    0    0    -1  
$EndComp
Connection ~ 15500 9350
$Comp
L Device:R R?
U 1 1 60BF045C
P 15550 8400
F 0 "R?" H 15620 8446 50  0000 L CNN
F 1 "1K" H 15620 8355 50  0000 L CNN
F 2 "" V 15480 8400 50  0001 C CNN
F 3 "~" H 15550 8400 50  0001 C CNN
	1    15550 8400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60BF1620
P 15550 8700
F 0 "R?" H 15620 8746 50  0000 L CNN
F 1 "1K" H 15620 8655 50  0000 L CNN
F 2 "" V 15480 8700 50  0001 C CNN
F 3 "~" H 15550 8700 50  0001 C CNN
	1    15550 8700
	1    0    0    -1  
$EndComp
NoConn ~ 3600 3550
NoConn ~ 3600 3650
Wire Wire Line
	2600 3650 2350 3650
Wire Wire Line
	2350 3650 2350 4350
Wire Wire Line
	2350 4350 4400 4350
$Comp
L Amplifier_Operational:TL084 U?
U 1 1 6085689E
P 14450 1900
F 0 "U?" H 14450 2267 50  0000 C CNN
F 1 "TL084" H 14450 2176 50  0000 C CNN
F 2 "" H 14400 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 14500 2100 50  0001 C CNN
	1    14450 1900
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 2 1 60858AC2
P 13200 3000
F 0 "U?" H 13200 3367 50  0000 C CNN
F 1 "TL084" H 13200 3276 50  0000 C CNN
F 2 "" H 13150 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 13250 3200 50  0001 C CNN
	2    13200 3000
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 3 1 6085A24F
P 13200 2150
F 0 "U?" H 13200 2517 50  0000 C CNN
F 1 "TL084" H 13200 2426 50  0000 C CNN
F 2 "" H 13150 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 13250 2350 50  0001 C CNN
	3    13200 2150
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 4 1 6085B8FA
P 14450 3100
F 0 "U?" H 14450 3467 50  0000 C CNN
F 1 "TL084" H 14450 3376 50  0000 C CNN
F 2 "" H 14400 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 14500 3300 50  0001 C CNN
	4    14450 3100
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U?
U 5 1 6085D593
P 12600 1250
F 0 "U?" H 12558 1296 50  0000 L CNN
F 1 "TL084" H 12558 1205 50  0000 L CNN
F 2 "" H 12550 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 12650 1450 50  0001 C CNN
	5    12600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 3100 13500 3350
Wire Wire Line
	13500 3350 12900 3350
Wire Wire Line
	12900 3350 12900 3000
Wire Wire Line
	13500 2250 13500 2450
Wire Wire Line
	13500 2450 12900 2450
Wire Wire Line
	12900 2450 12900 2150
$Comp
L Device:R R?
U 1 1 6089BF34
P 15100 2000
F 0 "R?" V 14893 2000 50  0000 C CNN
F 1 "R" V 14984 2000 50  0000 C CNN
F 2 "" V 15030 2000 50  0001 C CNN
F 3 "~" H 15100 2000 50  0001 C CNN
	1    15100 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6089DF2D
P 15100 1800
F 0 "R?" V 14893 1800 50  0000 C CNN
F 1 "R" V 14984 1800 50  0000 C CNN
F 2 "" V 15030 1800 50  0001 C CNN
F 3 "~" H 15100 1800 50  0001 C CNN
	1    15100 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6089F767
P 15100 3000
F 0 "R?" V 14893 3000 50  0000 C CNN
F 1 "R" V 14984 3000 50  0000 C CNN
F 2 "" V 15030 3000 50  0001 C CNN
F 3 "~" H 15100 3000 50  0001 C CNN
	1    15100 3000
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 608A062F
P 15100 3200
F 0 "R?" V 14893 3200 50  0000 C CNN
F 1 "R" V 14984 3200 50  0000 C CNN
F 2 "" V 15030 3200 50  0001 C CNN
F 3 "~" H 15100 3200 50  0001 C CNN
	1    15100 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 608A17D6
P 14450 1550
F 0 "R?" V 14657 1550 50  0000 C CNN
F 1 "100K" V 14566 1550 50  0000 C CNN
F 2 "" V 14380 1550 50  0001 C CNN
F 3 "~" H 14450 1550 50  0001 C CNN
	1    14450 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 608A2C04
P 14400 3400
F 0 "R?" V 14607 3400 50  0000 C CNN
F 1 "100K" V 14516 3400 50  0000 C CNN
F 2 "" V 14330 3400 50  0001 C CNN
F 3 "~" H 14400 3400 50  0001 C CNN
	1    14400 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 608DBF3A
P 14850 2200
F 0 "R?" H 14920 2246 50  0000 L CNN
F 1 "R" H 14920 2155 50  0000 L CNN
F 2 "" V 14780 2200 50  0001 C CNN
F 3 "~" H 14850 2200 50  0001 C CNN
	1    14850 2200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 608DD0E5
P 14850 2600
F 0 "R?" H 14920 2646 50  0000 L CNN
F 1 "R" H 14920 2555 50  0000 L CNN
F 2 "" V 14780 2600 50  0001 C CNN
F 3 "~" H 14850 2600 50  0001 C CNN
	1    14850 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14950 3000 14850 3000
Wire Wire Line
	14950 3200 14850 3200
Wire Wire Line
	14250 3400 14150 3400
Wire Wire Line
	14150 3400 14150 3100
Wire Wire Line
	14550 3400 14850 3400
Wire Wire Line
	14850 3400 14850 3200
Connection ~ 14850 3200
Wire Wire Line
	14850 3200 14750 3200
Wire Wire Line
	14950 2000 14850 2000
Wire Wire Line
	14850 2050 14850 2000
Connection ~ 14850 2000
Wire Wire Line
	14850 2000 14750 2000
Wire Wire Line
	14950 1800 14850 1800
Wire Wire Line
	14600 1550 14850 1550
Wire Wire Line
	14850 1550 14850 1800
Connection ~ 14850 1800
Wire Wire Line
	14850 1800 14750 1800
Wire Wire Line
	14300 1550 14150 1550
Wire Wire Line
	14150 1550 14150 1900
Wire Wire Line
	14850 2750 14850 3000
Connection ~ 14850 3000
Wire Wire Line
	14850 3000 14750 3000
$Comp
L power:GNDREF #PWR?
U 1 1 609580FE
P 15200 2450
F 0 "#PWR?" H 15200 2200 50  0001 C CNN
F 1 "GNDREF" H 15205 2277 50  0000 C CNN
F 2 "" H 15200 2450 50  0001 C CNN
F 3 "" H 15200 2450 50  0001 C CNN
	1    15200 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14850 2450 14850 2350
Wire Wire Line
	15200 2450 14850 2450
Connection ~ 14850 2450
Wire Wire Line
	13500 2050 14150 2050
Wire Wire Line
	14150 2050 14150 1900
Connection ~ 14150 1900
Wire Wire Line
	13500 2900 14150 2900
Wire Wire Line
	14150 2900 14150 3100
Connection ~ 14150 3100
$Comp
L Device:R R?
U 1 1 60871237
P 12750 2150
F 0 "R?" V 12543 2150 50  0000 C CNN
F 1 "R" V 12634 2150 50  0000 C CNN
F 2 "" V 12680 2150 50  0001 C CNN
F 3 "~" H 12750 2150 50  0001 C CNN
	1    12750 2150
	0    1    1    0   
$EndComp
Connection ~ 12900 2150
$Comp
L Device:R R?
U 1 1 60872C60
P 12750 3000
F 0 "R?" V 12543 3000 50  0000 C CNN
F 1 "R" V 12634 3000 50  0000 C CNN
F 2 "" V 12680 3000 50  0001 C CNN
F 3 "~" H 12750 3000 50  0001 C CNN
	1    12750 3000
	0    1    1    0   
$EndComp
Connection ~ 12900 3000
$Comp
L Device:C C?
U 1 1 608742FE
P 12300 2300
F 0 "C?" H 12415 2346 50  0000 L CNN
F 1 "C" H 12415 2255 50  0000 L CNN
F 2 "" H 12338 2150 50  0001 C CNN
F 3 "~" H 12300 2300 50  0001 C CNN
	1    12300 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 608757F9
P 12350 3150
F 0 "C?" H 12465 3196 50  0000 L CNN
F 1 "C" H 12465 3105 50  0000 L CNN
F 2 "" H 12388 3000 50  0001 C CNN
F 3 "~" H 12350 3150 50  0001 C CNN
	1    12350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12600 2150 12300 2150
Wire Wire Line
	12600 3000 12350 3000
$Comp
L power:GNDREF #PWR?
U 1 1 608A3A9D
P 12350 3300
F 0 "#PWR?" H 12350 3050 50  0001 C CNN
F 1 "GNDREF" H 12355 3127 50  0000 C CNN
F 2 "" H 12350 3300 50  0001 C CNN
F 3 "" H 12350 3300 50  0001 C CNN
	1    12350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 608A4FA2
P 12300 2450
F 0 "#PWR?" H 12300 2200 50  0001 C CNN
F 1 "GNDREF" H 12305 2277 50  0000 C CNN
F 2 "" H 12300 2450 50  0001 C CNN
F 3 "" H 12300 2450 50  0001 C CNN
	1    12300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 8600 10900 8600
Connection ~ 11350 8600
Text Label 10900 8600 0    50   ~ 0
PA6_RCLK
Wire Wire Line
	11650 8300 12050 8300
Wire Wire Line
	12050 8300 12050 8500
Wire Wire Line
	12050 8500 11600 8500
Connection ~ 12050 8300
Wire Wire Line
	12050 8300 12400 8300
Text Label 11600 8500 0    50   ~ 0
PA5_SRCLK
Wire Wire Line
	11650 7650 11650 7950
Wire Wire Line
	12800 7900 13050 7900
Wire Wire Line
	13050 7900 13050 7750
Wire Wire Line
	13050 7750 14550 7750
Connection ~ 14550 7750
Wire Wire Line
	12250 7750 11850 7750
Text Label 11900 7750 0    50   ~ 0
PA7_SER
Text Label 3800 2650 0    50   ~ 0
PA6_RCLK
Text Label 3800 2750 0    50   ~ 0
PA7_SER
Text Label 3800 2550 0    50   ~ 0
PA5_SRCLK
Wire Wire Line
	3600 2550 4250 2550
Wire Wire Line
	3600 2650 4250 2650
Wire Wire Line
	3600 2750 4250 2750
Text Label 11650 2150 0    50   ~ 0
PA3_ADC3_COS
Wire Wire Line
	12300 2150 11650 2150
Connection ~ 12300 2150
Text Label 11650 3000 0    50   ~ 0
PA4_ADC4_SIN
Text Label 3700 2950 0    50   ~ 0
PA4_ADC4_SIN
Text Label 3700 2850 0    50   ~ 0
PA3_ADC3_COS
Wire Wire Line
	12350 3000 11600 3000
Connection ~ 12350 3000
Wire Wire Line
	15250 1800 15750 1800
Wire Wire Line
	15250 2000 15750 2000
Wire Wire Line
	15250 3000 15750 3000
Wire Wire Line
	15250 3200 15750 3200
Text Label 15500 1800 0    50   ~ 0
COS-
Text Label 15500 2000 0    50   ~ 0
COS+
Text Label 15500 3200 0    50   ~ 0
SIN-
Text Label 15500 3000 0    50   ~ 0
SIN+
Text Notes 13000 1150 0    197  ~ 39
chuan_gan_qi
$Comp
L Device:C C?
U 1 1 60B4C184
P 12350 950
F 0 "C?" V 12098 950 50  0000 C CNN
F 1 "C" V 12189 950 50  0000 C CNN
F 2 "" H 12388 800 50  0001 C CNN
F 3 "~" H 12350 950 50  0001 C CNN
	1    12350 950 
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60B4E143
P 12350 1550
F 0 "C?" V 12098 1550 50  0000 C CNN
F 1 "C" V 12189 1550 50  0000 C CNN
F 2 "" H 12388 1400 50  0001 C CNN
F 3 "~" H 12350 1550 50  0001 C CNN
	1    12350 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	12200 950  12050 950 
Wire Wire Line
	12050 950  12050 1300
Wire Wire Line
	12050 1550 12200 1550
$Comp
L power:GNDREF #PWR?
U 1 1 60B5A83C
P 11800 1300
F 0 "#PWR?" H 11800 1050 50  0001 C CNN
F 1 "GNDREF" H 11805 1127 50  0000 C CNN
F 2 "" H 11800 1300 50  0001 C CNN
F 3 "" H 11800 1300 50  0001 C CNN
	1    11800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 1300 12050 1300
Connection ~ 12050 1300
Wire Wire Line
	12050 1300 12050 1550
$Comp
L power:+10V #PWR?
U 1 1 60B66E8A
P 12500 950
F 0 "#PWR?" H 12500 800 50  0001 C CNN
F 1 "+10V" H 12515 1123 50  0000 C CNN
F 2 "" H 12500 950 50  0001 C CNN
F 3 "" H 12500 950 50  0001 C CNN
	1    12500 950 
	1    0    0    -1  
$EndComp
Connection ~ 12500 950 
$Comp
L power:GND #PWR?
U 1 1 60B68818
P 12500 1550
F 0 "#PWR?" H 12500 1300 50  0001 C CNN
F 1 "GND" H 12505 1377 50  0000 C CNN
F 2 "" H 12500 1550 50  0001 C CNN
F 3 "" H 12500 1550 50  0001 C CNN
	1    12500 1550
	1    0    0    -1  
$EndComp
Connection ~ 12500 1550
Wire Wire Line
	3600 2850 4250 2850
Wire Wire Line
	3600 2950 4250 2950
Text Label 4700 3250 0    50   ~ 0
PA10_SPWM_Resolver+
Text Label 4700 3500 0    50   ~ 0
PB1_SPWM_Resolver-
Text Label 4700 3700 0    50   ~ 0
PA10_SPWM_Resolver+
Text Label 4700 3950 0    50   ~ 0
PB1_SPWM_Resolver-
$Comp
L Amplifier_Operational:NE5532 U?
U 1 1 60BC5276
P 9200 4400
F 0 "U?" H 9200 4767 50  0000 C CNN
F 1 "NE5532" H 9200 4676 50  0000 C CNN
F 2 "" H 9200 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 9200 4400 50  0001 C CNN
	1    9200 4400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U?
U 2 1 60BC7288
P 9050 5600
F 0 "U?" H 9050 5967 50  0000 C CNN
F 1 "NE5532" H 9050 5876 50  0000 C CNN
F 2 "" H 9050 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 9050 5600 50  0001 C CNN
	2    9050 5600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U?
U 3 1 60BC91EC
P 11150 4950
F 0 "U?" H 11108 4996 50  0000 L CNN
F 1 "NE5532" H 11108 4905 50  0000 L CNN
F 2 "" H 11150 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 11150 4950 50  0001 C CNN
	3    11150 4950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
