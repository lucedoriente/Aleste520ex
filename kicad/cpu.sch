EESchema Schematic File Version 2
LIBS:mylib
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
LIBS:aleste-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title "Aleste 520EX"
Date "1994-01-04"
Rev ""
Comp "Patisonic"
Comment1 "Restored by Alexander Molodtsov"
Comment2 "Aleste 520EX"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Z80 D30
U 1 1 56762525
P 1200 900
F 0 "D30" H 1950 1050 60  0000 C CNN
F 1 "Z80" H 1950 -1450 50  0000 C CNN
F 2 "MyLib_metric:DIP-40" H 450 -600 60  0001 C CNN
F 3 "" H 450 -600 60  0000 C CNN
	1    1200 900 
	1    0    0    -1  
$EndComp
Text HLabel 3000 900  2    60   Output ~ 0
A0
Text HLabel 1100 900  0    60   BiDi ~ 0
D0
Text HLabel 1100 1000 0    60   BiDi ~ 0
D1
Text HLabel 1100 1100 0    60   BiDi ~ 0
D2
Text HLabel 1100 1200 0    60   BiDi ~ 0
D3
Text HLabel 1100 1300 0    60   BiDi ~ 0
D4
Text HLabel 1100 1400 0    60   BiDi ~ 0
D5
Text HLabel 1100 1500 0    60   BiDi ~ 0
D6
Text HLabel 3000 1000 2    60   Output ~ 0
A1
Text HLabel 3000 1100 2    60   Output ~ 0
A2
Text HLabel 3000 1200 2    60   Output ~ 0
A3
Text HLabel 3000 1300 2    60   Output ~ 0
A4
Text HLabel 3000 1400 2    60   Output ~ 0
A5
Text HLabel 3000 1500 2    60   Output ~ 0
A6
Text HLabel 3000 1600 2    60   Output ~ 0
A7
Text HLabel 3000 1700 2    60   Output ~ 0
A8
Text HLabel 3000 1800 2    60   Output ~ 0
A9
Text HLabel 3000 1900 2    60   Output ~ 0
A10
Text HLabel 3000 2000 2    60   Output ~ 0
A11
Text HLabel 3000 2100 2    60   Output ~ 0
A12
Text HLabel 3000 2200 2    60   Output ~ 0
A13
Text HLabel 3000 2300 2    60   Output ~ 0
A14
Text HLabel 3000 2400 2    60   Output ~ 0
A15
$Comp
L 555ЛЛ1 D29
U 1 1 5676A723
P 4200 900
F 0 "D29" H 4200 1050 60  0000 C CNN
F 1 "555ЛЛ1" H 4200 650 60  0000 C CNN
F 2 "MyLib_metric:DIP-14" H 4200 850 60  0001 C CNN
F 3 "" H 4200 850 60  0000 C CNN
	1    4200 900 
	1    0    0    -1  
$EndComp
$Comp
L 555ЛЛ1 D29
U 2 1 5676A9F3
P 4200 1400
F 0 "D29" H 4200 1550 60  0000 C CNN
F 1 "555ЛЛ1" H 4200 1150 60  0000 C CNN
F 2 "MyLib_metric:DIP-14" H 4200 1350 60  0001 C CNN
F 3 "" H 4200 1350 60  0000 C CNN
	2    4200 1400
	1    0    0    -1  
$EndComp
Text HLabel 4600 900  2    60   Output ~ 0
~IOWR
Text HLabel 4600 1400 2    60   Output ~ 0
~IORD
$Comp
L 27512 D31
U 1 1 568FC57F
P 1500 3900
F 0 "D31" H 2050 4050 60  0000 C CNN
F 1 "27512" H 2050 1950 50  0000 C CNN
F 2 "MyLib_metric:DIP-28" H 1800 3650 60  0001 C CNN
F 3 "" H 1800 3650 60  0000 C CNN
	1    1500 3900
	1    0    0    -1  
