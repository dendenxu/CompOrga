`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:21:40 07/06/2020 
// Design Name: 
// Module Name:    single_pc 
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
module single_pc(
	i_pc,
	o_pc,
	clk,
	rst
    );

	parameter N = 32;

	input wire clk, rst;
	input  wire [N-1:0] i_pc;
	output wire [N-1:0] o_pc;
	        reg [N-1:0] t_pc;
	
	assign o_pc = rst ? {N{1'b1}} : t_pc;
	
	always @(posedge clk)
		t_pc <=  i_pc;

endmodule
