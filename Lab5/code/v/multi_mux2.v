`timescale 1ns / 1ps

module multi_mux2(
	A,		// 输入数据A
	B,		// 输入数据B
	Ctrl,	// 控制信号（0:A, 1:B)
	S		// 输出数据
);

	parameter N = 32;
	input wire [N - 1: 0] A, B;
	output wire [N - 1: 0] S;
	input wire Ctrl;
	
	assign S = (Ctrl == 1'b0) ? A : B;

endmodule