$EndComp
Text HLabel 2700 4000 2    60   Output ~ 0
D0
Text HLabel 2700 4100 2    60   Output ~ 0
D1
Text HLabel 2700 4200 2    60   Output ~ 0
D2
Text HLabel 2700 4300 2    60   Output ~ 0
D3
Text HLabel 2700 4400 2    60   Output ~ 0
D4
Text HLabel 2700 4500 2    60   Output ~ 0
D5
Text HLabel 2700 4600 2    60   Output ~ 0
D6
Text HLabel 1400 3900 0    60   Input ~ 0
A0
Text HLabel 1400 4000 0    60   Input ~ 0
A1
Text HLabel 1400 4100 0    60   Input ~ 0
A2
Text HLabel 1400 4200 0    60   Input ~ 0
A3
Text HLabel 1400 4300 0    60   Input ~ 0
A4
Text HLabel 1400 4400 0    60   Input ~ 0
A5
Text HLabel 1400 4500 0    60   Input ~ 0
A6
Text HLabel 1400 4600 0    60   Input ~ 0
A7
Text HLabel 1400 4700 0    60   Input ~ 0
A8
Text HLabel 1400 4800 0    60   Input ~ 0
A9
Text HLabel 1400 4900 0    60   Input ~ 0
A10
Text HLabel 1400 5000 0    60   Input ~ 0
A11
Text HLabel 1400 5100 0    60   Input ~ 0
A12
Text HLabel 1400 5200 0    60   Input ~ 0
A13
Text HLabel 2800 3100 2    60   Output ~ 0
~RFSH
Text HLabel 2800 2900 2    50   Output ~ 0
~IORQ
Text HLabel 1100 5700 0    60   Input ~ 0
ROMDIS
$Comp
L 555ЛИ1 D35
U 3 1 568FF2E0
P 1600 6500
F 0 "D35" H 1600 6650 60  0000 C CNN
F 1 "555ЛИ1" H 1600 6250 50  0000 C CNN
F 2 "MyLib_metric:DIP-14" H 1600 6450 60  0001 C CNN
F 3 "" H 1600 6450 60  0000 C CNN
	3    1600 6500
	1    0    0    -1  
$EndComp
$Comp
L 555ЛИ1 D35
U 4 1 568FF36B
P 1600 7000
F 0 "D35" H 1600 7150 60  0000 C CNN
F 1 "555ЛИ1" H 1600 6750 50  0000 C CNN
F 2 "MyLib_metric:DIP-14" H 1600 6950 60  0001 C CNN
F 3 "" H 1600 6950 60  0000 C CNN
	4    1600 7000
	1    0    0    -1  
$EndComp
Text HLabel 1100 6500 0    60   Input ~ 0
A14
Text HLabel 1100 6600 0    60   Input ~ 0
ROM0
Text HLabel 1100 7000 0    60   Input ~ 0
ROM1
$Comp
L RES R25
U 1 1 568FF91C
P 1800 6000
F 0 "R25" H 1800 6100 50  0000 C CNN
F 1 "2,7к" H 1800 5900 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Horizontal_RM7.5mm" H 1800 5950 60  0001 C CNN
F 3 "" H 1800 5950 60  0000 C CNN
	1    1800 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 568FF9D2
P 2100 6000
F 0 "#PWR019" H 2100 6000 30  0001 C CNN
F 1 "GND" H 2100 5930 30  0001 C CNN
F 2 "" H 2100 6000 60  0000 C CNN
F 3 "" H 2100 6000 60  0000 C CNN
	1    2100 6000
	0    -1   -1   0   
$EndComp
$Comp
L 556РТ4 D67
U 1 1 56900276
P 4200 2000
F 0 "D67" H 4750 2150 60  0000 C CNN
F 1 "556РТ4" H 4750 850 50  0000 C CNN
F 2 "MyLib_metric:DIP-16" H 4500 1750 60  0001 C CNN
F 3 "" H 4500 1750 60  0000 C CNN
	1    4200 2000
	1    0    0    -1  
$EndComp
Text HLabel 3800 2000 0    60   Input ~ 0
PROM0
Text HLabel 3800 2100 0    60   Input ~ 0
PROM1
Text HLabel 3800 2200 0    60   Input ~ 0
A14
Text HLabel 3800 2300 0    60   Input ~ 0
A15
Text HLabel 3800 2400 0    60   Input ~ 0
A0
Wire Wire Line
	1100 900  1200 900 
Wire Wire Line
	1100 1000 1200 1000
Wire Wire Line
	1100 1100 1200 1100
Wire Wire Line
	1100 1200 1200 1200
Wire Wire Line
	1100 1300 1200 1300
