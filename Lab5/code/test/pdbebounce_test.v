`timescale 1ns / 1ps


module pdbebounce_test;

	// Inputs
	reg clk_1ms;
	reg button;

	// Outputs
	wire pbreg;

	// Instantiate the Unit Under Test (UUT)
	pbdebounce uut (
		.clk_1ms(clk_1ms), 
		.button(button), 
		.pbreg(pbreg)
	);

	initial begin
		// Initialize Inputs
		clk_1ms = 0;
		button = 0;
		fork
			forever #5 clk_1ms = ~clk_1ms;
			begin
				button = 1;
				#100;
				button = 0;
				#100;
				button = 1;
				#100;
				button = 0;
			end
		join
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

