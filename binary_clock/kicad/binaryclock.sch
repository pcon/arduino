EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:microchip_dspic33dsc
LIBS:ESP8266
LIBS:ws2812b
LIBS:wemos_mini
LIBS:binaryclock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Binary Clock"
Date "2019-08-05"
Rev "1.1"
Comp ""
Comment1 ""
Comment2 "gnu.org/licenses/gpl-3.0.en.html"
Comment3 "License: GPLv3"
Comment4 "Author: Patrick Connelly"
$EndDescr
$Comp
L WS2812B LED0
U 1 1 5D447B05
P 8400 5000
F 0 "LED0" H 8400 4600 60  0000 C CNN
F 1 "WS2812B" H 8400 5400 60  0000 C CNN
F 2 "" V 8350 5000 60  0000 C CNN
F 3 "" V 8350 5000 60  0000 C CNN
	1    8400 5000
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED4
U 1 1 5D447C48
P 7100 5000
F 0 "LED4" H 7100 4600 60  0000 C CNN
F 1 "WS2812B" H 7100 5400 60  0000 C CNN
F 2 "" V 7050 5000 60  0000 C CNN
F 3 "" V 7050 5000 60  0000 C CNN
	1    7100 5000
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED6
U 1 1 5D447CE3
P 7100 2600
F 0 "LED6" H 7100 2200 60  0000 C CNN
F 1 "WS2812B" H 7100 3000 60  0000 C CNN
F 2 "" V 7050 2600 60  0000 C CNN
F 3 "" V 7050 2600 60  0000 C CNN
	1    7100 2600
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED1
U 1 1 5D447D5C
P 8400 3800
F 0 "LED1" H 8400 3400 60  0000 C CNN
F 1 "WS2812B" H 8400 4200 60  0000 C CNN
F 2 "" V 8350 3800 60  0000 C CNN
F 3 "" V 8350 3800 60  0000 C CNN
	1    8400 3800
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED3
U 1 1 5D447EE1
P 8400 1400
F 0 "LED3" H 8400 1000 60  0000 C CNN
F 1 "WS2812B" H 8400 1800 60  0000 C CNN
F 2 "" V 8350 1400 60  0000 C CNN
F 3 "" V 8350 1400 60  0000 C CNN
	1    8400 1400
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED5
U 1 1 5D448012
P 7100 3800
F 0 "LED5" H 7100 3400 60  0000 C CNN
F 1 "WS2812B" H 7100 4200 60  0000 C CNN
F 2 "" V 7050 3800 60  0000 C CNN
F 3 "" V 7050 3800 60  0000 C CNN
	1    7100 3800
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED2
U 1 1 5D44804F
P 8400 2600
F 0 "LED2" H 8400 2200 60  0000 C CNN
F 1 "WS2812B" H 8400 3000 60  0000 C CNN
F 2 "" V 8350 2600 60  0000 C CNN
F 3 "" V 8350 2600 60  0000 C CNN
	1    8400 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4500 8400 4500
Wire Wire Line
	8400 4500 8400 4300
Wire Wire Line
	8400 4300 8600 4300
Wire Wire Line
	8200 3300 8400 3300
Wire Wire Line
	8400 3300 8400 3100
Wire Wire Line
	8400 3100 8600 3100
Wire Wire Line
	8200 2100 8400 2100
Wire Wire Line
	8400 2100 8400 1900
Wire Wire Line
	8400 1900 8600 1900
Wire Wire Line
	6900 4500 7100 4500
Wire Wire Line
	7100 4500 7100 4300
Wire Wire Line
	7100 4300 7300 4300
Wire Wire Line
	6900 3300 7100 3300
Wire Wire Line
	7100 3300 7100 3100
Wire Wire Line
	7100 3100 7300 3100
Wire Wire Line
	8200 900  7700 900 
Wire Wire Line
	7700 900  7700 5500
Wire Wire Line
	7700 5500 7300 5500
