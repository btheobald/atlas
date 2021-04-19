EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 11614 17914
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
Text Notes 9200 12100 0    118  ~ 0
Board Physical
Wire Notes Line width 20 style solid
	11050 13900 9100 13900
Wire Notes Line width 20 style solid
	9100 11800 9100 13900
Wire Notes Line width 20 style solid
	11050 11800 11050 13900
Wire Notes Line width 20 style solid
	11050 11800 9100 11800
Text Notes 9200 10050 0    118  ~ 0
Buzzer
Wire Notes Line width 20 style solid
	11050 11700 9100 11700
Wire Notes Line width 20 style solid
	9100 9750 9100 11700
Wire Notes Line width 20 style solid
	11050 9750 11050 11700
Wire Notes Line width 20 style solid
	11050 9750 9100 9750
Wire Wire Line
	10200 700  10200 900 
Wire Wire Line
	10450 700  10200 700 
Text Notes 8700 9500 0    49   ~ 0
External Active Antenna
Wire Notes Line width 10
	10950 9550 8650 9550
Connection ~ 9650 8950
Wire Wire Line
	9400 8950 9400 8900
Wire Wire Line
	9650 8950 9400 8950
$Comp
L atlas:Q_DUAL_NMOS_PMOS Q1
U 2 1 610C4D63
P 9650 8750
F 0 "Q1" V 9993 8750 50  0000 C CNN
F 1 "DMC2990UDJ" V 9902 8750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9850 8750 50  0001 C CNN
F 3 "~" H 9850 8750 50  0001 C CNN
	2    9650 8750
	0    1    -1   0   
$EndComp
Wire Notes Line width 10
	10950 8200 10950 9550
Wire Notes Line width 20 style solid
	11050 5450 11050 9650
Wire Notes Line width 20 style solid
	11050 9650 8550 9650
Wire Wire Line
	9150 7600 9150 7850
Connection ~ 9150 7600
Wire Wire Line
	9150 7500 9150 7600
Connection ~ 9150 7500
Wire Wire Line
	9150 7400 9150 7500
Connection ~ 9150 7400
Wire Wire Line
	9150 7300 9150 7400
Text Label 9400 8350 0    39   ~ 0
GPS_RF_EXT
Wire Wire Line
	10150 8350 9350 8350
Text Label 8900 8350 0    39   ~ 0
GPS_RF
Wire Wire Line
	9150 8350 8900 8350
Text Notes 5600 10050 0    118  ~ 0
I2C and SPI Sensors
Wire Notes Line width 20 style solid
	5500 9750 9000 9750
Wire Notes Line width 20 style solid
	5500 9750 5500 16100
Wire Notes Line width 20 style solid
	9000 9750 9000 16100
Wire Notes Line width 10
	8650 9550 8650 8200
Wire Notes Line width 10
	10950 8200 8650 8200
$Comp
L power:GND #PWR0139
U 1 1 6ECBFE48
P 10350 8500
F 0 "#PWR0139" H 10350 8250 50  0001 C CNN
F 1 "GND" H 10355 8327 50  0001 C CNN
F 2 "" H 10350 8500 50  0001 C CNN
F 3 "" H 10350 8500 50  0001 C CNN
	1    10350 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 8600 10150 8650
Wire Wire Line
	9450 8650 9400 8650
Text Label 8900 8650 0    39   ~ 8
VCC_BACKUP
Wire Wire Line
	9400 8700 9400 8650
Connection ~ 9400 8650
Wire Wire Line
	9400 8650 8900 8650
Wire Wire Line
	10100 8650 10150 8650
Wire Wire Line
	9900 8650 9850 8650
$Comp
L Device:Antenna_Shield AE1
U 1 1 6EB30B22
P 10600 8350
F 0 "AE1" V 10750 8350 50  0000 L CNN
F 1 "GPS_EXT" V 10850 8250 50  0000 L CNN
F 2 "Connector_Coaxial:U.FL_Hirose_U.FL-R-SMT-1_Vertical" H 10600 8450 50  0001 C CNN
F 3 "~" H 10600 8450 50  0001 C CNN
	1    10600 8350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R44
U 1 1 71A08137
P 10000 8650
F 0 "R44" V 9900 8800 50  0000 R CNN
F 1 "10" V 9900 8600 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10000 8650 50  0001 C CNN
F 3 "~" H 10000 8650 50  0001 C CNN
	1    10000 8650
	0    -1   -1   0   
$EndComp
$Comp
L Device:L_Small L5
U 1 1 71AE6418
P 10150 8500
F 0 "L5" H 10200 8450 50  0000 L CNN
F 1 "47n" H 10200 8550 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 10150 8500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2644240.pdf" H 10150 8500 50  0001 C CNN
F 4 "2917560" H 10150 8500 50  0001 C CNN "Order No"
F 5 "0.2460" H 10150 8500 50  0001 C CNN "Price"
	1    10150 8500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 618C82DC
P 9400 8800
F 0 "R1" H 9350 8850 50  0000 R CNN
F 1 "10k" H 9350 8750 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9400 8800 50  0001 C CNN
F 3 "~" H 9400 8800 50  0001 C CNN
	1    9400 8800
	1    0    0    -1  
$EndComp
Connection ~ 10150 8350
Wire Wire Line
	10150 8350 10150 8400
Wire Wire Line
	10350 8450 10400 8450
Wire Wire Line
	10350 8450 10350 8500
Wire Wire Line
	10150 8350 10400 8350
$Comp
L power:GND #PWR0123
U 1 1 61293823
P 9650 9400
F 0 "#PWR0123" H 9650 9150 50  0001 C CNN
F 1 "GND" H 9655 9227 50  0001 C CNN
F 2 "" H 9650 9400 50  0001 C CNN
F 3 "" H 9650 9400 50  0001 C CNN
	1    9650 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 9400 9650 9350
$Comp
L atlas:Q_DUAL_NMOS_PMOS Q1
U 1 1 610C350D
P 9550 9150
F 0 "Q1" H 9756 9196 50  0000 L CNN
F 1 "DMC2990UDJ" H 9756 9105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9750 9150 50  0001 C CNN
F 3 "~" H 9750 9150 50  0001 C CNN
	1    9550 9150
	1    0    0    -1  
$EndComp
Text Notes 8700 8050 0    49   ~ 0
GNSS Module
Wire Notes Line width 10
	10950 8100 8650 8100
Wire Notes Line width 10
	10950 8100 10950 5750
Wire Notes Line width 10
	8650 5750 8650 8100
Wire Notes Line width 10
	10950 5750 8650 5750
Text Notes 8650 5700 0    118  ~ 0
GNSS Subsystem
Wire Notes Line width 20 style solid
	11050 5450 8550 5450
Wire Notes Line width 20 style solid
	8550 5450 8550 9650
Wire Notes Line width 20 style solid
	8600 5350 10600 5350
Wire Notes Line width 20 style solid
	10600 600  10600 5350
Text Notes 8700 850  0    118  ~ 0
LCD Connector
Wire Notes Line width 20 style solid
	8600 600  10600 600 
Wire Notes Line width 20 style solid
	8600 600  8600 5350
Wire Wire Line
	10150 4800 10250 4800
Connection ~ 10150 4800
Wire Wire Line
	10150 4900 10150 4800
Wire Wire Line
	10150 5200 10450 5200
Wire Wire Line
	10000 4800 10150 4800
Wire Wire Line
	10000 4800 10000 4900
Text Label 8900 9150 0    39   ~ 0
GPS_ANT_ON
Wire Wire Line
	9350 9150 8900 9150
Text Label 10850 6350 2    39   ~ 0
GPS_ANT_ON
Text Label 10800 6050 2    39   ~ 0
GPS_RF
Wire Wire Line
	9550 4400 10200 4400
Connection ~ 10200 4400
Wire Wire Line
	10250 4400 10200 4400
Wire Wire Line
	10200 4400 10200 4300
Wire Wire Line
	10200 4300 10250 4300
Wire Wire Line
	9550 4400 9550 4500
Connection ~ 9550 4400
Wire Wire Line
	9400 4400 9550 4400
Wire Wire Line
	9550 4500 9550 4600
Connection ~ 9550 4500
Wire Wire Line
	9400 4500 9550 4500
Wire Wire Line
	9400 4600 9550 4600
Connection ~ 9300 4850
Wire Wire Line
	9200 4850 9300 4850
Connection ~ 9150 4100
Wire Wire Line
	9150 4150 9150 4100
Connection ~ 9550 4600
Wire Notes Line width 10
	5600 16000 5600 13200
Wire Notes Line width 10
	8900 16000 5600 16000
Wire Notes Line width 10
	8900 16000 8900 13200
Wire Notes Line width 10
	8900 13200 5600 13200
Wire Notes Line width 10
	8900 13100 5600 13100
$Comp
L power:GND #PWR0182
U 1 1 62135D0A
P 7850 14350
F 0 "#PWR0182" H 7850 14100 50  0001 C CNN
F 1 "GND" H 7855 14177 50  0001 C CNN
F 2 "" H 7850 14350 50  0001 C CNN
F 3 "" H 7850 14350 50  0001 C CNN
	1    7850 14350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 14350 7850 14300
Wire Notes Line width 10
	5600 10200 5600 13100
Wire Notes Line width 10
	8900 10200 8900 13100
Wire Notes Line width 10
	8900 10200 5600 10200
Wire Notes Line width 20 style solid
	5500 16100 9000 16100
Wire Wire Line
	1350 9600 1350 9650
Wire Wire Line
	900  9600 1350 9600
Text Label 900  9600 0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	1350 9900 2400 9900
Wire Wire Line
	1350 9850 1350 9900
$Comp
L Device:R_Small R32
U 1 1 805F27B4
P 1350 9750
F 0 "R32" H 1250 9700 50  0000 R CNN
F 1 "100k" H 1250 9800 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1350 9750 50  0001 C CNN
F 3 "~" H 1350 9750 50  0001 C CNN
	1    1350 9750
	1    0    0    -1  
$EndComp
Text Notes 750  16600 0    49   ~ 0
MicroSD Connector
Wire Notes Line width 10
	2150 16650 700  16650
Wire Notes Line width 10
	700  15050 700  16650
Wire Notes Line width 10
	2150 16650 2150 15050
Wire Notes Line width 10
	2150 15050 700  15050
Wire Wire Line
	800  16050 1200 16050
Wire Wire Line
	800  15950 1200 15950
Text Notes 2300 16600 0    49   ~ 0
Bluetooth Low Energy Module
Wire Notes Line width 10
	2250 14450 2250 16650
Wire Notes Line width 10
	5300 16650 2250 16650
Wire Notes Line width 10
	5300 16650 5300 14450
Wire Notes Line width 10
	2250 14450 5300 14450
Wire Wire Line
	2000 12800 2000 12900
Wire Wire Line
	1950 12800 2000 12800
Wire Wire Line
	2000 13450 2000 13400
$Comp
L power:GND #PWR057
U 1 1 63DC230B
P 2000 13450
F 0 "#PWR057" H 2000 13200 50  0001 C CNN
F 1 "GND" H 2005 13277 50  0001 C CNN
F 2 "" H 2000 13450 50  0001 C CNN
F 3 "" H 2000 13450 50  0001 C CNN
	1    2000 13450
	1    0    0    -1  
$EndComp
Connection ~ 2000 12900
Wire Wire Line
	2000 13000 2000 12900
Wire Wire Line
	1300 12900 2000 12900
Wire Wire Line
	1300 13100 1850 13100
Wire Wire Line
	1850 13000 1300 13000
Text Label 1850 13000 2    39   ~ 0
DBG_SWDCLK_STM
Text Label 1850 13100 2    39   ~ 0
DBG_SWDIO_STM
Text Label 1850 12900 2    39   ~ 0
DBG_NRESET_STM
Text Label 1850 13200 2    39   ~ 0
DBG_SWO_STM
Wire Wire Line
	1850 13200 1300 13200
Wire Wire Line
	1750 12800 1300 12800
Text Label 1300 12800 0    39   ~ 8
VCC_3V3_MCU
$Comp
L Device:R_Small R25
U 1 1 635BE327
P 1850 12800
F 0 "R25" V 1950 12700 50  0000 C CNN
F 1 "100k" V 1950 12900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1850 12800 50  0001 C CNN
F 3 "~" H 1850 12800 50  0001 C CNN
	1    1850 12800
	0    1    -1   0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 63D16CDC
P 2000 13200
F 0 "SW3" V 2200 13450 50  0000 L CNN
F 1 "ResetSTM" V 2300 13350 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 2000 13400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2789835.pdf" H 2000 13400 50  0001 C CNN
F 4 "3023215" H 2000 13200 50  0001 C CNN "Order No"
F 5 "0.1812" H 2000 13200 50  0001 C CNN "Price"
	1    2000 13200
	0    -1   1    0   
$EndComp
Text Label 1850 14050 2    39   ~ 0
DBG_NRESET_NCP
Wire Wire Line
	2750 15650 2350 15650
Text Label 1300 13950 0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	2000 13950 2000 14050
Wire Wire Line
	1950 13950 2000 13950
Wire Wire Line
	2000 14600 2000 14550
$Comp
L power:GND #PWR0128
U 1 1 66D8C7C7
P 2000 14600
F 0 "#PWR0128" H 2000 14350 50  0001 C CNN
F 1 "GND" H 2005 14427 50  0001 C CNN
F 2 "" H 2000 14600 50  0001 C CNN
F 3 "" H 2000 14600 50  0001 C CNN
	1    2000 14600
	1    0    0    -1  
$EndComp
Connection ~ 2000 14050
Wire Wire Line
	2000 14150 2000 14050
Wire Wire Line
	1300 14050 2000 14050
Wire Wire Line
	1300 14250 1850 14250
Wire Wire Line
	1850 14150 1300 14150
Text Label 1850 14150 2    39   ~ 0
DBG_SWDCLK_NCP
Text Label 1850 14250 2    39   ~ 0
DBG_SWDIO_NCP
Text Label 1850 14350 2    39   ~ 0
DBG_SWO_NCP
Wire Wire Line
	1850 14350 1300 14350
Wire Wire Line
	1750 13950 1300 13950
$Comp
L Device:R_Small R21
U 1 1 66D8C7D4
P 1850 13950
F 0 "R21" V 1950 13850 50  0000 C CNN
F 1 "100k" V 1950 14050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1850 13950 50  0001 C CNN
F 3 "~" H 1850 13950 50  0001 C CNN
	1    1850 13950
	0    1    -1   0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 66D8C801
P 2000 14350
F 0 "SW5" V 2200 14600 50  0000 L CNN
F 1 "ResetNCP" V 2300 14500 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 2000 14550 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2789835.pdf" H 2000 14550 50  0001 C CNN
F 4 "3023215" H 2000 14350 50  0001 C CNN "Order No"
F 5 "0.1812" H 2000 14350 50  0001 C CNN "Price"
	1    2000 14350
	0    -1   1    0   
$EndComp
Connection ~ 5200 15750
Wire Wire Line
	5200 15450 5200 15750
Wire Wire Line
	5200 15800 5200 15750
Wire Wire Line
	4750 15550 4800 15550
Wire Wire Line
	4750 15650 4800 15650
Wire Wire Line
	8150 11050 8800 11050
Connection ~ 8150 11050
Wire Wire Line
	8150 10700 8150 11050
Connection ~ 7950 10400
Wire Wire Line
	8150 10400 7950 10400
Wire Wire Line
	8150 10500 8150 10400
Wire Wire Line
	7750 10400 7950 10400
Wire Wire Line
	6450 11050 8150 11050
Wire Notes Line width 10
	5600 6750 8350 6750
Text Notes 5600 5450 0    118  ~ 0
Board Buttons and LEDs
Wire Notes Line width 10
	8350 5600 8350 6750
Wire Notes Line width 10
	5600 5600 8350 5600
Wire Notes Line width 10
	5600 5600 5600 6750
Wire Notes Line width 10
	5600 6850 8350 6850
Wire Notes Line width 10
	8350 6850 8350 9550
Wire Notes Line width 10
	5600 9550 8350 9550
Wire Notes Line width 10
	5600 6850 5600 9550
Wire Notes Line width 20 style solid
	5500 5150 8450 5150
Wire Notes Line width 20 style solid
	8450 5150 8450 9650
Wire Notes Line width 20 style solid
	5500 9650 8450 9650
Wire Notes Line width 20 style solid
	5500 5150 5500 9650
Text Notes 2300 14300 0    49   ~ 0
External OctoSPI DRAM
Text Notes 750  14850 0    49   ~ 0
SWD Connectors
Text Notes 750  12250 0    49   ~ 0
MCU and Oscillators
Text Notes 700  5450 0    118  ~ 0
Microcontrollers and External Memory
Wire Notes Line width 10
	700  5600 5300 5600
Wire Notes Line width 10
	5300 5600 5300 12300
Wire Notes Line width 10
	700  14900 700  12400
Wire Notes Line width 10
	2150 14900 700  14900
Wire Notes Line width 10
	2150 12400 2150 14900
Wire Notes Line width 10
	700  12400 2150 12400
Wire Notes Line width 10
	5300 12400 2250 12400
Wire Notes Line width 10
	5300 14350 5300 12400
Wire Notes Line width 10
	2250 14350 5300 14350
Wire Notes Line width 10
	2250 12400 2250 14350
Wire Notes Line width 10
	700  12300 700  5600
Wire Notes Line width 10
	5300 12300 700  12300
Wire Notes Line width 20 style solid
	600  16750 600  5150
Wire Notes Line width 20 style solid
	5400 16750 600  16750
Wire Notes Line width 20 style solid
	5400 5150 5400 16750
Wire Notes Line width 20 style solid
	600  5150 5400 5150
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5300 4450 5400 4450
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5350 4425 5400 4450
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5350 4475 5350 4425
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5350 4475 5400 4450
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	1600 2250 1600 2150
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	1575 2200 1600 2150
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	1625 2200 1575 2200
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	1625 2200 1600 2150
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5300 3000 5400 3000
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5350 2975 5400 3000
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5350 3025 5350 2975
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5350 3025 5400 3000
Wire Notes Line width 10
	750  2250 5300 2250
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	3950 2250 3950 2150
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	3925 2200 3950 2150
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	3975 2200 3925 2200
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	3975 2200 3950 2150
Wire Notes Line width 10
	5300 2150 2650 2150
Wire Notes Line width 10
	5300 2250 5300 4950
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5300 2250 5400 2150
Wire Notes Line width 10
	5400 2150 5400 700 
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5340 2170 5400 2150
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5380 2210 5400 2150
Wire Notes Line width 30 style solid rgb(0, 0, 0)
	5340 2170 5380 2210
Text Notes 5450 4900 0    49   ~ 0
LCD 5V Boost Regulator
Text Notes 5450 3750 0    49   ~ 0
LCD Backlight Driver
Text Notes 5450 2100 0    49   ~ 0
Adjustable Core (1-1.35V) Buck Regulator
Text Notes 2700 2100 0    49   ~ 0
Primary 3.3V Buck Regulator
Text Notes 800  2100 0    49   ~ 0
Backup 3V LDO
Text Notes 800  4900 0    49   ~ 0
USB and  NVDC Battery Charger
Text Notes 750  900  0    118  ~ 0
Power Conversion
Wire Wire Line
	5500 950  5700 950 
Wire Wire Line
	5700 950  6400 950 
Connection ~ 5700 950 
Connection ~ 8000 1100
Wire Wire Line
	8000 1100 8200 1100
$Comp
L Device:C_Small C15
U 1 1 612129EE
P 7700 1750
F 0 "C15" H 7608 1796 50  0000 R CNN
F 1 "10u" H 7608 1705 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7700 1750 50  0001 C CNN
F 3 "~" H 7700 1750 50  0001 C CNN
	1    7700 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7950 1100 8000 1100
Wire Notes Line width 10
	2550 1050 750  1050
Wire Notes Line width 10
	8400 4950 8400 3900
Wire Notes Line width 10
	5400 4950 8400 4950
Wire Notes Line width 10
	5400 3900 5400 4950
Wire Notes Line width 10
	8400 3900 5400 3900
Wire Wire Line
	1850 2600 1850 2650
$Comp
L power:GND #PWR038
U 1 1 74AA4E10
P 1850 2900
F 0 "#PWR038" H 1850 2650 50  0001 C CNN
F 1 "GND" H 1855 2727 50  0001 C CNN
F 2 "" H 1850 2900 50  0001 C CNN
F 3 "" H 1850 2900 50  0001 C CNN
	1    1850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2900 1850 2850
$Comp
L power:GND #PWR0165
U 1 1 6C000B91
P 1000 3600
F 0 "#PWR0165" H 1000 3350 50  0001 C CNN
F 1 "GND" H 1005 3427 50  0001 C CNN
F 2 "" H 1000 3600 50  0001 C CNN
F 3 "" H 1000 3600 50  0001 C CNN
	1    1000 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1000 3600 1000 3550
Wire Wire Line
	1450 2600 1450 2950
Wire Wire Line
	1450 2950 1400 2950
Wire Wire Line
	1000 3550 1100 3550
Connection ~ 1000 3550
Text Label 2200 2600 0    39   ~ 8
USB_PORT_VBUS
Wire Wire Line
	1450 2600 1650 2600
Wire Wire Line
	1650 2650 1650 2600
Connection ~ 1650 2600
$Comp
L power:GND #PWR0125
U 1 1 67A7C00C
P 1650 2900
F 0 "#PWR0125" H 1650 2650 50  0001 C CNN
F 1 "GND" H 1655 2727 50  0001 C CNN
F 2 "" H 1650 2900 50  0001 C CNN
F 3 "" H 1650 2900 50  0001 C CNN
	1    1650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2900 1650 2850
$Comp
L Connector:USB_B_Micro J1
U 1 1 6045B423
P 1100 3150
F 0 "J1" H 1157 3617 50  0000 C CNN
F 1 "USB_B_Micro" H 1157 3526 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 1250 3100 50  0001 C CNN
F 3 "~" H 1250 3100 50  0001 C CNN
	1    1100 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 61DA6782
P 1400 2600
F 0 "TP1" V 1500 2850 50  0000 L CNN
F 1 "5V_USB" V 1500 2550 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 1600 2600 50  0001 C CNN
F 3 "~" H 1600 2600 50  0001 C CNN
	1    1400 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3150 2300 3150
$Comp
L Device:R_Small R41
U 1 1 65CC9F19
P 1700 3150
F 0 "R41" V 1600 3250 50  0000 C CNN
F 1 "0" V 1600 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1700 3150 50  0001 C CNN
F 3 "~" H 1700 3150 50  0001 C CNN
	1    1700 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R43
