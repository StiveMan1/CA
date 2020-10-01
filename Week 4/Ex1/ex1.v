module ex1 (sw0, sw1, led0);
input sw0, sw1;
output led0;
and (led0, sw0, sw1);
endmodule
