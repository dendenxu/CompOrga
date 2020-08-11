`timescale 1ns / 1ps

module multi_register_files(
	clk, rst,
	AddrA, AddrB, AddrC,
	DataA, DataB, DataC,
	WriteAddr, WriteData, WriteEN
);
	 
	input  wire clk, rst, WriteEN;
	input  wire [ 4:0] AddrA, AddrB, AddrC, WriteAddr;
	input  wire [31:0] WriteData;
	output wire [31:0] DataA, DataB, DataC;

	reg  [31:0] mem[31:0];
	
	integer i;
	initial 
	begin
		for (i = 0; i < 32; i = i + 1)
			mem[i] = 32'd0;
	end
	
	assign DataA = mem[AddrA];
	assign DataB = mem[AddrB];
	assign DataC = mem[AddrC];
	
	always @(posedge clk or posedge rst)
		if (rst == 1'b1)
			mem[0] = {32{1'b0}};
		else if (WriteEN)
		//	mem[WriteAddr] = (WriteAddr == {5{1'b0}}) ? {32{1'b0}} : WriteData; 
			mem[WriteAddr] = WriteData;

endmodule
