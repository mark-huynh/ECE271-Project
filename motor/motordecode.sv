module motordecode(input logic [3:0] select, output logic [3:0] motor);

/*
	One Step for a bipolar stepper
	
		|A| 0  _1__1_  0
		---   |		 |
		|B|_1_| 0  0 |_1_
		
		---
		
		|C| 0  0  _1__1_
		---	   |		 |
		|D|_1__1_| 0  0 |
		
*/
always_comb
   case(select)
		// 	A_BCD
		0: motor = 4'b0101;
		1: motor = 4'b1001;
		2: motor = 4'b1010;
		3: motor = 4'b0110;
		default: motor = 4'b0000;
	endcase 
endmodule 