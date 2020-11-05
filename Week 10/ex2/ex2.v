module ex2
(
	x,
	y,
	in,
	sum,
	out
);

	input x;
	input y;
	input in;

	output sum;
	output out;

	assign sum = (x^y)^in;
	assign out = (x&y)|((x^y)&in);
	
endmodule 