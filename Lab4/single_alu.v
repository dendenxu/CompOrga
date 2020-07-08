`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:50 07/07/2020 
// Design Name: 
// Module Name:    single_alu 
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
module single_alu(
	OP,
	A,
	B,
	res,
	zero,
	overflow
    );
	 
	parameter num_one  = 32'h00000001;
	parameter num_zero = 32'h00000000;
	
	input  wire [31:0] A, B;
	input  wire [3 :0] OP;
	output reg  [31:0] res;
	output wire zero, overflow;
	
	wire [31:0] res_add, res_sub, res_and, res_or, res_nor, res_slt, res_xor, res_srl;
	
	assign res_add = A + B;
	assign res_sub = A - B;
	assign res_and = A & B;
	assign res_or  = A | B;
	assign res_nor = ~(A | B);
	assign res_slt = (A < B) ? num_one : num_zero;
	assign res_xor = A ^ B;
	assign res_srl = B >> 1;
	
	always @*
		case (OP)
			4'b0000: res = res_and;
			4'b0001: res = res_or;
			4'b0010: res = res_add;
			4'b0011: res = res_xor;
			4'b0100: res = res_nor;
			4'b0101: res = res_srl;
			4'b0110: res = res_sub;
			4'b0111: res = res_slt;
			default: res = res_add;
		endcase
	
	assign zero = (res == 0) ? 1 : 0;
endmodule