U 1 1 65CC9A83
P 1700 3250
F 0 "R43" V 1800 3350 50  0000 C CNN
F 1 "0" V 1800 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1700 3250 50  0001 C CNN
F 3 "~" H 1700 3250 50  0001 C CNN
	1    1700 3250
	0    1    1    0   
$EndComp
Text Label 2250 3150 2    39   ~ 0
USB_CHG_D+
Text Label 2250 3250 2    39   ~ 0
USB_CHG_D-
Wire Wire Line
	1650 2600 1850 2600
Connection ~ 1850 2600
Text Label 2000 3550 2    39   ~ 0
USB_STM_D+
Text Label 2000 3650 2    39   ~ 0
USB_STM_D-
$Comp
L Device:C_Small C27
U 1 1 7489066D
P 1850 2750
F 0 "C27" H 2000 2850 50  0000 R CNN
F 1 "1u" H 1950 2650 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1850 2750 50  0001 C CNN
F 3 "~" H 1850 2750 50  0001 C CNN
	1    1850 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 2650 2050 2600
$Comp
L power:GND #PWR0129
U 1 1 65B4E22C
P 2050 2900
F 0 "#PWR0129" H 2050 2650 50  0001 C CNN
F 1 "GND" H 2055 2727 50  0001 C CNN
F 2 "" H 2050 2900 50  0001 C CNN
F 3 "" H 2050 2900 50  0001 C CNN
	1    2050 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 2850 2050 2900
$Comp
L Device:C_Small C29
U 1 1 63531833
P 2050 2750
F 0 "C29" H 2200 2850 50  0000 R CNN
F 1 "10u" H 2200 2650 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2050 2750 50  0001 C CNN
F 3 "~" H 2050 2750 50  0001 C CNN
	1    2050 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 2600 2050 2600
Connection ~ 2050 2600
Wire Wire Line
	2050 2600 2800 2600
$Comp
L Device:C_Small C18
U 1 1 679C4F06
P 1650 2750
F 0 "C18" H 1650 2850 50  0000 R CNN
F 1 "10u" H 1650 2650 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1650 2750 50  0001 C CNN
F 3 "~" H 1650 2750 50  0001 C CNN
	1    1650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3150 1550 3150
Wire Wire Line
	1400 3250 1450 3250
Wire Wire Line
	2300 3150 2300 2900
Wire Wire Line
	2300 2900 2900 2900
Wire Wire Line
	1800 3250 2400 3250
Wire Wire Line
	1550 3550 1550 3150
Connection ~ 1550 3150
Wire Wire Line
	1550 3150 1600 3150
Wire Wire Line
	1550 3550 2000 3550
Wire Wire Line
	1450 3650 1450 3250
Wire Wire Line
	1450 3650 2000 3650
Connection ~ 1450 3250
Wire Wire Line
	1450 3250 1600 3250
Wire Wire Line
	1400 2600 1450 2600
Connection ~ 1450 2600
Wire Wire Line
	2400 3000 2400 3250
Wire Wire Line
	2400 3000 2900 3000
Wire Notes Line width 10
	750  2250 750  4950
Wire Wire Line
	7750 1100 7700 1100
Wire Wire Line
	7950 950  8250 950 
Wire Wire Line
	8250 1300 8250 950 
Wire Wire Line
	8000 1300 8000 1100
Wire Wire Line
	7700 950  7750 950 
Connection ~ 7700 1100
Wire Wire Line
	7500 1950 7500 1400
Wire Notes Line width 10
	2550 2150 2550 1050
Wire Notes Line width 10
	750  2150 2550 2150
Wire Notes Line width 10
	750  1050 750  2150
Wire Notes Line width 10
	5400 3800 5400 2250
Wire Notes Line width 10
	8400 3800 5400 3800
Wire Notes Line width 10
	8400 2250 8400 3800
Wire Notes Line width 10
	5400 2250 8400 2250
Wire Notes Line width 10
	8400 2150 5400 2150
Wire Notes Line width 10
	8400 700  8400 2150
Wire Notes Line width 10
	5400 700  8400 700 
Wire Notes Line width 10
	2650 2150 2650 700 
Wire Notes Line width 10
	5300 700  5300 2150
Wire Notes Line width 10
	2650 700  5300 700 
Wire Notes Line width 10
	5300 4950 750  4950
Wire Notes Line width 20 style solid
	8500 5050 600  5050
Wire Wire Line
	4800 3800 4800 4300
Connection ~ 4500 3700
Connection ~ 7750 2450
Wire Wire Line
	7850 2450 7750 2450
Connection ~ 7750 3300
Wire Wire Line
	7750 3050 7750 3300
Wire Wire Line
	8050 3050 7750 3050
Wire Wire Line
	7750 2750 8050 2750
Wire Wire Line
	7750 2450 7750 2750
Wire Wire Line
	7500 2450 7750 2450
Wire Notes Line width 20 style solid
	600  600  600  5050
Wire Notes Line width 20 style solid
	8500 600  600  600 
Wire Notes Line width 20 style solid
	8500 5050 8500 600 
Wire Wire Line
	6500 11150 6450 11150
$Comp
L power:GND #PWR0178
U 1 1 61B68406
P 6500 11150
F 0 "#PWR0178" H 6500 10900 50  0001 C CNN
F 1 "GND" H 6505 10977 50  0001 C CNN
F 2 "" H 6500 11150 50  0001 C CNN
F 3 "" H 6500 11150 50  0001 C CNN
	1    6500 11150
	0    -1   1    0   
$EndComp
Connection ~ 6800 11250
Wire Wire Line
	6450 11250 6800 11250
Wire Wire Line
	7400 11250 7400 11400
NoConn ~ 3200 13300
Wire Wire Line
	7350 4150 7800 4150
Wire Wire Line
	7800 4150 7800 4450
Connection ~ 7800 4150
Wire Wire Line
	7800 4150 8300 4150
$Comp
L Connector:TestPoint TP9
U 1 1 6197BF0E
P 9200 4850
F 0 "TP9" V 9300 5050 50  0000 L CNN
F 1 "LCD_5V" V 9300 4750 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 9400 4850 50  0001 C CNN
F 3 "~" H 9400 4850 50  0001 C CNN
	1    9200 4850
	0    -1   -1   0   
$EndComp
Connection ~ 7350 4150
$Comp
L Device:R_Small R31
U 1 1 60D21AF7
P 10150 5000
F 0 "R31" H 10300 5100 50  0000 R CNN
F 1 "0" H 10250 4900 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10150 5000 50  0001 C CNN
F 3 "~" H 10150 5000 50  0001 C CNN
	1    10150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5100 10150 5200
Text Label 10450 5200 2    39   ~ 0
LCD_OPT
Text Label 1550 10000 0    39   ~ 0
GPS_FORCEON
Text Label 8700 4600 0    39   ~ 8
VCC_SYS
Wire Wire Line
	9200 4600 8700 4600
$Comp
L Device:R_Small R30
U 1 1 60923BC1
P 9300 4600
F 0 "R30" V 9250 4500 50  0000 R CNN
F 1 "NP" V 9250 4800 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 9300 4600 50  0001 C CNN
F 3 "~" H 9300 4600 50  0001 C CNN
	1    9300 4600
	0    -1   -1   0   
$EndComp
Text Label 8700 4500 0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	9200 4500 8700 4500
$Comp
L Device:R_Small R24
U 1 1 6077C3C7
P 9300 4500
F 0 "R24" V 9250 4400 50  0000 R CNN
F 1 "NP" V 9250 4700 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 9300 4500 50  0001 C CNN
F 3 "~" H 9300 4500 50  0001 C CNN
	1    9300 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 4400 8700 4400
$Comp
L Device:R_Small R23
U 1 1 605D9087
P 9300 4400
F 0 "R23" V 9250 4300 50  0000 R CNN
F 1 "0" V 9250 4550 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 9300 4400 50  0001 C CNN
F 3 "~" H 9300 4400 50  0001 C CNN
	1    9300 4400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 621CB8B0
P 4800 2550
F 0 "TP13" H 4850 2700 50  0000 L CNN
F 1 "VSYS" H 4850 2600 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 5000 2550 50  0001 C CNN
F 3 "~" H 5000 2550 50  0001 C CNN
	1    4800 2550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP11
U 1 1 62039D2A
P 8200 11600
F 0 "TP11" V 8200 11800 50  0000 L CNN
F 1 "GND" V 8200 12050 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 8400 11600 50  0001 C CNN
F 3 "~" H 8400 11600 50  0001 C CNN
	1    8200 11600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 61F6A771
P 8200 13500
F 0 "TP12" V 8200 13700 50  0000 L CNN
F 1 "GND" V 8200 13950 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 8400 13500 50  0001 C CNN
F 3 "~" H 8400 13500 50  0001 C CNN
	1    8200 13500
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 61CD6643
P 2050 1300
F 0 "TP2" H 2100 1450 50  0000 L CNN
F 1 "3V_BACKUP" H 2100 1350 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 2250 1300 50  0001 C CNN
F 3 "~" H 2250 1300 50  0001 C CNN
	1    2050 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 61B38A15
P 4950 1200
F 0 "TP3" H 5000 1350 50  0000 L CNN
F 1 "3V3_MCU" H 5000 1250 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 5150 1200 50  0001 C CNN
F 3 "~" H 5150 1200 50  0001 C CNN
	1    4950 1200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 61A5828D
P 7850 2450
F 0 "TP10" V 7800 2650 50  0000 L CNN
F 1 "LCD_BL" V 7900 2650 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 8050 2450 50  0001 C CNN
F 3 "~" H 8050 2450 50  0001 C CNN
	1    7850 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 618A9FF4
P 8200 13800
F 0 "TP8" V 8200 14000 50  0000 L CNN
F 1 "MISO" V 8200 14250 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 8400 13800 50  0001 C CNN
F 3 "~" H 8400 13800 50  0001 C CNN
	1    8200 13800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 617DE5F4
P 8200 13700
F 0 "TP7" V 8200 13900 50  0000 L CNN
F 1 "MOSI" V 8200 14150 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 8400 13700 50  0001 C CNN
F 3 "~" H 8400 13700 50  0001 C CNN
	1    8200 13700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 61703199
P 8200 13600
F 0 "TP6" V 8200 13800 50  0000 L CNN
F 1 "SCLK" V 8200 14050 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 8400 13600 50  0001 C CNN
F 3 "~" H 8400 13600 50  0001 C CNN
	1    8200 13600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 6161BCFE
P 8200 11700
F 0 "TP4" V 8200 11900 50  0000 L CNN
F 1 "SCL" V 8200 12150 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 8400 11700 50  0001 C CNN
F 3 "~" H 8400 11700 50  0001 C CNN
	1    8200 11700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 61552444
P 8200 11800
F 0 "TP5" V 8200 12000 50  0000 L CNN
F 1 "SDA" V 8200 12250 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 8400 11800 50  0001 C CNN
F 3 "~" H 8400 11800 50  0001 C CNN
	1    8200 11800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 609B7BA1
P 5850 1750
F 0 "R10" H 5791 1704 50  0000 R CNN
F 1 "100k" H 5791 1795 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5850 1750 50  0001 C CNN
F 3 "~" H 5850 1750 50  0001 C CNN
	1    5850 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 605A382B
P 3200 1100
F 0 "R16" H 3141 1054 50  0000 R CNN
F 1 "NP" H 3141 1145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3200 1100 50  0001 C CNN
F 3 "~" H 3200 1100 50  0001 C CNN
	1    3200 1100
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R17
U 1 1 604DD7AE
P 3300 1100
F 0 "R17" H 3241 1054 50  0000 R CNN
F 1 "100k" H 3241 1145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3300 1100 50  0001 C CNN
F 3 "~" H 3300 1100 50  0001 C CNN
	1    3300 1100
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:Housing N1
U 1 1 61B8C8FF
P 9850 13550
F 0 "N1" H 10003 13584 50  0000 L CNN
F 1 "Bottom Silk Art" H 10003 13493 50  0000 L CNN
F 2 "atlas:europeart" H 9900 13600 50  0001 C CNN
F 3 "~" H 9900 13600 50  0001 C CNN
	1    9850 13550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 619503E4
P 10250 12500
F 0 "H2" H 10350 12546 50  0000 L CNN
F 1 "MountingHole" H 10350 12455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 10250 12500 50  0001 C CNN
F 3 "~" H 10250 12500 50  0001 C CNN
	1    10250 12500
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L6
U 1 1 6172CB28
P 2600 14850
F 0 "L6" V 2550 15000 50  0000 C CNN
F 1 "10u" V 2550 14750 50  0000 C CNN
F 2 "Inductor_SMD:L_Wuerth_MAPI-2510" H 2600 14850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2644240.pdf" H 2600 14850 50  0001 C CNN
F 4 "2917560" H 2600 14850 50  0001 C CNN "Order No"
F 5 "0.2460" H 2600 14850 50  0001 C CNN "Price"
	1    2600 14850
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 601E0DEB
P 7950 6000
F 0 "SW2" V 7900 6450 50  0000 R CNN
F 1 "BTN_BOOT" V 8000 6450 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 7950 6200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2789835.pdf" H 7950 6200 50  0001 C CNN
F 4 "3023215" H 7950 6000 50  0001 C CNN "Order No"
F 5 "0.1812" H 7950 6000 50  0001 C CNN "Price"
	1    7950 6000
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C42
U 1 1 63C0465A
P 9300 5000
F 0 "C42" H 9250 5100 50  0000 R CNN
F 1 "0.1u" H 9250 4900 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9300 5000 50  0001 C CNN
F 3 "~" H 9300 5000 50  0001 C CNN
	1    9300 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 620A2CEE
P 7850 950
F 0 "R12" V 7750 950 50  0000 R CNN
F 1 "0" V 7750 1050 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7850 950 50  0001 C CNN
F 3 "~" H 7850 950 50  0001 C CNN
	1    7850 950 
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 6214BB99
P 7850 1100
F 0 "R13" V 7900 1100 50  0000 R CNN
F 1 "0" V 7900 1200 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7850 1100 50  0001 C CNN
F 3 "~" H 7850 1100 50  0001 C CNN
	1    7850 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R22
U 1 1 61EFBF0C
P 7800 8950
F 0 "R22" H 7700 8900 50  0000 R CNN
F 1 "1k" H 7700 9000 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7800 8950 50  0001 C CNN
F 3 "~" H 7800 8950 50  0001 C CNN
	1    7800 8950
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small_ALT D12
U 1 1 61EFB6D7
P 7800 9200
F 0 "D12" V 7850 9100 50  0000 R CNN
F 1 "NCP_0" V 7750 9100 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 7800 9200 50  0001 C CNN
F 3 "~" V 7800 9200 50  0001 C CNN
	1    7800 9200
	0    -1   -1   0   
$EndComp
$Comp
L Device:Crystal_Small Y2
U 1 1 61258F22
P 5000 15600
F 0 "Y2" V 4900 15700 50  0000 C CNN
F 1 "32k" V 5100 15700 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_MicroCrystal_CC7V-T1A-2Pin_3.2x1.5mm" H 5000 15600 50  0001 C CNN
F 3 "https://uk.farnell.com/abracon/abs07-32-768khz-6-4-t/crystal-32-768khz-6pf-3-2mm-x/dp/3228354" H 5000 15600 50  0001 C CNN
F 4 " 3228354 " H 5000 15600 50  0001 C CNN "Order No"
F 5 "0.3948 " H 5000 15600 50  0001 C CNN "Price"
	1    5000 15600
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C40
U 1 1 61258EF9
P 5100 15750
F 0 "C40" V 4950 15600 50  0000 C CNN
F 1 "18p" V 4950 15750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5100 15750 50  0001 C CNN
F 3 "~" H 5100 15750 50  0001 C CNN
	1    5100 15750
	0    1    -1   0   
$EndComp
$Comp
L Device:C_Small C41
U 1 1 61258EEF
P 5100 15450
F 0 "C41" V 5000 15300 50  0000 C CNN
F 1 "18p" V 5000 15450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5100 15450 50  0001 C CNN
F 3 "~" H 5100 15450 50  0001 C CNN
	1    5100 15450
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C28
U 1 1 60ABD956
P 2400 15100
F 0 "C28" H 2250 15050 50  0000 C CNN
F 1 "1u" H 2250 15150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2400 15100 50  0001 C CNN
F 3 "~" H 2400 15100 50  0001 C CNN
	1    2400 15100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic_Shielded:Conn_01x40_Shielded J7
U 1 1 66F50B52
P 10450 2900
F 0 "J7" H 9500 900 50  0000 L CNN
F 1 "PSP_LCD" H 9650 900 50  0000 L CNN
F 2 "atlas:J_SMD_4-1734839-0-40_0.5_25.43_5.1_2.05" H 10450 2900 50  0001 C CNN
F 3 "~" H 10450 2900 50  0001 C CNN
	1    10450 2900
	1    0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 66E5D2AF
P 9600 12500
F 0 "H1" H 9700 12546 50  0000 L CNN
F 1 "MountingHole" H 9700 12455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 9600 12500 50  0001 C CNN
F 3 "~" H 9600 12500 50  0001 C CNN
	1    9600 12500
	1    0    0    -1  
$EndComp
$Comp
L atlas:Conn_ARM_JTAG_SWD_10 J4
U 1 1 66D8C7F1
P 800 14250
F 0 "J4" H 1000 14850 50  0000 C CNN
F 1 "DEBUG_NCP" H 1000 14750 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" V 1250 13700 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 450 13000 50  0001 C CNN
F 4 "2886068" H 800 14250 50  0001 C CNN "Order No"
F 5 "0.564" H 800 14250 50  0001 C CNN "Price"
	1    800  14250
	1    0    0    -1  
$EndComp
$Comp
L atlas:EYSHSNZWZ U7
U 1 1 66B907EF
P 3750 15550
F 0 "U7" H 4500 16500 50  0000 C CNN
F 1 "EYSHSNZWZ" H 3200 16500 50  0000 C CNN
F 2 "XCVR_EYSHSNZWZ" H 3750 15550 50  0001 L BNN
F 3 "" H 3750 15550 50  0001 L BNN
F 4 "1.2" H 3750 15550 50  0001 L BNN "PARTREV"
F 5 "TAIYO YUDEN CO" H 3750 15550 50  0001 L BNN "MANUFACTURER"
F 6 "Manufacturer recommendations" H 3750 15550 50  0001 L BNN "STANDARD"
	1    3750 15550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 6221A5CF
P 10000 10500
F 0 "R15" V 10100 10450 50  0000 R CNN
F 1 "NP" V 10100 10600 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 10000 10500 50  0001 C CNN
F 3 "~" H 10000 10500 50  0001 C CNN
	1    10000 10500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 62215A0D
P 10000 10300
F 0 "R14" V 10100 10250 50  0000 R CNN
F 1 "0" V 10100 10400 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 10000 10300 50  0001 C CNN
F 3 "~" H 10000 10300 50  0001 C CNN
	1    10000 10300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 61A90335
P 10250 10750
F 0 "R7" H 10191 10704 50  0000 R CNN
F 1 "1k" H 10191 10795 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10250 10750 50  0001 C CNN
F 3 "~" H 10250 10750 50  0001 C CNN
	1    10250 10750
	1    0    0    1   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 61907023
P 10500 10750
F 0 "BZ1" H 10650 10800 50  0000 L CNN
F 1 "Buzzer" H 10650 10700 50  0000 L CNN
F 2 "atlas:PKLCS1212" V 10475 10850 50  0001 C CNN
F 3 "~" V 10475 10850 50  0001 C CNN
	1    10500 10750
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q2
U 1 1 6192B650
P 10250 11200
F 0 "Q2" H 10441 11246 50  0000 L CNN
F 1 "BC817K" H 10441 11155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10450 11300 50  0001 C CNN
F 3 "~" H 10250 11200 50  0001 C CNN
	1    10250 11200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 66D27A06
P 6600 11350
F 0 "R3" V 6500 11300 50  0000 R CNN
F 1 "100k" V 6500 11550 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6600 11350 50  0001 C CNN
F 3 "~" H 6600 11350 50  0001 C CNN
	1    6600 11350
	0    1    -1   0   
$EndComp
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 643ED3B8
P 1150 8400
F 0 "Y1" H 1450 8150 50  0000 C CNN
F 1 "8M" H 1450 8250 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 1150 8400 50  0001 C CNN
F 3 "https://uk.farnell.com/multicomp/mcsjk-3n-8-00-3-3-50-b/oscillator-8mhz-3-2mm-x-2-5mm/dp/2854268?st=8mhz" H 1150 8400 50  0001 C CNN
F 4 " 2854268 " H 1150 8400 50  0001 C CNN "Order No"
F 5 "0.7248 " H 1150 8400 50  0001 C CNN "Price"
	1    1150 8400
	-1   0    0    1   
$EndComp
$Comp
L atlas:47352-1001 J6
U 1 1 651E3627
P 1700 15850
F 0 "J6" H 1300 16500 50  0000 L CNN
F 1 "47352-1001" H 1500 16500 50  0000 L CNN
F 2 "atlas:MOLEX_47352-1001" H 1700 15850 50  0001 L BNN
F 3 "" H 1700 15850 50  0001 L BNN
F 4 "K" H 1700 15850 50  0001 L BNN "PARTREV"
F 5 "Manufacturer Recommendation" H 1700 15850 50  0001 L BNN "STANDARD"
F 6 "Molex" H 1700 15850 50  0001 L BNN "MANUFACTURER"
	1    1700 15850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R51
U 1 1 648C2069
P 9250 8350
F 0 "R51" V 9150 8550 50  0000 R CNN
F 1 "0" V 9150 8300 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9250 8350 50  0001 C CNN
F 3 "~" H 9250 8350 50  0001 C CNN
	1    9250 8350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R46
U 1 1 635C6F82
P 10650 6200
F 0 "R46" V 10750 6200 50  0000 R CNN
F 1 "0" V 10750 6300 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10650 6200 50  0001 C CNN
F 3 "~" H 10650 6200 50  0001 C CNN
	1    10650 6200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C46
U 1 1 65F8B736
P 6400 11850
F 0 "C46" H 6350 11950 50  0000 R CNN
F 1 "0.1u" H 6350 11750 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6400 11850 50  0001 C CNN
F 3 "~" H 6400 11850 50  0001 C CNN
	1    6400 11850
	1    0    0    -1  
$EndComp
$Comp
L atlas:MS5637 U14
U 1 1 64EB09A3
P 7000 11750
F 0 "U14" H 7000 12043 39  0000 C CNN
F 1 "MS5637" H 7000 11968 39  0000 C CNN
F 2 "atlas:QFN-4_3x3_Pitch2mm" H 7050 11700 39  0001 C CNN
F 3 "" H 7050 11700 39  0001 C CNN
	1    7000 11750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C50
