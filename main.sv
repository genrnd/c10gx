
// Intel / Altera Cyclone 10 GX board test project
// General R&D, 2018

module main(

      input clkusr_100m,  // 100 MHz, single-ended
      output [8:3]led
);

/* Blink leds
 */
logic [31:0] clk100_cntr;
always_ff @(posedge clkusr_100m)
  clk100_cntr <= clk100_cntr + 1'b1;

assign led[8:3] = clk100_cntr[29:24];

/* Serial Flash Loader instance
 */
sfl u0 (
  .noe_in ( 1'b0 ) // 0 = enabled
);

endmodule
