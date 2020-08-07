`timescale 1ns / 1ps

module multi_cpu_top(
	clk_s,   // 系统时钟信号
	SW,      // 开关， SW[7]选择时钟（开启为系统时钟，关闭为手动时钟）， SW[6:5]选择数码管显示， SW[4:0]选择寄存器
	K_COL,	// 阵列键盘列信号
	K_ROW,	// 阵列键盘行信号
	LED,     // LED输出， LED[4]: J, LED[3]:BEQ, LED[2]:LW, LED[1]:SW, LED[0]:R
	SEGMENT, // 七段数码管输出
	AN			// 七段数码管使能
);
	
// 顶层输入输出约定
	input wire clk_s;
	input wire [7:0] SW;
	input wire [1:0] K_COL; 
	output wire [4:0] K_ROW;
	output wire [4:0] LED;
	output wire [7:0] SEGMENT;
	output wire [3:0] AN; 
	
// 中间变量约定
	// 时钟与复位信号
	wire clk_second;			// 以1秒为周期的时钟
	wire clk_button;			// 手动时钟
	wire clk;					// multi cpu所使用的实际时钟
	wire [15:0] clkdiv;		// clk时钟的计数
	wire rst;					// 复位信号（高有效）
	
	// multi cpu控制信号
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
	
	// Instruction变量
	wire [31:0] InsReg;				// 命令寄存器值
	wire [31:0] ImmeSignext;		// 符号扩展立即数
	wire [31:0] ImmeSignextShift;	// 符号扩展并左移两位立即数
	
	// ALU变量
	wire [2:0] ALUCtrl;				//	ALU实际控制信号
	wire [31:0] ALU_A;		// ALU输入值A
	wire [31:0] ALU_B;		// ALU输入值B
	wire [31:0] ALUResult;	// ALU计算结果
	wire Zero;					// ALU结果0flag
	wire [31:0] ALUOutReg;	// ALU寄存器值
	
	// Register Files变量
	wire [4:0] ReadRegAddrA;	//	寄存器A读取地址
	wire [4:0] ReadRegAddrB;	//	寄存器B读取地址
	wire [4:0] ReadRegAddrC;	//	寄存器C读取地址
	wire [4:0] WriteRegAddr;	//	寄存器写入地址
	wire [31:0] WriteRegData;	//	寄存器写入值
	wire [31:0] ReadRegDataA;	//	寄存器A读取值
	wire [31:0] ReadRegDataB;	//	寄存器B读取值
	wire [31:0] ReadRegDataC;	//	寄存器C读取值
	wire [31:0] AReg; 			// 寄存器A存储值
	wire [31:0] BReg; 			// 寄存器B存储值
	wire [31:0] CReg;				//	寄存器C读取值
	
	// PC寄存器相关变量
	wire PCCtrl;					// PC寄存器实际控制变量
	wire [31:0] PCIn;				// PC寄存器输入值
	wire [31:0] PCOutReg;		// PC寄存器值
	wire [31:0] JumpAddr;		// 跳转地址
	
	// 其他中间变量
	wire [15:0] DIS;				// 七段数码管显示的数字
	wire [9:0] MemAddr;			// 内存地址
	wire [31:0] MemData;			// 内存值
	wire [31:0] MemDataReg;		// 内存寄存器值
	wire [1:0] K_COL_OK;			// 去抖后的按键值

		
		
// 变量组合逻辑
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


	
	
// 顶层模块调用

	// 时间控制模块
	clk_100ms #(.DIV_1S(1)) c1000(.clk(clk_s), .clk100ms(clk_second));
	clk_100ms #(.DIV_1S(1000)) c1(.clk(clk_s), .clk100ms(clk1ms));

	antijitter anti_col_0(.clk_1ms(clk1ms), .button(K_COL[0]), .button_OK(K_COL_OK[0]));
	antijitter anti_col_1(.clk_1ms(clk1ms), .button(K_COL[1]), .button_OK(K_COL_OK[1]));

	clkdiv #(.N(16)) clkdivM(.clk(clk), .rst(rst), .clkdiv(clkdiv));


	// multi cpu控制模块
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

	// Register Files模块
	multi_register_files register_files(
		.clk(clk), .rst(rst), .WriteEN(RegWrite),
		.WriteData(WriteRegData), .WriteAddr(WriteRegAddr),
		.AddrA(ReadRegAddrA), .AddrB(ReadRegAddrB), .AddrC(ReadRegAddrC),
		.DataA(ReadRegDataA), .DataB(ReadRegDataB), .DataC(ReadRegDataC)
	);
	
	// ALU 模块
	multi_ALU ALU(
		.OP(ALUCtrl),
		.A(ALU_A), .B(ALU_B),
		.res(ALUResult), .zero(Zero)
	);
	multi_ALU_Ctrl ALU_Ctrl(.ALUOp(ALUOp), .FUNC(InsReg[5:0]), .OP(ALUCtrl));
	
	// 内存模块

	multi_memory memory(.clka(clk), .addra(MemAddr[9:0]), .wea(MemWrite), .rea(MemRead), .dina(BReg), .douta(MemData));

	// 单独寄存器模块
	multi_register_EN #(.N(32)) instruction_register(.clk(clk), .EN(IRWrite), .data_in(MemData), .data_out(InsReg));
	multi_register_EN #(.N(32)) memory_register(.clk(clk), .EN(1'b1), .data_in(MemData), .data_out(MemDataReg));
	multi_register_EN #(.N(32)) ALU_register(.clk(clk), .EN(1'b1), .data_in(ALUResult), .data_out(ALUOutReg));
	multi_register_EN #(.N(32)) PC_register(.clk(clk), .EN(PCCtrl), .data_in(PCIn), .data_out(PCOutReg));
	multi_register_EN #(.N(32)) A_register(.clk(clk), .EN(1'b1), .data_in(ReadRegDataA), .data_out(AReg));
	multi_register_EN #(.N(32)) B_register(.clk(clk), .EN(1'b1), .data_in(ReadRegDataB), .data_out(BReg));

	// 多路选择器模块
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
	
	
	// 符号扩展模块
	multi_signext signextM(.input_16(InsReg[15:0]), .output_32(ImmeSignext));

	// 七段数码管显示选择
	multi_mux4 #(.N(16)) dis_mux(.A(ReadRegDataC[15:0]), .B(ReadRegDataC[31:16]), .C(PCOutReg[15:0]), .D(clkdiv[15:0]), .Ctrl(SW[6:5]), .S(DIS));
		
	// 七段数码管显示模块
	dispnum dispnumM(clk_s, DIS, 4'b0000, 4'b0000, AN, SEGMENT);
	
	
endmodule
