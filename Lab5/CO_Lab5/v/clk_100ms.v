`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    21:49:26 11/25/2019
// Design Name:
// Module Name:    clk_100ms
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module clk_100ms(
	clk,
	clk100ms
);
	parameter DIV_1S = 1000;
	input wire clk;
	output reg clk100ms;

	reg [31:0] cnt;
	initial
	begin
		cnt = 32'd0;
		clk100ms = 1'b0;
	end

	always @ (posedge clk)
	if (cnt < 50_000_000/DIV_1S)
		cnt <= cnt + 1;
	else
	begin
		cnt <= 0;
		clk100ms <= ~clk100ms;
	end
			 
endmodule
