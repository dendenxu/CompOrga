`timescale 1ns / 1ps

module multi_mem_test;

	// Inputs
	reg clka;
	reg rea;
	reg [0:0] wea;
	reg [9:0] addra;
	reg [31:0] dina;

	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	multi_memory_core uut (
		.clka(clka), 
		.rea(rea), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		fork
			forever
			begin
				clka = ~clka;
				#5;
			end
			begin
				rea = 1;
				wea = 0;
				addra = 0;
				dina = 0;

				// Wait 100 ns for global reset to finish
				#100;
				addra = 1;
				#100;
				addra = 0;
				rea = 0;
				//#1;

				#100;
				rea = 1;
			end
		join
        
		// Add stimulus here

	end
   
endmodule

