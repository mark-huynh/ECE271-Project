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
// CREATED		"Tue Jun 04 21:00:31 2019"

module testmotor(
	CLK,
	motor
);


input wire	CLK;
output wire	[3:0] motor;

wire	SYNTHESIZED_WIRE_3;
wire	[9:0] SYNTHESIZED_WIRE_1;





motordriver	b2v_inst(
	.clkin(SYNTHESIZED_WIRE_3),
	.motorpin(motor));


comparator4	b2v_inst2(
	.q(SYNTHESIZED_WIRE_1),
	.gte(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst2.M = 1000;
	defparam	b2v_inst2.N = 10;


counter	b2v_inst3(
	.clk(CLK),
	.reset_n(SYNTHESIZED_WIRE_3),
	.q(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst3.N = 10;


endmodule
