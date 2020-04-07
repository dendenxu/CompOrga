`timescale 1ns / 1ps

module P2S(clk, rst, Start, PData, s_clk, s_clrn, sout, EN);
//parallel to serial

	input wire clk;
	input wire rst;
	input wire Start;
	input wire [DATA_BITS-1: 0] PData;
	output wire s_clk;
	output wire s_clrn;
	output wire sout;
	output reg EN;
	
	parameter
		DATA_BITS = 64, // data length
		DATA_COUNT_BITS = 4, // data shift bits
		DIR = 1; // Shift direction = 0 ����
	
	wire S1, S0, SL, SR, clkn;
	wire [DATA_BITS:0] D, Q;
	reg [1:0] Go = 00, S = 00;

	assign clkn = ~clk;
	assign {SR, SL} = 2'b11; // �������Ƴ�ֵΪ1�����ڴ����־
	assign {S1, S0} = DIR ? {S[0], S[1]} : S; // ������λ����
	assign D = DIR ? {1'b0, PData} : {PData, 1'b0}; // ����λĩ�˱�־��0��
	wire finish = DIR ? &Q[DATA_BITS:1] : &Q[DATA_BITS - 1:0]; // ��λ���������ȫ��1��
	assign sout = DIR ? Q[0] : Q[DATA_BITS]; // ����������������Q[0]
	
	SHIFT64 #(.DATA_BITS(DATA_BITS)) // ������λ�Ĵ��������=DATA_BITS
		PTOS (.clk(clkn), .SR(SR), .SL(SL),
				.S1(S1), .S0(S0), .D(D), .Q(Q));
	
	always @(posedge clkn) // ����Start������
		Go <= {Go[0], Start};
	assign shift = (Go == 2'b01) ? 1'b1 : 1'b0; //��λ��������
	
	always @(posedge clkn or posedge rst)
	begin
		if (rst)
		begin
			EN <= 1;
			S <= 2'b11;	
		end else
		begin
			if (shift) // ��������
			begin
				EN <= 0;
				S <= 2'b11;
			end else
			begin
				if (!finish) // ������λ����
				begin
					EN <= 0;
					S <= 2'b10;
				end else
				begin // ������λ
					EN <= 1;
					S <= 2'b00;
				end
			end
		end
	end

	assign s_clk = finish | clkn; // ��ֹ74LS164ʱ��
	assign s_clrn = 1;


endmodule
