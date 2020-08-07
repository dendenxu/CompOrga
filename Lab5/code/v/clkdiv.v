`timescale 1ns / 1ps

module clkdiv(
	clk,
	rst,
	clkdiv
);
	parameter N = 32;
	input wire clk;
	input wire rst;
	output reg [N - 1:0] clkdiv;
	
	initial
		clkdiv = 0;
	
	always @(posedge clk or posedge rst)
		if (rst)
			clkdiv<=0;
		else 
			clkdiv <= clkdiv + 1'b1;  
	 
endmodule
