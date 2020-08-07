`timescale 1ns / 1ps

module multi_memory(
	clka,
	addra,
	wea,
	rea,		// 增加一个读取使能
	dina,
	douta
);
	input wire clka;
	input wire [9:0] addra;
	input wire wea, rea;
	input wire [31:0] dina;
	output reg [31:0] douta;
	
	wire [31:0] douta_temp;
	
	// synthesis attribute box_type multi_data_memory "black_box"
	multi_data_memory memory_core(.clka(clka), .addra(addra), .wea(wea), .dina(dina), .douta(douta_temp));
	
	always @(posedge clka)
	begin
		if (rea)
			douta = douta_temp;
		else
			douta = douta;
	end

endmodule
