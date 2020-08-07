`timescale 1ns / 1ps

module multi_register_EN(
	EN,		// 使能信号（高有效）
	clk,		// 时钟信号（正边沿触发）
	data_in,	// 输入数据
	data_out	// 寄存器输出
);
	
	parameter N = 32;
	input wire EN;
	input wire clk;
	input wire [N - 1 : 0] data_in;
	output reg [N - 1 : 0] data_out;
	
	initial
		data_out = 0;
	
	always @(posedge clk)
		if (EN == 1'b1)
			data_out <= data_in;
		else
			data_out <= data_out;


endmodule
