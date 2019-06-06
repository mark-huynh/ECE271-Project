module motormux(input logic [3:0] select, output logic [1:0] motor);

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
		0: motor = 2'b10;
		1: motor = 2'b00;
		2: motor = 2'b01;
		3: motor = 2'b11;
		default: motor = 2'b00;
	endcase 
endmodule 