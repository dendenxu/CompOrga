`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:41 07/06/2020 
// Design Name: 
// Module Name:    single_mux 
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
module single_mux(
	A,
	B,
	Ctrl,
	S
   );
	
	parameter N = 32;
	input  wire Ctrl;
	input  wire [N-1:0] A, B;
	output wire [N-1:0] S;
	
	assign S = (Ctrl == 1'b0) ? A : B;
	
endmodule
