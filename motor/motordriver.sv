module motordriver(input logic clkin,input logic orclk, output logic [3:0] motorpin);

	logic resetnode;
	logic resetsync;
	logic [3:0] tomuxnode;
	logic [1:0] todecnode;
	
	Counter counting(
	.clk(clkin),
	.reset_n(resetsync),
	.q(tomuxnode));
	
	motormux motor(
	.select(tomuxnode),
	.motor(todecnode));
	
	comparator comp(
	.q(tomuxnode),
	.gte(resetnode));
	
	sync instsy(
	.clk(orclk),
	.d(resetnode),
	.q(resetsync));
	
	wavedecoder instwave(
	.q(todecnode),
	.m(motorpin));
endmodule 