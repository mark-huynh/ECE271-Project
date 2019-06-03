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
	9: q = 1'bz;
	10: q = 1'bz;
	11: q = 1'bz;
	12: q = 1'bz;
	13: q = 1'bz;
	14: q = 1'bz;
	15: q = 1'bz;


	

	default: q = 1'bz; 
	endcase 
endmodule