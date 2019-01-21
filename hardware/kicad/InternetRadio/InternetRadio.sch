EESchema Schematic File Version 2
LIBS:InternetRadio-rescue
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
LIBS:maker
LIBS:InternetRadio-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Internet Radio"
Date "2019-01-21"
Rev "1"
Comp ""
Comment1 "Design: Andrew Doble"
Comment2 ""
Comment3 "Single station, set volume, line out audio"
Comment4 "Simple breadboard version"
$EndDescr
$Comp
L ESP8266 IC1
U 1 1 57DE7224
P 3700 2600
F 0 "IC1" H 3950 3300 60  0000 C CNN
F 1 "ESP8266" H 3700 2900 60  0000 C CNN
F 2 "" H 3350 2400 60  0001 C CNN
F 3 "" H 3350 2400 60  0001 C CNN
	1    3700 2600
	1    0    0    -1  
$EndComp
Entry Wire Line
	5100 6200 5200 6300
Text Label 4800 2900 0    60   ~ 0
SPI-SCK
Entry Wire Line
	1400 6300 1500 6400
Entry Wire Line
	5500 6200 5600 6300
Text Label 4800 2700 0    60   ~ 0
SPI-MOSI
Entry Wire Line
	5300 6200 5400 6300
Text Label 4800 2800 0    60   ~ 0
SPI-MISO
Entry Wire Line
	1700 6300 1800 6400
Entry Wire Line
	1550 6300 1650 6400
$Comp
L GND #PWR01
U 1 1 57DE77D7
P 3300 8700
F 0 "#PWR01" H 3300 8450 50  0001 C CNN
F 1 "GND" H 3300 8550 50  0000 C CNN
F 2 "" H 3300 8700 50  0000 C CNN
F 3 "" H 3300 8700 50  0000 C CNN
	1    3300 8700
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 57DE7A1E
P 2700 7300
F 0 "R10" V 2780 7300 50  0000 C CNN
F 1 "10K" V 2700 7300 50  0000 C CNN
F 2 "" V 2630 7300 50  0000 C CNN
F 3 "" H 2700 7300 50  0000 C CNN
	1    2700 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 57DE9C60
P 3400 3550
F 0 "#PWR02" H 3400 3300 50  0001 C CNN
F 1 "GND" H 3400 3400 50  0000 C CNN
F 2 "" H 3400 3550 50  0000 C CNN
F 3 "" H 3400 3550 50  0000 C CNN
	1    3400 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 57DE9C97
P 4050 3550
F 0 "#PWR03" H 4050 3300 50  0001 C CNN
F 1 "GND" H 4050 3400 50  0000 C CNN
F 2 "" H 4050 3550 50  0000 C CNN
F 3 "" H 4050 3550 50  0000 C CNN
	1    4050 3550
	1    0    0    -1  
$EndComp
Entry Wire Line
	10050 6300 10150 6400
Text Label 10350 7800 0    60   ~ 0
SPI-MISO
Text Label 10350 8050 0    60   ~ 0
SPI-MOSI
Entry Wire Line
	9950 6300 10050 6400
Text Label 10350 8300 0    60   ~ 0
SPI-SCK
Entry Wire Line
	9850 6300 9950 6400
Text Label 10750 8550 2    60   ~ 0
SPI-XCS
Text Notes 11700 7600 2    60   ~ 0
EXT. CONNECTION
$Comp
L EXT-CONN MISO1
U 1 1 57DEDBEF
P 11200 7800
F 0 "MISO1" H 11200 7900 60  0000 C CNN
F 1 "EXT-CONN" H 11250 7700 60  0001 C CNN
F 2 "" H 11200 7800 60  0001 C CNN
F 3 "" H 11200 7800 60  0001 C CNN
	1    11200 7800
	1    0    0    -1  
$EndComp
$Comp
L EXT-CONN MOSI1
U 1 1 57DEDC1C
P 11200 8050
F 0 "MOSI1" H 11200 8150 60  0000 C CNN
F 1 "EXT-CONN" H 11250 7950 60  0001 C CNN
F 2 "" H 11200 8050 60  0001 C CNN
F 3 "" H 11200 8050 60  0001 C CNN
	1    11200 8050
	1    0    0    -1  