Wire Wire Line
	1100 1400 1200 1400
Wire Wire Line
	1100 1500 1200 1500
Wire Wire Line
	1100 1600 1200 1600
Wire Wire Line
	3000 900  2700 900 
Wire Wire Line
	3000 1000 2700 1000
Wire Wire Line
	3000 1100 2700 1100
Wire Wire Line
	3000 1200 2700 1200
Wire Wire Line
	3000 1300 2700 1300
Wire Wire Line
	3000 1400 2700 1400
Wire Wire Line
	3000 1500 2700 1500
Wire Wire Line
	3000 1600 2700 1600
Wire Wire Line
	3000 1700 2700 1700
Wire Wire Line
	3000 1800 2700 1800
Wire Wire Line
	3000 1900 2700 1900
Wire Wire Line
	3000 2000 2700 2000
Wire Wire Line
	3000 2100 2700 2100
Wire Wire Line
	3000 2200 2700 2200
Wire Wire Line
	3000 2300 2700 2300
Wire Wire Line
	3000 2400 2700 2400
Wire Bus Line
	3300 600  3300 5900
Wire Bus Line
	3300 4200 3300 3700
Wire Wire Line
	3900 1400 3800 1400
Wire Wire Line
	3800 1400 3800 1000
Connection ~ 3800 1000
Wire Wire Line
	4500 900  4600 900 
Wire Wire Line
	4500 1400 4600 1400
Wire Wire Line
	1400 5200 1500 5200
Wire Wire Line
	1400 5100 1500 5100
Wire Wire Line
	1500 5000 1400 5000
Wire Wire Line
	1400 4900 1500 4900
Wire Wire Line
	1400 4800 1500 4800
Wire Wire Line
	1500 4700 1400 4700
Wire Wire Line
	1400 4500 1500 4500
Wire Wire Line
	1500 4600 1400 4600
Wire Wire Line
	1400 4400 1500 4400
Wire Wire Line
	1400 4300 1500 4300
Wire Wire Line
	1400 4200 1500 4200
Wire Wire Line
	1400 4100 1500 4100
Wire Wire Line
	1500 4000 1400 4000
Wire Wire Line
	1400 3900 1500 3900
Wire Wire Line
	2700 4000 2600 4000
Wire Wire Line
	2600 4100 2700 4100
Wire Wire Line
	2700 4200 2600 4200
Wire Wire Line
	2600 4300 2700 4300
Wire Wire Line
	2700 4400 2600 4400
Wire Wire Line
	2600 4500 2700 4500
Wire Wire Line
	2700 4600 2600 4600
Wire Wire Line
	2600 4700 2700 4700
Wire Wire Line
	2800 3100 2700 3100
Wire Wire Line
	2800 2900 2700 2900
Wire Wire Line
	3700 1000 3900 1000
Wire Wire Line
	1100 5700 1500 5700
Wire Wire Line
	1100 6500 1300 6500
Wire Wire Line
	1300 7100 1200 7100
Wire Wire Line
	1200 7100 1200 6500
Connection ~ 1200 6500
Wire Wire Line
	1100 6600 1300 6600
Wire Wire Line
	1100 7000 1300 7000
Wire Wire Line
	1500 5400 1300 5400
Wire Wire Line
	1300 5400 1300 6200
Wire Wire Line
	1300 6200 2100 6200
Wire Wire Line
	2100 6200 2100 7000
Wire Wire Line
	2100 7000 1900 7000
Wire Wire Line
	1900 6500 2000 6500
Wire Wire Line
	2000 6500 2000 6300
Wire Wire Line
	2000 6300 1200 6300
Wire Wire Line
	1200 6300 1200 5300
Wire Wire Line
	1200 5300 1500 5300
Wire Wire Line
	1600 6000 1400 6000
Wire Wire Line
	1400 6000 1400 5700
Connection ~ 1400 5700
Wire Wire Line
	2000 6000 2100 6000
Text HLabel 3800 2500 0    60   Input ~ 0
~MREQ
Wire Wire Line
	3800 2500 4200 2500
Text HLabel 2800 2600 2    60   Output ~ 0
~RD
Text HLabel 2800 2700 2    60   Output ~ 0
~WR
Text HLabel 2800 2800 2    60   Output ~ 0
~MREQ
Text HLabel 2800 3000 2    60   Output ~ 0
~M1
Wire Wire Line
	2800 3000 2700 3000
