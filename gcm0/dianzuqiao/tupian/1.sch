EESchema Schematic File Version 4
LIBS:1-cache
EELAYER 29 0
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
L MCU_ST_STM32F0:STM32F030F4Px U5
U 1 1 5D31CD41
P 6100 6000
F 0 "U5" H 6100 5111 50  0000 C CNN
F 1 "STM32F030F4P6" H 6100 5020 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5700 5300 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 6100 6000 50  0001 C CNN
	1    6100 6000
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317_TO3 U1
U 1 1 5D32BA91
P 1900 8200
F 0 "U1" H 1900 8442 50  0000 C CNN
F 1 "LM317_TO3" H 1900 8351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-3" H 1900 8400 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 1900 8200 50  0001 C CNN
	1    1900 8200
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LM2576S-ADJ U4
U 1 1 5D32DBBA
P 2100 10350
F 0 "U4" H 2100 10717 50  0000 C CNN
F 1 "LM2576S-ADJ" H 2100 10626 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 2100 10100 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2576.pdf" H 2100 10350 50  0001 C CNN
	1    2100 10350
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U2
U 1 1 5D331EB6
P 3900 8200
F 0 "U2" H 3900 8442 50  0000 C CNN
F 1 "LM7805_TO220" H 3900 8351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3900 8425 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 3900 8150 50  0001 C CNN
	1    3900 8200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U3
U 1 1 5D337BAE
P 5950 8200
F 0 "U3" H 5950 8442 50  0000 C CNN
F 1 "LM1117-3.3" H 5950 8351 50  0000 C CNN
F 2 "" H 5950 8200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5950 8200 50  0001 C CNN
	1    5950 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 8200 2350 8200
Wire Wire Line
	1600 10250 1600 8750
Wire Wire Line
	1600 10450 1600 10650
Wire Wire Line
	1600 10650 2100 10650
$Comp
L Device:R R1
U 1 1 5D346A61
P 2350 8450
F 0 "R1" H 2420 8496 50  0000 L CNN
F 1 "200" H 2420 8405 50  0000 L CNN
F 2 "" V 2280 8450 50  0001 C CNN
F 3 "~" H 2350 8450 50  0001 C CNN
	1    2350 8450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D3481CC
P 2350 8800
F 0 "R2" H 2420 8846 50  0000 L CNN
F 1 "2.2K" H 2420 8755 50  0000 L CNN
F 2 "" V 2280 8800 50  0001 C CNN
F 3 "~" H 2350 8800 50  0001 C CNN
	1    2350 8800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D348C1F
P 3450 9950
F 0 "R6" H 3520 9996 50  0000 L CNN
F 1 "11K" H 3520 9905 50  0000 L CNN
F 2 "" V 3380 9950 50  0001 C CNN
F 3 "~" H 3450 9950 50  0001 C CNN
	1    3450 9950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D3496FE
P 3450 10300
F 0 "R5" H 3520 10346 50  0000 L CNN
F 1 "1K" H 3520 10255 50  0000 L CNN
F 2 "" V 3380 10300 50  0001 C CNN
F 3 "~" H 3450 10300 50  0001 C CNN
	1    3450 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 8300 2350 8200
Connection ~ 2350 8200
Wire Wire Line
	2350 8200 2700 8200
Wire Wire Line
	2350 8650 2350 8600
Wire Wire Line
	1900 8500 1900 8650
Wire Wire Line
	1900 8650 2350 8650
Connection ~ 2350 8650
$Comp
L power:+24V #PWR?
U 1 1 5D34AE74
P 1100 8100
F 0 "#PWR?" H 1100 7950 50  0001 C CNN
F 1 "+24V" H 1115 8273 50  0000 C CNN
F 2 "" H 1100 8100 50  0001 C CNN
F 3 "" H 1100 8100 50  0001 C CNN
	1    1100 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 8100 1100 8750
Wire Wire Line
	1100 8750 1600 8750
Connection ~ 1600 8750
Wire Wire Line
	1600 8750 1600 8650
$Comp
L power:GND #PWR?
U 1 1 5D34F270
P 2350 9150
F 0 "#PWR?" H 2350 8900 50  0001 C CNN
F 1 "GND" H 2355 8977 50  0000 C CNN
F 2 "" H 2350 9150 50  0001 C CNN
F 3 "" H 2350 9150 50  0001 C CNN
	1    2350 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 8950 2350 9050
$Comp
L Device:CP C1
U 1 1 5D350018
P 2700 8600
F 0 "C1" H 2818 8646 50  0000 L CNN
F 1 "100uf" H 2818 8555 50  0000 L CNN
F 2 "" H 2738 8450 50  0001 C CNN
F 3 "~" H 2700 8600 50  0001 C CNN
	1    2700 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 8450 2700 8200
Wire Wire Line
	2700 8750 2700 9050
Wire Wire Line
	2700 9050 2350 9050
Connection ~ 2350 9050
Wire Wire Line
	2350 9050 2350 9150
Connection ~ 2700 8200
Connection ~ 2700 9050
$Comp
L Device:CP C2
U 1 1 5D355CF5
P 4450 8550
F 0 "C2" H 4568 8596 50  0000 L CNN
F 1 "100uf" H 4568 8505 50  0000 L CNN
F 2 "" H 4488 8400 50  0001 C CNN
F 3 "~" H 4450 8550 50  0001 C CNN
	1    4450 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 8200 4450 8200
Wire Wire Line
	4450 8400 4450 8200
Connection ~ 4450 8200
Wire Wire Line
	3900 8500 3900 9050
Wire Wire Line
	2700 9050 2850 9050
Wire Wire Line
	4450 8700 4450 9050
Connection ~ 3900 9050
Wire Wire Line
	3900 9050 4350 9050
Connection ~ 4450 9050
Wire Wire Line
	5950 8500 5950 9050
$Comp
L Device:C C3
U 1 1 5D35BA30
P 6650 8500
F 0 "C3" H 6765 8546 50  0000 L CNN
F 1 "104" H 6765 8455 50  0000 L CNN
F 2 "" H 6688 8350 50  0001 C CNN
F 3 "~" H 6650 8500 50  0001 C CNN
	1    6650 8500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5D35C5A9
