`timescale 1ns / 1ps

module clkdiv(input clk,
				  output reg[31:0]clkdiv);

	always @ (posedge clk) // increase 1 every tick
		clkdiv <= clkdiv + 1'b1;

endmodule
