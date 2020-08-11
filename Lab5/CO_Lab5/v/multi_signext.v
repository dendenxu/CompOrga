`timescale 1ns / 1ps
module multi_signext(
	input_16,	// 16位输入
	output_32	// 32位符号扩展输出
);

	input wire [15:0]input_16;
	output wire [31:0]output_32;

assign output_32 = {{16{input_16[15]}}, input_16[15:0]};

endmodule
