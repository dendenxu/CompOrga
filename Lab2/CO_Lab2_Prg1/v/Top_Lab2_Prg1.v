`timescale 1ns / 1ps

module Top_Lab2_Prg1(input wire clk_100mhz, // clock signal
							output wire SEGCLK, // 7-segment output signal
							output wire SEGDT,
							output wire SEGEN,
							output wire SEGCLR, // LED input signal
							output wire LEDCLK,
							output wire LEDDT,
							output wire LEDEN,
							output wire LEDCLR);
	
	
	wire [31:0]SID = 32'hBD8C_8561; // SID
	wire [31:0]Div; // clock div signal
	
	// clock div module
	clkdiv clkdiv_M(.clk(clk_100mhz), 
						 .clkdiv(Div[31:0]));
						 
	// 7-segment output module
	Display Display_M(.LES(8'h00), 
							.point(8'h00), 
							.Hexs(SID), // connect SID to 7-segment
							.flash(Div[25]), 
							.rst(1'b0), 
							.Start(Div[10]), 
							.clk(clk_100mhz), 
							.seg_clrn(SEGCLR), 
							.seg_sout(SEGDT), 
							.seg_pen(SEGEN), 
							.seg_clk(SEGCLK));
							
	// LED output module
	GPIO GPIO_M (.clk(clk_100mhz), 
					 .rst(1'b0), 
					 .Start(Div[20]), 
					 .P_Data(SID[15:0]), // connect SID to LED
					 .led_clk(LEDCLK), 
					 .led_sout(LEDDT), 
					 .led_clrn(LEDCLR), 
					 .led_pen(LEDEN));

			

endmodule