P 7200 8500
F 0 "C5" H 7315 8546 50  0000 L CNN
F 1 "104" H 7315 8455 50  0000 L CNN
F 2 "" H 7238 8350 50  0001 C CNN
F 3 "~" H 7200 8500 50  0001 C CNN
	1    7200 8500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5D35D2A5
P 7750 8500
F 0 "C6" H 7865 8546 50  0000 L CNN
F 1 "104" H 7865 8455 50  0000 L CNN
F 2 "" H 7788 8350 50  0001 C CNN
F 3 "~" H 7750 8500 50  0001 C CNN
	1    7750 8500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5D35DF38
P 8350 8500
F 0 "C7" H 8465 8546 50  0000 L CNN
F 1 "104" H 8465 8455 50  0000 L CNN
F 2 "" H 8388 8350 50  0001 C CNN
F 3 "~" H 8350 8500 50  0001 C CNN
	1    8350 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 8200 6650 8200
Wire Wire Line
	6650 8650 6650 9050
Wire Wire Line
	6650 9050 5950 9050
Connection ~ 5950 9050
Wire Wire Line
	7200 8650 7200 9050
Wire Wire Line
	7200 9050 6650 9050
Connection ~ 6650 9050
Wire Wire Line
	7750 8650 7750 9050
Wire Wire Line
	7750 9050 7200 9050
Connection ~ 7200 9050
Wire Wire Line
	8350 8650 8350 9050
Wire Wire Line
	8350 9050 7750 9050
Connection ~ 7750 9050
Wire Wire Line
	8350 8350 8350 8200
Connection ~ 8350 8200
Wire Wire Line
	8350 8200 9000 8200
Wire Wire Line
	7750 8350 7750 8200
Connection ~ 7750 8200
Wire Wire Line
	7750 8200 8350 8200
Wire Wire Line
	7200 8350 7200 8200
Connection ~ 7200 8200
Wire Wire Line
	7200 8200 7750 8200
Wire Wire Line
	6650 8350 6650 8200
Connection ~ 6650 8200
Wire Wire Line
	6650 8200 7200 8200
$Comp
L Device:L L1
U 1 1 5D367F1C
P 2800 9700
F 0 "L1" H 2852 9746 50  0000 L CNN
F 1 "220UH" H 2852 9655 50  0000 L CNN
F 2 "" H 2800 9700 50  0001 C CNN
F 3 "~" H 2800 9700 50  0001 C CNN
	1    2800 9700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5822 D?
U 1 1 5D3697F1
P 3000 10450
F 0 "D?" H 3000 10666 50  0000 C CNN
F 1 "1N5822" H 3000 10575 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 3000 10275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 3000 10450 50  0001 C CNN
	1    3000 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 10450 2800 10450
Wire Wire Line
	3300 10450 3300 10650
Wire Wire Line
	3300 10650 2100 10650
Connection ~ 2100 10650
Wire Wire Line
	3150 10450 3300 10450
Connection ~ 3300 10450
Wire Wire Line
	3300 10450 3450 10450
Wire Wire Line
	2600 10250 2600 10100
Wire Wire Line
	2600 10100 3450 10100
Wire Wire Line
	3450 10150 3450 10100
Connection ~ 3450 10100
Wire Wire Line
	3450 9800 3450 9050
Connection ~ 3450 9050
Wire Wire Line
	3450 9050 3900 9050
Wire Wire Line
	2850 9550 2800 9550
Wire Wire Line
	2850 9550 2850 9050
Connection ~ 2850 9050
Wire Wire Line
	2800 9850 2800 10450
Connection ~ 2800 10450
Wire Wire Line
	2800 10450 2850 10450
$Comp
L Device:CP C9
U 1 1 5D387754
P 4350 9650
F 0 "C9" H 4468 9696 50  0000 L CNN
F 1 "220uf" H 4468 9605 50  0000 L CNN
F 2 "" H 4388 9500 50  0001 C CNN
F 3 "~" H 4350 9650 50  0001 C CNN
	1    4350 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5D388877
P 5000 9650
F 0 "C8" H 5115 9696 50  0000 L CNN
F 1 "104" H 5115 9605 50  0000 L CNN
F 2 "" H 5038 9500 50  0001 C CNN
F 3 "~" H 5000 9650 50  0001 C CNN
	1    5000 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 9500 4350 9050
Connection ~ 4350 9050
Wire Wire Line
	4350 9050 4450 9050
Wire Wire Line
	5000 9500 5000 9050
Connection ~ 5000 9050
Wire Wire Line
	4350 9800 4350 10650
Wire Wire Line
	4350 10650 3300 10650
Connection ~ 3300 10650
Wire Wire Line
	5000 9800 5000 10650
Wire Wire Line
	5000 10650 4350 10650
Connection ~ 4350 10650
$Comp
L Device:LED D3
U 1 1 5D38FFD0
P 5650 10200
F 0 "D3" V 5689 10083 50  0000 R CNN
F 1 "LED" V 5598 10083 50  0000 R CNN
F 2 "" H 5650 10200 50  0001 C CNN
F 3 "~" H 5650 10200 50  0001 C CNN
	1    5650 10200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D392DDE
P 5650 9800
F 0 "R7" H 5720 9846 50  0000 L CNN
F 1 "1K" H 5720 9755 50  0000 L CNN
F 2 "" V 5580 9800 50  0001 C CNN
F 3 "~" H 5650 9800 50  0001 C CNN
	1    5650 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 9650 5650 9050
Connection ~ 5650 9050
Wire Wire Line
	5650 9050 5950 9050
Wire Wire Line
	5650 10350 5650 10650
Wire Wire Line
	5650 10650 5000 10650
Connection ~ 5000 10650
Wire Wire Line
	5650 10050 5650 9950
$Comp
L Device:LED D1
U 1 1 5D3A14E6
P 3450 8850
F 0 "D1" V 3489 8733 50  0000 R CNN
F 1 "LED" V 3398 8733 50  0000 R CNN
F 2 "" H 3450 8850 50  0001 C CNN
F 3 "~" H 3450 8850 50  0001 C CNN
	1    3450 8850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D3A40F3
P 3450 8450
F 0 "R3" H 3520 8496 50  0000 L CNN
F 1 "1K" H 3520 8405 50  0000 L CNN
F 2 "" V 3380 8450 50  0001 C CNN
F 3 "~" H 3450 8450 50  0001 C CNN
	1    3450 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 8300 3450 8200