U 1 1 66A82E23
P 5750 14200
F 0 "C50" H 5700 14300 50  0000 R CNN
F 1 "1u" H 5700 14100 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5750 14200 50  0001 C CNN
F 3 "~" H 5750 14200 50  0001 C CNN
	1    5750 14200
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW7
U 1 1 656B9614
P 6750 6000
F 0 "SW7" V 6700 6400 50  0000 R CNN
F 1 "BTN_C" V 6800 6400 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 6750 6200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/578646.pdf" H 6750 6200 50  0001 C CNN
F 4 "" H 6750 6000 50  0001 C CNN "Order No"
F 5 "" H 6750 6000 50  0001 C CNN "Price"
	1    6750 6000
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small R33
U 1 1 656B9606
P 6750 6400
F 0 "R33" H 6700 6350 50  0000 R CNN
F 1 "100k" H 6700 6450 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6750 6400 50  0001 C CNN
F 3 "~" H 6750 6400 50  0001 C CNN
	1    6750 6400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R18
U 1 1 65159F9E
P 7000 7150
F 0 "R18" H 6900 7100 50  0000 R CNN
F 1 "1l" H 6900 7200 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7000 7150 50  0001 C CNN
F 3 "~" H 7000 7150 50  0001 C CNN
	1    7000 7150
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small_ALT D5
U 1 1 6515981D
P 7000 7400
F 0 "D5" V 7050 7300 50  0000 R CNN
F 1 "STM_STAT_C" V 6950 7300 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 7000 7400 50  0001 C CNN
F 3 "~" V 7000 7400 50  0001 C CNN
	1    7000 7400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C59
U 1 1 626F010C
P 5950 14200
F 0 "C59" H 5900 14300 50  0000 R CNN
F 1 "0.1u" H 5900 14100 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5950 14200 50  0001 C CNN
F 3 "~" H 5950 14200 50  0001 C CNN
	1    5950 14200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C61
U 1 1 6262081B
P 6150 14200
F 0 "C61" H 6100 14300 50  0000 R CNN
F 1 "0.1u" H 6100 14100 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6150 14200 50  0001 C CNN
F 3 "~" H 6150 14200 50  0001 C CNN
	1    6150 14200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C63
U 1 1 62483041
P 6350 14200
F 0 "C63" H 6300 14300 50  0000 R CNN
F 1 "0.1u" H 6300 14100 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6350 14200 50  0001 C CNN
F 3 "~" H 6350 14200 50  0001 C CNN
	1    6350 14200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C65
U 1 1 622E7BB3
P 6550 14200
F 0 "C65" H 6500 14300 50  0000 R CNN
F 1 "0.1u" H 6500 14100 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6550 14200 50  0001 C CNN
F 3 "~" H 6550 14200 50  0001 C CNN
	1    6550 14200
	-1   0    0    -1  
$EndComp
$Comp
L atlas:FXOS8700CQ U18
U 1 1 603E0E0C
P 7300 13950
F 0 "U18" H 7300 14593 39  0000 C CNN
F 1 "FXOS8700CQ" H 7300 14518 39  0000 C CNN
F 2 "atlas:LGA-16_3x3mm_P0.5mm_LayoutBorder3x5y" H 7300 13850 39  0001 C CNN
F 3 "" H 7300 13850 39  0001 C CNN
	1    7300 13950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C30
U 1 1 638D4E51
P 6200 12550
F 0 "C30" H 6150 12650 50  0000 R CNN
F 1 "0.1u" H 6150 12450 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6200 12550 50  0001 C CNN
F 3 "~" H 6200 12550 50  0001 C CNN
	1    6200 12550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C45
U 1 1 62DB1BF8
P 7800 4550
F 0 "C45" H 7708 4504 50  0000 R CNN
F 1 "10u" H 7708 4595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7800 4550 50  0001 C CNN
F 3 "~" H 7800 4550 50  0001 C CNN
	1    7800 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C31
U 1 1 62DA9AA6
P 6050 4550
F 0 "C31" H 5958 4504 50  0000 R CNN
F 1 "4.7u" H 5958 4595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6050 4550 50  0001 C CNN
F 3 "~" H 6050 4550 50  0001 C CNN
	1    6050 4550
	1    0    0    1   
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D11
U 1 1 789A686E
P 7300 2450
F 0 "D11" H 7400 2350 50  0000 C CNN
F 1 "MBR0540" H 7100 2350 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 7300 2450 50  0001 C CNN
F 3 "~" V 7300 2450 50  0001 C CNN
F 4 "" H 7300 2450 50  0001 C CNN "Price"
	1    7300 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 743A7333
P 7800 8050
F 0 "R6" H 7700 8000 50  0000 R CNN
F 1 "1k" H 7700 8100 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7800 8050 50  0001 C CNN
F 3 "~" H 7800 8050 50  0001 C CNN
	1    7800 8050
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small_ALT D3
U 1 1 743A6D63
P 7800 8300
F 0 "D3" V 7850 8200 50  0000 R CNN
F 1 "CHG_STAT" V 7750 8200 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 7800 8300 50  0001 C CNN
F 3 "~" V 7800 8300 50  0001 C CNN
	1    7800 8300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 740F93FA
P 7000 8950
F 0 "R2" H 6900 8900 50  0000 R CNN
F 1 "1k" H 6900 9000 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7000 8950 50  0001 C CNN
F 3 "~" H 7000 8950 50  0001 C CNN
	1    7000 8950
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small_ALT D2
U 1 1 740F8EE6
P 7000 9200
F 0 "D2" V 7050 9100 50  0000 R CNN
F 1 "GPS_3DF" V 6950 9100 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 7000 9200 50  0001 C CNN
F 3 "~" V 7000 9200 50  0001 C CNN
	1    7000 9200
	0    -1   -1   0   
$EndComp
$Comp
L atlas:MCP1810 U3
U 1 1 7026516A
P 1600 1450
F 0 "U3" H 1350 1700 39  0000 C CNN
F 1 "MCP1810" H 1750 1700 39  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_2x2mm_P0.5mm_EP0.9x1.5mm" H 1600 1450 39  0001 C CNN
F 3 "" H 1600 1450 39  0001 C CNN
	1    1600 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D6
U 1 1 64AA63AA
P 3300 1650
F 0 "D6" H 3300 1445 50  0000 C CNN
F 1 "MBR0540" H 3300 1536 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 3300 1650 50  0001 C CNN
F 3 "~" V 3300 1650 50  0001 C CNN
F 4 "" H 3300 1650 50  0001 C CNN "Price"
	1    3300 1650
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 655D45D5
P 1150 1700
F 0 "C8" H 1058 1654 50  0000 R CNN
F 1 "4.7u" H 1058 1745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1150 1700 50  0001 C CNN
F 3 "~" H 1150 1700 50  0001 C CNN
	1    1150 1700
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C10
U 1 1 65808A0B
P 2050 1700
F 0 "C10" H 1958 1654 50  0000 R CNN
F 1 "1u" H 1958 1745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2050 1700 50  0001 C CNN
F 3 "~" H 2050 1700 50  0001 C CNN
	1    2050 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R37
U 1 1 60216C62
P 4600 1450
F 0 "R37" H 4541 1404 50  0000 R CNN
F 1 "440k" H 4541 1495 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 1450 50  0001 C CNN
F 3 "~" H 4600 1450 50  0001 C CNN
	1    4600 1450
	-1   0    0    1   
$EndComp
$Comp
L atlas-rescue:TLV62569DBV-Regulator_Switching U4
U 1 1 66C1BF72
P 3950 1400
F 0 "U4" H 3950 1767 50  0000 C CNN
F 1 "TLV62569DBV" H 3950 1676 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4000 1150 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv62569.pdf" H 3700 1850 50  0001 C CNN
F 4 "3121687" H 3950 1400 50  0001 C CNN "Order No"
F 5 "0.5820" H 3950 1400 50  0001 C CNN "Price"
	1    3950 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L3
U 1 1 66C1C460
P 4400 1300
F 0 "L3" V 4585 1300 50  0000 C CNN
F 1 "2.2u" V 4494 1300 50  0000 C CNN
F 2 "Inductor_SMD:L_Wuerth_MAPI-2510" H 4400 1300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2644240.pdf" H 4400 1300 50  0001 C CNN
F 4 "2917560" H 4400 1300 50  0001 C CNN "Order No"
F 5 "0.2460" H 4400 1300 50  0001 C CNN "Price"
	1    4400 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 66C1C4CA
P 4600 1750
F 0 "R5" H 4541 1704 50  0000 R CNN
F 1 "100k" H 4541 1795 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 1750 50  0001 C CNN
F 3 "~" H 4600 1750 50  0001 C CNN
	1    4600 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 66C1C46B
P 4950 1700
F 0 "C13" H 4858 1746 50  0000 R CNN
F 1 "10u" H 4858 1655 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4950 1700 50  0001 C CNN
F 3 "~" H 4950 1700 50  0001 C CNN
	1    4950 1700
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 66C1C4AB
P 3450 1700
F 0 "C7" H 3358 1746 50  0000 R CNN
F 1 "4.7u" H 3358 1655 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3450 1700 50  0001 C CNN
F 3 "~" H 3450 1700 50  0001 C CNN
	1    3450 1700
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 6E25AB5E
P 10250 13000
F 0 "H4" H 10350 13046 50  0000 L CNN
F 1 "MountingHole" H 10350 12955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 10250 13000 50  0001 C CNN
F 3 "~" H 10250 13000 50  0001 C CNN
	1    10250 13000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 6E25A546
P 9600 13000
F 0 "H3" H 9700 13046 50  0000 L CNN
F 1 "MountingHole" H 9700 12955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 9600 13000 50  0001 C CNN
F 3 "~" H 9600 13000 50  0001 C CNN
	1    9600 13000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 6824A4C8
P 7350 6000
F 0 "SW4" V 7300 6400 50  0000 R CNN
F 1 "BTN_R" V 7400 6400 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 7350 6200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/578646.pdf" H 7350 6200 50  0001 C CNN
F 4 "" H 7350 6000 50  0001 C CNN "Order No"
F 5 "" H 7350 6000 50  0001 C CNN "Price"
	1    7350 6000
	0    -1   1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 6807B0C6
P 6200 6000
F 0 "SW1" V 6150 6400 50  0000 R CNN
F 1 "BTN_L" V 6250 6400 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 6200 6200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/578646.pdf" H 6200 6200 50  0001 C CNN
F 4 "" H 6200 6000 50  0001 C CNN "Order No"
F 5 "" H 6200 6000 50  0001 C CNN "Price"
	1    6200 6000
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 601E13B0
P 7950 6400
F 0 "R4" H 7900 6350 50  0000 R CNN
F 1 "100k" H 7900 6450 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7950 6400 50  0001 C CNN
F 3 "~" H 7950 6400 50  0001 C CNN
	1    7950 6400
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C39
U 1 1 7159D2BF
P 7250 3100
F 0 "C39" V 7150 3250 50  0000 R CNN
F 1 "0.1u" V 7150 3050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7250 3100 50  0001 C CNN
F 3 "~" H 7250 3100 50  0001 C CNN
	1    7250 3100
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small R20
U 1 1 63BFFF6F
P 7750 3450
F 0 "R20" H 7950 3500 50  0000 R CNN
F 1 "10" H 7900 3400 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 3450 50  0001 C CNN
F 3 "~" H 7750 3450 50  0001 C CNN
	1    7750 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C37
U 1 1 7082F5A8
P 5950 2650
F 0 "C37" H 5858 2604 50  0000 R CNN
F 1 "1u" H 5858 2695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5950 2650 50  0001 C CNN
F 3 "~" H 5950 2650 50  0001 C CNN
	1    5950 2650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R47
U 1 1 62CB3ED8
P 5950 3300
F 0 "R47" H 5891 3254 50  0000 R CNN
F 1 "100k" H 5891 3345 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5950 3300 50  0001 C CNN
F 3 "~" H 5950 3300 50  0001 C CNN
	1    5950 3300
	1    0    0    1   
$EndComp
$Comp
L atlas:LV52204MU U12
U 1 1 6F59F3E7
P 6650 3100
F 0 "U12" H 6650 3541 39  0000 C CNN
F 1 "LV52204MU" H 6650 3466 39  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_2x2mm_P0.65mm_EP1x1.6mm" H 6650 3100 39  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2160779.pdf" H 6650 3100 39  0001 C CNN
F 4 "2424488" H 6650 3100 50  0001 C CNN "Order No"
F 5 "0.5964" H 6650 3100 50  0001 C CNN "Price"
	1    6650 3100
	1    0    0    -1  
$EndComp
$Comp
L atlas:S27KL0641DABHV023 U2
U 1 1 66863B09
P 3800 13500
F 0 "U2" H 4050 12900 50  0000 L CNN
F 1 "S27KL0641DABHV023" H 4050 12800 50  0000 L CNN
F 2 "atlas:BGA-25_5x5_6.0x8.0mm" H 3650 13850 39  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2280498.pdf" H 3650 13850 39  0001 C CNN
F 4 "2749802" H 3800 13500 50  0001 C CNN "Order No"
F 5 "1.44 " H 3800 13500 50  0001 C CNN "Price"
	1    3800 13500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN4
U 1 1 62D14E05
P 9450 4000
F 0 "RN4" V 9150 3850 50  0000 C CNN
F 1 "100k" V 9150 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0402" V 9725 4000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/578646.pdf" H 9450 4000 50  0001 C CNN
F 4 "9235469" H 9450 4000 50  0001 C CNN "Order No"
F 5 "0.0466" H 9450 4000 50  0001 C CNN "Price"
	1    9450 4000
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 69B80592
P 5150 3800
F 0 "J5" H 5150 3500 50  0000 C CNN
F 1 "CELL" H 5150 3600 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x03_P1.00mm_Vertical" H 5150 3800 50  0001 C CNN
F 3 "~" H 5150 3800 50  0001 C CNN
	1    5150 3800
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C35
U 1 1 6731D74F
P 4800 2750
F 0 "C35" H 4708 2796 50  0000 R CNN
F 1 "10u" H 4708 2705 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4800 2750 50  0001 C CNN
F 3 "~" H 4800 2750 50  0001 C CNN
	1    4800 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C34
U 1 1 66FF3E02
P 4350 4550
F 0 "C34" H 4258 4596 50  0000 R CNN
F 1 "4.7u" H 4258 4505 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4350 4550 50  0001 C CNN
F 3 "~" H 4350 4550 50  0001 C CNN
	1    4350 4550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C33
U 1 1 66D9E541
P 4050 2750
F 0 "C33" H 3958 2796 50  0000 R CNN
F 1 "0.1u" H 3958 2705 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4050 2750 50  0001 C CNN
F 3 "~" H 4050 2750 50  0001 C CNN
	1    4050 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:L_Small L4
U 1 1 66CD2426
P 4300 2600
F 0 "L4" V 4485 2600 50  0000 C CNN
F 1 "2.2u" V 4394 2600 50  0000 C CNN
F 2 "Inductor_SMD:L_Wuerth_MAPI-2510" H 4300 2600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2644240.pdf" H 4300 2600 50  0001 C CNN
F 4 "2917560" H 4300 2600 50  0001 C CNN "Order No"
F 5 "0.2460" H 4300 2600 50  0001 C CNN "Price"
	1    4300 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C36
U 1 1 6682C915
P 4500 3900
F 0 "C36" H 4408 3946 50  0000 R CNN
F 1 "10u" H 4408 3855 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4500 3900 50  0001 C CNN
F 3 "~" H 4500 3900 50  0001 C CNN
	1    4500 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R26
U 1 1 6645F9CB
P 2200 4250
F 0 "R26" H 2350 4200 50  0000 C CNN
F 1 "1k" H 2350 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2200 4250 50  0001 C CNN
F 3 "~" H 2200 4250 50  0001 C CNN
	1    2200 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R27
U 1 1 662D52A1
P 2500 4250
F 0 "R27" H 2650 4200 50  0000 C CNN
F 1 "1k" H 2650 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2500 4250 50  0001 C CNN
F 3 "~" H 2500 4250 50  0001 C CNN
	1    2500 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C32
U 1 1 656363A5
P 2800 4550
F 0 "C32" H 2708 4596 50  0000 R CNN
F 1 "10u" H 2708 4505 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2800 4550 50  0001 C CNN
F 3 "~" H 2800 4550 50  0001 C CNN
	1    2800 4550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R39
U 1 1 65097625
P 4000 4550
F 0 "R39" H 3950 4600 50  0000 R CNN
F 1 "30k" H 3950 4500 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4000 4550 50  0001 C CNN
F 3 "~" H 4000 4550 50  0001 C CNN
	1    4000 4550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R38
U 1 1 650957EC
P 4000 4050
F 0 "R38" H 3950 4100 50  0000 R CNN
F 1 "5.23k" H 3950 4000 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4000 4050 50  0001 C CNN
F 3 "~" H 4000 4050 50  0001 C CNN
	1    4000 4050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R49
U 1 1 60B5CE02
P 7950 10600
F 0 "R49" H 7950 10450 50  0000 R CNN
F 1 "100k" H 7950 10750 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7950 10600 50  0001 C CNN
F 3 "~" H 7950 10600 50  0001 C CNN
	1    7950 10600
	-1   0    0    -1  
$EndComp
$Comp
L atlas:MAX17048 U10
U 1 1 602880E0
P 7000 12500
F 0 "U10" H 7000 12943 39  0000 C CNN
F 1 "MAX17048" H 7000 12868 39  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_2x2mm_P0.5mm_EP0.9x1.5mm" H 7000 12500 39  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2631788.pdf" H 7000 12500 39  0001 C CNN
F 4 "2909721" H 7000 12500 50  0001 C CNN "Order No"
F 5 "2.016" H 7000 12500 50  0001 C CNN "Price"
	1    7000 12500
	1    0    0    -1  
$EndComp
$Comp
L atlas:BQ25606 U9
U 1 1 60286003
P 3400 3500
F 0 "U9" H 3700 2400 50  0000 C CNN
F 1 "BQ25606" H 3700 2300 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-24-1EP_4x4mm_P0.5mm_EP2.7x2.7mm" H 3400 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/bq25606.pdf" H 3400 4900 50  0001 C CNN
F 4 "3008740" H 3400 3500 50  0001 C CNN "Order No"
F 5 "3.192" H 3400 3500 50  0001 C CNN "Price"
	1    3400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R36
U 1 1 606FAE0A
P 7350 4600
F 0 "R36" H 7291 4554 50  0000 R CNN
F 1 "100k" H 7291 4645 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 4600 50  0001 C CNN
F 3 "~" H 7350 4600 50  0001 C CNN
	1    7350 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R35
U 1 1 6063A662
P 7350 4300
F 0 "R35" H 7291 4254 50  0000 R CNN
F 1 "316k" H 7291 4345 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 4300 50  0001 C CNN
F 3 "~" H 7350 4300 50  0001 C CNN
	1    7350 4300
	-1   0    0    -1  
$EndComp
$Comp
L Device:L_Small L2
U 1 1 604B56D8
P 6250 4150
F 0 "L2" V 6350 4250 50  0000 C CNN
F 1 "2.2u" V 6350 4050 50  0000 C CNN
F 2 "Inductor_SMD:L_Wuerth_MAPI-2510" H 6250 4150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2644240.pdf" H 6250 4150 50  0001 C CNN
F 4 "2917560" H 6250 4150 50  0001 C CNN "Order No"
F 5 "0.2460" H 6250 4150 50  0001 C CNN "Price"
	1    6250 4150
	0    -1   -1   0   
$EndComp
$Comp
L atlas:TPS61070 U8
U 1 1 603ECD0D
P 6800 4250
F 0 "U8" H 6600 4500 39  0000 C CNN
F 1 "MCP1640B" H 6900 4500 39  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6800 4250 39  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2244088.pdf" H 6800 4250 39  0001 C CNN
F 4 "1863917 " H 6800 4250 50  0001 C CNN "Order No"
F 5 "0.4452" H 6800 4250 50  0001 C CNN "Price"
	1    6800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R42
U 1 1 60ADA001
P 8150 10600
F 0 "R42" H 8150 10450 50  0000 R CNN
F 1 "100k" H 8150 10750 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8150 10600 50  0001 C CNN
F 3 "~" H 8150 10600 50  0001 C CNN
	1    8150 10600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C38
U 1 1 791D3FB1
P 7200 11250
F 0 "C38" V 7150 11400 50  0000 R CNN
F 1 "0.1u" V 7150 11200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7200 11250 50  0001 C CNN
F 3 "~" H 7200 11250 50  0001 C CNN
	1    7200 11250
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 6387300B
P 6250 11150
F 0 "J3" H 6330 11142 50  0000 L CNN
F 1 "PSP_TOUCH" H 6330 11051 50  0000 L CNN
F 2 "atlas:TE_2328702-6" H 6250 11150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2691078.pdf" H 6250 11150 50  0001 C CNN
F 4 "2946022" H 6250 11150 50  0001 C CNN "Order No"
F 5 "0.1248" H 6250 11150 50  0001 C CNN "Price"
	1    6250 11150
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 646FF277
P 5700 1400
F 0 "C9" H 5608 1446 50  0000 R CNN
F 1 "10u" H 5608 1355 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5700 1400 50  0001 C CNN
F 3 "~" H 5700 1400 50  0001 C CNN
	1    5700 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6404E502
P 1200 7200
F 0 "C4" H 1108 7246 50  0000 R CNN
F 1 "1u" H 1108 7155 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1200 7200 50  0001 C CNN
F 3 "~" H 1200 7200 50  0001 C CNN
	1    1200 7200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 6404DBD0
P 1450 7200
F 0 "C5" H 1358 7246 50  0000 R CNN
F 1 "1u" H 1358 7155 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1450 7200 50  0001 C CNN
F 3 "~" H 1450 7200 50  0001 C CNN
	1    1450 7200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 6404D362
P 1900 7200
F 0 "C12" H 1808 7246 50  0000 R CNN
F 1 "1u" H 1808 7155 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1900 7200 50  0001 C CNN
F 3 "~" H 1900 7200 50  0001 C CNN
	1    1900 7200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 6317BD70
P 8000 1400
F 0 "C16" H 7950 1500 50  0000 R CNN
F 1 "0.1u" H 7950 1300 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8000 1400 50  0001 C CNN
F 3 "~" H 8000 1400 50  0001 C CNN
	1    8000 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 634DC294
P 8250 1400
F 0 "C17" H 8200 1500 50  0000 R CNN
F 1 "0.1u" H 8200 1300 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8250 1400 50  0001 C CNN
F 3 "~" H 8250 1400 50  0001 C CNN
	1    8250 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 60E5B72B
