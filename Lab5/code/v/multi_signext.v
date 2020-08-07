`timescale 1ns / 1ps
module multi_signext(
	input_16,	// 16λ����
	output_32	// 32λ������չ���
);

	input wire [15:0]input_16;
	output wire [31:0]output_32;

assign output_32 = {{16{input_16[15]}}, input_16[15:0]};

endmodule
