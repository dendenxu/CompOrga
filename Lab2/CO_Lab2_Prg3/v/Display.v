`timescale 1ns / 1ps

 // display the Hex number using the eight 7-segments 
module Display(input wire clk,
					input wire rst,
					input wire Start,
					input wire flash,
					input wire [31:0]Hexs,
					input wire [7:0]point,
					input wire [7:0]LES,
					output wire seg_clk,
					output wire seg_sout,
					output wire seg_pen,
					output wire seg_clrn);
					
	wire [63:0] PData;
	wire [63:0] SM3_Din;
			
	HexTo8SEG SM1(.flash(flash), .Hexs(Hexs), .points(point),
					  .LES(LES), .SEG_TXT(PData));
	
	P2S #(.DATA_BITS(64), .DATA_COUNT_BITS(4))
		P7_P2S (.clk(clk), .rst(rst), .Start(Start), 
				 .PData(PData), .s_clk(seg_clk), .s_clrn(seg_clrn), 
				 .sout(seg_sout), .EN(seg_pen));


endmodule
