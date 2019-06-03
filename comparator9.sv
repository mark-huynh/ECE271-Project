module comparator9 #(parameter N=4, M=9)
						 (input logic [(N-1) : 0] q,
						  output logic gte);
						  
	assign gte = (q >= M);
endmodule