Wire Wire Line
	2700 8200 2900 8200
Connection ~ 3450 8200
Wire Wire Line
	3450 8200 3600 8200
Wire Wire Line
	3450 8600 3450 8700
Wire Wire Line
	3450 9050 3450 9000
Wire Wire Line
	4450 8200 4750 8200
Wire Wire Line
	5000 9050 5500 9050
$Comp
L Device:LED D2
U 1 1 5D3B8F48
P 5500 8900
F 0 "D2" V 5539 8783 50  0000 R CNN
F 1 "LED" V 5448 8783 50  0000 R CNN
F 2 "" H 5500 8900 50  0001 C CNN
F 3 "~" H 5500 8900 50  0001 C CNN
	1    5500 8900
	0    -1   -1   0   
$EndComp
Connection ~ 5500 9050
Wire Wire Line
	5500 9050 5650 9050
$Comp
L Device:R R4
U 1 1 5D3BA266
P 5500 8600
F 0 "R4" H 5570 8646 50  0000 L CNN
F 1 "1K" H 5570 8555 50  0000 L CNN
F 2 "" V 5430 8600 50  0001 C CNN
F 3 "~" H 5500 8600 50  0001 C CNN
	1    5500 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 8450 5500 8200
Connection ~ 5500 8200
Wire Wire Line
	5500 8200 5650 8200
Wire Wire Line
	5650 10650 6000 10650
Connection ~ 5650 10650
Text GLabel 6000 10650 2    50   Input ~ 0
-15
Wire Wire Line
	4750 8200 4750 7650
Wire Wire Line
	4750 7650 5100 7650
Connection ~ 4750 8200
Wire Wire Line
	2900 8200 2900 7700
Wire Wire Line
	2900 7700 3150 7700
Connection ~ 2900 8200
Text GLabel 3150 7700 2    50   Input ~ 0
+15
Text GLabel 5100 7650 2    50   Input ~ 0
+5
Text GLabel 9000 8200 2    50   Input ~ 0
+3.3
Wire Wire Line
	2900 8200 3450 8200
Wire Wire Line
	2850 9050 3450 9050
Wire Wire Line
	4750 8200 5500 8200
Wire Wire Line
	4450 9050 5000 9050
$Comp
L Display_Character:HDSP-7503 U?
U 1 1 5D42C859
P 11200 1900
F 0 "U?" H 11200 2567 50  0000 C CNN
F 1 "HDSP-7503" H 11200 2476 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 11200 1350 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 10800 2450 50  0001 C CNN
	1    11200 1900
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:HDSP-7503 U?
U 1 1 5D435282
P 12450 1900
F 0 "U?" H 12450 2567 50  0000 C CNN
F 1 "HDSP-7503" H 12450 2476 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 12450 1350 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 12050 2450 50  0001 C CNN
	1    12450 1900
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:HDSP-7503 U?
U 1 1 5D438CA7
P 13750 1850
F 0 "U?" H 13750 2517 50  0000 C CNN
F 1 "HDSP-7503" H 13750 2426 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 13750 1300 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 13350 2400 50  0001 C CNN
	1    13750 1850
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:HDSP-7503 U?
U 1 1 5D43A22D
P 15100 1850
F 0 "U?" H 15100 2517 50  0000 C CNN
F 1 "HDSP-7503" H 15100 2426 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 15100 1300 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 14700 2400 50  0001 C CNN
	1    15100 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U6
U 1 1 5D43B957
P 9550 1400
F 0 "U6" H 9550 2181 50  0000 C CNN
F 1 "74HC595" H 9550 2090 50  0000 C CNN
F 2 "" H 9550 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9550 1400 50  0001 C CNN
	1    9550 1400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U7
U 1 1 5D43CEC7
P 9550 3000
F 0 "U7" H 9550 3781 50  0000 C CNN
F 1 "74HC595" H 9550 3690 50  0000 C CNN
F 2 "" H 9550 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9550 3000 50  0001 C CNN
	1    9550 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C9
U 1 1 5D43E0A2
P 1750 8800
F 0 "C9" H 1868 8846 50  0000 L CNN
F 1 "1000UF" H 1868 8755 50  0000 L CNN
F 2 "" H 1788 8650 50  0001 C CNN
F 3 "~" H 1750 8800 50  0001 C CNN
	1    1750 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 8950 1750 9050
Wire Wire Line
	1750 9050 2350 9050
Wire Wire Line
	1750 8650 1600 8650
Connection ~ 1600 8650
Wire Wire Line
	1600 8650 1600 8200
Wire Wire Line
	9950 2600 10550 2600
Wire Wire Line
	14250 2600 14250 1550
Wire Wire Line
	14250 1550 14800 1550
Wire Wire Line
	9950 2700 10600 2700
Wire Wire Line
	14300 2700 14300 1650
Wire Wire Line
	14300 1650 14800 1650
Wire Wire Line
	9950 2800 10650 2800
Wire Wire Line
	14350 2800 14350 1750
Wire Wire Line
	14350 1750 14800 1750
Wire Wire Line
	9950 2900 10700 2900
Wire Wire Line
	14400 2900 14400 1850
Wire Wire Line
	14400 1850 14800 1850
Wire Wire Line
	9950 3000 10750 3000
Wire Wire Line
	14450 3000 14450 1950
Wire Wire Line
	14450 1950 14800 1950
Wire Wire Line
	9950 3100 10800 3100
Wire Wire Line
	14500 3100 14500 2050
Wire Wire Line
	14500 2050 14800 2050
Wire Wire Line
	9950 3200 10850 3200
Wire Wire Line
	14550 3200 14550 2150
Wire Wire Line
	14550 2150 14800 2150
Wire Wire Line
	14600 3300 14600 2250
Wire Wire Line
	14600 2250 14800 2250
Wire Wire Line
	13450 2250 13450 3300
Connection ~ 13450 3300
Wire Wire Line
	13450 3300 14600 3300
Wire Wire Line
	13450 2150 13400 2150
Wire Wire Line
	13400 2150 13400 3200
Connection ~ 13400 3200
Wire Wire Line
	13400 3200 14550 3200
