module comparator4 #(parameter N=4, M=4)
						 (input logic [(N-1) : 0] q,
						  output logic gte);
						  
	assign gte = (q >= M);
endmodule