P 7500 950
F 0 "L1" V 7600 850 50  0000 C CNN
F 1 "2.2u" V 7600 1000 50  0000 C CNN
F 2 "Inductor_SMD:L_Wuerth_MAPI-2510" H 7500 950 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2644240.pdf" H 7500 950 50  0001 C CNN
F 4 "2917560" H 7500 950 50  0001 C CNN "Order No"
F 5 "0.2460" H 7500 950 50  0001 C CNN "Price"
	1    7500 950 
	0    -1   -1   0   
$EndComp
$Comp
L atlas:ST1PS02 U6
U 1 1 6039A577
P 6850 1150
F 0 "U6" H 6550 1500 39  0000 C CNN
F 1 "ST1PS02" H 7050 1500 39  0000 C CNN
F 2 "atlas:TQFN-12_1.7x2.0mm_P0.4mm" H 6800 1150 39  0001 C CNN
F 3 "http://www.farnell.com/datasheets/3107354.pdf" H 6800 1150 39  0001 C CNN
F 4 "3527118 " H 6850 1150 50  0001 C CNN "Order No"
F 5 "1.224" H 6850 1150 50  0001 C CNN "Price"
	1    6850 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 63CAA1EC
P 2150 7200
F 0 "C14" H 2058 7246 50  0000 R CNN
F 1 "1u" H 2058 7155 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2150 7200 50  0001 C CNN
F 3 "~" H 2150 7200 50  0001 C CNN
	1    2150 7200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 61D0B962
P 9500 1300
F 0 "C20" H 9450 1400 50  0000 R CNN
F 1 "1u" H 9450 1200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9500 1300 50  0001 C CNN
F 3 "~" H 9500 1300 50  0001 C CNN
	1    9500 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R48
U 1 1 67CE0209
P 7350 6400
F 0 "R48" H 7300 6350 50  0000 R CNN
F 1 "100k" H 7300 6450 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 6400 50  0001 C CNN
F 3 "~" H 7350 6400 50  0001 C CNN
	1    7350 6400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R40
U 1 1 67A21663
P 6200 6400
F 0 "R40" H 6150 6350 50  0000 R CNN
F 1 "100k" H 6150 6450 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6200 6400 50  0001 C CNN
F 3 "~" H 6200 6400 50  0001 C CNN
	1    6200 6400
	-1   0    0    -1  
$EndComp
$Comp
L atlas:L96-M33 U11
U 1 1 602380A4
P 9850 6800
F 0 "U11" H 9350 7750 39  0000 C CNN
F 1 "L96-M33" H 10250 7750 39  0000 C CNN
F 2 "atlas:L96" H 9850 7200 39  0001 C CNN
F 3 "https://www.quectel.com/UploadImage/Downlad/Quectel_L96_Hardware_Design_V1.2.pdf" H 9850 7200 39  0001 C CNN
F 4 "10.50" H 9850 6800 50  0001 C CNN "Price"
	1    9850 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6C52855E
P 7050 14750
F 0 "C2" V 7000 14650 50  0000 C CNN
F 1 "0.1u" V 7000 14900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7050 14750 50  0001 C CNN
F 3 "~" H 7050 14750 50  0001 C CNN
	1    7050 14750
	0    -1   1    0   
$EndComp
$Comp
L Memory_Flash:AT25SF081-XMHD-X U5
U 1 1 6BE38B1D
P 7300 15300
F 0 "U5" H 7944 15346 50  0000 L CNN
F 1 "MX25L3233FM2I-08G" H 7944 15255 50  0000 L CNN
F 2 "Package_SO:SSOP-8_5.25x5.24mm_P1.27mm" H 7300 14700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2815325.pdf" H 7300 15300 50  0001 C CNN
F 4 "3129177" H 7300 15300 50  0001 C CNN "Order No"
F 5 "0.7116" H 7300 15300 50  0001 C CNN "Price"
	1    7300 15300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R19
U 1 1 61389834
P 7800 7150
F 0 "R19" H 7700 7100 50  0000 R CNN
F 1 "1k" H 7700 7200 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7800 7150 50  0001 C CNN
F 3 "~" H 7800 7150 50  0001 C CNN
	1    7800 7150
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small_ALT D10
U 1 1 61389251
P 7800 7400
F 0 "D10" V 7850 7300 50  0000 R CNN
F 1 "STM_STAT_R" V 7750 7300 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 7800 7400 50  0001 C CNN
F 3 "~" V 7800 7400 50  0001 C CNN
	1    7800 7400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 612235B5
P 6250 7150
F 0 "R11" H 6150 7100 50  0000 R CNN
F 1 "1k" H 6150 7200 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 7150 50  0001 C CNN
F 3 "~" H 6250 7150 50  0001 C CNN
	1    6250 7150
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small_ALT D8
U 1 1 6122311C
P 6250 7400
F 0 "D8" V 6300 7300 50  0000 R CNN
F 1 "STM_STAT_L" V 6200 7300 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 6250 7400 50  0001 C CNN
F 3 "~" V 6250 7400 50  0001 C CNN
	1    6250 7400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small_ALT D7
U 1 1 866276E9
P 7000 8300
F 0 "D7" V 7050 8200 50  0000 R CNN
F 1 "USB_DET" V 6950 8200 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 7000 8300 50  0001 C CNN
F 3 "~" V 7000 8300 50  0001 C CNN
	1    7000 8300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R87
U 1 1 873132D5
P 7000 8050
F 0 "R87" H 6900 8000 50  0000 R CNN
F 1 "1k" H 6900 8100 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7000 8050 50  0001 C CNN
F 3 "~" H 7000 8050 50  0001 C CNN
	1    7000 8050
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small_ALT D4
U 1 1 617A4AE5
P 6250 8300
F 0 "D4" V 6300 8200 50  0000 R CNN
F 1 "MCU_3V3" V 6200 8200 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 6250 8300 50  0001 C CNN
F 3 "~" V 6250 8300 50  0001 C CNN
	1    6250 8300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 617A5356
P 6250 8050
F 0 "R8" H 6150 8000 50  0000 R CNN
F 1 "1k" H 6150 8100 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 8050 50  0001 C CNN
F 3 "~" H 6250 8050 50  0001 C CNN
	1    6250 8050
	-1   0    0    -1  
$EndComp
$Comp
L atlas:Conn_ARM_JTAG_SWD_10 J2
U 1 1 62C3F63B
P 800 13100
F 0 "J2" H 1000 13700 50  0000 C CNN
F 1 "DEBUG_STM" H 1000 13600 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" V 1250 12550 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 450 11850 50  0001 C CNN
F 4 "2886068" H 800 13100 50  0001 C CNN "Order No"
F 5 "0.564" H 800 13100 50  0001 C CNN "Price"
	1    800  13100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN3
U 1 1 62D14706
P 9450 3500
F 0 "RN3" V 9150 3350 50  0000 C CNN
F 1 "100k" V 9150 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0402" V 9725 3500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/578646.pdf" H 9450 3500 50  0001 C CNN
F 4 "9235469" H 9450 3500 50  0001 C CNN "Order No"
F 5 "0.0466" H 9450 3500 50  0001 C CNN "Price"
	1    9450 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 62D12D2B
P 9450 2700
F 0 "RN2" V 9150 2550 50  0000 C CNN
F 1 "100k" V 9150 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0402" V 9725 2700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/578646.pdf" H 9450 2700 50  0001 C CNN
F 4 "9235469" H 9450 2700 50  0001 C CNN "Order No"
F 5 "0.0466" H 9450 2700 50  0001 C CNN "Price"
	1    9450 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN1
U 1 1 62C1F369
P 9450 1900
F 0 "RN1" V 9150 1750 50  0000 C CNN
F 1 "100k" V 9150 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0402" V 9725 1900 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/578646.pdf" H 9450 1900 50  0001 C CNN
F 4 "9235469" H 9450 1900 50  0001 C CNN "Order No"
F 5 "0.0466" H 9450 1900 50  0001 C CNN "Price"
	1    9450 1900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C58
U 1 1 84925F82
P 4200 12850
F 0 "C58" V 4150 12750 50  0000 C CNN
F 1 "0.1u" V 4150 13000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4200 12850 50  0001 C CNN
F 3 "~" H 4200 12850 50  0001 C CNN
	1    4200 12850
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C57
U 1 1 84925B86
P 4200 12700
F 0 "C57" V 4150 12600 50  0000 C CNN
F 1 "0.1u" V 4150 12850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4200 12700 50  0001 C CNN
F 3 "~" H 4200 12700 50  0001 C CNN
	1    4200 12700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C56
U 1 1 8490D3CF
P 4200 12550
F 0 "C56" V 4150 12450 50  0000 C CNN
F 1 "0.1u" V 4150 12700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4200 12550 50  0001 C CNN
F 3 "~" H 4200 12550 50  0001 C CNN
	1    4200 12550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C53
U 1 1 7C6010E9
P 9550 5000
F 0 "C53" H 9500 5100 50  0000 R CNN
F 1 "1u" H 9500 4900 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9550 5000 50  0001 C CNN
F 3 "~" H 9550 5000 50  0001 C CNN
	1    9550 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C54
U 1 1 7B92E78A
P 9250 1300
F 0 "C54" H 9200 1400 50  0000 R CNN
F 1 "0.1u" H 9200 1200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9250 1300 50  0001 C CNN
F 3 "~" H 9250 1300 50  0001 C CNN
	1    9250 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y4
U 1 1 6428D2E1
P 4900 11800
F 0 "Y4" H 4900 12050 50  0000 C CNN
F 1 "32k" H 4900 11950 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_MicroCrystal_CC7V-T1A-2Pin_3.2x1.5mm" H 4900 11800 50  0001 C CNN
F 3 "https://uk.farnell.com/abracon/abs07-32-768khz-6-4-t/crystal-32-768khz-6pf-3-2mm-x/dp/3228354" H 4900 11800 50  0001 C CNN
F 4 " 3228354 " H 4900 11800 50  0001 C CNN "Order No"
F 5 "0.3948 " H 4900 11800 50  0001 C CNN "Price"
	1    4900 11800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 6428D90D
P 4750 11950
F 0 "C19" H 4600 11900 50  0000 C CNN
F 1 "18p" H 4600 12000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4750 11950 50  0001 C CNN
F 3 "~" H 4750 11950 50  0001 C CNN
	1    4750 11950
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C21
U 1 1 6428D917
P 5050 11950
F 0 "C21" H 4900 11900 50  0000 C CNN
F 1 "18p" H 4900 12000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5050 11950 50  0001 C CNN
F 3 "~" H 5050 11950 50  0001 C CNN
	1    5050 11950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R29
U 1 1 776AB21C
P 7750 10600
F 0 "R29" H 7750 10450 50  0000 R CNN
F 1 "5.23k" H 7750 10750 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 10600 50  0001 C CNN
F 3 "~" H 7750 10600 50  0001 C CNN
	1    7750 10600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R28
U 1 1 775E83EA
P 7550 10600
F 0 "R28" H 7550 10450 50  0000 R CNN
F 1 "5.23k" H 7550 10750 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7550 10600 50  0001 C CNN
F 3 "~" H 7550 10600 50  0001 C CNN
	1    7550 10600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C26
U 1 1 72795DCF
P 2100 6100
F 0 "C26" H 2050 6200 50  0000 R CNN
F 1 "0.1u" H 2050 6000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2100 6100 50  0001 C CNN
F 3 "~" H 2100 6100 50  0001 C CNN
	1    2100 6100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C25
U 1 1 72592266
P 1850 6100
F 0 "C25" H 1800 6200 50  0000 R CNN
F 1 "0.1u" H 1800 6000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1850 6100 50  0001 C CNN
F 3 "~" H 1850 6100 50  0001 C CNN
	1    1850 6100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 72591C8A
P 1600 6100
F 0 "C24" H 1550 6200 50  0000 R CNN
F 1 "0.1u" H 1550 6000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1600 6100 50  0001 C CNN
F 3 "~" H 1600 6100 50  0001 C CNN
	1    1600 6100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 7243A800
P 1350 6100
F 0 "C23" H 1300 6200 50  0000 R CNN
F 1 "0.1u" H 1300 6000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1350 6100 50  0001 C CNN
F 3 "~" H 1350 6100 50  0001 C CNN
	1    1350 6100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 72195A05
P 2350 6100
F 0 "C22" H 2300 6200 50  0000 R CNN
F 1 "0.1u" H 2300 6000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2350 6100 50  0001 C CNN
F 3 "~" H 2350 6100 50  0001 C CNN
	1    2350 6100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 715391C9
P 3750 6100
F 0 "C11" H 3658 6146 50  0000 R CNN
F 1 "0.1u" H 3658 6055 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3750 6100 50  0001 C CNN
F 3 "~" H 3750 6100 50  0001 C CNN
	1    3750 6100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 710B60B6
P 2700 6100
F 0 "C6" H 2608 6146 50  0000 R CNN
F 1 "0.1u" H 2608 6055 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2700 6100 50  0001 C CNN
F 3 "~" H 2700 6100 50  0001 C CNN
	1    2700 6100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R83
U 1 1 607362AB
P 9850 5000
F 0 "R83" H 9850 4900 50  0000 R CNN
F 1 "0" H 9800 5100 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9850 5000 50  0001 C CNN
F 3 "~" H 9850 5000 50  0001 C CNN
	1    9850 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R82
U 1 1 607368A2
P 9700 5000
F 0 "R82" H 9700 4900 50  0000 R CNN
F 1 "NP" H 9700 5100 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9700 5000 50  0001 C CNN
F 3 "~" H 9700 5000 50  0001 C CNN
	1    9700 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R84
U 1 1 60734AC4
P 10000 5000
F 0 "R84" H 10000 4900 50  0000 R CNN
F 1 "0" H 9950 5100 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10000 5000 50  0001 C CNN
F 3 "~" H 10000 5000 50  0001 C CNN
	1    10000 5000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 63873E09
P 8250 2850
F 0 "J9" H 7850 2550 50  0000 L CNN
F 1 "PSP_LCD_BL" H 7850 2450 50  0000 L CNN
F 2 "atlas:SFV4R-1STE1LF" H 8250 2850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2691078.pdf" H 8250 2850 50  0001 C CNN
F 4 "2328702" H 8250 2850 50  0001 C CNN "Order No"
F 5 "0.1212" H 8250 2850 50  0001 C CNN "Price"
	1    8250 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L10
U 1 1 621612BE
P 6700 2450
F 0 "L10" V 6800 2550 50  0000 C CNN
F 1 "22u" V 6800 2350 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns-SRN4018" H 6700 2450 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2647414.pdf" H 6700 2450 50  0001 C CNN
F 4 "2616895" H 6700 2450 50  0001 C CNN "Order No"
F 5 "0.4428" H 6700 2450 50  0001 C CNN "Price"
	1    6700 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C52
U 1 1 625D0943
P 7500 2650
F 0 "C52" H 7408 2604 50  0000 R CNN
F 1 "1u" H 7408 2695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7500 2650 50  0001 C CNN
F 3 "~" H 7500 2650 50  0001 C CNN
	1    7500 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 643ECEB8
P 1300 8550
F 0 "C3" H 1208 8504 50  0000 R CNN
F 1 "NP" H 1208 8595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1300 8550 50  0001 C CNN
F 3 "~" H 1300 8550 50  0001 C CNN
	1    1300 8550
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 643ED38C
P 1000 8550
F 0 "C1" H 908 8504 50  0000 R CNN
F 1 "NP" H 908 8595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1000 8550 50  0001 C CNN
F 3 "~" H 1000 8550 50  0001 C CNN
	1    1000 8550
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 600350E2
P 6250 8950
F 0 "R9" H 6150 8900 50  0000 R CNN
F 1 "1k" H 6150 9000 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 8950 50  0001 C CNN
F 3 "~" H 6250 8950 50  0001 C CNN
	1    6250 8950
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small_ALT D1
U 1 1 66163DA0
P 6250 9200
F 0 "D1" V 6300 9100 50  0000 R CNN
F 1 "GPS_1PPS" V 6200 9100 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 6250 9200 50  0001 C CNN
F 3 "~" V 6250 9200 50  0001 C CNN
	1    6250 9200
	0    -1   -1   0   
$EndComp
$Comp
L MCU_ST_STM32H7:STM32H743VITx U1
U 1 1 5FE9E6E2
P 3300 8900
F 0 "U1" H 3900 6100 50  0000 C CNN
F 1 "STM32H723VGT6" H 3900 6200 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 2600 6300 50  0001 R CNN
F 3 "http://www.farnell.com/datasheets/3154032.pdf" H 3300 8900 50  0001 C CNN
F 4 "3576957 " H 3300 8900 50  0001 C CNN "Order No"
F 5 "10.656 " H 3300 8900 50  0001 C CNN "Price"
	1    3300 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2550 4800 2600
Wire Wire Line
	8150 11600 8200 11600
$Comp
L power:GND #PWR0176
U 1 1 62057497
P 8150 11600
F 0 "#PWR0176" H 8150 11350 50  0001 C CNN
F 1 "GND" H 8155 11427 50  0001 C CNN
F 2 "" H 8150 11600 50  0001 C CNN
F 3 "" H 8150 11600 50  0001 C CNN
	1    8150 11600
	0    1    -1   0   
$EndComp
Wire Wire Line
	8150 13500 8200 13500
$Comp
L power:GND #PWR0175
U 1 1 61F6B7C8
P 8150 13500
F 0 "#PWR0175" H 8150 13250 50  0001 C CNN
F 1 "GND" H 8155 13327 50  0001 C CNN
F 2 "" H 8150 13500 50  0001 C CNN
F 3 "" H 8150 13500 50  0001 C CNN
	1    8150 13500
	0    1    -1   0   
$EndComp
Text Label 9450 11200 0    39   ~ 0
BUZZER_T1C3
Wire Wire Line
	2050 1300 2050 1350
Wire Wire Line
	4950 1200 4950 1300
Connection ~ 7950 13800
Wire Wire Line
	8200 13800 7950 13800
Connection ~ 8050 13700
Wire Wire Line
	8200 13700 8050 13700
Connection ~ 8150 13600
Wire Wire Line
	8200 13600 8150 13600
Wire Wire Line
	8200 11700 7550 11700
Wire Wire Line
	8200 11800 7750 11800
Wire Wire Line
	5850 1900 5850 1850
$Comp
L power:GND #PWR0144
U 1 1 60A80F7D
P 5850 1900
F 0 "#PWR0144" H 5850 1650 50  0001 C CNN
F 1 "GND" H 5855 1727 50  0001 C CNN
F 2 "" H 5850 1900 50  0001 C CNN
F 3 "" H 5850 1900 50  0001 C CNN
	1    5850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1100 6400 1100
Wire Wire Line
	5850 1650 5850 1100
Text Label 2750 950  0    39   ~ 8
VCC_BACKUP
Text Label 2750 850  0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	3300 850  2750 850 
Wire Wire Line
	3300 1000 3300 850 
Wire Wire Line
	3200 950  2750 950 
Wire Wire Line
	3200 1000 3200 950 
Wire Wire Line
	3200 1400 2750 1400
Connection ~ 3200 1400
Wire Wire Line
	3200 1200 3200 1400
Wire Wire Line
	3300 1200 3300 1400
Wire Wire Line
	10250 12650 10250 12600
$Comp
L power:GND #PWR0140
U 1 1 61950C96
P 10250 12650
F 0 "#PWR0140" H 10250 12400 50  0001 C CNN
F 1 "GND" H 10255 12477 50  0001 C CNN
F 2 "" H 10250 12650 50  0001 C CNN
F 3 "" H 10250 12650 50  0001 C CNN
	1    10250 12650
	1    0    0    -1  
$EndComp
Connection ~ 2400 14950
Wire Wire Line
	2400 14850 2400 14950
Wire Wire Line
	2500 14850 2400 14850
Wire Wire Line
	2700 14850 2750 14850
Text Label 6350 5750 0    39   ~ 8
VCC_BACKUP
Wire Wire Line
	6750 5750 6350 5750
Text Label 7500 5750 0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	7500 5750 7950 5750
Wire Wire Line
	7950 5800 7950 5750
Wire Wire Line
	7950 6200 7950 6250
Wire Wire Line
	6900 5750 7350 5750
Text Label 6900 5750 0    39   ~ 8
VCC_3V3_MCU
Text Label 2350 15550 0    39   ~ 0
PD14_NCP
NoConn ~ 4750 15950
Text Label 2350 15850 0    39   ~ 0
NCP_STATUS_0
NoConn ~ 4750 15850
Wire Wire Line
	2350 15850 2750 15850
Text Label 7250 8800 0    39   ~ 0
NCP_STATUS_0
Wire Wire Line
	7800 8800 7250 8800
$Comp
L power:GND #PWR0170
U 1 1 61EFBF18
P 7800 9350
F 0 "#PWR0170" H 7800 9100 50  0001 C CNN
F 1 "GND" H 7805 9177 50  0001 C CNN
F 2 "" H 7800 9350 50  0001 C CNN
F 3 "" H 7800 9350 50  0001 C CNN
	1    7800 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 8850 7800 8800
Wire Wire Line
	7800 9050 7800 9100
Wire Wire Line
	7800 9300 7800 9350
Wire Wire Line
	2350 15550 2750 15550
Wire Wire Line
	2750 15450 2350 15450
Text Label 2350 15450 0    39   ~ 0
PD15_NCP
Text Label 2350 16050 0    39   ~ 0
USART3_RX_NCP
Text Label 5200 16150 2    39   ~ 0
USART3_TX_NCP
Text Label 5200 16050 2    39   ~ 0
USART3_RTS_NCP
Text Label 2350 16150 0    39   ~ 0
USART3_CTS_NCP
Wire Wire Line
	2750 16150 2350 16150
Wire Wire Line
	2750 16050 2350 16050
Wire Wire Line
	4750 16150 5200 16150
Wire Wire Line
	4750 16050 5200 16050
Wire Wire Line
	4800 15450 5000 15450
Wire Wire Line
	4800 15550 4800 15450
Wire Wire Line
	4800 15750 5000 15750
Wire Wire Line
	4800 15750 4800 15650
Wire Wire Line
	5000 15450 5000 15500
Wire Wire Line
	5000 15750 5000 15700
Connection ~ 5000 15750
Connection ~ 5000 15450
$Comp
L power:GND #PWR0164
U 1 1 61258F0F
P 5200 15800
F 0 "#PWR0164" H 5200 15550 50  0001 C CNN
F 1 "GND" H 5205 15627 50  0001 C CNN
F 2 "" H 5200 15800 50  0001 C CNN
F 3 "" H 5200 15800 50  0001 C CNN
	1    5200 15800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 16350 2750 16350
Wire Wire Line
	2700 16400 2700 16350