Wire Wire Line
	8900 800  8900 4500
Wire Wire Line
	1700 800  8900 800 
Wire Wire Line
	8600 900  8600 800 
Connection ~ 8600 800 
Wire Wire Line
	8600 2100 8900 2100
Connection ~ 8900 2100
Wire Wire Line
	8600 3300 8900 3300
Connection ~ 8900 3300
Wire Wire Line
	8900 3600 9400 3600
Wire Wire Line
	8900 4500 8600 4500
Wire Wire Line
	9200 4600 8900 4600
Wire Wire Line
	8900 4600 8900 5500
Wire Wire Line
	8900 5500 8600 5500
Wire Wire Line
	9400 3700 9100 3700
Wire Wire Line
	9100 5600 9100 3700
Wire Wire Line
	600  5600 9100 5600
Wire Wire Line
	8200 5600 8200 5500
Wire Wire Line
	6900 5600 6900 5500
Connection ~ 8200 5600
Wire Wire Line
	8200 1900 7800 1900
Wire Wire Line
	7800 1900 7800 5600
Connection ~ 7800 5600
Wire Wire Line
	8200 4300 7800 4300
Connection ~ 7800 4300
Wire Wire Line
	8200 3100 7800 3100
Connection ~ 7800 3100
Wire Wire Line
	6500 3100 6500 5600
Wire Wire Line
	6500 3100 6900 3100
Connection ~ 6900 5600
Wire Wire Line
	6900 4300 6500 4300
Connection ~ 6500 4300
$Comp
L WS2812B LED7
U 1 1 5D48694B
P 5400 5000
F 0 "LED7" H 5400 4600 60  0000 C CNN
F 1 "WS2812B" H 5400 5400 60  0000 C CNN
F 2 "" V 5350 5000 60  0000 C CNN
F 3 "" V 5350 5000 60  0000 C CNN
	1    5400 5000
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED11
U 1 1 5D486951
P 4100 5000
F 0 "LED11" H 4100 4600 60  0000 C CNN
F 1 "WS2812B" H 4100 5400 60  0000 C CNN
F 2 "" V 4050 5000 60  0000 C CNN
F 3 "" V 4050 5000 60  0000 C CNN
	1    4100 5000
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED13
U 1 1 5D486957
P 4100 2600
F 0 "LED13" H 4100 2200 60  0000 C CNN
F 1 "WS2812B" H 4100 3000 60  0000 C CNN
F 2 "" V 4050 2600 60  0000 C CNN
F 3 "" V 4050 2600 60  0000 C CNN
	1    4100 2600
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED8
U 1 1 5D48695D
P 5400 3800
F 0 "LED8" H 5400 3400 60  0000 C CNN
F 1 "WS2812B" H 5400 4200 60  0000 C CNN
F 2 "" V 5350 3800 60  0000 C CNN
F 3 "" V 5350 3800 60  0000 C CNN
	1    5400 3800
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED10
U 1 1 5D486963
P 5400 1400
F 0 "LED10" H 5400 1000 60  0000 C CNN
F 1 "WS2812B" H 5400 1800 60  0000 C CNN
F 2 "" V 5350 1400 60  0000 C CNN
F 3 "" V 5350 1400 60  0000 C CNN
	1    5400 1400
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED12
U 1 1 5D486969
P 4100 3800
F 0 "LED12" H 4100 3400 60  0000 C CNN
F 1 "WS2812B" H 4100 4200 60  0000 C CNN
F 2 "" V 4050 3800 60  0000 C CNN
F 3 "" V 4050 3800 60  0000 C CNN
	1    4100 3800
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED9
U 1 1 5D48696F
P 5400 2600
F 0 "LED9" H 5400 2200 60  0000 C CNN
F 1 "WS2812B" H 5400 3000 60  0000 C CNN
F 2 "" V 5350 2600 60  0000 C CNN
F 3 "" V 5350 2600 60  0000 C CNN
	1    5400 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4500 5400 4500
