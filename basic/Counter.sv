module Counter #(parameter N=4,parameter F=9)
					 (input logic clk,
					  input logic reset_n,
					  input logic forcein,
					  output logic[N-1:0] q );
			  
	always_ff@(posedge clk, posedge reset_n)
		if(reset_n) q<=0;
		else if(forcein) q<=F;
		else		   q<=q + 1;
endmodule 