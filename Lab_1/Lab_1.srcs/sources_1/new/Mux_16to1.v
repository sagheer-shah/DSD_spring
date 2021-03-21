`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)

module Mux_16to1(OD, s1, s2, ID);
//dimensions and sizes
input [15:0] ID;
input [4:0] s1, s2;
output OD;

// wires
wire [3:0]w;

//instantiation
Mux_4to1 M0(w[0], s1[0], s2[0],ID[3:0] );
Mux_4to1 M1(w[1], s1[1], s2[1],ID[7:4] );
Mux_4to1 M2(w[2], s1[2], s2[2],ID[11:8]);
Mux_4to1 M3(w[3], s1[3], s2[3],ID[15:12]);
//combining above 4
Mux_4to1 M4(OD, s1[4], s2[4], w); 

endmodule
