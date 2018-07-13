
// Intel / Altera Cyclone 10 GX board test project
// General R&D, 2018

`define LED_100MHZ 3
`define LED_156MHZ 4

`define CLK_100MHZ 32'd100000000
`define CLK_156MHZ 32'd156250000

module main(
  input clk100,    // 100 MHz, single-ended
  input clk156p,   // 156.25 MHz, diff pair 
  output reg [8:3]led
);

/* Blink leds from 100Mhz and 156Mhz references
 */
logic [31:0] clk100_cntr;
logic [31:0] clk156_cntr;

always_ff @(posedge clk100) begin
  clk100_cntr <= clk100_cntr + 1'b1;
  if ( clk100_cntr == (`CLK_100MHZ/2 - 1) ) begin
    led[`LED_100MHZ] <= ~led[`LED_100MHZ];
    clk100_cntr <= 32'd0;
  end
end

always_ff @(posedge clk156p) begin
  clk156_cntr <= clk156_cntr + 1'b1;
  if ( clk156_cntr == (`CLK_156MHZ/2 - 1) ) begin
    led[`LED_156MHZ] <= ~led[`LED_156MHZ];
    clk156_cntr <= 32'd0;
  end
end

assign led[8:`LED_156MHZ+1] = '0;

endmodule
