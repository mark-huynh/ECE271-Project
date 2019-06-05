module motormux(input logic [3:0] select, output logic [3:0] motor);

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
		0: motor = 4'b0_101;//5
		1: motor = 4'b1_001;//9
		2: motor = 4'b1_010;//10
		3: motor = 4'b0_110;//6
	
		default: motor = 4'b0_000;//0
	endcase 
endmodule 