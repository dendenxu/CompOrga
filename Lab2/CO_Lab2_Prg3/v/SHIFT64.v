`timescale 1ns / 1ps

module SHIFT64(clk, SR, SL, S1, S0, D, Q);

	input wire clk;
	input wire SR;
	input wire SL;
	input wire S1;
	input wire S0;
	input wire [DATA_BITS:0]D;
	output reg [DATA_BITS:0]Q;
	
	parameter DATA_BITS = 16;
	parameter DATA_COUNT_BITS = 4;
		
	always @(posedge clk)
	begin
		case ({S1,S0})
			2'b00: Q <= Q; //S1S0 = 00, 保持
			2'b01: Q <= {SR, Q[DATA_BITS: 1]}; //S1S0 = 01, 右移
			2'b10: Q <= {Q[DATA_BITS - 1: 0], SL}; //S1S0 = 10, 左移
			2'b11: Q <= D; //并入
		endcase
	end


endmodule
