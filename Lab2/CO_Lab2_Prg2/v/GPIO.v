`timescale 1ns / 1ps

module GPIO(input wire clk,
				input wire rst,
				input wire Start,
				input wire [15:0] P_Data, // input data
				output wire led_clk, // output LED signal
				output wire led_sout,
				output wire led_clrn,
				output wire led_pen);

	
	P2S #(.DATA_BITS(16), .DATA_COUNT_BITS(4)) // use P2S to output
		LED_P2S (.clk(clk), .rst(rst), .Start(Start), 
				 .PData(P_Data), .s_clk(led_clk), .s_clrn(led_clrn), 
				 .sout(led_sout), .EN(led_pen));

endmodule
