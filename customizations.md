# uCM4 customizations

Following items can be changed without redesigning the board

## No microSD slot

microSD slot has been designed to be optional feature. For this purpose 0 Ohm
resistors are placed on data lines as close to Hirose connector, as was
possible. Following items should not be fitted in this case:

1. TF-015 microSD slot
2. R6-R11 0 Ohm resistors
3. RT9742CGJ5F chip marked as U1
4. R5 resistor between `SD_PWR_ON` and `SD_EN`

## Writable EEPROM

By default CM4 EEPROM has been locked, meaning it cannot be written to. This
lock can be lifted by removing R3 0 Ohm resistor.

## Power and reset buttons

These buttons can be either fitted, or not, depending on user preference.

## UART header

Same as with buttons. Can be skipped, depending on preference.
