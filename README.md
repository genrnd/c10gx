# c10gx: led blinker 

This project is intended for fast checking of on-board clock generators,
connected to Cyclone 10 GX chip.  It blinks leds with 1Hz frequency. Each led
is fed by one clock generator.

## How it works

There are two generators to be checked:

  * BQ3, [DSC6102CI2A-100.0000, 100 MHz](http://ww1.microchip.com/downloads/en/DeviceDoc/20005624B.pdf). Single-ended connection 
  * BQ2, [ASEMPLV-156.250MHZ-LR-T, 156.25 MHz](https://abracon.com/Oscillators/ASEMP.pdf). Differential connection

Clock 100 MHz is divided by 100.000.000 and blinks led #3.

Clock 156.25 MHz is divided by 156.250.000 and blinks led #3.

## How to use

  1. Build led blinker firmware: open c10gx.qpf and run Full Compilation in
     Quartus Prime 18 Pro. Firmware will become available at 'out/c10gx.sof'. 
  2. Program device by JTAG or with Serial Flash Loader (see [1]).
  3. Watch or/and measure frequency on LED #3, LED #4. It should be equal to 1Hz

## Links

  1. TODO: link to serial flash loader firmware 
