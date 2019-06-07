module decoder (input logic s,
					 input clk,
					 output logic q);
	
always @(posedge clk)
	begin
		if(s == 1) q = 1;
	end
endmodule 