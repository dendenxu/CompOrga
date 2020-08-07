`timescale 1ns / 1ps

module multi_register_EN(
	EN,		// ʹ���źţ�����Ч��
	clk,		// ʱ���źţ������ش�����
	data_in,	// ��������
	data_out	// �Ĵ������
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