Wire Wire Line
	5400 4500 5400 4300
Wire Wire Line
	5400 4300 5600 4300
Wire Wire Line
	5200 3300 5400 3300
Wire Wire Line
	5400 3300 5400 3100
Wire Wire Line
	5400 3100 5600 3100
Wire Wire Line
	5200 2100 5400 2100
Wire Wire Line
	5400 2100 5400 1900
Wire Wire Line
	5400 1900 5600 1900
Wire Wire Line
	3900 4500 4100 4500
Wire Wire Line
	4100 4500 4100 4300
Wire Wire Line
	4100 4300 4300 4300
Wire Wire Line
	3900 3300 4100 3300
Wire Wire Line
	4100 3300 4100 3100
Wire Wire Line
	4100 3100 4300 3100
Wire Wire Line
	5200 900  4700 900 
Wire Wire Line
	4700 900  4700 5500
Wire Wire Line
	4700 5500 4300 5500
Wire Wire Line
	5200 5600 5200 5500
Wire Wire Line
	3900 5600 3900 5500
Connection ~ 5200 5600
Wire Wire Line
	5200 1900 4800 1900
Wire Wire Line
	4800 1900 4800 5600
Connection ~ 4800 5600
Wire Wire Line
	5200 4300 4800 4300
Connection ~ 4800 4300
Wire Wire Line
	5200 3100 4800 3100
Connection ~ 4800 3100
Wire Wire Line
	3500 3100 3500 5600
Wire Wire Line
	3500 3100 3900 3100
Connection ~ 3900 5600
Wire Wire Line
	3500 4300 3900 4300
Connection ~ 3500 4300
$Comp
L WS2812B LED14
U 1 1 5D487AB0
P 2500 5000
F 0 "LED14" H 2500 4600 60  0000 C CNN
F 1 "WS2812B" H 2500 5400 60  0000 C CNN
F 2 "" V 2450 5000 60  0000 C CNN
F 3 "" V 2450 5000 60  0000 C CNN
	1    2500 5000
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED18
U 1 1 5D487AB6
P 1200 5000
F 0 "LED18" H 1200 4600 60  0000 C CNN
F 1 "WS2812B" H 1200 5400 60  0000 C CNN
F 2 "" V 1150 5000 60  0000 C CNN
F 3 "" V 1150 5000 60  0000 C CNN
	1    1200 5000
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED15
U 1 1 5D487AC2
P 2500 3800
F 0 "LED15" H 2500 3400 60  0000 C CNN
F 1 "WS2812B" H 2500 4200 60  0000 C CNN
F 2 "" V 2450 3800 60  0000 C CNN
F 3 "" V 2450 3800 60  0000 C CNN
	1    2500 3800
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED17
U 1 1 5D487AC8
P 2500 1400
F 0 "LED17" H 2500 1000 60  0000 C CNN
F 1 "WS2812B" H 2500 1800 60  0000 C CNN
F 2 "" V 2450 1400 60  0000 C CNN
F 3 "" V 2450 1400 60  0000 C CNN
	1    2500 1400
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED19
U 1 1 5D487ACE
P 1200 3800
F 0 "LED19" H 1200 3400 60  0000 C CNN
F 1 "WS2812B" H 1200 4200 60  0000 C CNN
F 2 "" V 1150 3800 60  0000 C CNN
F 3 "" V 1150 3800 60  0000 C CNN
	1    1200 3800
	0    1    1    0   
$EndComp
$Comp
L WS2812B LED16
U 1 1 5D487AD4
P 2500 2600
F 0 "LED16" H 2500 2200 60  0000 C CNN
F 1 "WS2812B" H 2500 3000 60  0000 C CNN
F 2 "" V 2450 2600 60  0000 C CNN
F 3 "" V 2450 2600 60  0000 C CNN
	1    2500 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 4500 2500 4500
