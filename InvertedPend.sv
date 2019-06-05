//Test verilog file

//Try editing this and commiting your changes and I can check if your changes came through.

//Hey I added this can you see it?


module InvertedPend(input logic clk, output logic sda, scl, led);

	logic countNode;
	logic addressSelec;
	logic controlStart;
	logic ledLine;
	
	counter counting(
	.clk(clk),
	.q(countNode));
	
	comparator9 comp9(
	.q(countNode),
	.gte(selectSig));
	
	
	comparator2 comp2(
	.q(countNode),
	.gte(controlStart));
	
	sclmux clkControl(
	.s(controlStart),
	.clk(clk),
	.scl(scl));
	
	mux9 addressmux(
	.s(countNode),
	.q(sda));
	
	tribuffer(
	.a(sda),
	.en(selectSig),
	.y(ledLine));
	
	
	decoder decode(
	.s(ledLine),
	.q(led));
	
	
endmodule 