$EndComp
$Comp
L EXT-CONN SCK1
U 1 1 57DEDC6F
P 11200 8300
F 0 "SCK1" H 11200 8400 60  0000 C CNN
F 1 "EXT-CONN" H 11250 8200 60  0001 C CNN
F 2 "" H 11200 8300 60  0001 C CNN
F 3 "" H 11200 8300 60  0001 C CNN
	1    11200 8300
	1    0    0    -1  
$EndComp
$Comp
L EXT-CONN XCS1
U 1 1 57DEDCBA
P 11200 8550
F 0 "XCS1" H 11200 8650 60  0000 C CNN
F 1 "EXT-CONN" H 11250 8450 60  0001 C CNN
F 2 "" H 11200 8550 60  0001 C CNN
F 3 "" H 11200 8550 60  0001 C CNN
	1    11200 8550
	1    0    0    -1  
$EndComp
$Comp
L EXT-CONN DREQ1
U 1 1 57DEDD0B
P 11200 8800
F 0 "DREQ1" H 11200 8900 60  0000 C CNN
F 1 "EXT-CONN" H 11250 8700 60  0001 C CNN
F 2 "" H 11200 8800 60  0001 C CNN
F 3 "" H 11200 8800 60  0001 C CNN
	1    11200 8800
	1    0    0    -1  
$EndComp
$Comp
L EXT-CONN XRST1
U 1 1 57DEDD3E
P 11200 9050
F 0 "XRST1" H 11200 9150 60  0000 C CNN
F 1 "EXT-CONN" H 11250 8950 60  0001 C CNN
F 2 "" H 11200 9050 60  0001 C CNN
F 3 "" H 11200 9050 60  0001 C CNN
	1    11200 9050
	1    0    0    -1  
$EndComp
$Comp
L EXT-CONN XDCS1
U 1 1 57DEDD89
P 11200 9300
F 0 "XDCS1" H 11200 9400 60  0000 C CNN
F 1 "EXT-CONN" H 11250 9200 60  0001 C CNN
F 2 "" H 11200 9300 60  0001 C CNN
F 3 "" H 11200 9300 60  0001 C CNN
	1    11200 9300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL_H SW_FLASH1
U 1 1 57DF2677
P 3500 4950
F 0 "SW_FLASH1" H 3500 5150 50  0000 C CNN
F 1 "SW_PUSH_SMALL_H" H 3500 4800 50  0000 C CNN
F 2 "" H 3500 5150 50  0000 C CNN
F 3 "" H 3500 5150 50  0000 C CNN
	1    3500 4950
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 57DF3202
P 4500 1300
F 0 "R3" V 4580 1300 50  0000 C CNN
F 1 "12K" V 4500 1300 50  0000 C CNN
F 2 "" V 4430 1300 50  0000 C CNN
F 3 "" H 4500 1300 50  0000 C CNN
	1    4500 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57DF4C49
P 3500 5350
F 0 "#PWR04" H 3500 5100 50  0001 C CNN
F 1 "GND" H 3500 5200 50  0000 C CNN
F 2 "" H 3500 5350 50  0000 C CNN
F 3 "" H 3500 5350 50  0000 C CNN
	1    3500 5350
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL_H SW_RESET1
U 1 1 57DF5583
P 2350 5000
F 0 "SW_RESET1" H 2430 5110 50  0000 C CNN
F 1 "SW_PUSH_SMALL_H" H 2350 4850 50  0000 C CNN
F 2 "" H 2350 5200 50  0000 C CNN
F 3 "" H 2350 5200 50  0000 C CNN
	1    2350 5000
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 57DF567A
P 2350 1300
F 0 "R1" V 2430 1300 50  0000 C CNN
F 1 "10K" V 2350 1300 50  0000 C CNN
F 2 "" V 2280 1300 50  0000 C CNN
F 3 "" H 2350 1300 50  0000 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 57DF5F2C
P 2350 1100
F 0 "#PWR05" H 2350 950 50  0001 C CNN
F 1 "+3.3V" H 2350 1240 50  0000 C CNN
F 2 "" H 2350 1100 50  0000 C CNN
F 3 "" H 2350 1100 50  0000 C CNN
	1    2350 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 57DF60E0
