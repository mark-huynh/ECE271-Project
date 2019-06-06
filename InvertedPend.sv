//Test verilog file

//Try editing this and commiting your changes and I can check if your changes came through.

//Hey I added this can you see it?
module InvertedPend(input logic clkor, output logic [3:0] motor);


logic	SYNTHESIZED_WIRE_3;
logic	SYNTHESIZED_WIRE_sync;
logic	[17:0] SYNTHESIZED_WIRE_1;


motordriver	b2v_inst(
	.clkin(SYNTHESIZED_WIRE_3),
	.motorpin(motor),
	.orclk(clkor));


comparator	b2v_inst2(
	.q(SYNTHESIZED_WIRE_1),
	.gte(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst2.M = 100000;
	defparam	b2v_inst2.N = 18;


Counter	b2v_inst3(
	.clk(clkor),
	.reset_n(SYNTHESIZED_WIRE_sync),
	.q(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst3.N = 18;
	
sync instsy1(
	.clk(clkor),
	.d(SYNTHESIZED_WIRE_3),
	.q(SYNTHESIZED_WIRE_sync));


endmodule

