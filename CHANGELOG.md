# Revisions

## 1.0
* Hardware design using At164A microcontroller, surface mount 7 segment displays on a PCB.
* Software done using Arduino IDE and MightyCore configuration for AVR devices.

## 0.1
Was thinking VDMR10A1CT-ND, since 10mm display height.
A 16 bit module has 4 digits. An 8 bit module can use the same logic, just having less inputs and 2 displays.

Really we could use a micro controller to read latched inputs into shift registers. serially read them in and then use display multiplexing to write out the display values. This could have support for external latching(LE), display blanking (OE).

The best fitting controller seems to be the Atmega 164 ATMEGA164A-AURCT-ND. 32 io lines. 20mHz. (16 for input, 7 for segment cathodes, 4 for segment anodes, 1 for OE, 1 for LE, 2 for for selecting mode (continuous, latch single, latch multiple, read out), 1 for reset. We can have it store several values  read on input into internal arrays as it reads them in, so we could later halt the CPU and review the sequences that were observed.

So this makes the components just the 7 segment displays, micro controller, resistors, power filtering capacitors).

Aim to package it into a wide 24 pin DIP footprint.  (18.53mm wide x 30.9mm long)