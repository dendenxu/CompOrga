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
		if (rst)
		begin
			mem[0]  = {32{1'b0}};
			mem[1]  = {32{1'b0}};
			mem[2]  = {32{1'b0}};
			mem[3]  = {32{1'b0}};
			mem[4]  = {32{1'b0}};
			mem[5]  = {32{1'b0}};
			mem[6]  = {32{1'b0}};
			mem[7]  = {32{1'b0}};
			mem[8]  = {32{1'b0}};
			mem[9]  = {32{1'b0}};
			mem[10] = {32{1'b0}};
			mem[11] = {32{1'b0}};
			mem[12] = {32{1'b0}};
			mem[13] = {32{1'b0}};
			mem[14] = {32{1'b0}};
			mem[15] = {32{1'b0}};
			mem[16] = {32{1'b0}};
			mem[17] = {32{1'b0}};
			mem[18] = {32{1'b0}};
			mem[19] = {32{1'b0}};
			mem[20] = {32{1'b0}};
			mem[21] = {32{1'b0}};
			mem[22] = {32{1'b0}};
			mem[23] = {32{1'b0}};
			mem[24] = {32{1'b0}};
			mem[25] = {32{1'b0}};
			mem[26] = {32{1'b0}};
			mem[27] = {32{1'b0}};
			mem[28] = {32{1'b0}};
			mem[29] = {32{1'b0}};
			mem[30] = {32{1'b0}};
			mem[31] = {32{1'b0}};
		end
		else if (WriteEN)
			mem[WriteAddr] = WriteData;

endmodule
