`timescale 1ns / 1ps

// transform K_ROL signal to its Hex form
module KB_Process(input wire clk,
						input wire [4:0]K_ROW,
						output reg [2:0]KB_Hex_ROW);
		
	initial KB_Hex_ROW = 3'd0; // initial value
	
	always @(posedge clk)
	begin
		if (K_ROW[0] == 1) // when press key and row = 0
			KB_Hex_ROW <= 3'd0;
		else if (K_ROW[1] == 1) // when press key and row = 1
			KB_Hex_ROW <= 3'd1;
		else if (K_ROW[2] == 1) // when press key and row = 2
			KB_Hex_ROW <= 3'd2;
		else if (K_ROW[3] == 1) // when press key and row = 3
			KB_Hex_ROW <= 3'd3;
		else if (K_ROW[4] == 1) // when press key and row = 4
			KB_Hex_ROW <= 3'd4;
		else
			KB_Hex_ROW <= KB_Hex_ROW; // when no press
	end

endmodule