Wire Wire Line
	2700 2800 2800 2800
Wire Wire Line
	2700 2700 2800 2700
Wire Wire Line
	2700 2600 2800 2600
Text HLabel 3700 1000 0    60   Input ~ 0
~IORQ
Text HLabel 3700 900  0    60   Input ~ 0
~WR
Text HLabel 3700 1500 0    60   Input ~ 0
~RD
Wire Wire Line
	3700 1500 3900 1500
Wire Wire Line
	3900 900  3700 900 
Text HLabel 3800 2600 0    60   Input ~ 0
~RD
Wire Wire Line
	3800 2600 4200 2600
Text HLabel 3800 2700 0    60   Input ~ 0
RAMDIS
Wire Wire Line
	3800 2700 4200 2700
Wire Wire Line
	4200 2900 4100 2900
Wire Wire Line
	4100 2900 4100 3300
Wire Wire Line
	4100 3000 4200 3000
$Comp
L RES R14
U 1 1 5690100A
P 3900 3000
F 0 "R14" H 3900 3100 50  0000 C CNN
F 1 "2,7к" H 3900 3000 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Horizontal_RM7.5mm" H 3900 2950 60  0001 C CNN
F 3 "" H 3900 2950 60  0000 C CNN
	1    3900 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 2800 3900 2700
Connection ~ 3900 2700
$Comp
L GND #PWR020
U 1 1 56901125
P 3900 3300
F 0 "#PWR020" H 3900 3300 30  0001 C CNN
F 1 "GND" H 3900 3230 30  0001 C CNN
F 2 "" H 3900 3300 60  0000 C CNN
F 3 "" H 3900 3300 60  0000 C CNN
	1    3900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3300 3900 3200
$Comp
L GND #PWR021
U 1 1 569011B9
P 4100 3300
F 0 "#PWR021" H 4100 3300 30  0001 C CNN
F 1 "GND" H 4100 3230 30  0001 C CNN
F 2 "" H 4100 3300 60  0000 C CNN
F 3 "" H 4100 3300 60  0000 C CNN
	1    4100 3300
	1    0    0    -1  
$EndComp
Connection ~ 4100 3000
Wire Wire Line
	3800 2400 4200 2400
Wire Wire Line
	3800 2300 4200 2300
Wire Wire Line
	3800 2200 4200 2200
Wire Wire Line
	3800 2100 4200 2100
Wire Wire Line
	3800 2000 4200 2000
Text HLabel 5700 2800 2    60   Output ~ 0
~RAMEN
Text HLabel 5700 2400 2    60   Output ~ 0
BUFFER1
Text HLabel 5700 2200 2    60   Output ~ 0
BUFFER0
Wire Wire Line
	5300 2200 5700 2200
Wire Wire Line
	5300 2400 5700 2400
Wire Wire Line
	5300 2800 5700 2800
Wire Wire Line
	5300 2600 5700 2600
$Comp
L RES R10
U 1 1 56901764
P 5400 1900
F 0 "R10" H 5400 2000 50  0000 C CNN
F 1 "1,2к" H 5400 1900 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 5400 1850 60  0001 C CNN
F 3 "" H 5400 1850 60  0000 C CNN
	1    5400 1900
	0    -1   -1   0   
$EndComp
$Comp
L RES R11
U 1 1 56901ACC
P 5600 1900
F 0 "R11" H 5600 2000 50  0000 C CNN
F 1 "1,2к" H 5600 1900 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 5600 1850 60  0001 C CNN
F 3 "" H 5600 1850 60  0000 C CNN
	1    5600 1900
	0    -1   -1   0   
$EndComp
$Comp
L RES R12
U 1 1 56901B09
P 5400 3100
F 0 "R12" H 5400 3200 50  0000 C CNN
F 1 "1,2к" H 5400 3100 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 5400 3050 60  0001 C CNN
F 3 "" H 5400 3050 60  0000 C CNN
	1    5400 3100
	0    -1   1    0   
$EndComp
$Comp
L RES R13
U 1 1 56901B5B
P 5600 3100
F 0 "R13" H 5600 3200 50  0000 C CNN
F 1 "1,2к" H 5600 3100 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 5600 3050 60  0001 C CNN
F 3 "" H 5600 3050 60  0000 C CNN
	1    5600 3100
	0    -1   1    0   