P 2350 5350
F 0 "#PWR06" H 2350 5100 50  0001 C CNN
F 1 "GND" H 2350 5200 50  0000 C CNN
F 2 "" H 2350 5350 50  0000 C CNN
F 3 "" H 2350 5350 50  0000 C CNN
	1    2350 5350
	1    0    0    -1  
$EndComp
$Comp
L 23K256 IC3
U 1 1 580B5BCF
P 3300 8100
F 0 "IC3" H 2950 8550 50  0000 L CNN
F 1 "23K256" H 3200 8150 50  0000 L CNN
F 2 "DIL" H 3350 8000 50  0000 C CIN
F 3 "" H 3500 7600 50  0000 C CNN
	1    3300 8100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 580CCDC1
P 2900 1300
F 0 "R2" V 2980 1300 50  0000 C CNN
F 1 "12K" V 2900 1300 50  0000 C CNN
F 2 "" V 2830 1300 50  0000 C CNN
F 3 "" H 2900 1300 50  0000 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
Text Notes 2750 900  0    60   ~ 0
ESP8266 Breakout Board\nIn-Line
$Comp
L VS1053_BOARD B1
U 1 1 580D37CF
P 12750 8550
F 0 "B1" H 13150 7850 60  0000 C CNN
F 1 "VS1053_BOARD" V 12750 8550 60  0000 C CNN
F 2 "" H 12600 8600 60  0001 C CNN
F 3 "" H 12600 8600 60  0001 C CNN
	1    12750 8550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 580D3D9C
P 12750 7550
F 0 "#PWR07" H 12750 7400 50  0001 C CNN
F 1 "+5V" H 12750 7690 50  0000 C CNN
F 2 "" H 12750 7550 50  0000 C CNN
F 3 "" H 12750 7550 50  0000 C CNN
	1    12750 7550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 580D3DEA
P 12750 9600
F 0 "#PWR08" H 12750 9350 50  0001 C CNN
F 1 "GND" H 12750 9450 50  0000 C CNN
F 2 "" H 12750 9600 50  0000 C CNN
F 3 "" H 12750 9600 50  0000 C CNN
	1    12750 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2900 5100 2900
Wire Wire Line
	4400 2700 5500 2700
Wire Wire Line
	4400 2800 5300 2800
Wire Wire Line
	1350 8300 2800 8300
Wire Wire Line
	3300 8600 3300 8700
Wire Wire Line
	2700 7450 2700 7800
Wire Wire Line
	10150 8050 11050 8050
Wire Wire Line
	10050 8300 11050 8300
Wire Wire Line
	9950 8550 11050 8550
Wire Wire Line
	11050 8800 7150 8800
Wire Wire Line
	7150 8800 7150 2200
Wire Wire Line
	7150 2200 4400 2200
Wire Wire Line
	11050 9050 7000 9050
Wire Wire Line
	7000 9050 7000 2500
Wire Wire Line
	7000 2500 4400 2500
Wire Wire Line
	6850 3000 6850 9300
Wire Notes Line
	10950 7650 10950 9450
Wire Notes Line
	11650 7650 11650 9450
Wire Notes Line
	10950 7650 11650 7650
Wire Notes Line
	11650 9450 10950 9450
Wire Wire Line
	4400 2400 5900 2400
Wire Wire Line
	4500 1450 4500 4500
Wire Wire Line
	4500 4500 3500 4500
Wire Wire Line
	3500 4500 3500 4800
Connection ~ 4500 2400
Wire Wire Line
	3500 5100 3500 5350
Wire Wire Line
	2350 1450 2350 4850
Wire Wire Line
	3000 2600 2350 2600
Connection ~ 2350 2600
Wire Wire Line
	2350 5150 2350 5350
Wire Wire Line
	3000 2700 2900 2700
