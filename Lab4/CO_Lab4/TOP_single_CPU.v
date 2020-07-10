`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:27:02 07/08/2020 
// Design Name: 
// Module Name:    TOP_single_CPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module TOP_single_CPU(
	clk_s,   //系统时钟信号
	// clk_m,   //手动时钟信号
	// rst,     //复位信号
	SW,      //开关， SW[7]选择时钟（开启为系统时钟，关闭为手动时钟）， SW[6:5]选择数码管显示， SW[4:0]选择寄存器
	LED,     //LED输出， LED[4]: J, LED[3]:BEQ, LED[2]:LW, LED[1]:SW, LED[0]:R
	SEGMENT, //七段数码管输出
	AN,      //七段数码管使能
    K_COL,
    K_ROW
    );
	
	input  wire clk_s;
	input  wire [7:0] SW;
	output wire [4:0] LED;
	output wire [7:0] SEGMENT;
	output wire [3:0] AN;
    
    input wire [1:0]K_COL; // keyboard row input
    wire [1:0]K_COL_DE; // keyboard row input
    output wire [4:0]K_ROW;
    wire clk_m, rst;
    assign clk_m = ~K_COL_DE[0];
    assign rst = ~K_COL_DE[1];
	
	wire clk;
	wire [5:0] wreg;
	wire [1:0] ALUop;
	wire [3:0] OP;
	wire [15:0] cnt;
	wire [15:0] DIS;
	wire [31:0] i_pc, o_pc, o_pc_added, pc_branch;
    wire [31:0]	INS;
	wire [31:0] Sext_32, Sext_32_ls2;
	wire [27:0] addr_j_ls2;
    wire [31:0]	op_1, op_2, op_3;
	wire [31:0] A, B, ALUout, DMout;
	wire [31:0] addr_b, addr_j;
	wire [31:0] wdata_reg, wdata_mem;
	wire RegDst, RegWrite, Branch, Jump, MemtoReg, MemRead, MemWrite, ALUsrc, PCBranch, zero;
	
    wire clk1000ms;
    wire clk1ms;
    

	assign K_ROW = 5'b00000;
	// clock div module

    clk_100ms #(.DIV_1S(1)) c1000(.clk(clk_s), .clk100ms(clk1000ms));
    clk_100ms #(.DIV_1S(1000)) c1(.clk(clk_s), .clk100ms(clk1ms));
    
    pbdebounce db1(.clk_1ms(clk1ms), .button(K_COL[0]), .pbreg(K_COL_DE[0]));
    pbdebounce db2(.clk_1ms(clk1ms), .button(K_COL[1]), .pbreg(K_COL_DE[1]));


	assign clk = (SW[7] == 1'b1) ? clk1000ms : clk_m;
	assign PCBranch = Branch & zero;
	assign A = op_1;
	assign wdata_mem = op_2;
	assign addr_j = {o_pc[31:28], INS[27:0]};
	
	single_pc #(.N(32)) pc(.i_pc(i_pc), .o_pc(o_pc), .clk(clk), .rst(rst));
	
	single_pc_plus_4 #(.N(32)) pc_plus_4(.i_pc(o_pc), .o_pc(o_pc_added));
	
	InstructionMemory imem(.addra(o_pc[9:0]), .clka(clk_s), .douta(INS));
	
	single_ctrl ctrl(.rst(rst), .OP(INS[31:26]), 
	                 .RegDst(RegDst), .RegWrite(RegWrite), .Branch(Branch), .Jump(Jump),
                    .MemtoReg(MemtoReg), .MemRead(Memread), .MemWrite(MemWrite), 
                    .ALUsrc(ALUsrc), .ALUop(ALUop),
						  .LED(LED));
	
	single_alu_ctrl alu_ctrl(.ALUop(ALUop), .FUNC(INS[5:0]), .OP(OP));
						  
	single_alu alu(.OP(OP), .A(A), .B(B), .res(ALUout), .zero(zero));
						  
	single_gpr RegFies(.clk(clk), .rst(rst), 
	                   .i_addr1(INS[25:21]), .i_addr2(INS[20:16]), .i_addr3(SW[4:0]),
							 .i_wreg(wreg), .i_wdata(wdata_reg), .i_wen(RegWrite),
							 .o_op1(op_1), .o_op2(op_2), .o_op3(op_3));
							 
	DataMemory dmem(.addra(ALUout), .dina(wdata_mem), .wea(MemWrite), .clka(clk_s), .douta(DMout));
							 
	single_signext signext(.i_16(INS[15:0]), .o_32(Sext_32));
	
	single_mux #(.N(5))  mux_wreg(.A(INS[20:16]), .B(INS[15:11]), .S(wreg), .Ctrl(RegDst));
	single_mux #(.N(32)) mux_alui(.A(op_2), .B(Sext_32), .S(B), .Ctrl(ALUsrc));
	single_mux #(.N(32)) mux_pc_b(.A(o_pc_added), .B(addr_b), .S(pc_branch), .Ctrl(PCBranch));
	single_mux #(.N(32)) mux_pc_j(.A(pc_branch), .B(addr_j), .S(i_pc), .Ctrl(Jump));
	single_mux #(.N(32)) mux_data(.A(ALUout), .B(DMout), .S(wdata_reg), .Ctrl(MemtoReg));
	
	//我们这里不使用+4，因此不用移位
	// single_srl_2 #(.N(32)) srl_Sext_32(.i_in(Sext_32), .o_out(Sext_32_ls2));
	// single_srl_2 #(.N(28)) srl_addr_j(.i_in(INS[25:0]), .o_out(addr_j_ls2));

	single_add addr_b_add(.i_op1(o_pc_added), .i_op2(Sext_32), .o_out(addr_b));
	
	clkdiv c0(.clk(clk), .rst(rst), .clkdiv(cnt));
	
    // We're pringting the Memory content of the current instruction
	MUX4to1b4 m0(.A(op_3[15:0]), .B(op_3[31:16]), .C(o_pc), .D(cnt), .SW(SW[6:5]), .OUT(DIS));
	
    dispnum d0(clk_s, DIS, 4'b0000, 4'b0000, AN, SEGMENT);
	//DisplaySync模块找不到了，请在校的朋友帮忙加一下，传入的数字信息为DIS
	//IPcore中没有内容，请添加coe
	//引脚约束请按照个人喜好添加
	
endmodule
