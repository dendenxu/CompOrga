`timescale 1ns / 1ps

module multi_mux4(
	A,		// ��������A
	B,		// ��������B
	C,		// ��������C
	D,		// ��������D
	Ctrl,	// �����źţ�0:A, 1:B, 2:C, 3:D)
	S		// �������
	);

	parameter N = 16;
	input wire [N - 1: 0] A, B, C, D;
	output wire [N - 1: 0] S;
	input wire [1:0] Ctrl;
	
	assign S = (Ctrl == 2'b00) ? A :
				  ((Ctrl == 2'b01) ? B :
				  ((Ctrl == 2'b10) ? C : D
				  ));

endmodule
