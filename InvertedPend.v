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
// CREATED		"Thu Jun 06 23:08:19 2019"

module InvertedPend(
	clkor,
	testrev,
	led,
	scl,
	sda,
	motor
);


input wire	clkor;
input wire	testrev;
output wire	led;
output wire	scl;
inout wire	sda;
output wire	[3:0] motor;

wire	clk;
wire	dropclk;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	[19:0] SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;





Counter	b2v_inst(
	.clk(clk),
	.reset_n(SYNTHESIZED_WIRE_15),
	
	.q(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst.F = 9;
	defparam	b2v_inst.N = 20;


Counter	b2v_inst1(
	.clk(dropclk),
	
	.forcein(SYNTHESIZED_WIRE_16),
	.q(SYNTHESIZED_WIRE_17));
	defparam	b2v_inst1.F = 10;
	defparam	b2v_inst1.N = 4;

assign	SYNTHESIZED_WIRE_12 =  ~SYNTHESIZED_WIRE_16;


decoder	b2v_inst12(
	.s(SYNTHESIZED_WIRE_3),
	.clk(clk),
	.q(SYNTHESIZED_WIRE_4));

assign	led =  ~SYNTHESIZED_WIRE_4;


Counter	b2v_inst14(
	.clk(clk),
	.reset_n(dropclk),
	
	.q(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst14.F = 9;
	defparam	b2v_inst14.N = 8;


comparator	b2v_inst15(
	.q(SYNTHESIZED_WIRE_5),
	.gte(dropclk));
	defparam	b2v_inst15.M = 143;
	defparam	b2v_inst15.N = 8;


comparator	b2v_inst2(
	.q(SYNTHESIZED_WIRE_6),
	.gte(SYNTHESIZED_WIRE_15));
	defparam	b2v_inst2.M = 250000;
	defparam	b2v_inst2.N = 20;


motordriver	b2v_inst3(
	.clkin(SYNTHESIZED_WIRE_15),
	.rev(testrev),
	.motorpin(motor));


comparator	b2v_inst4(
	.q(SYNTHESIZED_WIRE_17),
	.gte(SYNTHESIZED_WIRE_16));
	defparam	b2v_inst4.M = 10;
	defparam	b2v_inst4.N = 4;


comparator	b2v_inst5(
	.q(SYNTHESIZED_WIRE_17),
	.gte(SYNTHESIZED_WIRE_14));
	defparam	b2v_inst5.M = 1;
	defparam	b2v_inst5.N = 4;


mux9	b2v_inst6(
	.s(SYNTHESIZED_WIRE_17),
	.q(SYNTHESIZED_WIRE_11));


tribuffer	b2v_inst7(
	.a(SYNTHESIZED_WIRE_11),
	.en(SYNTHESIZED_WIRE_12),
	.y(sda));


tribuffer	b2v_inst8(
	.a(sda),
	.en(SYNTHESIZED_WIRE_16),
	.y(SYNTHESIZED_WIRE_3));


sclmux	b2v_inst9(
	.clk(dropclk),
	.s(SYNTHESIZED_WIRE_14),
	.scl(scl));

assign	clk = clkor;

endmodule
