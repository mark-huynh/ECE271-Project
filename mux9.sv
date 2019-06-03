module mux (input logic [3:0] s, output logic q);

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
	9: q = z;
	10: q = z;
	11: q = z;
	12: q = z;
	13: q = z;
	14: q = z;
	15: q = z;


	

	default: q = z; 
	endcase 
endmodule