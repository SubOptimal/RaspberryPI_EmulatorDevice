# Description #

This project provides a "Raspberry PI B (rev. 2)" ([1]) emulator device for usage with the Java ME 8 SDK emulator.

The emulated device uses the same GPIO pina as the real Raspberry Pi B (rev. 2). Like described in "Oracle® Java ME Embedded Getting Started Guide for the Reference Platform (Raspberry Pi)" ([2]).


# Intent #

If you develop applications with the Java ME 8 for the 'Raspberry Pi' and want to run your code in the Java ME 8 emulator you have to change the GPIO in your code, as the mapping in the provided emulator 'EmbeddedDevice' is different from the mapping on the Raspberry Pi.
Using this provided 'Raspberry Pi emulator device' you can run the code without a change either on the 'Raspberry Pi' or in the Java ME 8 SDK emulator.


# Usage #

* start the 'Custom Device Emulator' of the Java ME Platform SDK 8
* click on "import"
* browse to the folder containing the file "RaspberryPI_EmulatorDevice.zip"
* click on "open" to start the import
* after the emulator device has been imported, it will be displayed in Netbeans "Device Selector"
* to use the emulator to run your project you must select it in the project properties, Platform -> Device ...


[1]: http://www.raspberrypi.org/ "www.raspberrypi.org"
[2]: http://docs.oracle.com/javame/8.0/get-started-rpi/piportsapdx.htm#sthref50 "Eava ME Embedded Getting Started Guide for the Reference Platform (Raspberry Pi)"