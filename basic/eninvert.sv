module eninvert(input logic [3:0] in,input logic en, output logic [3:0] out);
always_ff @(en)
   if(en) 
	begin
		out[0] = ~in[0];
		out[1] = ~in[1];
		out[2] = in[2];
		out[3] = in[3];
	end
	else out = in;

endmodule 