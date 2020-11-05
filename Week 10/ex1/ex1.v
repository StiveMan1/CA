module ex1
(
	x,
	y,
	out,
	carry
);


	input x;
	input y;
	output out;
	output carry;
	assign out = x^y;
	assign carry = x&y;
	
endmodule 