Wire Wire Line
	2500 4500 2500 4300
Wire Wire Line
	2500 4300 2700 4300
Wire Wire Line
	2300 3300 2500 3300
Wire Wire Line
	2500 3300 2500 3100
Wire Wire Line
	2500 3100 2700 3100
Wire Wire Line
	2300 2100 2500 2100
Wire Wire Line
	2500 2100 2500 1900
Wire Wire Line
	2500 1900 2700 1900
Wire Wire Line
	1000 4500 1200 4500
Wire Wire Line
	1200 4500 1200 4300
Wire Wire Line
	1200 4300 1400 4300
Wire Wire Line
	2300 900  1800 900 
Wire Wire Line
	1800 900  1800 5500
Wire Wire Line
	1800 5500 1400 5500
Wire Wire Line
	2300 5600 2300 5500
Wire Wire Line
	1000 5600 1000 5500
Connection ~ 2300 5600
Wire Wire Line
	1900 1900 1900 5600
Connection ~ 1900 5600
Wire Wire Line
	2300 4300 1900 4300
Connection ~ 1900 4300
Wire Wire Line
	2300 3100 1900 3100
Connection ~ 1900 3100
Connection ~ 1000 5600
Wire Wire Line
	1000 4300 600  4300
Wire Wire Line
	600  4300 600  5600
Connection ~ 6500 5600
Wire Wire Line
	2700 800  2700 900 
Connection ~ 2700 800 
Wire Wire Line
	5600 900  5600 800 
Connection ~ 5600 800 
Wire Wire Line
	5900 4500 5600 4500
Wire Wire Line
	5900 800  5900 4500
Connection ~ 5900 800 
Wire Wire Line
	5600 2100 5900 2100
Connection ~ 5900 2100
Wire Wire Line
	5600 3300 5900 3300
Connection ~ 5900 3300
Wire Wire Line
	4600 4500 4300 4500
Wire Wire Line
	4600 800  4600 4500
Connection ~ 4600 800 
Wire Wire Line
	4300 3300 4600 3300
Connection ~ 4600 3300
Wire Wire Line
	4300 2100 4600 2100
Connection ~ 4600 2100
Wire Wire Line
	5600 5500 6400 5500
Wire Wire Line
	6400 5500 6400 2100
Wire Wire Line
	6400 2100 6900 2100
Wire Wire Line
	2700 5500 3400 5500
Wire Wire Line
	3400 5500 3400 2100
Wire Wire Line
	3400 2100 3900 2100
Wire Wire Line
	3000 4500 2700 4500
Wire Wire Line
	3000 800  3000 4500
Connection ~ 3000 800 
Wire Wire Line
	2700 2100 3000 2100
Connection ~ 3000 2100
Wire Wire Line
	2700 3300 3000 3300
Connection ~ 3000 3300
Wire Wire Line
	1700 4500 1400 4500
Wire Wire Line
	1700 800  1700 4500
Wire Wire Line
	1400 3300 1700 3300
Connection ~ 1700 3300
Wire Wire Line
	7600 4500 7300 4500
Wire Wire Line
	7600 800  7600 4500
Connection ~ 7600 800 
Wire Wire Line
	7300 2100 7600 2100
Connection ~ 7600 2100
Wire Wire Line
	7300 3300 7600 3300
Connection ~ 7600 3300
Connection ~ 3500 5600
Wire Wire Line
	1900 1900 2300 1900
$Comp
L WeMos_mini U1
U 1 1 5DA36BC1
P 9900 3950
F 0 "U1" H 9900 4450 60  0000 C CNN
F 1 "WeMos_mini" H 9900 3450 60  0000 C CNN
F 2 "" H 10450 3250 60  0000 C CNN
F 3 "" H 10450 3250 60  0000 C CNN
	1    9900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4600 9200 3800
Wire Wire Line
	9200 3800 9400 3800
$EndSCHEMATC