Wire Wire Line
	13450 2050 13350 2050
Wire Wire Line
	13350 2050 13350 3100
Connection ~ 13350 3100
Wire Wire Line
	13350 3100 14500 3100
Wire Wire Line
	13450 1950 13300 1950
Wire Wire Line
	13300 1950 13300 3000
Connection ~ 13300 3000
Wire Wire Line
	13300 3000 14450 3000
Wire Wire Line
	13450 1850 13250 1850
Wire Wire Line
	13250 1850 13250 2900
Connection ~ 13250 2900
Wire Wire Line
	13250 2900 14400 2900
Wire Wire Line
	13450 1750 13200 1750
Wire Wire Line
	13200 1750 13200 2800
Connection ~ 13200 2800
Wire Wire Line
	13200 2800 14350 2800
Wire Wire Line
	13450 1650 13150 1650
Wire Wire Line
	13150 1650 13150 2700
Connection ~ 13150 2700
Wire Wire Line
	13150 2700 14300 2700
Wire Wire Line
	13450 1550 13100 1550
Wire Wire Line
	13100 1550 13100 2600
Connection ~ 13100 2600
Wire Wire Line
	13100 2600 14250 2600
Wire Wire Line
	12150 2300 12150 3300
Wire Wire Line
	9950 3300 10900 3300
Connection ~ 12150 3300
Wire Wire Line
	12150 3300 13450 3300
Wire Wire Line
	12150 2200 12100 2200
Wire Wire Line
	12100 2200 12100 3200
Connection ~ 12100 3200
Wire Wire Line
	12100 3200 13400 3200
Wire Wire Line
	12150 2100 12050 2100
Wire Wire Line
	12050 2100 12050 3100
Connection ~ 12050 3100
Wire Wire Line
	12050 3100 13350 3100
Wire Wire Line
	12150 2000 12000 2000
Wire Wire Line
	12000 2000 12000 3000
Connection ~ 12000 3000
Wire Wire Line
	12000 3000 13300 3000
Wire Wire Line
	12150 1900 11950 1900
Wire Wire Line
	11950 1900 11950 2900
Connection ~ 11950 2900
Wire Wire Line
	11950 2900 13250 2900
Wire Wire Line
	12150 1800 11900 1800
Wire Wire Line
	11900 1800 11900 2800
Connection ~ 11900 2800
Wire Wire Line
	11900 2800 13200 2800
Wire Wire Line
	12150 1700 11850 1700
Wire Wire Line
	11850 1700 11850 2700
Connection ~ 11850 2700
Wire Wire Line
	11850 2700 13150 2700
Wire Wire Line
	12150 1600 11800 1600
Wire Wire Line
	11800 1600 11800 2600
Connection ~ 11800 2600
Wire Wire Line
	11800 2600 13100 2600
Wire Wire Line
	10900 2300 10900 3300
Connection ~ 10900 3300
Wire Wire Line
	10900 3300 12150 3300
Wire Wire Line
	10900 2200 10850 2200
Wire Wire Line
	10850 2200 10850 3200
Connection ~ 10850 3200
Wire Wire Line
	10850 3200 12100 3200
Wire Wire Line
	10900 2100 10800 2100
Wire Wire Line
	10800 2100 10800 3100
Connection ~ 10800 3100
Wire Wire Line
	10800 3100 12050 3100
Wire Wire Line
	10900 2000 10750 2000
Wire Wire Line
	10750 2000 10750 3000
Connection ~ 10750 3000
Wire Wire Line
	10750 3000 12000 3000
Wire Wire Line
	10900 1900 10700 1900
Wire Wire Line
	10700 1900 10700 2900
Connection ~ 10700 2900
Wire Wire Line
	10700 2900 11950 2900
Wire Wire Line
	10900 1800 10650 1800
Wire Wire Line
	10650 1800 10650 2800
Connection ~ 10650 2800
Wire Wire Line
	10650 2800 11900 2800
Wire Wire Line
	10900 1700 10600 1700
Wire Wire Line
	10600 1700 10600 2700
Connection ~ 10600 2700
Wire Wire Line
	10600 2700 11850 2700
Wire Wire Line
	10900 1600 10550 1600
Wire Wire Line
	10550 1600 10550 2600
Connection ~ 10550 2600
Wire Wire Line
	10550 2600 11800 2600
Wire Wire Line
	14050 2250 14050 2150
Wire Wire Line
	10450 1150 10450 1700
Wire Wire Line
	10450 1700 9950 1700
Wire Wire Line
	15400 1150 15400 2150
Wire Wire Line
	10450 1150 15400 1150
Wire Wire Line
	15400 2250 15400 2150
Connection ~ 15400 2150
Wire Wire Line
	14050 2150 14050 1100
Wire Wire Line
	14050 1100 10400 1100
Wire Wire Line
	10400 1100 10400 1600
Wire Wire Line
	10400 1600 9950 1600
Connection ~ 14050 2150
Wire Wire Line
	9950 1500 10350 1500
Wire Wire Line
	10350 1500 10350 1050
Wire Wire Line
	10350 1050 12750 1050
Wire Wire Line
	12750 1050 12750 2200
Wire Wire Line
	12750 2300 12750 2200
Connection ~ 12750 2200
Wire Wire Line
	11500 2300 11500 2200
Wire Wire Line
	11500 2200 11500 1000
Wire Wire Line
	11500 1000 10300 1000
Wire Wire Line
	10300 1000 10300 1400
Wire Wire Line
	10300 1400 9950 1400
Connection ~ 11500 2200
Wire Wire Line
	9150 3200 9150 3650
Wire Wire Line
	9150 3700 9550 3700
$Comp
L power:GND #PWR?
U 1 1 5D4FAB91
P 9550 3700
F 0 "#PWR?" H 9550 3450 50  0001 C CNN
F 1 "GND" H 9555 3527 50  0000 C CNN
F 2 "" H 9550 3700 50  0001 C CNN
F 3 "" H 9550 3700 50  0001 C CNN
	1    9550 3700
	1    0    0    -1  
$EndComp
Connection ~ 9550 3700
$Comp
L power:GND #PWR?
U 1 1 5D4FC700
P 8950 2100
F 0 "#PWR?" H 8950 1850 50  0001 C CNN
F 1 "GND" H 8955 1927 50  0000 C CNN
F 2 "" H 8950 2100 50  0001 C CNN
F 3 "" H 8950 2100 50  0001 C CNN
	1    8950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2100 9150 2100