Wire Wire Line
	2900 2700 2900 1450
Wire Notes Line
	2700 700  2700 3900
Wire Notes Line
	2700 3900 5000 3900
Wire Notes Line
	5000 3900 5000 700 
Wire Notes Line
	5000 700  2700 700 
Wire Wire Line
	11350 8550 12050 8550
Wire Wire Line
	12750 7550 12750 7700
Wire Wire Line
	12750 9400 12750 9600
Wire Wire Line
	1550 2500 3000 2500
$Comp
L EXT-CONN EC1-DTR1
U 1 1 58ACD412
P 1400 2650
F 0 "EC1-DTR1" H 1000 2650 60  0000 C CNN
F 1 "EXT-CONN" H 1450 2550 60  0001 C CNN
F 2 "" H 1400 2650 60  0001 C CNN
F 3 "" H 1400 2650 60  0001 C CNN
	1    1400 2650
	1    0    0    -1  
$EndComp
$Comp
L EXT-CONN EC1-TXD1
U 1 1 58ACD4E2
P 1400 2350
F 0 "EC1-TXD1" H 1000 2350 60  0000 C CNN
F 1 "EXT-CONN" H 1450 2250 60  0001 C CNN
F 2 "" H 1400 2350 60  0001 C CNN
F 3 "" H 1400 2350 60  0001 C CNN
	1    1400 2350
	1    0    0    -1  
$EndComp
$Comp
L EXT-CONN EC1-RXD1
U 1 1 58ACD5A1
P 1400 2500
F 0 "EC1-RXD1" H 1000 2500 60  0000 C CNN
F 1 "EXT-CONN" H 1450 2400 60  0001 C CNN
F 2 "" H 1400 2500 60  0001 C CNN
F 3 "" H 1400 2500 60  0001 C CNN
	1    1400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2350 3000 2350
Wire Wire Line
	3000 2350 3000 2400
Wire Notes Line
	650  2100 1650 2100
Wire Notes Line
	1650 2100 1650 2850
Wire Notes Line
	1650 2850 650  2850
Wire Notes Line
	650  2850 650  2100
Text Notes 1450 2850 0    60   ~ 0
FTDI
Wire Wire Line
	9950 6400 9950 8550
Text Notes 3050 1900 0    39   ~ 0
Preloaded with \nArduino Bootloader
Entry Wire Line
	5700 6200 5800 6300
Wire Wire Line
	4400 2600 5700 2600
Text Label 4800 2600 0    60   ~ 0
SPI-RAM-CS
Entry Wire Line
	1250 6300 1350 6400
Wire Wire Line
	4400 2300 6100 2300
Text Label 5600 2300 0    60   ~ 0
SPI-XCS
Text Label 4800 2400 0    60   ~ 0
SPI-FP-CONTROLLER-CS
Wire Wire Line
	11350 7800 11950 7800
Wire Wire Line
	11950 7800 11950 8100
Wire Wire Line
	11950 8100 12050 8100
Wire Wire Line
	11350 8050 11850 8050
Wire Wire Line
	11850 8050 11850 8250
Wire Wire Line
	11850 8250 12050 8250
Wire Wire Line
	11350 8300 11750 8300
Wire Wire Line
	11750 8300 11750 8400
Wire Wire Line
	11750 8400 12050 8400
Wire Wire Line
	11350 8800 11750 8800
Wire Wire Line
	11750 8800 11750 8700
Wire Wire Line
	11750 8700 12050 8700
Wire Wire Line
	11350 9050 11850 9050
Wire Wire Line
	11850 9050 11850 8850
Wire Wire Line
	11850 8850 12050 8850
Wire Wire Line
	11350 9300 11950 9300
Wire Wire Line
	11950 9300 11950 9000
Wire Wire Line
	11950 9000 12050 9000
Wire Bus Line
	1150 6300 14650 6300
Wire Wire Line
	5100 2900 5100 6200
Wire Wire Line
	5300 2800 5300 6200
Wire Wire Line
	5500 2700 5500 6200
Wire Wire Line
	5700 2600 5700 6200
