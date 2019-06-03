module comparator2 #(parameter N=4, M=2)
						 (input logic q,
						  output logic lte);
	
	assign lte = (q < M);
endmodule