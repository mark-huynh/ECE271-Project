module tribuffer (input a, en, 
						output y);
						
	assign y = en ? a : 1'bz; 
endmodule