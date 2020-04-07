`timescale 1ns / 1ps

module Top_Lab2_Prg2(input wire clk_100mhz, // clock signal
							input wire [15:0]SW, // switch input
							output wire LEDCLK, // LED output
							output wire LEDDT,
							output wire LEDEN,
							output wire LEDCLR);
	
	wire [31:0]Div; // clock div
	
	// clock div module
	clkdiv clkdiv_M(.clk(clk_100mhz), 
						 .clkdiv(Div[31:0])); 
	
	// LED output module
	GPIO GPIO_M (.clk(clk_100mhz), 
					 .rst(1'b0), 
					 .Start(Div[20]), 
					 .P_Data(SW), // connect switch signal to LED
					 .led_clk(LEDCLK), 
					 .led_sout(LEDDT), 
					 .led_clrn(LEDCLR), 
					 .led_pen(LEDEN));

endmodule