Wire Wire Line
	9150 1600 9150 2100
Connection ~ 9150 2100
Wire Wire Line
	9150 2100 8950 2100
Wire Wire Line
	9950 1900 9950 2150
Wire Wire Line
	9950 2150 9150 2150
Wire Wire Line
	9150 2150 9150 2600
Text GLabel 9900 800  2    50   Input ~ 0
+5
Text GLabel 9900 2400 2    50   Input ~ 0
+5
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5D544A60
P 8250 3450
F 0 "Q3" H 8441 3496 50  0000 L CNN
F 1 "BC547" H 8441 3405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8450 3375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8250 3450 50  0001 L CNN
	1    8250 3450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5D55004E
P 7500 3500
F 0 "Q2" H 7691 3546 50  0000 L CNN
F 1 "BC547" H 7691 3455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7700 3425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7500 3500 50  0001 L CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5D551892
P 6750 3500
F 0 "Q1" H 6941 3546 50  0000 L CNN
F 1 "BC547" H 6941 3455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6950 3425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6750 3500 50  0001 L CNN
	1    6750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3650 9150 3650
Connection ~ 9150 3650
Wire Wire Line
	9150 3650 9150 3700
Wire Wire Line
	7600 3700 9150 3700
Connection ~ 9150 3700
Wire Wire Line
	6850 3700 7600 3700
Connection ~ 7600 3700
$Comp
L Device:R R12
U 1 1 5D59994B
P 6850 2250
F 0 "R12" H 6920 2296 50  0000 L CNN
F 1 "1K" H 6920 2205 50  0000 L CNN
F 2 "" V 6780 2250 50  0001 C CNN
F 3 "~" H 6850 2250 50  0001 C CNN
	1    6850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D59B148
P 7600 2250
F 0 "R13" H 7670 2296 50  0000 L CNN
F 1 "1K" H 7670 2205 50  0000 L CNN
F 2 "" V 7530 2250 50  0001 C CNN
F 3 "~" H 7600 2250 50  0001 C CNN
	1    7600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D59C591
P 8350 2250
F 0 "R14" H 8420 2296 50  0000 L CNN
F 1 "1K" H 8420 2205 50  0000 L CNN
F 2 "" V 8280 2250 50  0001 C CNN
F 3 "~" H 8350 2250 50  0001 C CNN
	1    8350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 800  7600 800 
Connection ~ 9550 800 
Wire Wire Line
	9550 800  9900 800 
Wire Wire Line
	7600 2100 7600 800 
Connection ~ 7600 800 
Wire Wire Line
	7600 800  8350 800 
Wire Wire Line
	8350 2100 8350 800 
Connection ~ 8350 800 
Wire Wire Line
	8350 800  8950 800 
Wire Wire Line
	6850 3300 6850 2600
Wire Wire Line
	7650 2400 7600 2400
Wire Wire Line
	8350 3250 8350 3100
Wire Wire Line
	9150 1500 8800 1500
Wire Wire Line
	8800 1500 8800 3100
Wire Wire Line
	8800 3100 9150 3100
Wire Wire Line
	9150 2900 9050 2900
Wire Wire Line
	9050 2900 9050 2400
Wire Wire Line
	9050 2400 9550 2400
Connection ~ 9550 2400
Wire Wire Line
	9550 2400 9900 2400
Wire Wire Line
	9150 1300 8950 1300
Wire Wire Line
	8950 1300 8950 800 
Connection ~ 8950 800 
Wire Wire Line
	8950 800  9550 800 
Wire Wire Line
	9150 1200 8750 1200
Wire Wire Line
	8750 1200 8750 2800
Wire Wire Line
	8750 2800 9150 2800
Wire Wire Line
	6850 2100 6850 800 
Wire Wire Line
	9150 1000 7150 1000
Wire Wire Line
	7150 1000 7150 2600
Wire Wire Line
	7150 2600 6850 2600
Connection ~ 6850 2600
Wire Wire Line
	6850 2600 6850 2400
Wire Wire Line
	8750 2800 7650 2800
Wire Wire Line
	7650 2400 7650 2800
Connection ~ 8750 2800
Connection ~ 7650 2800
Wire Wire Line
	7650 2800 7650 3300
Wire Wire Line
	8800 3100 8350 3100
Connection ~ 8800 3100
Connection ~ 8350 3100
Wire Wire Line
	8350 3100 8350 2400
$Comp
L Device:R R9
U 1 1 5D6C0A75
P 6350 3800
F 0 "R9" H 6280 3754 50  0000 R CNN
F 1 "1K" H 6280 3845 50  0000 R CNN
F 2 "" V 6280 3800 50  0001 C CNN
F 3 "~" H 6350 3800 50  0001 C CNN
	1    6350 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5D6C3D8E
P 7300 4050
F 0 "R10" H 7370 4096 50  0000 L CNN
F 1 "1K" H 7370 4005 50  0000 L CNN
F 2 "" V 7230 4050 50  0001 C CNN
F 3 "~" H 7300 4050 50  0001 C CNN
	1    7300 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D6C476E
P 8050 4000
F 0 "R11" H 8120 4046 50  0000 L CNN
F 1 "1K" H 8120 3955 50  0000 L CNN
F 2 "" V 7980 4000 50  0001 C CNN
F 3 "~" H 8050 4000 50  0001 C CNN
	1    8050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3500 6350 3500
Wire Wire Line
	6350 3500 6350 3650
Wire Wire Line
	6350 4000 6350 4550
Wire Wire Line
	6350 4550 7400 4550
Wire Wire Line
	7400 4550 7400 6100
Wire Wire Line
	7400 6100 6600 6100
Wire Wire Line
	7300 3500 7300 3900
Wire Wire Line
	7300 4200 7300 4500
Wire Wire Line
	7300 4500 7500 4500
Wire Wire Line
	7500 4500 7500 6200
Wire Wire Line
	7500 6200 6600 6200
Wire Wire Line
	6600 6000 8050 6000
Wire Wire Line
	8050 6000 8050 4150
Wire Wire Line
	8050 3850 8050 3450
