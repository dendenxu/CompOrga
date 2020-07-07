`timescale 1ns / 1ps

// transform K_ROL signal to its Hex form
module KB_Process(input wire clk,
						input wire [3:0]K_COL,
						output reg [2:0]KB_Hex_COL);
		
	initial KB_Hex_COL = 3'd0; // initial value
	
	always @(posedge clk)
	begin
		if (K_COL[0] == 0) // when press key and row = 0
			KB_Hex_COL <= 3'd0;
		else if (K_COL[1] == 0) // when press key and row = 1
			KB_Hex_COL <= 3'd1;
		else if (K_COL[2] == 0) // when press key and row = 2
			KB_Hex_COL <= 3'd2;
		else if (K_COL[3] == 0) // when press key and row = 3
			KB_Hex_COL <= 3'd3;
		else
			KB_Hex_COL <= KB_Hex_COL; // when no press
	end

endmodule
