`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:51 07/07/2020 
// Design Name: 
// Module Name:    single_alu_ctrl 
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
module single_alu_ctrl(
	ALUop,
	FUNC,
	OP
    );

	input wire  [1:0] ALUop;
	input wire  [5:0] FUNC;
	output wire [3:0] OP;
	
	wire LS, BEQ, R;
	wire OP_ADD, OP_SUB, OP_AND, OP_OR, OP_SLT;
	
	assign LS  = ~ALUop[0] & ~ALUop[1];
	assign BEQ =  ALUop[0] & ~ALUop[1];
	assign R   = ~ALUop[0] &  ALUop[1];

	assign OP_ADD = LS |  (~FUNC[3] & ~FUNC[2] & ~FUNC[1] & ~FUNC[0] & R);
	assign OP_SUB = BEQ | (~FUNC[3] & ~FUNC[2] &  FUNC[1] & ~FUNC[0] & R);
	assign OP_OR  = ~FUNC[3] &  FUNC[2] & ~FUNC[1] &  FUNC[0] & R;
	assign OP_AND = ~FUNC[3] &  FUNC[2] & ~FUNC[1] & ~FUNC[0] & R;
	assign OP_SLT =  FUNC[3] & ~FUNC[2] &  FUNC[1] & ~FUNC[0] & R;
	
	assign OP[3] = 0;
	assign OP[2] =  OP_SUB |  OP_SLT;
	assign OP[1] = ~OP_OR  & ~OP_AND;
	assign OP[0] =  OP_OR  |  OP_SLT;

endmodule