$Comp
L Device:R R8
U 1 1 5D755FB0
P 5050 5700
F 0 "R8" V 4843 5700 50  0000 C CNN
F 1 "10K" V 4934 5700 50  0000 C CNN
F 2 "" V 4980 5700 50  0001 C CNN
F 3 "~" H 5050 5700 50  0001 C CNN
	1    5050 5700
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5D7571D3
P 5050 5300
F 0 "C11" V 4798 5300 50  0000 C CNN
F 1 "104" V 4889 5300 50  0000 C CNN
F 2 "" H 5088 5150 50  0001 C CNN
F 3 "~" H 5050 5300 50  0001 C CNN
	1    5050 5300
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5D75865F
P 5000 6350
F 0 "Y1" V 4954 6481 50  0000 L CNN
F 1 "8M" V 5045 6481 50  0000 L CNN
F 2 "" H 5000 6350 50  0001 C CNN
F 3 "~" H 5000 6350 50  0001 C CNN
	1    5000 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 6200 5050 6200
Wire Wire Line
	5600 6200 5600 6300
Wire Wire Line
	5600 6500 5600 6400
$Comp
L Device:C C10
U 1 1 5D792E60
P 4750 6100
F 0 "C10" V 4498 6100 50  0000 C CNN
F 1 "22" V 4589 6100 50  0000 C CNN
F 2 "" H 4788 5950 50  0001 C CNN
F 3 "~" H 4750 6100 50  0001 C CNN
	1    4750 6100
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5D794C55
P 4750 6650
F 0 "C9" V 4498 6650 50  0000 C CNN
F 1 "22" V 4589 6650 50  0000 C CNN
F 2 "" H 4788 6500 50  0001 C CNN
F 3 "~" H 4750 6650 50  0001 C CNN
	1    4750 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 6650 5050 6650
Wire Wire Line
	5050 6650 5050 6500
Wire Wire Line
	5000 6500 5050 6500
Connection ~ 5050 6500
Wire Wire Line
	5050 6500 5600 6500
Wire Wire Line
	4900 6100 5050 6100
Wire Wire Line
	5050 6100 5050 6200
Connection ~ 5050 6200
Wire Wire Line
	5050 6200 5600 6200
Wire Wire Line
	4600 6100 4600 6400
$Comp
L power:GND #PWR?
U 1 1 5D7E4F95
P 4350 6450
F 0 "#PWR?" H 4350 6200 50  0001 C CNN
F 1 "GND" H 4355 6277 50  0000 C CNN
F 2 "" H 4350 6450 50  0001 C CNN
F 3 "" H 4350 6450 50  0001 C CNN
	1    4350 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6450 4350 6400
Wire Wire Line
	4350 6400 4600 6400
Connection ~ 4600 6400
Wire Wire Line
	4600 6400 4600 6650
Wire Wire Line
	5200 5700 5600 5700
Wire Wire Line
	5200 5300 5600 5300
Wire Wire Line
	5600 5300 5600 5500
Wire Wire Line
	4900 5300 4600 5300
Wire Wire Line
	4600 5300 4600 5700
Connection ~ 4600 6100
Wire Wire Line
	4900 5700 4600 5700
Connection ~ 4600 5700
Wire Wire Line
	4600 5700 4600 6100
$Comp
L Amplifier_Operational:NE5532 U8
U 1 1 5D867AFF
P 13650 5100
F 0 "U8" H 13650 5467 50  0000 C CNN
F 1 "NE5532" H 13650 5376 50  0000 C CNN
F 2 "" H 13650 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 13650 5100 50  0001 C CNN
	1    13650 5100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U8
U 3 1 5D87FBBF
P 12950 4150
F 0 "U8" H 12908 4196 50  0000 L CNN
F 1 "NE5532" H 12908 4105 50  0000 L CNN
F 2 "" H 12950 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 12950 4150 50  0001 C CNN
	3    12950 4150
	1    0    0    -1  
$EndComp
Text GLabel 12600 3850 0    50   Input ~ 0
+15
Text GLabel 12600 4450 0    50   Input ~ 0
-15
Wire Wire Line
	12850 4450 12750 4450
Wire Wire Line
	12850 3850 12600 3850
$Comp
L Device:D_Zener D1
U 1 1 5D8C8FC6
P 14050 4350
F 0 "D1" V 14004 4429 50  0000 L CNN
F 1 "1N5231" V 14095 4429 50  0000 L CNN
F 2 "" H 14050 4350 50  0001 C CNN
F 3 "~" H 14050 4350 50  0001 C CNN
	1    14050 4350
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5D8CA3EB
P 14050 3950
F 0 "D2" V 14004 4029 50  0000 L CNN
F 1 "1N5231" V 14095 4029 50  0000 L CNN
F 2 "" H 14050 3950 50  0001 C CNN
F 3 "~" H 14050 3950 50  0001 C CNN
	1    14050 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5D976EA1
P 13600 3800
F 0 "R15" V 13393 3800 50  0000 C CNN
F 1 "510" V 13484 3800 50  0000 C CNN
F 2 "" V 13530 3800 50  0001 C CNN
F 3 "~" H 13600 3800 50  0001 C CNN
	1    13600 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	13450 3800 12950 3800
Wire Wire Line
	12850 3800 12850 3850
Connection ~ 12850 3850
Wire Wire Line
	13750 3800 13850 3800
$Comp
L power:GND #PWR?
U 1 1 5D9D34EE
P 14400 4550
F 0 "#PWR?" H 14400 4300 50  0001 C CNN
F 1 "GND" H 14405 4377 50  0000 C CNN
F 2 "" H 14400 4550 50  0001 C CNN
F 3 "" H 14400 4550 50  0001 C CNN
	1    14400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14050 4500 14050 4550
Wire Wire Line
	14050 4100 14050 4200
$Comp
L Device:CP C12
U 1 1 5DA04780
P 14500 4100
F 0 "C12" H 14618 4146 50  0000 L CNN
F 1 "100UF" H 14618 4055 50  0000 L CNN
F 2 "" H 14538 3950 50  0001 C CNN
F 3 "~" H 14500 4100 50  0001 C CNN
	1    14500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14500 4250 14500 4550
Wire Wire Line
	14050 4550 14400 4550
