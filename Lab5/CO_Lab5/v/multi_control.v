`timescale 1ns / 1ps

module multi_control(
	clk,
	rst,
	OP,
	PCWriteCond,
	PCWrite,
	IorD,
	MemRead,
	MemWrite,
	MemtoReg,
	IRWrite,
	PCSource,
	ALUOp,
	ALUSrcA,
	ALUSrcB,
	RegWrite,
	RegDst,
	LED
);

	input wire clk, rst;
	input wire [5:0] OP;
	output wire PCWriteCond;
	output wire PCWrite;
	output wire IorD;
	output wire MemRead;
	output wire MemWrite;
	output wire MemtoReg;
	output wire IRWrite;
	output wire [1:0] PCSource;
	output wire [1:0] ALUOp;
	output wire ALUSrcA;
	output wire [1:0] ALUSrcB;
	output wire RegWrite;
	output wire RegDst;
	output wire [4:0] LED;
	
	reg [3:0] state;
	wire R, LW, SW, BEQ, J;		// ÷∏¡Ó¿‡–Õ≈–∂œ
	
	initial state = 4'd0;
	
	assign PCWriteCond 	= (state == 4'd8);
	assign PCWrite 		= (state == 4'd0) || (state == 4'd9);
	assign IorD				= (state == 4'd3) || (state == 4'd5);
	assign MemRead 		= (state == 4'd0) || (state == 4'd3);
	assign MemWrite		= (state == 4'd5);
	assign MemtoReg		= (state == 4'd4);
	assign IRWrite			= (state == 4'd0);
	assign PCSource		= {state == 4'd9, state == 4'd8};
	assign ALUOp			= {state == 4'd6, state == 4'd8};
	assign ALUSrcA			= (state == 4'd2) || (state == 4'd6) || (state == 4'd8);
	assign ALUSrcB			= {(state == 4'd1) || (state == 4'd2), (state == 4'd0) || (state == 4'd1)};
	assign RegWrite		= (state == 4'd4) || (state == 4'd7);
	assign RegDst			= (state == 4'd7);
	
	
	assign R   = ~OP[0] & ~OP[1] & ~OP[2] & ~OP[3] & ~OP[4] & ~OP[5];
	assign LW  =  OP[0] &  OP[1] & ~OP[2] & ~OP[3] & ~OP[4] &  OP[5];
	assign SW  =  OP[0] &  OP[1] & ~OP[2] &  OP[3] & ~OP[4] &  OP[5];
	assign BEQ = ~OP[0] & ~OP[1] &  OP[2] & ~OP[3] & ~OP[4] & ~OP[5];
	assign J   = ~OP[0] &  OP[1] & ~OP[2] & ~OP[3] & ~OP[4] & ~OP[5];
	
	assign LED[0] = (state == 4'd0);
	assign LED[1] = (state == 4'd1);
	assign LED[2] = (state == 4'd2) || (state == 4'd6) || (state == 4'd8) || (state == 4'd9);
	assign LED[3] = (state == 4'd3) || (state == 4'd5) || (state == 4'd7);
	assign LED[4] = (state == 4'd4);
	
	always @(posedge clk or posedge rst)
	begin
		if (rst)
			state <= 4'd0;
		else if (state == 4'd0)
			state <= 4'd1;
		else if (state == 4'd1)
		begin
			if (J)
				state <= 4'd9;
			else if (BEQ)
				state <= 4'd8;
			else if (R)
				state <= 4'd6;
			else if (LW || SW)
				state <= 4'd2;
			else
				state <= 4'd0;
		end else if (state == 4'd6)
			state <= 4'd7;
		else if (state == 4'd2)
		begin
			if (SW)
				state <= 4'd5;
			else
				state <= 4'd3;
		end else if (state == 4'd3)
			state <= 4'd4;
		else if (state == 4'd4 || state == 4'd5 || state == 4'd7 || state == 4'd9)
			state <= 4'd0;
		else
			state <= 4'd0;
	end

endmodule
