// ths is what was finished after the meeting tuesday night
module testmotor(input logic clkor, output logic [3:0] motor);


logic	SYNTHESIZED_WIRE_3;
logic	SYNTHESIZED_WIRE_sync;
logic	[9:0] SYNTHESIZED_WIRE_1;


motordriver	b2v_inst(
	.clkin(SYNTHESIZED_WIRE_3),
	.motorpin(motor),
	.orclk(clkor));


comparator	b2v_inst2(
	.q(SYNTHESIZED_WIRE_1),
	.gte(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst2.M = 1000;
	defparam	b2v_inst2.N = 10;


counter	b2v_inst3(
	.clk(clkor),
	.reset_n(SYNTHESIZED_WIRE_sync),
	.q(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst3.N = 10;
	
sync instsy1(
	.clk(clkor),
	.d(SYNTHESIZED_WIRE_3),
	.q(SYNTHESIZED_WIRE_sync));


endmodule