$EndComp
Wire Wire Line
	5400 2100 5400 2200
Connection ~ 5400 2200
Wire Wire Line
	5600 2100 5600 2400
Connection ~ 5600 2400
Wire Wire Line
	5400 2600 5400 2900
Connection ~ 5400 2600
Wire Wire Line
	5600 2900 5600 2800
Connection ~ 5600 2800
$Comp
L VCC #PWR022
U 1 1 56901D6F
P 5300 1600
F 0 "#PWR022" H 5300 1700 30  0001 C CNN
F 1 "VCC" H 5300 1700 30  0000 C CNN
F 2 "" H 5300 1600 60  0000 C CNN
F 3 "" H 5300 1600 60  0000 C CNN
	1    5300 1600
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR023
U 1 1 56901DA8
P 5300 3400
F 0 "#PWR023" H 5300 3500 30  0001 C CNN
F 1 "VCC" H 5300 3500 30  0000 C CNN
F 2 "" H 5300 3400 60  0000 C CNN
F 3 "" H 5300 3400 60  0000 C CNN
	1    5300 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 3400 5600 3400
Wire Wire Line
	5600 3400 5600 3300
Wire Wire Line
	5400 3400 5400 3300
Connection ~ 5400 3400
Wire Wire Line
	5400 1700 5400 1600
Wire Wire Line
	5300 1600 5600 1600
Wire Wire Line
	5600 1600 5600 1700
Connection ~ 5400 1600
$Comp
L 555ТМ2 D66
U 1 1 56902FA1
P 4100 3800
F 0 "D66" H 4550 3950 60  0000 C CNN
F 1 "555ТМ2" H 4550 3150 60  0000 C CNN
F 2 "MyLib_metric:DIP-14" H 4400 3550 60  0001 C CNN
F 3 "" H 4400 3550 60  0000 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
$Comp
L 555ТМ2 D66
U 2 1 56902FF8
P 4100 4700
F 0 "D66" H 4550 4850 60  0000 C CNN
F 1 "555ТМ2" H 4550 4050 60  0000 C CNN
F 2 "MyLib_metric:DIP-14" H 4400 4450 60  0001 C CNN
F 3 "" H 4400 4450 60  0000 C CNN
	2    4100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4000 4000 4000
Wire Wire Line
	4000 4000 4000 3600
Wire Wire Line
	4000 3600 5100 3600
Wire Wire Line
	5100 3600 5100 4200
Wire Wire Line
	5100 4200 5000 4200
Text HLabel 3900 4100 0    60   Input ~ 0
SINT
Wire Wire Line
	3400 3800 4100 3800
Text Label 3400 3800 0    60   ~ 0
LOP
Wire Wire Line
	3900 4100 4100 4100
$Comp
L VCC #PWR024
U 1 1 56903427
P 4000 4300
F 0 "#PWR024" H 4000 4400 30  0001 C CNN
F 1 "VCC" H 4000 4400 30  0000 C CNN
F 2 "" H 4000 4300 60  0000 C CNN
F 3 "" H 4000 4300 60  0000 C CNN
	1    4000 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 4300 4100 4300
Wire Wire Line
	5000 3900 5200 3900
Wire Wire Line
	5200 3900 5200 4500
Wire Wire Line
	4000 5000 4100 5000
$Comp
L GND #PWR025
U 1 1 569035C8
P 3900 4900
F 0 "#PWR025" H 3900 4900 30  0001 C CNN
F 1 "GND" H 3900 4830 30  0001 C CNN
F 2 "" H 3900 4900 60  0000 C CNN
F 3 "" H 3900 4900 60  0000 C CNN
	1    3900 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 4900 4100 4900
Wire Wire Line
	4100 5200 4000 5200
Wire Wire Line
	4000 5200 4000 5400
Wire Wire Line
	4000 5400 5100 5400
Wire Wire Line
	5100 5400 5100 4800
Wire Wire Line
	5000 4800 5200 4800
Wire Wire Line
	5600 4800 5700 4800
$Comp
L RES R15
U 1 1 56903724
P 5400 4800
F 0 "R15" H 5400 4900 50  0000 C CNN
F 1 "2,7к" H 5400 4700 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Horizontal_RM7.5mm" H 5400 4750 60  0001 C CNN
F 3 "" H 5400 4750 60  0000 C CNN
	1    5400 4800
	1    0    0    -1  
