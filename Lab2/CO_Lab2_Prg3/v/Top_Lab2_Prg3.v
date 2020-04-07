`timescale 1ns / 1ps

module Top_Lab2_Prg3(input wire clk_100mhz, // clock signal
							input wire [4:0]K_ROW, // keyboard row input
							output wire SEGCLK, // LED output
							output wire SEGDT,
							output wire SEGEN,
							output wire SEGCLR);
	
	wire [31:0]Div; // clock div
	wire [2:0]KB_Hex_ROW; // Hex form of K_ROL signal 
	wire [15:0]Hexs = {13'd0, KB_Hex_ROW}; // real output value of 7-segment
	
	// clock div module
	clkdiv clkdiv_M(.clk(clk_100mhz), 
						 .clkdiv(Div[31:0])); 
	
	// 7-segment output module
	Display Display_M(.LES(8'h00), 
							.point(8'h00), 
							.Hexs(Hexs), // connect Hexs to 7-segment
							.flash(Div[25]), 
							.rst(1'b0), 
							.Start(Div[10]), 
							.clk(clk_100mhz),  
							.seg_clrn(SEGCLR), 
							.seg_sout(SEGDT), 
							.seg_pen(SEGEN), 
							.seg_clk(SEGCLK));
							
	// transform K_ROL signal to its Hex form
	KB_Process KB_Process_M(.clk(Div[27]),
							.K_ROW(K_ROW),
							.KB_Hex_ROW(KB_Hex_ROW));

endmodule
