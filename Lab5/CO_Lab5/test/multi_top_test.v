`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:34:00 08/11/2020
// Design Name:   multi_cpu_top
// Module Name:   C:/Users/HASEE/source/repos/MIPS/Lab5/code/multi_top_test.v
// Project Name:  3180105504_multi_cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi_cpu_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multi_top_test;

	// Inputs
	reg clk_s;
	reg [7:0] SW;
	reg [1:0] K_COL;

	// Outputs
	wire [4:0] K_ROW;
	wire [4:0] LED;
	wire [7:0] SEGMENT;
	wire [3:0] AN;

	// Instantiate the Unit Under Test (UUT)
	multi_cpu_top uut (
		.clk_s(clk_s), 
		.SW(SW), 
		.K_COL(K_COL), 
		.K_ROW(K_ROW), 
		.LED(LED), 
		.SEGMENT(SEGMENT), 
		.AN(AN)
	);

	initial begin
		// Initialize Inputs
		clk_s = 0;
		SW = 8'b00000001;
		K_COL = 0;
		#10;
		fork
			forever #1 clk_s <= ~clk_s;
			forever #20 K_COL[0] <= ~K_COL[0];
			begin
				
			end
		join


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

