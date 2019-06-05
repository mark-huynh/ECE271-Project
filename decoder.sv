module decoder (input logic s, 
					input logic en,
					output logic q);
	
always @(en)
	begin
		if(s == 1 & en == 1) q = 1;
	end
endmodule 