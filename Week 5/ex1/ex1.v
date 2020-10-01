module ex1 (
	input din1,
	input din2,
	input din3,
	input din4,
	input [1:0] s,
	output reg f
);

always@ (*)
	begin
		case (s)
			2'b 00: f = din1;
			2'b 01: f = din2;
			2'b 10: f = din3;
			2'b 11: f = din4;
		endcase
	end
endmodule
