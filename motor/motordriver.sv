module motordriver(input logic clkin, input logic rev, output logic [3:0] motorpin);

	logic resetnode;
	logic resetsync;
	logic [3:0] tomuxnode;
	logic [3:0] toinvert;
	
	Counter counting(
	.clk(clkin),
	.reset_n(resetnode),
	.q(tomuxnode));
	
	motordecode motor(
	.select(tomuxnode),
	.motor(toinvert));
	
	comparator comp(
	.q(tomuxnode),
	.gte(resetnode));
	
	eninvert invert(
	.in(toinvert),
	.out(motorpin),
	.en(rev));
	
endmodule 