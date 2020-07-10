`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:20 07/06/2020 
// Design Name: 
// Module Name:    single_ctrl 
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
module single_ctrl(
	OP,
	ALUop,
	RegDst,
	RegWrite,
	Branch,
	Jump,
	MemtoReg,
	MemRead,
	MemWrite,
	ALUsrc,
	rst,
	LED
    );
	 
	input  wire       rst;
	input  wire [5:0] OP;
	output wire [1:0] ALUop;
	output wire RegDst, RegWrite, Branch, Jump, MemtoReg, MemRead, MemWrite, ALUsrc;
	output wire [4:0] LED;
	
	wire R, LW, SW, BEQ;
	
	assign R   = ~OP[0] & ~OP[1] & ~OP[2] & ~OP[3] & ~OP[4] & ~OP[5];
	assign LW  =  OP[0] &  OP[1] & ~OP[2] & ~OP[3] & ~OP[4] &  OP[5];
	assign SW  =  OP[0] &  OP[1] & ~OP[2] &  OP[3] & ~OP[4] &  OP[5];
	assign BEQ = ~OP[0] & ~OP[1] &  OP[2] & ~OP[3] & ~OP[4] & ~OP[5];
	assign J   = ~OP[0] &  OP[1] & ~OP[2] & ~OP[3] & ~OP[4] & ~OP[5];
	
	assign LED = {J, BEQ, LW, SW, R};

	assign RegDst = ~rst & R;
	assign ALUsrc = ~rst & SW | LW;
	assign MemtoReg = ~rst & LW;
	assign RegWrite = ~rst & R | LW;
	assign MemRead = ~rst & LW;
	assign MemWrite = ~rst & SW;
	assign Branch = ~rst & BEQ;
	assign ALUop = ~rst & {R, BEQ};
	assign Jump = ~rst & J;
	
endmodule
