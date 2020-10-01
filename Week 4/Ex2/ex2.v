module ex2
(
	output [7:0] HEX0,
	output [7:0] HEX1,
	output [7:0] HEX2,
	output [7:0] HEX3,
	output [7:0] HEX4,
	output [7:0] HEX5,
	
	input [1:0] KEY
);

//30.07.02


assign HEX0 = 8'b11110010;
assign HEX1 = 8'b11111101;
assign HEX2 = 8'b11111100;
assign HEX3 = 8'b11100001;
assign HEX4 = 8'b11111100;
assign HEX5 = 8'b11011010;

endmodule
