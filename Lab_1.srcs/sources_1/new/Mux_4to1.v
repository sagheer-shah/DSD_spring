`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)


module Mux_4to1(OD, s1, s2, ID);

// dimensios and sizes
input [3:0] ID;
input s1,s2;
output OD;

//wires
wire w1,w2,w3,w4,w5,w6;

//logic development
not not1(w1, s1);
not not2(w2, s2);
and and1(w3, ID[0], w1, w2);
and and2(w4, ID[1], w1, s2);
and and3(w5, ID[2], s1, w2);
and and4(w6, ID[3], s1, s2);
or or1(OD, w3, w4, w5, w6);

endmodule
