// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Thu Jun 06 03:23:20 2019"

module motortest(
	clkor,
	motor
);


input wire	clkor;
output wire	[3:0] motor;

wire	SYNTHESIZED_WIRE_3;
wire	[17:0] SYNTHESIZED_WIRE_1;





Counter	b2v_inst(
	.clk(clkor),
	.reset_n(SYNTHESIZED_WIRE_3),
	.q(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst.N = 18;


comparator	b2v_inst2(
	.q(SYNTHESIZED_WIRE_1),
	.gte(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst2.M = 10000;
	defparam	b2v_inst2.N = 18;


motordriver	b2v_inst3(
	.clkin(SYNTHESIZED_WIRE_3),
	.orclk(clkor),
	.motorpin(motor));


endmodule
