module mux9 (input logic [3:0] s, output logic q);

always_comb
   case(s)
	0: q = 0;
	1: q = 0;
	2: q = 1;
	3: q = 1;
	4: q = 0;
	5: q = 1;
	6: q = 0;
	7: q = 0;
	8: q = 1;
	//DONE
	


	

	default: q = 1'bz; 
	endcase 
endmodule