`timescale 1ns / 1ps

module multi_signext_test;

	// Inputs
	reg [15:0] input_16;

	// Outputs
	wire [31:0] output_32;

	// Instantiate the Unit Under Test (UUT)
	multi_signext uut (
		.input_16(input_16), 
		.output_32(output_32)
	);

	initial begin
		input_16 = 16'b1001_1111_0011_1100;
		#50;
		input_16 = 16'b0110_0000_1010_0101;

	end
      
endmodule

