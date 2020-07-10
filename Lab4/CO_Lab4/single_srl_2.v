`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:37:58 07/08/2020 
// Design Name: 
// Module Name:    single_srl_2 
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
module single_srl_2(
	i_in,
	o_out
    );
	 
	parameter N = 28;
	
	input  wire [N-1:0] i_in;
	output wire [N-1:0] o_out;

	assign o_out = i_in << 2;


endmodule