$Comp
L power:GND #PWR0148
U 1 1 6118D391
P 2700 16400
F 0 "#PWR0148" H 2700 16150 50  0001 C CNN
F 1 "GND" H 2705 16227 50  0001 C CNN
F 2 "" H 2700 16400 50  0001 C CNN
F 3 "" H 2700 16400 50  0001 C CNN
	1    2700 16400
	-1   0    0    -1  
$EndComp
Text Label 2350 14750 0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	2750 14750 2350 14750
Wire Wire Line
	2400 15250 2400 15200
$Comp
L power:GND #PWR0146
U 1 1 60E81086
P 2400 15250
F 0 "#PWR0146" H 2400 15000 50  0001 C CNN
F 1 "GND" H 2405 15077 50  0001 C CNN
F 2 "" H 2400 15250 50  0001 C CNN
F 3 "" H 2400 15250 50  0001 C CNN
	1    2400 15250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 14950 2750 14950
Wire Wire Line
	2400 15000 2400 14950
Wire Wire Line
	2700 15150 2750 15150
Wire Wire Line
	2700 15250 2700 15150
Wire Wire Line
	2750 15250 2700 15250
Text Label 2350 15650 0    39   ~ 0
DBG_NRESET_NCP
Text Label 2350 15750 0    39   ~ 0
DBG_SWO_NCP
Wire Wire Line
	2750 15750 2350 15750
Text Label 5200 15250 2    39   ~ 0
DBG_SWDIO_NCP
Wire Wire Line
	4750 15250 5200 15250
Wire Wire Line
	5200 15150 4750 15150
Text Label 5200 15150 2    39   ~ 0
DBG_SWDCLK_NCP
NoConn ~ 9200 6300
Wire Wire Line
	8750 6150 9200 6150
Text Label 1550 8200 0    39   ~ 0
GPS_UART8_RX
Text Label 1550 8300 0    39   ~ 0
GPS_UART8_TX
Text Label 8750 6850 0    39   ~ 0
GPS_UART8_TX
Text Label 1550 10400 0    39   ~ 0
GPS_3DF
Text Label 5050 7500 2    39   ~ 0
BUZZER_T1C3
Text Label 5050 7400 2    39   ~ 0
LTDC_R5
Text Label 1550 11400 0    39   ~ 0
PD15_NCP
Text Label 1550 11300 0    39   ~ 0
PD14_NCP
Text Label 5050 6500 2    39   ~ 0
SW_C_PWR
Text Label 5050 10200 2    39   ~ 0
STM_STATUS_C
Wire Wire Line
	9600 12650 9600 12600
$Comp
L power:GND #PWR0143
U 1 1 66E5D549
P 9600 12650
F 0 "#PWR0143" H 9600 12400 50  0001 C CNN
F 1 "GND" H 9605 12477 50  0001 C CNN
F 2 "" H 9600 12650 50  0001 C CNN
F 3 "" H 9600 12650 50  0001 C CNN
	1    9600 12650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 66D8C7E0
P 1350 14600
F 0 "#PWR0136" H 1350 14350 50  0001 C CNN
F 1 "GND" H 1355 14427 50  0001 C CNN
F 2 "" H 1350 14600 50  0001 C CNN
F 3 "" H 1350 14600 50  0001 C CNN
	1    1350 14600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 14600 1350 14550
Wire Wire Line
	1350 14550 1300 14550
Text Label 5500 950  0    39   ~ 8
VCC_SYS
Wire Wire Line
	9450 10500 9900 10500
Wire Wire Line
	9900 10300 9450 10300
Connection ~ 10350 10500
Wire Wire Line
	10350 10300 10350 10500
Wire Wire Line
	10100 10300 10350 10300
Wire Wire Line
	10100 10500 10350 10500
Text Label 9450 10300 0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	10050 11200 9450 11200
Wire Wire Line
	10350 10650 10250 10650
Wire Wire Line
	10250 10850 10350 10850
Wire Wire Line
	10400 10650 10350 10650
Wire Wire Line
	10400 10850 10350 10850
Text Label 9450 10500 0    39   ~ 8
VCC_LCD_PWR
Connection ~ 10350 10650
Wire Wire Line
	10350 10650 10350 10500
Wire Wire Line
	10350 11500 10350 11400
$Comp
L power:GND #PWR0108
U 1 1 61BF73E9
P 10350 11500
F 0 "#PWR0108" H 10350 11250 50  0001 C CNN
F 1 "GND" H 10355 11327 50  0001 C CNN
F 2 "" H 10350 11500 50  0001 C CNN
F 3 "" H 10350 11500 50  0001 C CNN
	1    10350 11500
	1    0    0    -1  
$EndComp
Connection ~ 10350 10850
Wire Wire Line
	10350 10850 10350 11000
Wire Wire Line
	7800 8400 7800 8500
Wire Wire Line
	6250 9050 6250 9100
Wire Wire Line
	6250 9300 6250 9350
Wire Wire Line
	6800 11250 7100 11250
Wire Wire Line
	6800 11350 6800 11250
Wire Wire Line
	6700 11350 6800 11350
Wire Wire Line
	6450 11350 6500 11350
Wire Wire Line
	1150 8250 1150 8275
$Comp
L power:GND #PWR0107
U 1 1 669A6F17
P 1150 8250
F 0 "#PWR0107" H 1150 8000 50  0001 C CNN
F 1 "GND" H 1155 8077 50  0001 C CNN
F 2 "" H 1150 8250 50  0001 C CNN
F 3 "" H 1150 8250 50  0001 C CNN
	1    1150 8250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 8525 1150 8700
$Comp
L power:GND #PWR0104
U 1 1 66844FF3
P 1150 8700
F 0 "#PWR0104" H 1150 8450 50  0001 C CNN
F 1 "GND" H 1155 8527 50  0001 C CNN
F 2 "" H 1150 8700 50  0001 C CNN
F 3 "" H 1150 8700 50  0001 C CNN
	1    1150 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5850 3600 5850
Wire Wire Line
	3600 5850 3750 5850
Connection ~ 3600 5850
Wire Wire Line
	3600 5850 3600 6200
Connection ~ 1150 16350
Wire Wire Line
	1150 16150 1200 16150
Wire Wire Line
	1150 16350 1150 16150
Wire Wire Line
	1150 16350 1150 16400
Wire Wire Line
	1150 16350 1200 16350
Text Label 2750 1900 0    39   ~ 0
SW_C_PWR
Text Label 800  16050 0    39   ~ 8
VCC_3V3_MCU
Text Label 800  15950 0    39   ~ 0
SD_DET
Wire Wire Line
	800  15750 1200 15750
Wire Wire Line
	800  15850 1200 15850
Wire Wire Line
	800  15350 1200 15350
Wire Wire Line
	800  15450 1200 15450
Wire Wire Line
	800  15650 1200 15650
Wire Wire Line
	800  15550 1200 15550
Wire Wire Line
	2750 1900 3300 1900
Wire Wire Line
	7750 10950 7750 11800
Wire Wire Line
	7550 10850 7550 11700
Wire Wire Line
	8150 13600 8150 15200
Wire Wire Line
	8050 13700 8050 15100
Wire Wire Line
	7950 13800 7950 14600
Text Label 2750 1400 0    39   ~ 0
MCU_3V3_EN
Connection ~ 7350 1600
Wire Wire Line
	7350 1500 7300 1500
Wire Wire Line
	7350 1600 7350 1500
Wire Wire Line
	7350 1600 7350 1900
Text Label 5500 3100 0    39   ~ 0
T2C4_LCD_BL
Wire Wire Line
	10850 6350 10500 6350
Wire Wire Line
	7750 11800 7750 12450
Wire Wire Line
	7550 11700 7550 12300
Text Label 7250 7900 0    39   ~ 8
USB_PORT_VBUS
Text Label 3250 12750 0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	10750 6200 10800 6200
Wire Wire Line
	10800 6200 10800 6050
Wire Wire Line
	6400 11700 6600 11700
Connection ~ 6400 11700
Wire Wire Line
	6400 11750 6400 11700
Wire Wire Line
	6400 12000 6400 11950
$Comp
L power:GND #PWR0173
U 1 1 65F8BC42
P 6400 12000
F 0 "#PWR0173" H 6400 11750 50  0001 C CNN
F 1 "GND" H 6405 11827 50  0001 C CNN
F 2 "" H 6400 12000 50  0001 C CNN
F 3 "" H 6400 12000 50  0001 C CNN
	1    6400 12000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 11800 6600 11800
Wire Wire Line
	6550 12000 6550 11800
$Comp
L power:GND #PWR0119
U 1 1 6592D289
P 6550 12000
F 0 "#PWR0119" H 6550 11750 50  0001 C CNN
F 1 "GND" H 6555 11827 50  0001 C CNN
F 2 "" H 6550 12000 50  0001 C CNN
F 3 "" H 6550 12000 50  0001 C CNN
	1    6550 12000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 11700 6400 11700
Text Label 5800 11700 0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	7400 11800 7750 11800
Wire Wire Line
	7400 11700 7550 11700
Connection ~ 7750 11800
Connection ~ 7550 11700
Wire Wire Line
	5750 14350 5750 14300
$Comp
L power:GND #PWR0193
U 1 1 66D3E8B7
P 5750 14350
F 0 "#PWR0193" H 5750 14100 50  0001 C CNN
F 1 "GND" H 5755 14177 50  0001 C CNN
F 2 "" H 5750 14350 50  0001 C CNN
F 3 "" H 5750 14350 50  0001 C CNN
	1    5750 14350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5750 13600 5950 13600
Wire Wire Line
	5750 14100 5750 13600
NoConn ~ 10500 6950
Text Label 1550 10500 0    39   ~ 0
ACCEL_INT1
Text Label 1550 10600 0    39   ~ 0
ACCEL_INT2
Wire Wire Line
	1550 10300 2400 10300
Wire Wire Line
	2400 10400 1550 10400
Wire Wire Line
	1550 8200 2400 8200
Text Label 1550 8500 0    39   ~ 0
SPI4_ACCEL_NCS
Wire Wire Line
	5050 10200 4200 10200
Text Label 5050 6600 2    39   ~ 0
SW_R
Text Label 6500 7000 0    39   ~ 0
STM_STATUS_C
Connection ~ 6750 6250
Wire Wire Line
	6750 6200 6750 6250
Wire Wire Line
	6750 6250 6350 6250
$Comp
L power:GND #PWR0191
U 1 1 656B95FB
P 6750 6550
F 0 "#PWR0191" H 6750 6300 50  0001 C CNN
F 1 "GND" H 6755 6377 50  0001 C CNN
F 2 "" H 6750 6550 50  0001 C CNN
F 3 "" H 6750 6550 50  0001 C CNN
	1    6750 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6300 6750 6250
Wire Wire Line
	6750 6500 6750 6550
Text Label 6350 6250 0    39   ~ 0
SW_C_PWR
Wire Wire Line
	7000 7000 6500 7000
$Comp
L power:GND #PWR0190
U 1 1 65159FAA
P 7000 7550
F 0 "#PWR0190" H 7000 7300 50  0001 C CNN
F 1 "GND" H 7005 7377 50  0001 C CNN
F 2 "" H 7000 7550 50  0001 C CNN
F 3 "" H 7000 7550 50  0001 C CNN
	1    7000 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 7050 7000 7000
Wire Wire Line
	7000 7250 7000 7300
Wire Wire Line
	7000 7500 7000 7550
Wire Wire Line
	4200 6600 5050 6600
Wire Wire Line
	4200 6500 5050 6500
Connection ~ 5950 13600
Text Label 5750 13600 0    39   ~ 8
VCC_3V3_MCU
Connection ~ 6150 13600
Wire Wire Line
	5950 13600 6150 13600
Wire Wire Line
	5950 14100 5950 13600
Wire Wire Line
	6750 13600 6800 13600
Connection ~ 6750 13600
Wire Wire Line
	6750 13700 6750 13600
Wire Wire Line
	6800 13700 6750 13700
Wire Wire Line
	6150 13600 6750 13600
Wire Wire Line
	6150 14100 6150 13600
Wire Wire Line
	5950 14350 5950 14300
$Comp
L power:GND #PWR0186
U 1 1 626F04B1
P 5950 14350
F 0 "#PWR0186" H 5950 14100 50  0001 C CNN
F 1 "GND" H 5955 14177 50  0001 C CNN
F 2 "" H 5950 14350 50  0001 C CNN
F 3 "" H 5950 14350 50  0001 C CNN
	1    5950 14350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6150 14350 6150 14300
$Comp
L power:GND #PWR0185
U 1 1 62620C4E
P 6150 14350
F 0 "#PWR0185" H 6150 14100 50  0001 C CNN
F 1 "GND" H 6155 14177 50  0001 C CNN
F 2 "" H 6150 14350 50  0001 C CNN
F 3 "" H 6150 14350 50  0001 C CNN
	1    6150 14350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 14350 6350 14300
$Comp
L power:GND #PWR0184
U 1 1 6255196E
P 6350 14350
F 0 "#PWR0184" H 6350 14100 50  0001 C CNN
F 1 "GND" H 6355 14177 50  0001 C CNN
F 2 "" H 6350 14350 50  0001 C CNN
F 3 "" H 6350 14350 50  0001 C CNN
	1    6350 14350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 13900 6800 13900
Wire Wire Line
	6350 14100 6350 13900
Wire Wire Line
	6550 14350 6550 14300
$Comp
L power:GND #PWR0183
U 1 1 623B555B
P 6550 14350
F 0 "#PWR0183" H 6550 14100 50  0001 C CNN
F 1 "GND" H 6555 14177 50  0001 C CNN
F 2 "" H 6550 14350 50  0001 C CNN
F 3 "" H 6550 14350 50  0001 C CNN
	1    6550 14350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 14000 6800 14000
Wire Wire Line
	6550 14100 6550 14000
Wire Wire Line
	7850 14300 7800 14300
Text Label 8800 14150 2    39   ~ 0
ACCEL_INT2
Text Label 8800 14050 2    39   ~ 0
ACCEL_INT1
Wire Wire Line
	7800 14150 8800 14150
Wire Wire Line
	7800 14050 8800 14050
Text Label 8800 13900 2    39   ~ 0
SPI4_ACCEL_NCS
Wire Wire Line
	6750 14300 6750 14200
Connection ~ 6750 14300
Wire Wire Line
	6800 14300 6750 14300
Wire Wire Line
	6750 14200 6800 14200
Wire Wire Line
	6750 14350 6750 14300
$Comp
L power:GND #PWR0177
U 1 1 60FE75B7
P 6750 14350
F 0 "#PWR0177" H 6750 14100 50  0001 C CNN
F 1 "GND" H 6755 14177 50  0001 C CNN
F 2 "" H 6750 14350 50  0001 C CNN
F 3 "" H 6750 14350 50  0001 C CNN
	1    6750 14350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 13900 8800 13900
Wire Wire Line
	8050 15100 7900 15100
Connection ~ 8050 15100
Wire Wire Line
	8150 15200 7900 15200
Connection ~ 8150 15200
Wire Wire Line
	7800 13600 8150 13600
Wire Wire Line
	7800 13700 8050 13700
Wire Wire Line
	7950 13800 7800 13800
Wire Wire Line
	6050 15100 6700 15100
Wire Wire Line
	6050 14600 7950 14600
Wire Wire Line
	6050 15100 6050 14600
Wire Wire Line
	1550 11200 2400 11200
Text Label 1550 10900 0    39   ~ 0
STM_VCORE_GOOD
Wire Wire Line
	6200 12650 6200 12800
$Comp
L power:GND #PWR0174
U 1 1 66290C71
P 6200 12800
F 0 "#PWR0174" H 6200 12550 50  0001 C CNN
F 1 "GND" H 6205 12627 50  0001 C CNN
F 2 "" H 6200 12800 50  0001 C CNN
F 3 "" H 6200 12800 50  0001 C CNN
	1    6200 12800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 12300 6450 12300
Connection ~ 6200 12300
Wire Wire Line
	6200 12450 6200 12300
Wire Wire Line
	10250 13150 10250 13100
$Comp
L power:GND #PWR0172
U 1 1 62AAE91E
P 10250 13150
F 0 "#PWR0172" H 10250 12900 50  0001 C CNN
F 1 "GND" H 10255 12977 50  0001 C CNN
F 2 "" H 10250 13150 50  0001 C CNN
F 3 "" H 10250 13150 50  0001 C CNN
	1    10250 13150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 13150 9600 13100
$Comp
L power:GND #PWR0171
U 1 1 629EB4CD
P 9600 13150
F 0 "#PWR0171" H 9600 12900 50  0001 C CNN
F 1 "GND" H 9605 12977 50  0001 C CNN
F 2 "" H 9600 13150 50  0001 C CNN
F 3 "" H 9600 13150 50  0001 C CNN
	1    9600 13150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 10950 8800 10950
Wire Wire Line
	7950 11150 8800 11150
Wire Wire Line
	7550 10850 8800 10850
Connection ~ 7950 11150
Connection ~ 7750 10950
NoConn ~ 10500 7100
Wire Wire Line
	7800 8500 8200 8500
Wire Wire Line
	7800 7900 7800 7950
Wire Wire Line
	7250 7900 7800 7900
Wire Wire Line
	7800 8150 7800 8200
Text Label 8200 8500 2    39   ~ 0
CHG_STATUS
Wire Wire Line
	6500 8800 7000 8800
Wire Wire Line
	7000 8800 7000 8850
Wire Wire Line
	7000 9350 7000 9300
$Comp
L power:GND #PWR0163
U 1 1 740F9405
P 7000 9350
F 0 "#PWR0163" H 7000 9100 50  0001 C CNN
F 1 "GND" H 7005 9177 50  0001 C CNN
F 2 "" H 7000 9350 50  0001 C CNN
F 3 "" H 7000 9350 50  0001 C CNN
	1    7000 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 9050 7000 9100
Text Label 6500 8800 0    39   ~ 0
GPS_3DF
Wire Wire Line
	10850 6800 10500 6800
Text Label 10850 6800 2    39   ~ 0
GPS_3DF
Wire Wire Line
	850  1350 1150 1350
Connection ~ 1150 1500
Wire Wire Line
	1150 1600 1150 1500
Wire Wire Line
	2050 1350 2050 1500
Wire Wire Line
	2050 1350 2450 1350
Connection ~ 2050 1500
Connection ~ 2050 1350
Wire Wire Line
	2000 1500 2050 1500
Wire Wire Line
	2000 1350 2050 1350
Wire Wire Line
	1150 1350 1200 1350
Connection ~ 1150 1350
Wire Wire Line
	1150 1500 1150 1350
Wire Wire Line
	1200 1500 1150 1500
Wire Wire Line
	10500 6050 10800 6050
Wire Wire Line
	10500 6200 10550 6200
Text Label 8700 1100 0    39   ~ 8
VCC_3V3_MCU
Connection ~ 4950 1300
Wire Wire Line
	5100 1300 4950 1300
Wire Wire Line
	5050 10300 4200 10300
Wire Wire Line
	1550 10900 2400 10900
Text Label 1550 11200 0    39   ~ 0
LCD_REG_EN
Wire Wire Line
	7300 1400 7500 1400
Text Label 7500 1950 1    39   ~ 0
STM_VCORE_GOOD
Text Label 5050 10300 2    39   ~ 0
STM_STATUS_R
Wire Wire Line
	4200 6800 5050 6800
Wire Wire Line
	2400 8300 1550 8300
Wire Wire Line
	4200 9900 5050 9900
Wire Wire Line
	4200 6700 5050 6700
Text Label 5050 6700 2    39   ~ 0
~USB_DET
Wire Wire Line
	4200 11200 5050 11200
Text Label 6950 10400 0    39   ~ 8
VCC_3V3_MCU
Text Label 6600 11250 0    39   ~ 8
VCC_3V3_MCU
Text Label 8750 6150 0    39   ~ 8
VCC_3V3_MCU
Text Label 7850 14750 2    39   ~ 8
VCC_3V3_MCU
Text Label 5500 4400 0    39   ~ 0
LCD_REG_EN
Text Label 850  5850 0    39   ~ 8
VCC_3V3_MCU
Connection ~ 3100 5850
Wire Wire Line
	5050 9400 4200 9400
Text Label 5050 9400 2    39   ~ 0
STM_VCORE_EN
Text Label 5900 1100 0    39   ~ 0
STM_VCORE_EN
Text Label 5900 1400 0    39   ~ 0
STM_VCORE_D0
Text Label 5900 1500 0    39   ~ 0
STM_VCORE_D1
Wire Wire Line
	3300 1900 3300 1750
Wire Wire Line
	3300 1400 3200 1400
Connection ~ 3300 1400
Wire Wire Line
	3300 1550 3300 1400
Wire Wire Line
	3650 1400 3300 1400
Wire Wire Line
	2750 1300 3450 1300
Wire Wire Line
	3450 1300 3650 1300
Connection ~ 3450 1300
Text Label 850  1350 0    39   ~ 8
VCC_SYS
Wire Wire Line
	2050 1800 2050 1900
$Comp
L power:GND #PWR015
U 1 1 65808CB8
P 2050 1900
F 0 "#PWR015" H 2050 1650 50  0001 C CNN
F 1 "GND" H 2055 1727 50  0001 C CNN
F 2 "" H 2050 1900 50  0001 C CNN
F 3 "" H 2050 1900 50  0001 C CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1600 2050 1500
Wire Wire Line
	1150 1800 1150 1900
$Comp
L power:GND #PWR08
U 1 1 656B5334
P 1150 1900
F 0 "#PWR08" H 1150 1650 50  0001 C CNN
F 1 "GND" H 1155 1727 50  0001 C CNN
F 2 "" H 1150 1900 50  0001 C CNN
F 3 "" H 1150 1900 50  0001 C CNN
	1    1150 1900
	1    0    0    -1  
$EndComp
Text Label 2450 1350 2    39   ~ 8
VCC_BACKUP
Wire Wire Line
	1600 1900 1600 1850
$Comp
L power:GND #PWR012
U 1 1 64E4F6F6
P 1600 1900
F 0 "#PWR012" H 1600 1650 50  0001 C CNN
F 1 "GND" H 1605 1727 50  0001 C CNN
F 2 "" H 1600 1900 50  0001 C CNN
F 3 "" H 1600 1900 50  0001 C CNN
	1    1600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1300 4950 1300
Connection ~ 4600 1300
Wire Wire Line
	4600 1350 4600 1300
Connection ~ 4600 1600
Wire Wire Line
	4600 1550 4600 1600
Wire Wire Line
	4500 1300 4600 1300
Wire Wire Line
	4400 1400 4250 1400
Wire Wire Line
	4400 1600 4400 1400
Wire Wire Line
	4250 1300 4300 1300
