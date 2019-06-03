module comparator9 #(parameter N=4, M=9)
						 (input logic q,
						  output logic lte);
						  
	assign lte = (q < M);
endmodule