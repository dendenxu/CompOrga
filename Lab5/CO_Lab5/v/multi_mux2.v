`timescale 1ns / 1ps

module multi_mux2(
	A,		// ��������A
	B,		// ��������B
	Ctrl,	// �����źţ�0:A, 1:B)
	S		// �������
);

	parameter N = 32;
	input wire [N - 1: 0] A, B;
	output wire [N - 1: 0] S;
	input wire Ctrl;
	
	assign S = (Ctrl == 1'b0) ? A : B;

endmodule