$EndComp
$Comp
L 555ЛИ1 D85
U 4 1 56904645
P 4400 6200
F 0 "D85" H 4400 6350 60  0000 C CNN
F 1 "555ЛИ1" H 4400 5950 50  0000 C CNN
F 2 "MyLib_metric:DIP-14" H 4400 6150 60  0001 C CNN
F 3 "" H 4400 6150 60  0000 C CNN
	4    4400 6200
	1    0    0    -1  
$EndComp
$Comp
L 555ЛЕ1 D43
U 3 1 56904684
P 5600 5900
F 0 "D43" H 5600 6050 60  0000 C CNN
F 1 "555ЛЕ1" H 5600 5650 50  0000 C CNN
F 2 "MyLib_metric:DIP-14" H 5600 5850 60  0001 C CNN
F 3 "" H 5600 5850 60  0000 C CNN
	3    5600 5900
	1    0    0    -1  
$EndComp
Text HLabel 4000 5700 0    60   Input ~ 0
~M1
Text HLabel 4000 5800 0    60   Input ~ 0
~IORQ
Text HLabel 4000 6200 0    60   Input ~ 0
HY
Text HLabel 4000 6300 0    60   Input ~ 0
SINT
Wire Wire Line
	4000 6200 4100 6200
Wire Wire Line
	4000 6300 4100 6300
Wire Wire Line
	4000 5800 4100 5800
Wire Wire Line
	4000 5700 4100 5700
Wire Wire Line
	4000 5000 4000 4500
Wire Wire Line
	4000 4500 5200 4500
Wire Wire Line
	5300 5900 5200 5900
Wire Wire Line
	5200 5900 5200 5100
Wire Wire Line
	5200 5100 5000 5100
Connection ~ 5100 4800
Wire Wire Line
	4700 6200 5200 6200
Wire Wire Line
	5200 6200 5200 6000
Wire Wire Line
	5200 6000 5300 6000
Wire Wire Line
	4700 5700 4800 5700
Wire Wire Line
	4800 5700 4800 5500
Wire Wire Line
	3800 5500 5700 5500
Wire Wire Line
	3800 5500 3800 4700
Wire Wire Line
	3800 4700 4100 4700
Connection ~ 4800 5500
Wire Wire Line
	5900 5900 6200 5900
Text Label 6200 5900 2    60   ~ 0
LOP
Text HLabel 1100 2100 0    50   Input ~ 0
CLK
Text HLabel 1100 1900 0    60   Input ~ 0
~NMI
Text HLabel 1100 1800 0    60   Input ~ 0
~INT
Text HLabel 1100 2600 0    60   Input ~ 0
~BUSRQ
Text HLabel 1100 2700 0    60   Output ~ 0
~BUSAK
Text HLabel 1100 3100 0    60   Output ~ 0
~HALT
Text HLabel 5700 5500 2    60   Output ~ 0
~INTA
Text HLabel 5700 4800 2    60   Output ~ 0
~INT
$Comp
L RES R106
U 1 1 566FEE8C
P 7200 1600
F 0 "R106" H 7200 1700 50  0000 C CNN
F 1 "10к" H 7200 1600 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 1550 60  0001 C CNN
F 3 "" H 7200 1550 60  0000 C CNN
	1    7200 1600
	1    0    0    -1  
$EndComp
$Comp
L RES R107
U 1 1 566FF295
P 7200 1800
F 0 "R107" H 7200 1900 50  0000 C CNN
F 1 "10к" H 7200 1800 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 1750 60  0001 C CNN
F 3 "" H 7200 1750 60  0000 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
$Comp
L RES R108
U 1 1 566FF2E4
P 7200 2000
F 0 "R108" H 7200 2100 50  0000 C CNN
F 1 "10к" H 7200 2000 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 1950 60  0001 C CNN
F 3 "" H 7200 1950 60  0000 C CNN
	1    7200 2000
	1    0    0    -1  
$EndComp
$Comp
L RES R109
U 1 1 566FF336
P 7200 2200
F 0 "R109" H 7200 2300 50  0000 C CNN
F 1 "10к" H 7200 2200 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 2150 60  0001 C CNN
F 3 "" H 7200 2150 60  0000 C CNN
	1    7200 2200
	1    0    0    -1  
