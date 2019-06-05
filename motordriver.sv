module motordriver(input logic clkin, output logic [3:0] motorpin);

	logic resetnode;
	logic [3:0] tomuxnode;
	
	counter counting(
	.clk(clkin),
	.reset_n(resetnode),
	.q(tomuxnode));
	
	motormux motor(
	.select(tomuxnode),
	.motor(motorpin));
	
	comparator4 comp(
	.q(tomuxnode),
	.gte(resetnode));
endmodule 