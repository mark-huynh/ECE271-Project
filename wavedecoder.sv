module wavedecoder (input logic [1:0] q,
						  output logic [3:0] m);
						  
	logic clk1;
	logic clk2;
	
	assign clk1 = q[0];
	assign clk2 = q[1];
	
	assign m[0] = clk2;
	assign m[1] = ~clk2;
	assign m[2] = clk1;
	assign m[3] = ~clk1;
	
endmodule