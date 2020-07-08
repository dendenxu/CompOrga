`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:37 07/08/2020 
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv(
	clk,
	rst,
	clkdiv
    );

	input wire clk, rst;
	output reg [15:0] clkdiv;
	
	initial begin
		clkdiv = 16'h0000;
	end

	always @(posedge clk or posedge rst) begin
		if (rst) clkdiv = 16'h0000;
		else clkdiv = clkdiv + 1;
	end
endmodule
