`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah


module Comparator(A_gt_B, A_lt_B, A_eq_B, A, B);

// Dimensions and Sizes
input A, B;
output A_gt_B, A_lt_B, A_eq_B;

// wires
wire a1, b1;

//logic description
not not1(a1, A);
not not2(b1, B);
and and1(A_lt_B, a1, B);
and and2(A_gt_B, b1, A);
xnor xnor1(A_eq_B, A_lt_B, A_gt_B);

endmodule
