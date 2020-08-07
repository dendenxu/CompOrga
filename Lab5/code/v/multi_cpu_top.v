`timescale 1ns / 1ps

module multi_cpu_top(
	clk_s,   // ϵͳʱ���ź�
	SW,      // ���أ� SW[7]ѡ��ʱ�ӣ�����Ϊϵͳʱ�ӣ��ر�Ϊ�ֶ�ʱ�ӣ��� SW[6:5]ѡ���������ʾ�� SW[4:0]ѡ��Ĵ���
	K_COL,	// ���м������ź�
	K_ROW,	// ���м������ź�
	LED,     // LED����� LED[4]: J, LED[3]:BEQ, LED[2]:LW, LED[1]:SW, LED[0]:R
	SEGMENT, // �߶���������
	AN			// �߶������ʹ��
);
	
// �����������Լ��
	input wire clk_s;
	input wire [7:0] SW;
	input wire [1:0] K_COL; 
	output wire [4:0] K_ROW;
	output wire [4:0] LED;
	output wire [7:0] SEGMENT;
	output wire [3:0] AN; 
	
// �м����Լ��
	// ʱ���븴λ�ź�
	wire clk_second;			// ��1��Ϊ���ڵ�ʱ��
	wire clk_button;			// �ֶ�ʱ��
	wire clk;					// multi cpu��ʹ�õ�ʵ��ʱ��
	wire [15:0] clkdiv;		// clkʱ�ӵļ���
	wire rst;					// ��λ�źţ�����Ч��
	
	// multi cpu�����ź�
	wire PCWriteCond;
	wire PCWrite;
	wire IorD;
	wire MemRead;
	wire MemWrite;
	wire MemtoReg;
	wire IRWrite;
	wire [1:0] PCSource;
	wire [1:0] ALUOp;
	wire ALUSrcA;
	wire [1:0] ALUSrcB;
	wire RegWrite;
	wire RegDst;
	
	// Instruction����
	wire [31:0] InsReg;				// ����Ĵ���ֵ
	wire [31:0] ImmeSignext;		// ������չ������
	wire [31:0] ImmeSignextShift;	// ������չ��������λ������
	
	// ALU����
	wire [2:0] ALUCtrl;				//	ALUʵ�ʿ����ź�
	wire [31:0] ALU_A;		// ALU����ֵA
	wire [31:0] ALU_B;		// ALU����ֵB
	wire [31:0] ALUResult;	// ALU������
	wire Zero;					// ALU���0flag
	wire [31:0] ALUOutReg;	// ALU�Ĵ���ֵ
	
	// Register Files����
	wire [4:0] ReadRegAddrA;	//	�Ĵ���A��ȡ��ַ
	wire [4:0] ReadRegAddrB;	//	�Ĵ���B��ȡ��ַ
	wire [4:0] ReadRegAddrC;	//	�Ĵ���C��ȡ��ַ
	wire [4:0] WriteRegAddr;	//	�Ĵ���д���ַ
	wire [31:0] WriteRegData;	//	�Ĵ���д��ֵ
	wire [31:0] ReadRegDataA;	//	�Ĵ���A��ȡֵ
	wire [31:0] ReadRegDataB;	//	�Ĵ���B��ȡֵ
	wire [31:0] ReadRegDataC;	//	�Ĵ���C��ȡֵ
	wire [31:0] AReg; 			// �Ĵ���A�洢ֵ
	wire [31:0] BReg; 			// �Ĵ���B�洢ֵ
	wire [31:0] CReg;				//	�Ĵ���C��ȡֵ
	
	// PC�Ĵ�����ر���
	wire PCCtrl;					// PC�Ĵ���ʵ�ʿ��Ʊ���
	wire [31:0] PCIn;				// PC�Ĵ�������ֵ
	wire [31:0] PCOutReg;		// PC�Ĵ���ֵ
	wire [31:0] JumpAddr;		// ��ת��ַ
	
	// �����м����
	wire [15:0] DIS;				// �߶��������ʾ������
	wire [9:0] MemAddr;			// �ڴ��ַ
	wire [31:0] MemData;			// �ڴ�ֵ
	wire [31:0] MemDataReg;		// �ڴ�Ĵ���ֵ
	wire [1:0] K_COL_OK;			// ȥ����İ���ֵ

		
		
// ��������߼�
	assign K_ROW = 5'b00000;
	assign rst = ~K_COL_OK[1];
	assign clk_button = ~K_COL_OK[0];
	assign clk = SW[7] ? clk_second : clk_button;
	assign ImmeSignextShift = {ImmeSignextShift[29:0], 2'b00};
	assign PCCtrl = (Zero & PCWriteCond) | PCWrite;
	assign JumpAddr = {PCOutReg[31:28], InsReg[25:0], 2'b00};
	assign ReadRegAddrA = InsReg[25:21];
	assign ReadRegAddrB = InsReg[20:16];
	assign ReadRegAddrC = SW[4:0];


	
	
// ����ģ�����

	// ʱ�����ģ��
	clk_100ms #(.DIV_1S(1)) c1000(.clk(clk_s), .clk100ms(clk_second));
	clk_100ms #(.DIV_1S(1000)) c1(.clk(clk_s), .clk100ms(clk1ms));

	antijitter anti_col_0(.clk_1ms(clk1ms), .button(K_COL[0]), .button_OK(K_COL_OK[0]));
	antijitter anti_col_1(.clk_1ms(clk1ms), .button(K_COL[1]), .button_OK(K_COL_OK[1]));

	clkdiv #(.N(16)) clkdivM(.clk(clk), .rst(rst), .clkdiv(clkdiv));


	// multi cpu����ģ��
	multi_control control (
		.clk(clk), 
		.OP(InsReg[31:26]), 
		.PCWriteCond(PCWriteCond), 
		.PCWrite(PCWrite), 
		.IorD(IorD), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.IRWrite(IRWrite), 
		.PCSource(PCSource), 
		.ALUOp(ALUOp), 
		.ALUSrcA(ALUSrcA), 
		.ALUSrcB(ALUSrcB), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst),
		.LED(LED)
	);

	// Register Filesģ��
	multi_register_files register_files(
		.clk(clk), .rst(rst), .WriteEN(RegWrite),
		.WriteData(WriteRegData), .WriteAddr(WriteRegAddr),
		.AddrA(ReadRegAddrA), .AddrB(ReadRegAddrB), .AddrC(ReadRegAddrC),
		.DataA(ReadRegDataA), .DataB(ReadRegDataB), .DataC(ReadRegDataC)
	);
	
	// ALU ģ��
	multi_ALU ALU(
		.OP(ALUCtrl),
		.A(ALU_A), .B(ALU_B),
		.res(ALUResult), .zero(Zero)
	);
	multi_ALU_Ctrl ALU_Ctrl(.ALUOp(ALUOp), .FUNC(InsReg[5:0]), .OP(ALUCtrl));
	
	// �ڴ�ģ��

	multi_memory memory(.clka(clk), .addra(MemAddr[9:0]), .wea(MemWrite), .rea(MemRead), .dina(BReg), .douta(MemData));

	// �����Ĵ���ģ��
	multi_register_EN #(.N(32)) instruction_register(.clk(clk), .EN(IRWrite), .data_in(MemData), .data_out(InsReg));
	multi_register_EN #(.N(32)) memory_register(.clk(clk), .EN(1'b1), .data_in(MemData), .data_out(MemDataReg));
	multi_register_EN #(.N(32)) ALU_register(.clk(clk), .EN(1'b1), .data_in(ALUResult), .data_out(ALUOutReg));
	multi_register_EN #(.N(32)) PC_register(.clk(clk), .EN(PCCtrl), .data_in(PCIn), .data_out(PCOutReg));
	multi_register_EN #(.N(32)) A_register(.clk(clk), .EN(1'b1), .data_in(ReadRegDataA), .data_out(AReg));
	multi_register_EN #(.N(32)) B_register(.clk(clk), .EN(1'b1), .data_in(ReadRegDataB), .data_out(BReg));

	// ��·ѡ����ģ��
	multi_mux2 #(.N(10)) mem_addr_mux(.A(PCOutReg[9:0]), .B(ALUOutReg[9:0]), .Ctrl(IorD), .S(MemAddr));
	multi_mux2 #(.N(32)) ALU_A_mux(.A(PCOutReg), .B(AReg), .Ctrl(ALUSrcA), .S(ALU_A));
	multi_mux2 #(.N(5)) write_addr_mux(.A(InsReg[20:16]), .B(InsReg[15:11]), .Ctrl(RegDst), .S(WriteRegAddr));
	multi_mux2 #(.N(32)) write_data_mux(.A(ALUOutReg), .B(MemDataReg), .Ctrl(MemtoReg), .S(WriteRegData));
	multi_mux4 #(.N(32)) ALU_B_mux(
		.A(BReg), .B(32'd4), .C(ImmeSignext), .D(ImmeSignextShift),
		.Ctrl(ALUSrcB), .S(ALU_B)
	);
	multi_mux4 #(.N(32)) PC_mux(
		.A(ALUResult), .B(ALUOutReg),
		.C(JumpAddr), .D(32'd0),
		.Ctrl(PCSource), .S(PCIn)
	);
	
	
	// ������չģ��
	multi_signext signextM(.input_16(InsReg[15:0]), .output_32(ImmeSignext));

	// �߶��������ʾѡ��
	multi_mux4 #(.N(16)) dis_mux(.A(ReadRegDataC[15:0]), .B(ReadRegDataC[31:16]), .C(PCOutReg[15:0]), .D(clkdiv[15:0]), .Ctrl(SW[6:5]), .S(DIS));
		
	// �߶��������ʾģ��
	dispnum dispnumM(clk_s, DIS, 4'b0000, 4'b0000, AN, SEGMENT);
	
	
endmodule
