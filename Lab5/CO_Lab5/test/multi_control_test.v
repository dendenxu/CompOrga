`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:06:24 08/11/2020
// Design Name:   multi_control
// Module Name:   C:/Users/HASEE/source/repos/MIPS/Lab5/code/multi_control_test.v
// Project Name:  3180105504_multi_cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multi_control_test;

	// Inputs
	reg clk;
	reg [5:0] OP;

	// Outputs
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
	wire [4:0] LED;

	// Instantiate the Unit Under Test (UUT)
	multi_control uut (
		.clk(clk), 
		.OP(OP), 
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

	initial begin
		// Initialize Inputs
		clk = 0;
		OP = 0;
		
		fork
			forever #5 clk = ~clk;
			begin
				OP = 6'b000000;
				#100;
				OP = 6'b100011;
				#100;
			end
		join

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

