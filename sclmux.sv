module sclmux(input logic clk, s, output logic scl);

	assign scl = s ? clk : 1;
	
endmodule