Text Notes 5050 1500 0    39   ~ 0
3.3V
Text Label 5100 1300 2    39   ~ 8
VCC_3V3_MCU
$Comp
L power:GND #PWR017
U 1 1 66C1C496
P 4600 1900
F 0 "#PWR017" H 4600 1650 50  0001 C CNN
F 1 "GND" H 4605 1727 50  0001 C CNN
F 2 "" H 4600 1900 50  0001 C CNN
F 3 "" H 4600 1900 50  0001 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 66C1C48C
P 4950 1900
F 0 "#PWR019" H 4950 1650 50  0001 C CNN
F 1 "GND" H 4955 1727 50  0001 C CNN
F 2 "" H 4950 1900 50  0001 C CNN
F 3 "" H 4950 1900 50  0001 C CNN
	1    4950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1900 4600 1850
Wire Wire Line
	4950 1800 4950 1900
Wire Wire Line
	4950 1300 4950 1600
Wire Wire Line
	4600 1600 4400 1600
Wire Wire Line
	4600 1650 4600 1600
Text Label 2750 1300 0    39   ~ 8
VCC_SYS
Wire Wire Line
	3450 1900 3450 1800
$Comp
L power:GND #PWR07
U 1 1 66C1C4B7
P 3450 1900
F 0 "#PWR07" H 3450 1650 50  0001 C CNN
F 1 "GND" H 3455 1727 50  0001 C CNN
F 2 "" H 3450 1900 50  0001 C CNN
F 3 "" H 3450 1900 50  0001 C CNN
	1    3450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1600 3450 1300
Wire Wire Line
	3950 1900 3950 1700
$Comp
L power:GND #PWR013
U 1 1 66C1C4A0
P 3950 1900
F 0 "#PWR013" H 3950 1650 50  0001 C CNN
F 1 "GND" H 3955 1727 50  0001 C CNN
F 2 "" H 3950 1900 50  0001 C CNN
F 3 "" H 3950 1900 50  0001 C CNN
	1    3950 1900
	1    0    0    -1  
$EndComp
Text Label 2300 5750 0    39   ~ 8
VCC_BACKUP
Wire Wire Line
	4200 10000 5050 10000
Text Label 5050 10000 2    39   ~ 0
MCU_3V3_EN
Text Label 8800 10950 2    39   ~ 0
I2C4_SDA_SENSOR
Text Label 8800 10850 2    39   ~ 0
I2C4_SCL_SENSOR
Wire Wire Line
	1550 10800 2400 10800
Text Label 1550 10800 0    39   ~ 0
USART3_RX_NCP
Text Label 5050 11200 2    39   ~ 0
TOUCH_INT
Text Label 5050 8600 2    39   ~ 0
FUEL_INT
Wire Wire Line
	1550 10600 2400 10600
Wire Wire Line
	2400 10500 1550 10500
Wire Wire Line
	1550 6700 2400 6700
Text Label 1550 6700 0    39   ~ 0
SW_BOOT
Text Label 7600 6250 0    39   ~ 0
SW_BOOT
Wire Wire Line
	7950 6250 7950 6300
Connection ~ 7950 6250
Wire Wire Line
	7600 6250 7950 6250
Wire Wire Line
	7350 5800 7350 5750
Wire Wire Line
	7950 6550 7950 6500
$Comp
L power:GND #PWR0166
U 1 1 601E13A5
P 7950 6550
F 0 "#PWR0166" H 7950 6300 50  0001 C CNN
F 1 "GND" H 7955 6377 50  0001 C CNN
F 2 "" H 7950 6550 50  0001 C CNN
F 3 "" H 7950 6550 50  0001 C CNN
	1    7950 6550
	1    0    0    -1  
$EndComp
Text Label 8000 2750 2    39   ~ 8
BL_HV
Wire Wire Line
	7350 3100 7450 3100
Wire Wire Line
	7450 3550 7450 3100
$Comp
L power:GND #PWR0169
U 1 1 71FA2BA7
P 7450 3550
F 0 "#PWR0169" H 7450 3300 50  0001 C CNN
F 1 "GND" H 7455 3377 50  0001 C CNN
F 2 "" H 7450 3550 50  0001 C CNN
F 3 "" H 7450 3550 50  0001 C CNN
	1    7450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3300 7750 3300
Wire Wire Line
	7150 3100 7050 3100
Wire Wire Line
	7750 3300 7750 3350
Wire Wire Line
	5950 2750 5950 2800
Wire Wire Line
	5950 2450 5950 2550
Wire Wire Line
	5500 3100 5950 3100
$Comp
L power:GND #PWR0168
U 1 1 70558184
P 5950 2800
F 0 "#PWR0168" H 5950 2550 50  0001 C CNN
F 1 "GND" H 5955 2627 50  0001 C CNN
F 2 "" H 5950 2800 50  0001 C CNN
F 3 "" H 5950 2800 50  0001 C CNN
	1    5950 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 701D2C4D
P 6150 3550
F 0 "#PWR0167" H 6150 3300 50  0001 C CNN
F 1 "GND" H 6155 3377 50  0001 C CNN
F 2 "" H 6150 3550 50  0001 C CNN
F 3 "" H 6150 3550 50  0001 C CNN
	1    6150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3300 6250 3300
Wire Wire Line
	6150 3300 6150 3550
Wire Wire Line
	5950 3100 6250 3100
Connection ~ 5950 3100
Wire Wire Line
	6150 2450 6600 2450
Connection ~ 6150 2450
Wire Wire Line
	6150 2900 6150 2450
Wire Wire Line
	6250 2900 6150 2900
Wire Wire Line
	5950 2450 6150 2450
Wire Wire Line
	7100 2450 7100 2900
Wire Wire Line
	7050 2900 7100 2900
Wire Wire Line
	7400 2450 7500 2450
Connection ~ 9150 2000
Wire Wire Line
	9150 2000 9150 2500
Wire Wire Line
	9150 2800 9150 3300
Connection ~ 9150 2800
Wire Wire Line
	9150 3900 9150 4000
$Comp
L power:GND #PWR0162
U 1 1 69DF5658
P 4900 3950
F 0 "#PWR0162" H 4900 3700 50  0001 C CNN
F 1 "GND" H 4905 3777 50  0001 C CNN
F 2 "" H 4900 3950 50  0001 C CNN
F 3 "" H 4900 3950 50  0001 C CNN
	1    4900 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 3900 4900 3950
Wire Wire Line
	4950 3900 4900 3900
Wire Wire Line
	4800 3800 4950 3800
Wire Wire Line
	4500 3700 4950 3700
Text Label 5200 2600 2    39   ~ 8
VCC_SYS
Connection ~ 4800 2600
Wire Wire Line
	4800 2600 5200 2600
$Comp
L power:GND #PWR0157
U 1 1 68566257
P 2850 3850
F 0 "#PWR0157" H 2850 3600 50  0001 C CNN
F 1 "GND" H 2855 3677 50  0001 C CNN
F 2 "" H 2850 3850 50  0001 C CNN
F 3 "" H 2850 3850 50  0001 C CNN
	1    2850 3850
	0    1    -1   0   
$EndComp
Wire Wire Line
	2900 3850 2850 3850
Wire Wire Line
	4800 2950 4800 2850
$Comp
L power:GND #PWR0156
U 1 1 67C9E5B1
P 4800 2950
F 0 "#PWR0156" H 4800 2700 50  0001 C CNN
F 1 "GND" H 4805 2777 50  0001 C CNN
F 2 "" H 4800 2950 50  0001 C CNN
F 3 "" H 4800 2950 50  0001 C CNN
	1    4800 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 2600 4400 2600
Connection ~ 4550 2600
Wire Wire Line
	4550 3100 4550 2600
Wire Wire Line
	3900 3100 4550 3100
Wire Wire Line
	4800 2600 4550 2600
Wire Wire Line
	4800 2650 4800 2600
Connection ~ 4000 3900
Wire Wire Line
	4350 3900 4000 3900
Wire Wire Line
	4350 4450 4350 3900
Wire Wire Line
	4350 4750 4350 4650
$Comp
L power:GND #PWR0155
U 1 1 66FF4440
P 4350 4750
F 0 "#PWR0155" H 4350 4500 50  0001 C CNN
F 1 "GND" H 4355 4577 50  0001 C CNN
F 2 "" H 4350 4750 50  0001 C CNN
F 3 "" H 4350 4750 50  0001 C CNN
	1    4350 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 2600 3900 2600
Connection ~ 4050 2600
Wire Wire Line
	4050 2650 4050 2600
Wire Wire Line
	4050 2900 4050 2850
Wire Wire Line
	3900 2900 4050 2900
Wire Wire Line
	4200 2600 4050 2600
Text Label 4900 3700 2    39   ~ 8
CELL_POS
Wire Wire Line
	4500 3700 3900 3700
Wire Wire Line
	4500 3800 4500 3700
Wire Wire Line
	4500 4100 4500 4000
$Comp
L power:GND #PWR0154
U 1 1 6682D0FE
P 4500 4100
F 0 "#PWR0154" H 4500 3850 50  0001 C CNN
F 1 "GND" H 4505 3927 50  0001 C CNN
F 2 "" H 4500 4100 50  0001 C CNN
F 3 "" H 4500 4100 50  0001 C CNN
	1    4500 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 4350 2200 4750
Wire Wire Line
	2500 4350 2500 4750
$Comp
L power:GND #PWR0153
U 1 1 665E2FBA
P 2200 4750
F 0 "#PWR0153" H 2200 4500 50  0001 C CNN
F 1 "GND" H 2205 4577 50  0001 C CNN
F 2 "" H 2200 4750 50  0001 C CNN
F 3 "" H 2200 4750 50  0001 C CNN
	1    2200 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 4050 2500 4150
Wire Wire Line
	2900 4050 2500 4050
Wire Wire Line
	2200 3950 2900 3950
Wire Wire Line
	2200 4150 2200 3950
Wire Wire Line
	2850 3200 2900 3200
NoConn ~ 2900 3300
$Comp
L power:GND #PWR0151
U 1 1 662D9369
P 2850 3200
F 0 "#PWR0151" H 2850 2950 50  0001 C CNN
F 1 "GND" H 2855 3027 50  0001 C CNN
F 2 "" H 2850 3200 50  0001 C CNN
F 3 "" H 2850 3200 50  0001 C CNN
	1    2850 3200
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 662D0191
P 2500 4750
F 0 "#PWR0150" H 2500 4500 50  0001 C CNN
F 1 "GND" H 2505 4577 50  0001 C CNN
F 2 "" H 2500 4750 50  0001 C CNN
F 3 "" H 2500 4750 50  0001 C CNN
	1    2500 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 3650 2900 3650
Text Label 2400 3650 0    39   ~ 0
CHG_STATUS
Text Label 2400 3550 0    39   ~ 0
~USB_DET
Wire Wire Line
	2900 3550 2400 3550
Wire Wire Line
	2800 2600 2900 2600
Connection ~ 2800 2600
Wire Wire Line
	2800 2700 2800 2600
Wire Wire Line
	2900 2700 2800 2700
Wire Wire Line
	2800 4750 2800 4650
$Comp
L power:GND #PWR0121
U 1 1 656F00BF
P 2800 4750
F 0 "#PWR0121" H 2800 4500 50  0001 C CNN
F 1 "GND" H 2805 4577 50  0001 C CNN
F 2 "" H 2800 4750 50  0001 C CNN
F 3 "" H 2800 4750 50  0001 C CNN
	1    2800 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 4300 2900 4300
Wire Wire Line
	2800 4450 2800 4300
Wire Wire Line
	3400 4750 3400 4500
$Comp
L power:GND #PWR0113
U 1 1 6557BFB0
P 3400 4750
F 0 "#PWR0113" H 3400 4500 50  0001 C CNN
F 1 "GND" H 3405 4577 50  0001 C CNN
F 2 "" H 3400 4750 50  0001 C CNN
F 3 "" H 3400 4750 50  0001 C CNN
	1    3400 4750
	-1   0    0    -1  
$EndComp
Text Label 4750 4300 2    39   ~ 0
CELL_NTC
Wire Wire Line
	4000 4300 4800 4300
Wire Wire Line
	4000 4750 4000 4650
$Comp
L power:GND #PWR0112
U 1 1 65360155
P 4000 4750
F 0 "#PWR0112" H 4000 4500 50  0001 C CNN
F 1 "GND" H 4005 4577 50  0001 C CNN
F 2 "" H 4000 4750 50  0001 C CNN
F 3 "" H 4000 4750 50  0001 C CNN
	1    4000 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 3900 3900 3900
Wire Wire Line
	4000 3950 4000 3900
Connection ~ 4000 4300
Wire Wire Line
	4000 4150 4000 4300
Wire Wire Line
	4000 4300 3900 4300
Wire Wire Line
	4000 4450 4000 4300
Text Label 5800 12300 0    39   ~ 8
CELL_POS
Wire Wire Line
	5800 12300 6200 12300
Wire Wire Line
	6450 12750 6450 12600
Connection ~ 6450 12750
Wire Wire Line
	6550 12750 6450 12750
Wire Wire Line
	6450 12600 6550 12600
Wire Wire Line
	6450 12800 6450 12750
$Comp
L power:GND #PWR0106
U 1 1 612A080A
P 6450 12800
F 0 "#PWR0106" H 6450 12550 50  0001 C CNN
F 1 "GND" H 6455 12627 50  0001 C CNN
F 2 "" H 6450 12800 50  0001 C CNN
F 3 "" H 6450 12800 50  0001 C CNN
	1    6450 12800
	-1   0    0    -1  
$EndComp
Connection ~ 6450 12300
Wire Wire Line
	6450 12450 6450 12300
Wire Wire Line
	6550 12450 6450 12450
Wire Wire Line
	6550 12300 6450 12300
Wire Wire Line
	7550 12750 7450 12750
Wire Wire Line
	7550 12800 7550 12750
$Comp
L power:GND #PWR0105
U 1 1 60CC92F9
P 7550 12800
F 0 "#PWR0105" H 7550 12550 50  0001 C CNN
F 1 "GND" H 7555 12627 50  0001 C CNN
F 2 "" H 7550 12800 50  0001 C CNN
F 3 "" H 7550 12800 50  0001 C CNN
	1    7550 12800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7950 10500 7950 10400
Wire Wire Line
	7950 10700 7950 11150
Wire Wire Line
	7950 12600 7950 11150
Wire Wire Line
	7450 12600 7950 12600
Wire Wire Line
	6450 10850 7550 10850
Wire Wire Line
	6450 10950 7750 10950
Text Label 8800 11150 2    39   ~ 0
FUEL_INT
Wire Wire Line
	7450 12450 7750 12450
Connection ~ 7550 10850
Wire Wire Line
	7450 12300 7550 12300
Text Label 5900 1600 0    39   ~ 0
STM_VCORE_D2
Connection ~ 7750 10400
Wire Wire Line
	7750 10500 7750 10400
Wire Wire Line
	7550 10400 7750 10400
Connection ~ 7550 10400
Wire Wire Line
	7550 10400 7550 10500
Wire Wire Line
	6050 4700 6050 4650
$Comp
L power:GND #PWR0161
U 1 1 6166BC53
P 6050 4700
F 0 "#PWR0161" H 6050 4450 50  0001 C CNN
F 1 "GND" H 6055 4527 50  0001 C CNN
F 2 "" H 6050 4700 50  0001 C CNN
F 3 "" H 6050 4700 50  0001 C CNN
	1    6050 4700
	1    0    0    -1  
$EndComp
Connection ~ 6050 4300
Wire Wire Line
	6050 4450 6050 4300
Wire Wire Line
	7800 4650 7800 4700
$Comp
L power:GND #PWR0160
U 1 1 6128B4FB
P 7800 4700
F 0 "#PWR0160" H 7800 4450 50  0001 C CNN
F 1 "GND" H 7805 4527 50  0001 C CNN
F 2 "" H 7800 4700 50  0001 C CNN
F 3 "" H 7800 4700 50  0001 C CNN
	1    7800 4700
	1    0    0    -1  
$EndComp
Text Label 8300 4150 2    39   ~ 8
VCC_LCD_PWR
Text Label 5500 4150 0    39   ~ 8
VCC_SYS
Wire Wire Line
	6450 4400 5500 4400
Wire Wire Line
	6050 4150 5500 4150
Connection ~ 6050 4150
Wire Wire Line
	6050 4300 6450 4300
Wire Wire Line
	6050 4150 6050 4300
$Comp
L power:GND #PWR0159
U 1 1 60C425AA
P 7350 4700
F 0 "#PWR0159" H 7350 4450 50  0001 C CNN
F 1 "GND" H 7355 4527 50  0001 C CNN
F 2 "" H 7350 4700 50  0001 C CNN
F 3 "" H 7350 4700 50  0001 C CNN
	1    7350 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0158
U 1 1 60C42085
P 6350 4700
F 0 "#PWR0158" H 6350 4450 50  0001 C CNN
F 1 "GND" H 6355 4527 50  0001 C CNN
F 2 "" H 6350 4700 50  0001 C CNN
F 3 "" H 6350 4700 50  0001 C CNN
	1    6350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4550 6350 4700
Wire Wire Line
	6450 4550 6350 4550
Wire Wire Line
	7350 4450 7350 4500
Connection ~ 7350 4450
Wire Wire Line
	7150 4450 7350 4450
Wire Wire Line
	7350 4400 7350 4450
Wire Wire Line
	7350 4200 7350 4150
Wire Wire Line
	7150 4150 7350 4150
Wire Wire Line
	6150 4150 6050 4150
Wire Wire Line
	6450 4150 6350 4150
Text Label 5050 8900 2    39   ~ 0
I2C4_SDA_SENSOR
Wire Wire Line
	4200 8900 5050 8900
Text Label 5050 8800 2    39   ~ 0
I2C4_SCL_SENSOR
Wire Wire Line
	4200 8800 5050 8800
Text Label 5050 9000 2    39   ~ 0
LCD_OPT
Wire Wire Line
	2400 11400 1550 11400
Text Label 5050 9500 2    39   ~ 0
STM_VCORE_D2
Wire Wire Line
	4200 9500 5050 9500
Text Label 5050 9600 2    39   ~ 0
STM_VCORE_D1
Wire Wire Line
	4200 9600 5050 9600
Text Label 5050 9700 2    39   ~ 0
STM_VCORE_D0
Wire Wire Line
	4200 9700 5050 9700
Text Label 1550 10700 0    39   ~ 0
USART3_TX_NCP
Wire Wire Line
	2400 10700 1550 10700
Text Label 1550 8400 0    39   ~ 0
SPI4_SCK_APP
Wire Wire Line
	6250 7900 5750 7900
Text Label 5750 7900 0    39   ~ 8
VCC_3V3_MCU
Wire Wire Line
	6950 10400 7550 10400
Wire Wire Line
	7300 11250 7400 11250
Text Label 8800 11050 2    39   ~ 0
TOUCH_INT
$Comp
L power:GND #PWR056
U 1 1 619B5564
P 7400 11400
F 0 "#PWR056" H 7400 11150 50  0001 C CNN
F 1 "GND" H 7405 11227 50  0001 C CNN
F 2 "" H 7400 11400 50  0001 C CNN
F 3 "" H 7400 11400 50  0001 C CNN
	1    7400 11400
	-1   0    0    -1  
$EndComp
Text Label 8700 4400 0    39   ~ 8
VCC_LCD_PWR
Wire Wire Line
	5700 1900 5700 1500
$Comp
L power:GND #PWR0149
U 1 1 6491C81F
P 5700 1900
F 0 "#PWR0149" H 5700 1650 50  0001 C CNN
F 1 "GND" H 5705 1727 50  0001 C CNN
F 2 "" H 5700 1900 50  0001 C CNN
F 3 "" H 5700 1900 50  0001 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1300 5700 950 
Connection ~ 1900 7000
Wire Wire Line
	1500 7000 1900 7000
Text Label 7650 1100 2    39   ~ 8
VCC_CORE
$Comp
L power:GND #PWR0147
U 1 1 612B3016
P 7700 1900
F 0 "#PWR0147" H 7700 1650 50  0001 C CNN
F 1 "GND" H 7705 1727 50  0001 C CNN
F 2 "" H 7700 1900 50  0001 C CNN
F 3 "" H 7700 1900 50  0001 C CNN
	1    7700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1900 7700 1850
Text Label 8200 1100 2    39   ~ 8
VCAP2
Text Label 8250 950  2    39   ~ 8
VCAP1
Wire Wire Line
	7700 1100 7700 1650
$Comp
L power:GND #PWR0142
U 1 1 63589496
P 8000 1900
F 0 "#PWR0142" H 8000 1650 50  0001 C CNN
F 1 "GND" H 8005 1727 50  0001 C CNN
F 2 "" H 8000 1900 50  0001 C CNN
F 3 "" H 8000 1900 50  0001 C CNN
	1    8000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1900 8000 1500
$Comp
L power:GND #PWR0141
U 1 1 6363763D
P 8250 1900
F 0 "#PWR0141" H 8250 1650 50  0001 C CNN
F 1 "GND" H 8255 1727 50  0001 C CNN
F 2 "" H 8250 1900 50  0001 C CNN
F 3 "" H 8250 1900 50  0001 C CNN
	1    8250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1900 8250 1500
Wire Wire Line
	7700 950  7600 950 
Connection ~ 7700 950 
Wire Wire Line
	7700 1100 7700 950 
Wire Wire Line
	7300 1100 7700 1100
Wire Wire Line
	5900 1600 6400 1600
Wire Wire Line
	5900 1500 6400 1500
Wire Wire Line
	5900 1400 6400 1400
$Comp
L power:GND #PWR0135
U 1 1 611731BB
P 7350 1900
F 0 "#PWR0135" H 7350 1650 50  0001 C CNN
F 1 "GND" H 7355 1727 50  0001 C CNN
F 2 "" H 7350 1900 50  0001 C CNN
F 3 "" H 7350 1900 50  0001 C CNN
	1    7350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1600 7300 1600
Wire Wire Line
	6850 1900 6850 1800
$Comp
L power:GND #PWR0130
U 1 1 61035788
P 6850 1900
F 0 "#PWR0130" H 6850 1650 50  0001 C CNN
F 1 "GND" H 6855 1727 50  0001 C CNN
F 2 "" H 6850 1900 50  0001 C CNN
F 3 "" H 6850 1900 50  0001 C CNN
	1    6850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 950  7400 950 
Text Label 1500 7000 0    39   ~ 8
VCAP2
Connection ~ 1200 6900
Wire Wire Line
	800  6900 1200 6900
Text Label 800  6900 0    39   ~ 8
VCAP1
Wire Wire Line
	2150 7400 2150 7300
