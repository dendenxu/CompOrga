`timescale 1ns / 1ps

module GPIO(input wire clk,
				input wire rst,
				input wire Start,
				input wire [15:0] P_Data, // input data
				output wire led_clk, // output LED signal
				output wire led_sout,
				output wire led_clrn,
				output wire led_pen);

	
	wire [15:0]P_Data_Input = {P_Data[0], P_Data[1], P_Data[2], P_Data[3], P_Data[4], P_Data[5], P_Data[6], P_Data[7], 
										P_Data[8], P_Data[9], P_Data[10], P_Data[11], P_Data[12], P_Data[13], P_Data[14], P_Data[15]};
	assign led_sout = ~led_sout_temp;
	P2S #(.DATA_BITS(16), .DATA_COUNT_BITS(4), .DIR(1'b1)) // use P2S to output
		LED_P2S (.clk(clk), .rst(rst), .Start(Start), 
				 .PData(P_Data_Input), .s_clk(led_clk), .s_clrn(led_clrn), 
				 .sout(led_sout_temp), .EN(led_pen));

endmodule