Connection ~ 14400 4550
Wire Wire Line
	14400 4550 14500 4550
Wire Wire Line
	14500 3950 14500 3750
Wire Wire Line
	14500 3750 14000 3750
Wire Wire Line
	14000 3750 14000 3800
Connection ~ 14000 3800
Wire Wire Line
	14000 3800 14050 3800
Wire Wire Line
	13350 5000 13350 4350
Wire Wire Line
	13350 4350 13850 4350
Wire Wire Line
	13850 4350 13850 3800
Connection ~ 13850 3800
Wire Wire Line
	13850 3800 14000 3800
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 5DA69FBC
P 14800 5100
F 0 "Q4" H 14991 5146 50  0000 L CNN
F 1 "BC547" H 14991 5055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 15000 5025 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 14800 5100 50  0001 L CNN
	1    14800 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5DA6CEF7
P 14300 5100
F 0 "R16" V 14093 5100 50  0000 C CNN
F 1 "1K" V 14184 5100 50  0000 C CNN
F 2 "" V 14230 5100 50  0001 C CNN
F 3 "~" H 14300 5100 50  0001 C CNN
	1    14300 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	13950 5100 14150 5100
Wire Wire Line
	14450 5100 14600 5100
Wire Wire Line
	14900 4900 14900 4250
Wire Wire Line
	14900 4250 15200 4250
Text GLabel 15200 4250 2    50   Input ~ 0
+15
$Comp
L Device:R R17
U 1 1 5DABBEE4
P 14550 6000
F 0 "R17" H 14620 6046 50  0000 L CNN
F 1 "1K" H 14620 5955 50  0000 L CNN
F 2 "" V 14480 6000 50  0001 C CNN
F 3 "~" H 14550 6000 50  0001 C CNN
	1    14550 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5DABDDC6
P 15200 6000
F 0 "R18" H 15270 6046 50  0000 L CNN
F 1 "1K" H 15270 5955 50  0000 L CNN
F 2 "" V 15130 6000 50  0001 C CNN
F 3 "~" H 15200 6000 50  0001 C CNN
	1    15200 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5DABEA01
P 14550 6700
F 0 "R19" H 14620 6746 50  0000 L CNN
F 1 "1K" H 14620 6655 50  0000 L CNN
F 2 "" V 14480 6700 50  0001 C CNN
F 3 "~" H 14550 6700 50  0001 C CNN
	1    14550 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5DABF908
P 15200 6700
F 0 "R20" H 15270 6746 50  0000 L CNN
F 1 "1K" H 15270 6655 50  0000 L CNN
F 2 "" V 15130 6700 50  0001 C CNN
F 3 "~" H 15200 6700 50  0001 C CNN
	1    15200 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	14900 5300 14900 5450
Wire Wire Line
	14550 5850 14900 5850
Connection ~ 14900 5850
Wire Wire Line
	14900 5850 15200 5850
Wire Wire Line
	13350 5200 13350 5450
Wire Wire Line
	13350 5450 14900 5450
Connection ~ 14900 5450
Wire Wire Line
	14900 5450 14900 5850
Wire Wire Line
	14550 6150 14550 6350
Wire Wire Line
	15200 6150 15200 6350
Wire Wire Line
	15200 6850 14900 6850
$Comp
L power:GND #PWR?
U 1 1 5DB5F2C6
P 14900 6850
F 0 "#PWR?" H 14900 6600 50  0001 C CNN
F 1 "GND" H 14905 6677 50  0000 C CNN
F 2 "" H 14900 6850 50  0001 C CNN
F 3 "" H 14900 6850 50  0001 C CNN
	1    14900 6850
	1    0    0    -1  
$EndComp
Connection ~ 14900 6850
Wire Wire Line
	14900 6850 14550 6850
$Comp
L Amplifier_Operational:TL084 U9
U 1 1 5DB92CFC
P 12650 6250
F 0 "U9" H 12650 6617 50  0000 C CNN
F 1 "TL084" H 12650 6526 50  0000 C CNN
F 2 "" H 12600 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 12700 6450 50  0001 C CNN
	1    12650 6250
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U9
U 2 1 5DB9F053
P 10550 5750
F 0 "U9" H 10550 5383 50  0000 C CNN
F 1 "TL084" H 10550 5474 50  0000 C CNN
F 2 "" H 10500 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 10600 5950 50  0001 C CNN
	2    10550 5750
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL084 U9
U 3 1 5DBA31C2
P 11400 7050
F 0 "U9" H 11400 7417 50  0000 C CNN
F 1 "TL084" H 11400 7326 50  0000 C CNN
F 2 "" H 11350 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 11450 7250 50  0001 C CNN
	3    11400 7050
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U9
U 4 1 5DBA782C
P 12650 8200
F 0 "U9" H 12650 7833 50  0000 C CNN
F 1 "TL084" H 12650 7924 50  0000 C CNN
F 2 "" H 12600 8300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 12700 8400 50  0001 C CNN
	4    12650 8200
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL084 U9
U 5 1 5DBFC1B8
P 11500 4150
F 0 "U9" H 11458 4196 50  0000 L CNN
F 1 "TL084" H 11458 4105 50  0000 L CNN
F 2 "" H 11450 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 11550 4350 50  0001 C CNN
	5    11500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 3850 12050 3850
Wire Wire Line
	12050 3850 12050 3650
Wire Wire Line
	12050 3650 12950 3650
Wire Wire Line
	12950 3650 12950 3800
Connection ~ 12950 3800
Wire Wire Line
	12950 3800 12850 3800
Wire Wire Line
	11400 4450 11400 4700
Wire Wire Line
	11400 4700 12750 4700
Wire Wire Line
	12750 4700 12750 4450
Connection ~ 12750 4450
Wire Wire Line
	12750 4450 12600 4450
$Comp
L Device:R R23
U 1 1 5DC42225
P 12750 6950
F 0 "R23" V 12543 6950 50  0000 C CNN
F 1 "10K" V 12634 6950 50  0000 C CNN
F 2 "" V 12680 6950 50  0001 C CNN
F 3 "~" H 12750 6950 50  0001 C CNN
	1    12750 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5DC60008
