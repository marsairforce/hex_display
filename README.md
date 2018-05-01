A 4 digit (16 bit) binary to 7-segment display.

Wanting to have some convenient module for displaying address bus contents.

This is a 28 DIP form factor circuit board using an Atmega 164A. Because it has a lot of IO pins.

Inspired by https://www.youtube.com/watch?v=o9eQ9NhFT60

# V1 Hardware
Using Atmega164A device and 4 10mm 7 segment displays.

![fig1](photos/hex_display1.png)
![fig2](photos/hex_display2.png)

The device was chosen because it has enough IO pins to directly drive all the segments with display multiplexing (the common anodes, using a transistor driver).

It was supposed to be a 28 pin dip format, but it is accidentally almost too wide to fit on a breadboard. Well, almost too wide. some cretive wiring under the display module on the breadboard should work.

Since we have pins for the MISO, MOSI, SCK. We can have a mode where this thing is an I2C or SPI slave and displays values on an I2C bus? That might be an intersting use. A display module. Though I would probably just use it as a clock since thats all I seem to build these days.

The schematic is set up to have the 16 address pins, an output enable pin and a latch enable pin.

![v1 schematic](photos/v1_schematic.png)

So the idea is to read the input pin values. and then display value as hex, using software to multiplex the displays.

# Programming
At first I had some learning curve to program this. I was using the Arduino IDE (instead of spending time to get avr-gcc and the tool chain to work on its own with a Makefile, becuase.. macbook here..).

The AT164A is not directly supported hardware, but there is this project for [MightyCore](https://github.com/MCUdude/MightyCore) that seems to bring the AT164 support among others to the Arduino IDE.

I tried to use the "Arduino as ISP" sketch to create an ICSP and attached it to the pings on my module. Though it would not be recognized still.  I verified the Arduino as ISP setup worked by programming an Attiny85. That led to a tangent project to learn how to build a HVSP programmer on a second arduino to rese the fuzes, because I bricked the Attiny85 by accident. And then the desire to create an all in one programmer that can handle both cases. But that fell apart when I discovered there is already a usbtiny programmer project and not wanting to lose focus on the bigger picture which was to get this damn device I built in like February (it is now late April) to program so I can just see if it even works. You know. prototyping by designing and fabricating a PCB from the get go because stupid surface mount everything, what can possibly go wrong. Oh right, everything.

So then putting some energy intiwanting to build the usbtinyisp, as maybe that would work for me instead of the Arduino as ISP thing, but feeling no budget lately, and then remembering I had a bunch of digispark devices that have the same-ish kind of hardware that the usbtiny programmer has. So then the idea to use this as a usbtiny isp. And a few iterations with the arduino as isp and HVSP programmers to realize the USB cable I was using for it was really a 2 wire power cable and not even a USB cable at all. How many sleepless nights are we up to now anyway. At least we now have a fork on Github for the vusbtiny project, with digispark hardware.

So getting the usbtiny programmer to work, and then learning we need to edit the avrdude.conf file to allow it to recognize the Atmega164A device. And then learning the Arduino IDE supports a `Upload using programmer` mode, so then going back to just using that. And here we are. Other than some random crazy ramblings and a somewhat arbitrary path to get here, I have uninteligently managed to use Arduino IDE with MightyCore, the updated avrdude.conf, with a usbtinyisp.
