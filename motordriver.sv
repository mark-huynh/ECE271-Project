module motordriver(input logic clkin, output logic [3:0] motorpin);

	logic resetnode;
	logic tomuxnode;
	
	counter counting(
	.clk(clkin),
	.reset_n(resernode),
	.q(tomuxnode));
	
	motormux motor(
	.select(tomuxnode),
	.motor(motorpin));
	
	comparator4 comp(
	.q(tomuxnode),
	.gte(resetnode));
endmodule 