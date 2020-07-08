`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:03:58 07/07/2020 
// Design Name: 
// Module Name:    single_gpr 
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
module single_gpr(
	clk, rst,
	i_addr1, i_addr2, i_addr3,
	i_wreg,  i_wdata, i_wen,
	o_op1,   o_op2,   o_op3
    );
	 
	input  wire clk, rst, i_wen;
	input  wire [ 4:0] i_addr1, i_addr2, i_addr3, i_wreg;
	input  wire [31:0] i_wdata;
	output wire [31:0] o_op1, o_op2, o_op3;

	reg  [31:0] mem[31:0];
	
	assign o_op1 = mem[i_addr1];
	assign o_op2 = mem[i_addr2];
	assign o_op3 = mem[i_addr3];
	
	always @(posedge clk or posedge rst)
		if (rst == 1'b1) mem[0] = {32{1'b0}};
		else if (i_wen) mem[i_wreg] = (i_wreg == {5{1'b0}}) ? {32{1'b0}} : i_wdata; 

endmodule
