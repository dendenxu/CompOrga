`timescale 1ns / 1ps

module antijitter(
	input wire clk_1ms,
	input wire button, 
	output reg button_OK
);

	reg [7:0] pbshift;
	initial
	begin
		button_OK = 1'd0;
		pbshift = 8'd0;
	end

	always @(posedge clk_1ms)
	begin
		pbshift = {pbshift[6:0], button};
		if (pbshift == 8'b0)
			button_OK <= 0;
		else if (pbshift == 8'hFF)
			button_OK <= 1;    
		else
			button_OK <= button_OK;
	end
	
endmodule

