# Description #

This project provides a "Raspberry PI B (rev. 2)" ([1]) emulator device for usage with the Java ME 8 SDK emulator.

The emulated device uses the same GPIO pina as the real Raspberry Pi B (rev. 2). Like described in "Oracle® Java ME Embedded Getting Started Guide for the Reference Platform (Raspberry Pi)" ([2]).


# Intent #

If you develop applications with the Java ME 8 for the 'Raspberry Pi' and want to run your code in the Java ME 8 emulator you have to change the GPIO in your code, as the mapping in the provided emulator 'EmbeddedDevice' is different from the mapping on the Raspberry Pi.
Using this provided 'Raspberry Pi emulator device' you can run the code without a change either on the 'Raspberry Pi' or in the Java ME 8 SDK emulator.

port mapping: 

##EmbeddedDevice (delivered with the Java ME 8 SDK)##


 ID | Name | H/W Port | H/W Pin  | IN/OUT
:---|:----:|:--------:|:--------:|:------:
| LED 8 | 7 | 2 | OUT
| LED 7 | 6 | 8 | OUT
| LED 6 | 6 | 7 | OUT
| LED 5 | 6 | 6 | OUT
 1 | LED 1 | 7 | 3 | OUT
 2 | LED 2 | 7 | 6 | OUT
 3 | LED 3 | 7 | 7 | OUT
 4 | LED 4 | 8 | 10 | OUT
 5 | BUTTON 1 | 0 | 0 | IN
 6 | BUTTON 2 | 2 | 13 | IN
 7 | BUTTON 3 | 6 | 15 | IN

##RaspberryPI_EmulatorDevice##
ID | Name | H/W Port | H/W Pin  | IN/OUT
:--|:----:|:--------:|:--------:|:------:
2 | GPIO2 | 0 | 2 | IN
3 | GPIO3 | 0 | 3 | IN
4 | GPIO4 | 0 | 4 | IN
7 | GPIO7 | 0 | 7 | OUT
8 | GPIO8 | 0 | 8 | OUT
9 | GPIO9 | 0 | 9 | IN
10 | GPIO10 | 0 | 10 | IN
11 | GPIO11 | 0 | 11 | IN
14 | GPIO14 | 0 | 14 | OUT
15 | GPIO15 | 0 | 15 | OUT
17 | GPIO17 | 0 | 17 | IN
18 | GPIO18 | 0 | 18 | OUT
22 | GPIO22 | 0 | 22 | IN
23 | GPIO23 | 0 | 23 | OUT
24 | GPIO24 | 0 | 24 | OUT
25 | GPIO25 | 0 | 25 | OUT
26 | GPIO27 | 0 | 27 | IN
 

# Usage #

* start the 'Custom Device Emulator' of the Java ME Platform SDK 8
* click on "import"
* browse to the folder containing the file "RaspberryPI_EmulatorDevice.zip"
* click on "open" to start the import
* after the emulator device has been imported, it will be displayed in Netbeans "Device Selector"
* to run your project using this eumulator you must configure it in the project properties, Platform -> Device ...


[1]: http://www.raspberrypi.org/ "www.raspberrypi.org"
[2]: http://docs.oracle.com/javame/8.0/get-started-rpi/piportsapdx.htm#sthref50 "Eava ME Embedded Getting Started Guide for the Reference Platform (Raspberry Pi)"