$EndComp
$Comp
L RES R110
U 1 1 566FF38B
P 7200 2400
F 0 "R110" H 7200 2500 50  0000 C CNN
F 1 "10к" H 7200 2400 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 2350 60  0001 C CNN
F 3 "" H 7200 2350 60  0000 C CNN
	1    7200 2400
	1    0    0    -1  
$EndComp
$Comp
L RES R111
U 1 1 566FF413
P 7200 2600
F 0 "R111" H 7200 2700 50  0000 C CNN
F 1 "10к" H 7200 2600 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 2550 60  0001 C CNN
F 3 "" H 7200 2550 60  0000 C CNN
	1    7200 2600
	1    0    0    -1  
$EndComp
$Comp
L RES R112
U 1 1 566FF472
P 7200 2800
F 0 "R112" H 7200 2900 50  0000 C CNN
F 1 "10к" H 7200 2800 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 2750 60  0001 C CNN
F 3 "" H 7200 2750 60  0000 C CNN
	1    7200 2800
	1    0    0    -1  
$EndComp
$Comp
L RES R113
U 1 1 566FF4D0
P 7200 3000
F 0 "R113" H 7200 3100 50  0000 C CNN
F 1 "10к" H 7200 3000 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 2950 60  0001 C CNN
F 3 "" H 7200 2950 60  0000 C CNN
	1    7200 3000
	1    0    0    -1  
$EndComp
$Comp
L RES R18
U 1 1 566FF531
P 7200 900
F 0 "R18" H 7200 1000 50  0000 C CNN
F 1 "10к" H 7200 900 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 850 60  0001 C CNN
F 3 "" H 7200 850 60  0000 C CNN
	1    7200 900 
	1    0    0    -1  
$EndComp
$Comp
L RES R19
U 1 1 566FF5CF
P 7200 1100
F 0 "R19" H 7200 1200 50  0000 C CNN
F 1 "10к" H 7200 1100 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 1050 60  0001 C CNN
F 3 "" H 7200 1050 60  0000 C CNN
	1    7200 1100
	1    0    0    -1  
$EndComp
$Comp
L RES R20
U 1 1 566FF636
P 7200 1300
F 0 "R20" H 7200 1400 50  0000 C CNN
F 1 "10к" H 7200 1300 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Vertical_RM2.5mm" H 7200 1250 60  0001 C CNN
F 3 "" H 7200 1250 60  0000 C CNN
	1    7200 1300
	1    0    0    -1  
$EndComp
Text HLabel 6900 1600 0    60   BiDi ~ 0
D0
Text HLabel 6900 1800 0    60   BiDi ~ 0
D1
Text HLabel 6900 2000 0    60   BiDi ~ 0
D2
Text HLabel 6900 2200 0    60   BiDi ~ 0
D3
Text HLabel 6900 2400 0    60   BiDi ~ 0
D4
Text HLabel 6900 2600 0    60   BiDi ~ 0
D5
Text HLabel 6900 2800 0    60   BiDi ~ 0
D6
Text HLabel 6900 900  0    60   Input ~ 0
~NMI
Text HLabel 6800 1100 0    60   Input ~ 0
~BUSRQ
Text HLabel 6900 1300 0    60   Input ~ 0
CLK
Wire Wire Line
	6900 1300 7000 1300
Wire Wire Line
	6800 1100 7000 1100
Wire Wire Line
	6900 900  7000 900 
Wire Wire Line
	6900 3000 7000 3000
Wire Wire Line
	6900 2800 7000 2800
Wire Wire Line
	6900 2600 7000 2600
Wire Wire Line
	6900 2400 7000 2400
Wire Wire Line
	6900 2200 7000 2200
Wire Wire Line
	6900 2000 7000 2000
Wire Wire Line
	7000 1800 6900 1800
Wire Wire Line
	6900 1600 7000 1600
$Comp
L VCC #PWR026
U 1 1 5670277F
P 7600 900
F 0 "#PWR026" H 7600 1000 30  0001 C CNN
F 1 "VCC" H 7600 1000 30  0000 C CNN
F 2 "" H 7600 900 60  0000 C CNN
F 3 "" H 7600 900 60  0000 C CNN
	1    7600 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 900  7600 900 
