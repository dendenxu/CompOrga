`timescale 1ns / 1ps

module multi_mux_test;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] C;
	reg [15:0] D;
	reg [1:0] Ctrl;

	// Outputs
	wire [15:0] S;

	// Instantiate the Unit Under Test (UUT)
	multi_mux4
		#(.N(16))
	uut 
	(
		.A(A), 
		.B(B), 
		.C(C),
		.D(D),
		.Ctrl(Ctrl), 
		.S(S)
	);

	initial begin
		A = 16'hFAFA;
		B = 16'h0505;
		C = 16'h11EE;
		D = 16'h44BB;
		Ctrl = 0;
		#100;
		Ctrl = 1;
		#100;
		Ctrl = 2;
		#100;
		Ctrl = 3;
	end
      
endmodule