P 12900 7400
F 0 "R22" H 12970 7446 50  0000 L CNN
F 1 "200" H 12970 7355 50  0000 L CNN
F 2 "" V 12830 7400 50  0001 C CNN
F 3 "~" H 12900 7400 50  0001 C CNN
	1    12900 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5DC616DF
P 12600 7650
F 0 "R24" V 12393 7650 50  0000 C CNN
F 1 "10K" V 12484 7650 50  0000 C CNN
F 2 "" V 12530 7650 50  0001 C CNN
F 3 "~" H 12600 7650 50  0001 C CNN
	1    12600 7650
	0    1    1    0   
$EndComp
Wire Wire Line
	12350 7650 12450 7650
Wire Wire Line
	12750 7650 12900 7650
Wire Wire Line
	12900 7250 12900 6950
Wire Wire Line
	12950 6350 13100 6350
Wire Wire Line
	13100 6950 12900 6950
Connection ~ 12900 6950
Wire Wire Line
	12600 6950 12350 6950
Wire Wire Line
	12950 8100 12950 7650
Wire Wire Line
	12900 7550 12900 7650
Connection ~ 12900 7650
Wire Wire Line
	12900 7650 12950 7650
$Comp
L Device:R R25
U 1 1 5DE8B4D3
P 12050 6250
F 0 "R25" V 11843 6250 50  0000 C CNN
F 1 "10K" V 11934 6250 50  0000 C CNN
F 2 "" V 11980 6250 50  0001 C CNN
F 3 "~" H 12050 6250 50  0001 C CNN
	1    12050 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 5DE8D32A
P 12050 8200
F 0 "R26" V 11843 8200 50  0000 C CNN
F 1 "10K" V 11934 8200 50  0000 C CNN
F 2 "" V 11980 8200 50  0001 C CNN
F 3 "~" H 12050 8200 50  0001 C CNN
	1    12050 8200
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5DE8ED76
P 11500 6250
F 0 "R27" V 11293 6250 50  0000 C CNN
F 1 "10K" V 11384 6250 50  0000 C CNN
F 2 "" V 11430 6250 50  0001 C CNN
F 3 "~" H 11500 6250 50  0001 C CNN
	1    11500 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 5DE90189
P 11600 8200
F 0 "R28" V 11393 8200 50  0000 C CNN
F 1 "10K" V 11484 8200 50  0000 C CNN
F 2 "" V 11530 8200 50  0001 C CNN
F 3 "~" H 11600 8200 50  0001 C CNN
	1    11600 8200
	0    1    1    0   
$EndComp
Wire Wire Line
	12350 8200 12350 7650
Wire Wire Line
	12200 8200 12350 8200
Connection ~ 12350 8200
Wire Wire Line
	13100 6950 13100 6350
Wire Wire Line
	12350 6950 12350 6250
Wire Wire Line
	12200 6250 12350 6250
Connection ~ 12350 6250
Wire Wire Line
	11900 6250 11800 6250
Wire Wire Line
	11700 6950 11800 6950
Wire Wire Line
	11800 6950 11800 6250
Connection ~ 11800 6250
Wire Wire Line
	11800 6250 11650 6250
Wire Wire Line
	11750 8200 11850 8200
Wire Wire Line
	11700 7150 11850 7150
Wire Wire Line
	11850 7150 11850 8200
Connection ~ 11850 8200
Wire Wire Line
	11850 8200 11900 8200
Wire Wire Line
	11100 7050 11100 6250
Wire Wire Line
	11100 6250 11350 6250
$Comp
L power:GND #PWR?
U 1 1 5E0B0DEB
P 11250 8200
F 0 "#PWR?" H 11250 7950 50  0001 C CNN
F 1 "GND" H 11255 8027 50  0000 C CNN
F 2 "" H 11250 8200 50  0001 C CNN
F 3 "" H 11250 8200 50  0001 C CNN
	1    11250 8200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 5E0D24C8
P 10750 7050
F 0 "R29" V 10543 7050 50  0000 C CNN
F 1 "510" V 10634 7050 50  0000 C CNN
F 2 "" V 10680 7050 50  0001 C CNN
F 3 "~" H 10750 7050 50  0001 C CNN
	1    10750 7050
	0    1    1    0   
$EndComp
$Comp
L Device:C C13
U 1 1 5E0D3B9D
P 10450 7500
F 0 "C13" H 10565 7546 50  0000 L CNN
F 1 "104" H 10565 7455 50  0000 L CNN
F 2 "" H 10488 7350 50  0001 C CNN
F 3 "~" H 10450 7500 50  0001 C CNN
	1    10450 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 7650 10450 8200
Wire Wire Line
	10450 8200 11250 8200
Connection ~ 11250 8200
Wire Wire Line
	11250 8200 11450 8200
Wire Wire Line
	10600 7050 10450 7050
Wire Wire Line
	10450 7050 10450 7350
Wire Wire Line
	10900 7050 11100 7050
Connection ~ 11100 7050
Wire Wire Line
	12950 6150 14000 6150
Wire Wire Line
	14000 6150 14000 6350
Wire Wire Line
	14000 6350 14550 6350
Connection ~ 14550 6350
Wire Wire Line
	14550 6350 14550 6550
Connection ~ 15200 6350
Wire Wire Line
	15200 6350 15200 6550
Wire Wire Line
	6600 5500 9300 5500
Wire Wire Line
	9300 5500 9300 7050
Wire Wire Line
	9300 7050 10450 7050
Connection ~ 10450 7050
$Comp
L Device:R R21
U 1 1 5E19E259
P 15500 6700
F 0 "R21" H 15570 6746 50  0000 L CNN
F 1 "10K" H 15570 6655 50  0000 L CNN
F 2 "" V 15430 6700 50  0001 C CNN
F 3 "~" H 15500 6700 50  0001 C CNN
	1    15500 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	15800 6350 15800 8300
Wire Wire Line
	12950 8300 15800 8300
Wire Wire Line
	15200 6350 15800 6350
$Comp
L Amplifier_Operational:NE5532 U?
U 2 1 5E22D8E4
P 10600 4950
F 0 "U?" H 10600 4583 50  0000 C CNN
F 1 "NE5532" H 10600 4674 50  0000 C CNN
F 2 "" H 10600 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 10600 4950 50  0001 C CNN
	2    10600 4950
	-1   0    0    1   
$EndComp
$EndSCHEMATC
