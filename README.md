# c10gx: Serial Flash Loader

This small project is intended for writing of working firmware to configuration
flash EPCQ256L, which is connected to the Cyclone 10GX chip.

## How to use

Perform following steps to write your working bitstream (SOF) to EPCQ256L:

  1. create .jic file, see [1], ch.1.5.1. At this step you should specify
    working firmware which should be loaded from EPCQ256L
  2. build this firmware in Quartus Prime
  3. connect JTAG to the board
  4. program this (sfl) firmware to FPGA. Leds 3-8 should start blinking. 
  5. open .jic file with Quartus Prime Programmer and check
     'Program/Configure'. Start programming. Be patient, it takes time :)
  6. power off the board, disconnect JTAG and power on again. FPGA should run
     with working bitstream specified in 1st step

## Links

  1. [Application Note about using of Serial Flash Loader](https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/an/an370.pdf)
