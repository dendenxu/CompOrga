`timescale 1ns / 1ps

module multi_ALU(
	OP,
	A,
	B,
	res,
	zero
);
	 
	parameter num_one  = 32'h00000001;
	parameter num_zero = 32'h00000000;
	
	input  wire [31:0] A, B;
	input  wire [2 :0] OP;
	output reg  [31:0] res;
	output wire zero;
	
	wire [31:0] res_add, res_sub, res_and, res_or, res_nor, res_slt, res_xor, res_srl;
	
	assign res_add = A + B;
	assign res_sub = A - B;
	assign res_and = A & B;
	assign res_or  = A | B;
	assign res_nor = ~(A | B);
	
	always @*
		case (OP)
			3'b000: res = res_and;
			3'b001: res = res_or;
			3'b010: res = res_add;
			3'b100: res = res_nor;
			3'b110: res = res_sub;
			default: res = res_add;
		endcase
	
	assign zero = (res == 0) ? 1'b1 : 1'b0;
endmodule