Entry Wire Line
	5900 6200 6000 6300
Wire Wire Line
	5900 2400 5900 6200
Entry Wire Line
	6100 6200 6200 6300
Wire Wire Line
	6100 2300 6100 6200
Entry Wire Line
	10150 6300 10250 6400
Wire Wire Line
	11050 7800 10250 7800
Wire Wire Line
	10250 7800 10250 6400
Wire Wire Line
	10150 6400 10150 8050
Wire Wire Line
	10050 6400 10050 8300
Wire Wire Line
	6850 3000 4400 3000
Wire Wire Line
	6850 9300 11050 9300
Wire Wire Line
	2700 7800 2800 7800
Wire Wire Line
	1350 6400 1350 8300
Text Label 1350 7500 1    60   ~ 0
SPI-RAM-CS
Wire Wire Line
	1500 8200 2800 8200
Wire Wire Line
	1500 6400 1500 8200
Text Label 1500 7100 3    60   ~ 0
SPI-SCK
Wire Wire Line
	2800 8100 1650 8100
Wire Wire Line
	1650 8100 1650 6400
Text Label 1650 7500 1    60   ~ 0
SPI-MISO
Wire Wire Line
	2800 8000 1800 8000
Wire Wire Line
	1800 8000 1800 6400
Text Label 1800 7500 1    60   ~ 0
SPI-MOSI
Wire Bus Line
	13100 6300 13050 6300
Text Label 14600 6300 0    60   ~ 0
SPI
Text Label 6900 2200 0    60   ~ 0
DREQ
Text Label 6700 2500 0    60   ~ 0
XRST
Text Label 6550 3000 0    60   ~ 0
XDCS
Text Notes 3750 8450 0    51   ~ 0
RING \nBUFFER
Text Notes 13200 7900 0    51   ~ 0
MP3 DECODER\nBASED ON VS1053
NoConn ~ 3000 2800
NoConn ~ 3000 2900
NoConn ~ 1250 2650
NoConn ~ 1550 2650
Wire Wire Line
	2700 7150 2700 7050
Wire Wire Line
	2350 1150 2350 1100
$Comp
L +3.3V #PWR018
U 1 1 58B3B111
P 3700 1100
F 0 "#PWR018" H 3700 950 50  0001 C CNN
F 1 "+3.3V" H 3700 1240 50  0000 C CNN
F 2 "" H 3700 1100 50  0000 C CNN
F 3 "" H 3700 1100 50  0000 C CNN
	1    3700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1100 3700 1800
$Comp
L Antenna AE1
U 1 1 58B3B784
P 3700 3800
F 0 "AE1" H 3625 3875 50  0000 R CNN
F 1 "Antenna" H 3625 3800 50  0000 R CNN
F 2 "" H 3700 3800 50  0001 C CNN
F 3 "" H 3700 3800 50  0001 C CNN
	1    3700 3800
	-1   0    0    1   
$EndComp
NoConn ~ 3850 7800
$Comp
L +3.3V #PWR019
U 1 1 58B3BDAE
P 3300 7000
F 0 "#PWR019" H 3300 6850 50  0001 C CNN
F 1 "+3.3V" H 3300 7140 50  0000 C CNN
F 2 "" H 3300 7000 50  0000 C CNN
F 3 "" H 3300 7000 50  0000 C CNN
	1    3300 7000
	1    0    0    -1  
$EndComp
Connection ~ 3300 7050
Wire Wire Line
	2900 1150 2900 1100
Wire Wire Line
	2900 1100 4500 1100
Wire Wire Line
	4500 1100 4500 1150
Connection ~ 3700 1100
Wire Wire Line
	3700 3600 3700 3550
Wire Wire Line
	3300 7000 3300 7550
Text Notes 1600 8900 0    60   ~ 0
NO PULLUP REQUIRED \nON RAM CS AS \nESP8266 SETS THE \nLOGIC LEVEL CORRECTLY:\nHAVING A PULLUP INTERFERES\nWITH PROGRAM FLASHING:
Wire Wire Line
	2700 7050 3300 7050
$EndSCHEMATC