$Comp
L power:GND #PWR0117
U 1 1 641EAA44
P 2150 7400
F 0 "#PWR0117" H 2150 7150 50  0001 C CNN
F 1 "GND" H 2155 7227 50  0001 C CNN
F 2 "" H 2150 7400 50  0001 C CNN
F 3 "" H 2150 7400 50  0001 C CNN
	1    2150 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 7400 1900 7300
$Comp
L power:GND #PWR0115
U 1 1 64140999
P 1900 7400
F 0 "#PWR0115" H 1900 7150 50  0001 C CNN
F 1 "GND" H 1905 7227 50  0001 C CNN
F 2 "" H 1900 7400 50  0001 C CNN
F 3 "" H 1900 7400 50  0001 C CNN
	1    1900 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7300 1450 7400
$Comp
L power:GND #PWR0114
U 1 1 64096D43
P 1450 7400
F 0 "#PWR0114" H 1450 7150 50  0001 C CNN
F 1 "GND" H 1455 7227 50  0001 C CNN
F 2 "" H 1450 7400 50  0001 C CNN
F 3 "" H 1450 7400 50  0001 C CNN
	1    1450 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 7400 1200 7300
$Comp
L power:GND #PWR0110
U 1 1 63FED6E6
P 1200 7400
F 0 "#PWR0110" H 1200 7150 50  0001 C CNN
F 1 "GND" H 1205 7227 50  0001 C CNN
F 2 "" H 1200 7400 50  0001 C CNN
F 3 "" H 1200 7400 50  0001 C CNN
	1    1200 7400
	1    0    0    -1  
$EndComp
Connection ~ 1450 6900
Wire Wire Line
	1200 6900 1450 6900
Wire Wire Line
	1200 7100 1200 6900
Wire Wire Line
	1450 6900 2400 6900
Wire Wire Line
	1450 7100 1450 6900
Wire Wire Line
	2150 7000 2400 7000
Connection ~ 2150 7000
Wire Wire Line
	2150 7100 2150 7000
Wire Wire Line
	1900 7000 1900 7100
Wire Wire Line
	1900 7000 2150 7000
Text Label 5750 5750 0    39   ~ 8
VCC_3V3_MCU
NoConn ~ 9200 7100
NoConn ~ 9200 7000
Wire Wire Line
	5500 2450 5950 2450
Wire Wire Line
	8700 1100 9250 1100
Wire Wire Line
	2400 8500 1550 8500
Connection ~ 3400 11750
Wire Wire Line
	3500 11750 3500 11700
Wire Wire Line
	3400 11750 3500 11750
Wire Wire Line
	3000 11750 3000 11850
$Comp
L power:GND #PWR0138
U 1 1 67A2166F
P 6200 6550
F 0 "#PWR0138" H 6200 6300 50  0001 C CNN
F 1 "GND" H 6205 6377 50  0001 C CNN
F 2 "" H 6200 6550 50  0001 C CNN
F 3 "" H 6200 6550 50  0001 C CNN
	1    6200 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5750 6750 5800
Wire Wire Line
	6200 5750 6200 5800
Wire Wire Line
	5750 5750 6200 5750
Connection ~ 6200 6250
Wire Wire Line
	6200 6250 6200 6300
Connection ~ 7350 6250
Wire Wire Line
	7350 6200 7350 6250
Wire Wire Line
	6200 6250 6200 6200
Text Label 5950 6250 0    39   ~ 0
SW_L
Wire Wire Line
	7350 6250 7100 6250
$Comp
L power:GND #PWR0137
U 1 1 67A216B5
P 7350 6550
F 0 "#PWR0137" H 7350 6300 50  0001 C CNN
F 1 "GND" H 7355 6377 50  0001 C CNN
F 2 "" H 7350 6550 50  0001 C CNN
F 3 "" H 7350 6550 50  0001 C CNN
	1    7350 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6300 7350 6250
Wire Wire Line
	7350 6500 7350 6550
Text Label 7100 6250 0    39   ~ 0
SW_R
Wire Wire Line
	6200 6250 5950 6250
Wire Wire Line
	6200 6500 6200 6550
$Comp
L power:GND #PWR0124
U 1 1 63CDC1BF
P 7750 3550
F 0 "#PWR0124" H 7750 3300 50  0001 C CNN
F 1 "GND" H 7755 3377 50  0001 C CNN
F 2 "" H 7750 3550 50  0001 C CNN
F 3 "" H 7750 3550 50  0001 C CNN
	1    7750 3550
	1    0    0    -1  
$EndComp
Text Label 8750 6600 0    39   ~ 0
GPS_FORCEON
Text Label 8750 6500 0    39   ~ 0
GPS_INT
Wire Wire Line
	8750 6600 9200 6600
Wire Wire Line
	9200 6500 8750 6500
Text Label 800  15350 0    39   ~ 0
SDMMC1_D0
Text Label 800  15450 0    39   ~ 0
SDMMC1_D1
Wire Wire Line
	8750 6050 9200 6050
Wire Wire Line
	10500 6650 10850 6650
Text Label 10850 6650 2    39   ~ 0
GPS_1PPS
$Comp
L power:GND #PWR0134
U 1 1 6323F241
P 10000 7850
F 0 "#PWR0134" H 10000 7600 50  0001 C CNN
F 1 "GND" H 10005 7677 50  0001 C CNN
F 2 "" H 10000 7850 50  0001 C CNN
F 3 "" H 10000 7850 50  0001 C CNN
	1    10000 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 62F89D64
P 9150 7850
F 0 "#PWR0133" H 9150 7600 50  0001 C CNN
F 1 "GND" H 9155 7677 50  0001 C CNN
F 2 "" H 9150 7850 50  0001 C CNN
F 3 "" H 9150 7850 50  0001 C CNN
	1    9150 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 62DBB681
P 9700 7850
F 0 "#PWR0132" H 9700 7600 50  0001 C CNN
F 1 "GND" H 9705 7677 50  0001 C CNN
F 2 "" H 9700 7850 50  0001 C CNN
F 3 "" H 9700 7850 50  0001 C CNN
	1    9700 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 7600 10550 7850
$Comp
L power:GND #PWR0131
U 1 1 62CD2B3E
P 10550 7850
F 0 "#PWR0131" H 10550 7600 50  0001 C CNN
F 1 "GND" H 10555 7677 50  0001 C CNN
F 2 "" H 10550 7850 50  0001 C CNN
F 3 "" H 10550 7850 50  0001 C CNN
	1    10550 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 7800 10100 7850
Wire Wire Line
	10000 7850 10100 7850
Connection ~ 10000 7850
Wire Wire Line
	10000 7800 10000 7850
Wire Wire Line
	9900 7850 10000 7850
Wire Wire Line
	9900 7800 9900 7850
Wire Wire Line
	9800 7800 9800 7850
Wire Wire Line
	9700 7850 9800 7850
Connection ~ 9700 7850
Wire Wire Line
	9700 7800 9700 7850
Wire Wire Line
	9600 7850 9700 7850
Wire Wire Line
	9600 7800 9600 7850
Wire Wire Line
	9200 7400 9150 7400
Wire Wire Line
	9200 7500 9150 7500
Wire Wire Line
	9200 7600 9150 7600
Wire Wire Line
	10550 7600 10550 7500
Connection ~ 10550 7600
Wire Wire Line
	10500 7600 10550 7600
Wire Wire Line
	10550 7500 10550 7400
Connection ~ 10550 7500
Wire Wire Line
	10500 7500 10550 7500
Wire Wire Line
	10550 7400 10550 7300
Connection ~ 10550 7400
Wire Wire Line
	10500 7400 10550 7400
Wire Wire Line
	10550 7300 10500 7300
Wire Wire Line
	9200 7300 9150 7300
Text Label 8750 6750 0    39   ~ 0
GPS_UART8_RX
Wire Wire Line
	9200 6850 8750 6850
Wire Wire Line
	9200 6750 8750 6750
Text Label 8750 6050 0    39   ~ 8
VCC_BACKUP
Text Label 5050 8500 2    39   ~ 0
DEBUG_SWO_STM
Text Label 5050 6800 2    39   ~ 0
T2C4_LCD_BL
Text Label 1550 8600 0    39   ~ 0
SPI4_FLASH_NCS
Wire Wire Line
	1550 8400 2400 8400
Wire Wire Line
	2400 8600 1550 8600
Text Label 1550 8700 0    39   ~ 0
SPI4_MISO_APP
Wire Wire Line
	1550 8700 2400 8700
Text Label 1550 8800 0    39   ~ 0
SPI4_MOSI_APP
Wire Wire Line
	1550 8800 2400 8800
NoConn ~ 7900 15500
NoConn ~ 7900 15400
Text Label 8800 15300 2    39   ~ 0
SPI4_FLASH_NCS
Wire Wire Line
	8800 15300 7900 15300
Text Label 8800 15100 2    39   ~ 0
SPI4_MOSI_APP
Wire Wire Line
	8800 15100 8050 15100
Text Label 8800 15200 2    39   ~ 0
SPI4_SCK_APP
Wire Wire Line
	8800 15200 8150 15200
Wire Wire Line
	6750 14750 6950 14750
Wire Wire Line
	6750 14800 6750 14750
$Comp
L power:GND #PWR0127
U 1 1 6C5292D6
P 6750 14800
F 0 "#PWR0127" H 6750 14550 50  0001 C CNN
F 1 "GND" H 6755 14627 50  0001 C CNN
F 2 "" H 6750 14800 50  0001 C CNN
F 3 "" H 6750 14800 50  0001 C CNN
	1    6750 14800
	-1   0    0    -1  
$EndComp
Connection ~ 7300 14750
Wire Wire Line
	7300 14750 7150 14750
Wire Wire Line
	7300 14750 7300 14800
Wire Wire Line
	7850 14750 7300 14750
Wire Wire Line
	7300 15850 7300 15800
$Comp
L power:GND #PWR0126
U 1 1 6C2C0416
P 7300 15850
F 0 "#PWR0126" H 7300 15600 50  0001 C CNN
F 1 "GND" H 7305 15677 50  0001 C CNN
F 2 "" H 7300 15850 50  0001 C CNN
F 3 "" H 7300 15850 50  0001 C CNN
	1    7300 15850
	-1   0    0    -1  
$EndComp
Text Label 6150 15100 0    39   ~ 0
SPI4_MISO_APP
Wire Wire Line
	2350 6200 2350 6250
$Comp
L power:GND #PWR0122
U 1 1 658353C1
P 2350 6250
F 0 "#PWR0122" H 2350 6000 50  0001 C CNN
F 1 "GND" H 2355 6077 50  0001 C CNN
F 2 "" H 2350 6250 50  0001 C CNN
F 3 "" H 2350 6250 50  0001 C CNN
	1    2350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5850 3100 5850
Connection ~ 2350 5850
Wire Wire Line
	2350 6000 2350 5850
Wire Wire Line
	2700 6250 2700 6200
Wire Wire Line
	850  5850 1350 5850
Wire Wire Line
	2100 5850 2350 5850
Connection ~ 2100 5850
Wire Wire Line
	5050 8600 4200 8600
Wire Wire Line
	5050 8500 4200 8500
Text Label 1550 11000 0    39   ~ 0
USART3_CTS_NCP
Wire Wire Line
	2400 11000 1550 11000
Wire Wire Line
	5050 10100 4200 10100
Text Label 5050 10100 2    39   ~ 0
SW_L
Text Label 7250 7000 0    39   ~ 0
STM_STATUS_R
Wire Wire Line
	7800 7000 7250 7000
$Comp
L power:GND #PWR0120
U 1 1 61389840
P 7800 7550
F 0 "#PWR0120" H 7800 7300 50  0001 C CNN
F 1 "GND" H 7805 7377 50  0001 C CNN
F 2 "" H 7800 7550 50  0001 C CNN
F 3 "" H 7800 7550 50  0001 C CNN
	1    7800 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 7050 7800 7000
Wire Wire Line
	7800 7250 7800 7300
Wire Wire Line
	7800 7500 7800 7550
Text Label 5750 7000 0    39   ~ 0
STM_STATUS_L
Wire Wire Line
	6250 7000 5750 7000
$Comp
L power:GND #PWR0118
U 1 1 612235C1
P 6250 7550
F 0 "#PWR0118" H 6250 7300 50  0001 C CNN
F 1 "GND" H 6255 7377 50  0001 C CNN
F 2 "" H 6250 7550 50  0001 C CNN
F 3 "" H 6250 7550 50  0001 C CNN
	1    6250 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 7050 6250 7000
Wire Wire Line
	6250 7250 6250 7300
Wire Wire Line
	6250 7500 6250 7550
Wire Wire Line
	6250 8800 6250 8850
Wire Wire Line
	5750 8800 6250 8800
Wire Wire Line
	6500 7900 7000 7900
Wire Wire Line
	7000 7950 7000 7900
Text Label 6500 7900 0    39   ~ 8
USB_PORT_VBUS
Wire Wire Line
	7000 8200 7000 8150
$Comp
L power:GND #PWR0111
U 1 1 8740C2CB
P 7000 8450
F 0 "#PWR0111" H 7000 8200 50  0001 C CNN
F 1 "GND" H 7005 8277 50  0001 C CNN
F 2 "" H 7000 8450 50  0001 C CNN
F 3 "" H 7000 8450 50  0001 C CNN
	1    7000 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 8450 7000 8400
Wire Wire Line
	6250 8400 6250 8450
Wire Wire Line
	6250 8150 6250 8200
Wire Wire Line
	6250 7950 6250 7900
$Comp
L power:GND #PWR0116
U 1 1 617A5382
P 6250 8450
F 0 "#PWR0116" H 6250 8200 50  0001 C CNN
F 1 "GND" H 6255 8277 50  0001 C CNN
F 2 "" H 6250 8450 50  0001 C CNN
F 3 "" H 6250 8450 50  0001 C CNN
	1    6250 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5750 2700 5750
$Comp
L power:GND #PWR045
U 1 1 634FE6E6
P 1350 13450
F 0 "#PWR045" H 1350 13200 50  0001 C CNN
F 1 "GND" H 1355 13277 50  0001 C CNN
F 2 "" H 1350 13450 50  0001 C CNN
F 3 "" H 1350 13450 50  0001 C CNN
	1    1350 13450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 13450 1350 13400
Wire Wire Line
	1350 13400 1300 13400
Text Label 5050 9900 2    39   ~ 0
STM_STATUS_L
Wire Wire Line
	9250 4100 9150 4100
Wire Wire Line
	9150 4000 9150 4100
Connection ~ 9150 4000
Wire Wire Line
	9250 4000 9150 4000
Connection ~ 9150 3900
Wire Wire Line
	9150 3900 9250 3900
Wire Wire Line
	9150 3800 9150 3900
Connection ~ 9150 3800
Wire Wire Line
	9250 3800 9150 3800
Wire Wire Line
	9150 3600 9150 3800
Connection ~ 9150 3600
Wire Wire Line
	9250 3600 9150 3600
Wire Wire Line
	9150 3500 9150 3600
Connection ~ 9150 3500
Wire Wire Line
	9250 3500 9150 3500
Wire Wire Line
	9150 3400 9150 3500
Connection ~ 9150 3400
Wire Wire Line
	9150 3400 9250 3400
Wire Wire Line
	9150 3300 9150 3400
Connection ~ 9150 3300
Wire Wire Line
	9250 3300 9150 3300
Wire Wire Line
	9250 2800 9150 2800
Wire Wire Line
	9150 2700 9150 2800
Connection ~ 9150 2700
Wire Wire Line
	9250 2700 9150 2700
Wire Wire Line
	9150 2600 9150 2700
Connection ~ 9150 2600
Wire Wire Line
	9250 2600 9150 2600
Wire Wire Line
	9150 2500 9150 2600
Connection ~ 9150 2500
Wire Wire Line
	9250 2500 9150 2500
Wire Wire Line
	9250 2000 9150 2000
Wire Wire Line
	9150 1900 9150 2000
Connection ~ 9150 1900
Wire Wire Line
	9250 1900 9150 1900
Wire Wire Line
	9150 1800 9150 1900
Connection ~ 9150 1800
Wire Wire Line
	9250 1800 9150 1800
Wire Wire Line
	9150 1700 9150 1800
Wire Wire Line
	9150 1700 9250 1700
$Comp
L power:GND #PWR087
U 1 1 801F6D27
P 9150 4150
F 0 "#PWR087" H 9150 3900 50  0001 C CNN
F 1 "GND" H 9155 3977 50  0001 C CNN
F 2 "" H 9150 4150 50  0001 C CNN
F 3 "" H 9150 4150 50  0001 C CNN
	1    9150 4150
	-1   0    0    -1  
$EndComp
Connection ~ 4450 12700
Wire Wire Line
	4450 12550 4300 12550
Wire Wire Line
	4450 12700 4450 12550
Connection ~ 4450 12850
Wire Wire Line
	4450 12700 4300 12700
Wire Wire Line
	4450 12850 4450 12700
Wire Wire Line
	4450 12850 4300 12850
Wire Wire Line
	4450 12900 4450 12850
$Comp
L power:GND #PWR0109
U 1 1 84E9C11D
P 4450 12900
F 0 "#PWR0109" H 4450 12650 50  0001 C CNN
F 1 "GND" H 4455 12727 50  0001 C CNN
F 2 "" H 4450 12900 50  0001 C CNN
F 3 "" H 4450 12900 50  0001 C CNN
	1    4450 12900
	1    0    0    -1  
$EndComp
Connection ~ 4000 12700
Wire Wire Line
	4000 12550 4000 12700
Wire Wire Line
	4100 12550 4000 12550
Wire Wire Line
	4000 12850 3900 12850
Connection ~ 4000 12850
Wire Wire Line
	4000 12700 4000 12850
Wire Wire Line
	4100 12700 4000 12700
Connection ~ 3900 12850
Wire Wire Line
	4100 12850 4000 12850
Connection ~ 7500 2450
Connection ~ 5950 2450
Connection ~ 9250 1100
Wire Wire Line
	9300 5150 9300 5100
$Comp
L power:GND #PWR092
U 1 1 7D7C5C8E
P 9300 5150
F 0 "#PWR092" H 9300 4900 50  0001 C CNN
F 1 "GND" H 9305 4977 50  0001 C CNN
F 2 "" H 9300 5150 50  0001 C CNN
F 3 "" H 9300 5150 50  0001 C CNN
	1    9300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5150 9550 5100
$Comp
L power:GND #PWR094
U 1 1 7D6F7233
P 9550 5150
F 0 "#PWR094" H 9550 4900 50  0001 C CNN
F 1 "GND" H 9555 4977 50  0001 C CNN
F 2 "" H 9550 5150 50  0001 C CNN
F 3 "" H 9550 5150 50  0001 C CNN
	1    9550 5150
	1    0    0    -1  
$EndComp
Connection ~ 9550 4850
Wire Wire Line
	9550 4850 9550 4600
Wire Wire Line
	9550 4850 9550 4900
Wire Wire Line
	9300 4850 9550 4850
Wire Wire Line
	9300 4900 9300 4850
Wire Wire Line
	9250 1450 9250 1400
$Comp
L power:GND #PWR096
U 1 1 7C2C3700
P 9250 1450
F 0 "#PWR096" H 9250 1200 50  0001 C CNN
F 1 "GND" H 9255 1277 50  0001 C CNN
F 2 "" H 9250 1450 50  0001 C CNN
F 3 "" H 9250 1450 50  0001 C CNN
	1    9250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1450 9500 1400
$Comp
L power:GND #PWR099
U 1 1 7C12A35F
P 9500 1450
F 0 "#PWR099" H 9500 1200 50  0001 C CNN
F 1 "GND" H 9505 1277 50  0001 C CNN
F 2 "" H 9500 1450 50  0001 C CNN
F 3 "" H 9500 1450 50  0001 C CNN
	1    9500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1200 9250 1100
Wire Wire Line
	9500 1100 9250 1100
Connection ~ 9500 1100
Wire Wire Line
	9500 1200 9500 1100
Wire Wire Line
	10050 1100 9500 1100
Connection ~ 10050 1100
Wire Wire Line
	10050 1200 10050 1100
Wire Wire Line
	10250 1200 10050 1200
Wire Wire Line
	5050 11800 5000 11800
Wire Wire Line
	4750 11500 4750 11800
Wire Wire Line
	4750 11800 4800 11800
Wire Wire Line
	4750 11850 4750 11800
Connection ~ 4750 11800
Wire Wire Line
	5050 11850 5050 11800
Connection ~ 5050 11800
$Comp
L power:GND #PWR023
U 1 1 6428D8F7
P 4750 12100
F 0 "#PWR023" H 4750 11850 50  0001 C CNN
F 1 "GND" H 4755 11927 50  0001 C CNN
F 2 "" H 4750 12100 50  0001 C CNN
F 3 "" H 4750 12100 50  0001 C CNN
	1    4750 12100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 6428D901
P 5050 12100
F 0 "#PWR025" H 5050 11850 50  0001 C CNN
F 1 "GND" H 5055 11927 50  0001 C CNN
F 2 "" H 5050 12100 50  0001 C CNN
F 3 "" H 5050 12100 50  0001 C CNN
	1    5050 12100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 12100 5050 12050
Wire Wire Line
	4750 12050 4750 12100
Wire Wire Line
	4750 11500 4850 11500
Wire Wire Line
	4850 11500 4850 11400
Wire Wire Line
	4950 11300 4950 11500
Wire Wire Line
	4950 11500 5050 11500
Wire Wire Line
	5050 11500 5050 11800
Wire Wire Line
	7750 10700 7750 10950
Wire Wire Line
	7550 10700 7550 10850
Wire Wire Line
	1550 11300 2400 11300
Text Label 1550 10300 0    39   ~ 0
GPS_INT
Connection ~ 1850 5850
Wire Wire Line
	2100 5850 1850 5850
Wire Wire Line
	2100 5850 2100 6000
Wire Wire Line
	2100 6200 2100 6250
$Comp
L power:GND #PWR033
U 1 1 72795750
P 2100 6250
F 0 "#PWR033" H 2100 6000 50  0001 C CNN
F 1 "GND" H 2105 6077 50  0001 C CNN
F 2 "" H 2100 6250 50  0001 C CNN
F 3 "" H 2100 6250 50  0001 C CNN
	1    2100 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5850 1850 5850
Wire Wire Line
	1850 5850 1850 6000
Connection ~ 1600 5850
Wire Wire Line
	1600 6000 1600 5850
Wire Wire Line
	1850 6200 1850 6250
$Comp
L power:GND #PWR032
U 1 1 7259225B
P 1850 6250
F 0 "#PWR032" H 1850 6000 50  0001 C CNN
F 1 "GND" H 1855 6077 50  0001 C CNN
F 2 "" H 1850 6250 50  0001 C CNN
F 3 "" H 1850 6250 50  0001 C CNN
	1    1850 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6200 1600 6250
