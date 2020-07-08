`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:25:04 07/08/2020 
// Design Name: 
// Module Name:    MUX4to1b4 
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
module MUX4to1b4(
	A,
	B,
	C,
	D,
	SW,
	OUT
    );
	 
	input  wire [15:0] A, B, C, D;
	input  wire [1:0] SW;
	output reg  [15:0] OUT;
	
	always @*
		case (SW)
			2'b00:   OUT = A;
			2'b01:   OUT = B;
			2'b10:   OUT = C;
			2'b11:   OUT = D;
			default: OUT = {16{1'b0}};
		endcase
		
endmodule
