module motordriver(input logic clkin,input logic orclk, output logic [3:0] motorpin);

	logic resetnode;
	logic resetsync;
	logic [3:0] tomuxnode;
	
	counter counting(
	.clk(clkin),
	.reset_n(resetsync),
	.q(tomuxnode));
	
	motormux motor(
	.select(tomuxnode),
	.motor(motorpin));
	
	comparator comp(
	.q(tomuxnode),
	.gte(resetnode));
	
	sync instsy(
	.clk(orclk),
	.d(resetnode),
	.q(resetsync));
endmodule 