$Comp
L power:GND #PWR031
U 1 1 72592250
P 1600 6250
F 0 "#PWR031" H 1600 6000 50  0001 C CNN
F 1 "GND" H 1605 6077 50  0001 C CNN
F 2 "" H 1600 6250 50  0001 C CNN
F 3 "" H 1600 6250 50  0001 C CNN
	1    1600 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5850 1600 5850
Connection ~ 1350 5850
Wire Wire Line
	1350 6000 1350 5850
Wire Wire Line
	1350 6200 1350 6250
$Comp
L power:GND #PWR029
U 1 1 7238CAA7
P 1350 6250
F 0 "#PWR029" H 1350 6000 50  0001 C CNN
F 1 "GND" H 1355 6077 50  0001 C CNN
F 2 "" H 1350 6250 50  0001 C CNN
F 3 "" H 1350 6250 50  0001 C CNN
	1    1350 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 7186D8F5
P 3750 6250
F 0 "#PWR016" H 3750 6000 50  0001 C CNN
F 1 "GND" H 3755 6077 50  0001 C CNN
F 2 "" H 3750 6250 50  0001 C CNN
F 3 "" H 3750 6250 50  0001 C CNN
	1    3750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6250 3750 6200
Wire Wire Line
	3750 6000 3750 5850
$Comp
L power:GND #PWR06
U 1 1 711596FB
P 2700 6250
F 0 "#PWR06" H 2700 6000 50  0001 C CNN
F 1 "GND" H 2705 6077 50  0001 C CNN
F 2 "" H 2700 6250 50  0001 C CNN
F 3 "" H 2700 6250 50  0001 C CNN
	1    2700 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5750 3000 5750
Connection ~ 2700 5750
Wire Wire Line
	2700 6000 2700 5750
Wire Wire Line
	10050 2500 9650 2500
Connection ~ 10050 2500
Text Label 9650 3300 0    39   ~ 0
LTDC_B4
Text Label 9650 3400 0    39   ~ 0
LTDC_B5
Text Label 9650 3500 0    39   ~ 0
LTDC_B6
Text Label 9650 3600 0    39   ~ 0
LTDC_B7
Text Label 9650 3900 0    39   ~ 0
LTDC_DE
Text Label 9650 4100 0    39   ~ 0
LTDC_VS
Text Label 9650 3800 0    39   ~ 0
LTDC_CK
Text Label 9650 4000 0    39   ~ 0
LTDC_HS
Text Label 9650 1700 0    39   ~ 0
LTDC_R4
Text Label 9650 1800 0    39   ~ 0
LTDC_R5
Text Label 9650 1900 0    39   ~ 0
LTDC_R6
Text Label 9650 2000 0    39   ~ 0
LTDC_R7
Text Label 9650 2500 0    39   ~ 0
LTDC_G4
Text Label 9650 2600 0    39   ~ 0
LTDC_G5
Text Label 9650 2700 0    39   ~ 0
LTDC_G6
Text Label 9650 2800 0    39   ~ 0
LTDC_G7
Wire Wire Line
	10150 3700 10250 3700
$Comp
L power:GND #PWR0103
U 1 1 625DDA87
P 10150 3700
F 0 "#PWR0103" H 10150 3450 50  0001 C CNN
F 1 "GND" H 10155 3527 50  0001 C CNN
F 2 "" H 10150 3700 50  0001 C CNN
F 3 "" H 10150 3700 50  0001 C CNN
	1    10150 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 900  10250 900 
Connection ~ 10200 900 
Wire Wire Line
	10200 1000 10200 900 
Wire Wire Line
	10150 900  10200 900 
Wire Wire Line
	10200 1000 10250 1000
Wire Wire Line
	10250 1100 10050 1100
$Comp
L power:GND #PWR0102
U 1 1 623A257C
P 10150 900
F 0 "#PWR0102" H 10150 650 50  0001 C CNN
F 1 "GND" H 10155 727 50  0001 C CNN
F 2 "" H 10150 900 50  0001 C CNN
F 3 "" H 10150 900 50  0001 C CNN
	1    10150 900 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR098
U 1 1 6077ABD7
P 9850 5150
F 0 "#PWR098" H 9850 4900 50  0001 C CNN
F 1 "GND" H 9855 4977 50  0001 C CNN
F 2 "" H 9850 5150 50  0001 C CNN
F 3 "" H 9850 5150 50  0001 C CNN
	1    9850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5150 9850 5100
Wire Wire Line
	9850 4900 9850 4700
Wire Wire Line
	9850 4700 10250 4700
Wire Wire Line
	10000 5150 10000 5100
$Comp
L power:GND #PWR0101
U 1 1 6077AD88
P 10000 5150
F 0 "#PWR0101" H 10000 4900 50  0001 C CNN
F 1 "GND" H 10005 4977 50  0001 C CNN
F 2 "" H 10000 5150 50  0001 C CNN
F 3 "" H 10000 5150 50  0001 C CNN
	1    10000 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR097
U 1 1 6077A1B5
P 9700 5150
F 0 "#PWR097" H 9700 4900 50  0001 C CNN
F 1 "GND" H 9705 4977 50  0001 C CNN
F 2 "" H 9700 5150 50  0001 C CNN
F 3 "" H 9700 5150 50  0001 C CNN
	1    9700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5100 9700 5150
Wire Wire Line
	9700 4600 9700 4900
Wire Wire Line
	10250 4600 9700 4600
NoConn ~ 10250 4500
NoConn ~ 10250 4200
Wire Wire Line
	9650 4100 10250 4100
Wire Wire Line
	9650 2600 10100 2600
Wire Wire Line
	10100 2600 10100 2200
Connection ~ 10100 2600
Wire Wire Line
	9650 2700 10150 2700
Wire Wire Line
	10150 2700 10150 2300
Connection ~ 10150 2700
Wire Wire Line
	9650 4000 10250 4000
Wire Wire Line
	9650 3900 10250 3900
Wire Wire Line
	10250 3800 9650 3800
Wire Wire Line
	10050 3300 9650 3300
Connection ~ 10050 3300
Wire Wire Line
	10050 2900 10250 2900
Wire Wire Line
	10050 3300 10050 2900
Wire Wire Line
	10100 3400 10250 3400
Connection ~ 10100 3400
Wire Wire Line
	10100 3000 10250 3000
Wire Wire Line
	10100 3400 10100 3000
Wire Wire Line
	10150 3500 10250 3500
Connection ~ 10150 3500
Wire Wire Line
	10150 3100 10250 3100
Wire Wire Line
	10150 3500 10150 3100
Wire Wire Line
	10200 3600 9650 3600
Connection ~ 10200 3600
Wire Wire Line
	10200 3200 10250 3200
Wire Wire Line
	10200 3600 10200 3200
Wire Wire Line
	10250 3600 10200 3600
Wire Wire Line
	9650 3500 10150 3500
Wire Wire Line
	9650 3400 10100 3400
Wire Wire Line
	10250 3300 10050 3300
Wire Wire Line
	10050 1300 10050 1700
Wire Wire Line
	10050 1300 10250 1300
Wire Wire Line
	10050 1700 9650 1700
Connection ~ 10050 1700
Wire Wire Line
	10100 1800 10250 1800
Connection ~ 10100 1800
Wire Wire Line
	10100 1400 10100 1800
Wire Wire Line
	10250 1400 10100 1400
Wire Wire Line
	10150 1900 10250 1900
Connection ~ 10150 1900
Wire Wire Line
	10150 1500 10250 1500
Wire Wire Line
	10150 1900 10150 1500
Wire Wire Line
	10200 2000 9650 2000
Connection ~ 10200 2000
Wire Wire Line
	10200 1600 10250 1600
Wire Wire Line
	10200 2000 10200 1600
Wire Wire Line
	10050 2100 10250 2100
Wire Wire Line
	10050 2500 10050 2100
Wire Wire Line
	10100 2600 10250 2600
Wire Wire Line
	10100 2200 10250 2200
Wire Wire Line
	10150 2700 10250 2700
Wire Wire Line
	10150 2300 10250 2300
Wire Wire Line
	10200 2800 9650 2800
Connection ~ 10200 2800
Wire Wire Line
	10200 2400 10250 2400
Wire Wire Line
	10200 2800 10200 2400
Wire Wire Line
	10250 2800 10200 2800
Wire Wire Line
	10250 2500 10050 2500
Wire Wire Line
	10250 2000 10200 2000
Wire Wire Line
	9650 1900 10150 1900
Wire Wire Line
	9650 1800 10100 1800
Wire Wire Line
	10250 1700 10050 1700
NoConn ~ 8050 2850
NoConn ~ 8050 2950
Wire Wire Line
	7200 2450 7100 2450
Wire Wire Line
	6800 2450 7100 2450
Connection ~ 7100 2450
Wire Wire Line
	7500 2550 7500 2450
$Comp
L power:GND #PWR093
U 1 1 626462DE
P 7500 2800
F 0 "#PWR093" H 7500 2550 50  0001 C CNN
F 1 "GND" H 7505 2627 50  0001 C CNN
F 2 "" H 7500 2800 50  0001 C CNN
F 3 "" H 7500 2800 50  0001 C CNN
	1    7500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2800 7500 2750
Wire Wire Line
	5950 3200 5950 3100
$Comp
L power:GND #PWR078
U 1 1 62D9F473
P 5950 3550
F 0 "#PWR078" H 5950 3300 50  0001 C CNN
F 1 "GND" H 5955 3377 50  0001 C CNN
F 2 "" H 5950 3550 50  0001 C CNN
F 3 "" H 5950 3550 50  0001 C CNN
	1    5950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3550 5950 3400
Text Label 5500 2450 0    39   ~ 8
VCC_SYS
Wire Wire Line
	4200 11400 4850 11400
$Comp
L power:GND #PWR034
U 1 1 6554A6AB
P 6250 9350
F 0 "#PWR034" H 6250 9100 50  0001 C CNN
F 1 "GND" H 6255 9177 50  0001 C CNN
F 2 "" H 6250 9350 50  0001 C CNN
F 3 "" H 6250 9350 50  0001 C CNN
	1    6250 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7900 2400 7900
Wire Wire Line
	1100 8100 1100 7900
Wire Wire Line
	1200 8000 2400 8000
Wire Wire Line
	1200 8100 1200 8000
Wire Wire Line
	1300 8100 1200 8100
Wire Wire Line
	1300 8700 1300 8650
$Comp
L power:GND #PWR03
U 1 1 643ED397
P 1300 8700
F 0 "#PWR03" H 1300 8450 50  0001 C CNN
F 1 "GND" H 1305 8527 50  0001 C CNN
F 2 "" H 1300 8700 50  0001 C CNN
F 3 "" H 1300 8700 50  0001 C CNN
	1    1300 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 8700 1000 8650
$Comp
L power:GND #PWR01
U 1 1 643ED3A2
P 1000 8700
F 0 "#PWR01" H 1000 8450 50  0001 C CNN
F 1 "GND" H 1005 8527 50  0001 C CNN
F 2 "" H 1000 8700 50  0001 C CNN
F 3 "" H 1000 8700 50  0001 C CNN
	1    1000 8700
	1    0    0    -1  
$EndComp
Connection ~ 1300 8400
Wire Wire Line
	1300 8450 1300 8400
Connection ~ 1000 8400
Wire Wire Line
	1000 8450 1000 8400
Wire Wire Line
	1300 8100 1300 8400
Wire Wire Line
	1000 8100 1000 8400
Wire Wire Line
	1300 8400 1250 8400
Wire Wire Line
	1000 8400 1050 8400
Text Label 1550 7900 0    39   ~ 0
RCC_OSC_IN
Wire Wire Line
	1100 8100 1000 8100
Wire Wire Line
	4200 11300 4950 11300
Text Label 5750 8800 0    39   ~ 0
GPS_1PPS
$Comp
L power:GND #PWR09
U 1 1 68B4FC01
P 3000 11850
F 0 "#PWR09" H 3000 11600 50  0001 C CNN
F 1 "GND" H 3005 11677 50  0001 C CNN
F 2 "" H 3000 11850 50  0001 C CNN
F 3 "" H 3000 11850 50  0001 C CNN
	1    3000 11850
	1    0    0    -1  
$EndComp
Text Label 1550 6500 0    39   ~ 0
DEBUG_NRESET_STM
Wire Wire Line
	2400 6500 1550 6500
Wire Wire Line
	3000 6200 3000 5750
Wire Wire Line
	3100 5850 3100 6150
Wire Wire Line
	5050 9100 4200 9100
Text Label 5050 9100 2    39   ~ 0
LTDC_B7
Connection ~ 3000 11750
Wire Wire Line
	3100 11750 3200 11750
Connection ~ 3100 11750
Wire Wire Line
	3100 11700 3100 11750
Wire Wire Line
	3200 11750 3300 11750
Connection ~ 3200 11750
Wire Wire Line
	3200 11700 3200 11750
Wire Wire Line
	3300 11750 3400 11750
Connection ~ 3300 11750
Wire Wire Line
	3300 11700 3300 11750
Wire Wire Line
	3400 11750 3400 11700
Wire Wire Line
	3000 11750 3100 11750
Wire Wire Line
	3000 11700 3000 11750
Wire Wire Line
	3100 6150 3200 6150
Connection ~ 3100 6150
Wire Wire Line
	3100 6200 3100 6150
Wire Wire Line
	3200 6150 3300 6150
Connection ~ 3200 6150
Wire Wire Line
	3200 6200 3200 6150
Wire Wire Line
	3300 6150 3400 6150
Connection ~ 3300 6150
Wire Wire Line
	3300 6200 3300 6150
Wire Wire Line
	3400 6150 3500 6150
Connection ~ 3400 6150
Wire Wire Line
	3400 6200 3400 6150
Wire Wire Line
	3500 6150 3500 6200
Wire Wire Line
	2550 13150 3200 13150
Text Label 2550 13150 0    39   ~ 0
OCTOSPIM_P1_NCS
Wire Wire Line
	2550 13700 3200 13700
Text Label 2550 13700 0    39   ~ 0
OCTOSPIM_P1_DQS
Wire Wire Line
	2550 13550 3200 13550
Text Label 2550 13550 0    39   ~ 0
OCTOSPIM_P1_CLK
Wire Wire Line
	3700 14150 3800 14150
Wire Wire Line
	3700 14100 3700 14150
Wire Wire Line
	3800 14200 3800 14150
Wire Wire Line
	3800 14150 3900 14150
Connection ~ 3800 14150
Wire Wire Line
	3800 12750 3800 12850
$Comp
L power:GND #PWR011
U 1 1 6290D117
P 3800 14200
F 0 "#PWR011" H 3800 13950 50  0001 C CNN
F 1 "GND" H 3805 14027 50  0001 C CNN
F 2 "" H 3800 14200 50  0001 C CNN
F 3 "" H 3800 14200 50  0001 C CNN
	1    3800 14200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 12750 3250 12750
Connection ~ 3800 12850
Wire Wire Line
	3900 12850 3900 12900
Wire Wire Line
	3800 12850 3900 12850
Wire Wire Line
	3800 12850 3800 12900
Wire Wire Line
	3700 12850 3800 12850
Wire Wire Line
	3700 12900 3700 12850
Wire Wire Line
	3900 14150 3900 14100
Wire Wire Line
	3800 14150 3800 14100
Text Label 5050 13850 2    39   ~ 0
OCTOSPIM_P1_IO7
Text Label 5050 13750 2    39   ~ 0
OCTOSPIM_P1_IO6
Text Label 5050 13650 2    39   ~ 0
OCTOSPIM_P1_IO5
Text Label 5050 13550 2    39   ~ 0
OCTOSPIM_P1_IO4
Text Label 5050 13450 2    39   ~ 0
OCTOSPIM_P1_IO3
Text Label 5050 13150 2    39   ~ 0
OCTOSPIM_P1_IO0
Text Label 5050 13250 2    39   ~ 0
OCTOSPIM_P1_IO1
Wire Wire Line
	4400 13150 5050 13150
Wire Wire Line
	4400 13250 5050 13250
Wire Wire Line
	4400 13850 5050 13850
Wire Wire Line
	4400 13750 5050 13750
Wire Wire Line
	4400 13650 5050 13650
Wire Wire Line
	4400 13550 5050 13550
Wire Wire Line
	4400 13450 5050 13450
Wire Wire Line
	5050 13350 4400 13350
Text Label 5050 13350 2    39   ~ 0
OCTOSPIM_P1_IO2
Text Label 800  15750 0    39   ~ 0
SDMMC1_CMD
Text Label 800  15850 0    39   ~ 0
SDMMC1_CK
Text Label 800  15650 0    39   ~ 0
SDMMC1_D3
Text Label 800  15550 0    39   ~ 0
SDMMC1_D2
$Comp
L power:GND #PWR090
U 1 1 60617800
P 1150 16400
F 0 "#PWR090" H 1150 16150 50  0001 C CNN
F 1 "GND" H 1155 16227 50  0001 C CNN
F 2 "" H 1150 16400 50  0001 C CNN
F 3 "" H 1150 16400 50  0001 C CNN
	1    1150 16400
	1    0    0    -1  
$EndComp
Text Label 1550 9900 0    39   ~ 0
SD_DET
Wire Wire Line
	2400 9700 1550 9700
Wire Wire Line
	1550 9600 2400 9600
Text Label 1550 9700 0    39   ~ 0
LTDC_R7
Text Label 1550 9600 0    39   ~ 0
LTDC_CK
Wire Wire Line
	1550 9500 2400 9500
Text Label 1550 9500 0    39   ~ 0
LTDC_DE
Text Label 1550 9400 0    39   ~ 0
LTDC_B4
Wire Wire Line
	2400 9400 1550 9400
Text Label 1550 9300 0    39   ~ 0
OCTOSPIM_P1_NCS
Wire Wire Line
	2400 9300 1550 9300
Text Label 1550 9200 0    39   ~ 0
OCTOSPIM_P1_IO7
Wire Wire Line
	2400 9200 1550 9200
Text Label 1550 8000 0    39   ~ 0
RCC_OSC_OUT
Text Label 1550 9100 0    39   ~ 0
OCTOSPIM_P1_IO6
Wire Wire Line
	2400 9100 1550 9100
Text Label 1550 9000 0    39   ~ 0
OCTOSPIM_P1_IO5
Wire Wire Line
	1550 9000 2400 9000
Text Label 1550 8900 0    39   ~ 0
OCTOSPIM_P1_IO4
Wire Wire Line
	2400 8900 1550 8900
Wire Wire Line
	1550 10200 2400 10200
Text Label 1550 10200 0    39   ~ 0
LTDC_G7
Text Label 1550 10100 0    39   ~ 0
SDMMC1_CMD
Wire Wire Line
	2400 10100 1550 10100
Text Label 4800 11400 2    39   ~ 0
RCC_OSC32_OUT
Text Label 4800 11300 2    39   ~ 0
RCC_OSC32_IN
Wire Wire Line
	5050 10800 4200 10800
Text Label 5050 10800 2    39   ~ 0
SDMMC1_D1
Text Label 5050 10700 2    39   ~ 0
SDMMC1_D0
Wire Wire Line
	4200 10700 5050 10700
Text Label 5050 10600 2    39   ~ 0
LTDC_G6
Wire Wire Line
	4200 10600 5050 10600
Text Label 5050 10500 2    39   ~ 0
LTDC_HS
Wire Wire Line
	4200 10500 5050 10500
Text Label 5050 10400 2    39   ~ 0
OCTOSPIM_P1_DQS
Wire Wire Line
	4200 10400 5050 10400
Wire Wire Line
	4200 9000 5050 9000
Wire Wire Line
	2400 10000 1550 10000
Text Label 5050 11100 2    39   ~ 0
SDMMC1_CK
Wire Wire Line
	4200 11100 5050 11100
Wire Wire Line
	4200 11000 5050 11000
Text Label 5050 11000 2    39   ~ 0
SDMMC1_D3
Text Label 5050 10900 2    39   ~ 0
SDMMC1_D2
Wire Wire Line
	4200 10900 5050 10900
Text Label 1550 11100 0    39   ~ 0
USART3_RTS_NCP
Wire Wire Line
	2400 11100 1550 11100
Text Label 5050 8700 2    39   ~ 0
LTDC_B5
Wire Wire Line
	4200 8700 5050 8700
Text Label 5050 8400 2    39   ~ 0
OCTOSPIM_P1_CLK
Wire Wire Line
	4200 8400 5050 8400
Wire Wire Line
	5050 9300 4200 9300
Text Label 5050 9300 2    39   ~ 0
LTDC_G5
Text Label 5050 9200 2    39   ~ 0
LTDC_G4
Wire Wire Line
	4200 9200 5050 9200
Wire Wire Line
	5050 8300 4200 8300
Text Label 5050 8300 2    39   ~ 0
OCTOSPIM_P1_IO0
Text Label 5050 8200 2    39   ~ 0
OCTOSPIM_P1_IO1
Wire Wire Line
	4200 8200 5050 8200
Text Label 5050 8000 2    39   ~ 0
LTDC_B6
Wire Wire Line
	4200 8000 5050 8000
Text Label 5050 7900 2    39   ~ 0
DEBUG_SWDCLK_STM
Wire Wire Line
	4200 7900 5050 7900
Text Label 5050 7800 2    39   ~ 0
DEBUG_SWDIO_STM
Wire Wire Line
	4200 7800 5050 7800
Text Label 5050 7700 2    39   ~ 0
USB_STM_D+
Text Label 5050 7600 2    39   ~ 0
USB_STM_D-
Wire Wire Line
	4200 7700 5050 7700
Wire Wire Line
	4200 7600 5050 7600
Wire Wire Line
	4200 6900 5050 6900
Text Label 5050 6900 2    39   ~ 0
LTDC_VS
Text Label 5050 7000 2    39   ~ 0
LTDC_R4
Wire Wire Line
	4200 7000 5050 7000
Wire Wire Line
	4200 7100 5050 7100
Text Label 5050 7100 2    39   ~ 0
OCTOSPIM_P1_IO3
Text Label 5050 7200 2    39   ~ 0
OCTOSPIM_P1_IO2
Wire Wire Line
	4200 7200 5050 7200
Text Label 5050 7300 2    39   ~ 0
LTDC_R6
Wire Wire Line
	4200 7300 5050 7300
Wire Wire Line
	4200 7500 5050 7500
Wire Wire Line
	4200 7400 5050 7400
Text Notes 5650 13050 0    49   ~ 0
Touch Screen, Pressure and Fuel Gauge
Text Notes 5650 15950 0    49   ~ 0
6DOF IMU and SPI Flash
$EndSCHEMATC