Wire Wire Line
	7500 3000 7400 3000
Wire Wire Line
	7500 900  7500 3000
Connection ~ 7500 900 
Wire Wire Line
	7400 2800 7500 2800
Connection ~ 7500 2800
Wire Wire Line
	7400 2600 7500 2600
Connection ~ 7500 2600
Wire Wire Line
	7400 2400 7500 2400
Connection ~ 7500 2400
Wire Wire Line
	7400 2200 7500 2200
Connection ~ 7500 2200
Wire Wire Line
	7400 2000 7500 2000
Connection ~ 7500 2000
Wire Wire Line
	7400 1800 7500 1800
Connection ~ 7500 1800
Wire Wire Line
	7400 1600 7500 1600
Connection ~ 7500 1600
Wire Wire Line
	7400 1300 7500 1300
Connection ~ 7500 1300
Wire Wire Line
	7400 1100 7500 1100
Connection ~ 7500 1100
Wire Wire Line
	1100 3100 1200 3100
Wire Wire Line
	1100 2700 1200 2700
Wire Wire Line
	1100 2600 1200 2600
Wire Wire Line
	1100 2100 1200 2100
Wire Wire Line
	700  2200 1200 2200
Text Label 700  2200 0    50   ~ 0
~RESET*
Text HLabel 2200 3400 0    60   Input ~ 0
~RESET
$Comp
L RES R135
U 1 1 56706A3E
P 2500 3400
F 0 "R135" H 2500 3500 50  0000 C CNN
F 1 "10к" H 2500 3300 50  0000 C CNN
F 2 "MyLib_metric:Resistor_Horizontal_RM7.5mm" H 2500 3350 60  0001 C CNN
F 3 "" H 2500 3350 60  0000 C CNN
	1    2500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3400 2200 3400
$Comp
L CAPP C24
U 1 1 56706B9B
P 2800 3600
F 0 "C24" H 2800 3725 50  0000 C CNN
F 1 "1мк" H 2800 3475 50  0000 C CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 2800 3550 60  0001 C CNN
F 3 "" H 2800 3550 60  0000 C CNN
	1    2800 3600
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR027
U 1 1 56706C36
P 2800 3800
F 0 "#PWR027" H 2800 3800 30  0001 C CNN
F 1 "GND" H 2800 3730 30  0001 C CNN
F 2 "" H 2800 3800 60  0000 C CNN
F 3 "" H 2800 3800 60  0000 C CNN
	1    2800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3800 2800 3700
Wire Wire Line
	2700 3400 3200 3400
Wire Wire Line
	2800 3400 2800 3500
Connection ~ 2800 3400
Text Label 3200 3400 2    60   ~ 0
~RESET*
Entry Wire Line
	3200 3400 3300 3500
Wire Bus Line
	600  600  600  6100
Entry Wire Line
	600  2100 700  2200
Wire Bus Line
	6300 600  6300 7000
Entry Wire Line
	3300 3700 3400 3800
Entry Wire Line
	6200 5900 6300 6000
Wire Bus Line
	600  600  6300 600 
Text HLabel 5700 2600 2    60   Output ~ 0
~ROMEN
Text HLabel 1100 5600 0    60   Input ~ 0
~ROMEN
Wire Wire Line
	1100 5600 1500 5600
Wire Wire Line
	1100 1800 1200 1800
Wire Wire Line
	1200 1900 1100 1900
Text HLabel 1100 2400 0    60   Input ~ 0
~WAIT
Wire Wire Line
	1100 2400 1200 2400
$Comp
L 555ЛЛ1 D29
U 3 1 57042124
P 4400 5700
F 0 "D29" H 4400 5850 60  0000 C CNN
F 1 "555ЛЛ1" H 4400 5450 50  0000 C CNN
F 2 "MyLib_metric:DIP-14" H 4400 5650 60  0001 C CNN
F 3 "" H 4400 5650 60  0000 C CNN
	3    4400 5700
	1    0    0    -1  
$EndComp
Text HLabel 2700 4700 2    60   Output ~ 0
D7
Text HLabel 6900 3000 0    60   BiDi ~ 0
D7
Text HLabel 1100 1600 0    60   BiDi ~ 0
D7
$EndSCHEMATC
