`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)


module Adder_4bit_a(carry_out, c_out, sum, A, B, c_in);

//dimensions and sizes
input [3:0] A;
input [3:0] B;
input c_in;
output [2:0] c_out;
output carry_out;
output [3:0] sum;

//wires
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;

//logic development
// first full adder
xor xor1(w1, A[0], B[0]);
xor xor2(sum[0], w1, c_in);
and and1(w2, A[0], B[0]);
and and2(w3, w1, c_in);
or or1(c_out[0], w2, w3);

// second full adder
xor xor3(w4, A[1], B[1]);
xor xor4(sum[1], w4, c_out[0]);
and and3(w5, A[1], B[1]);
and and4(w6, w4, c_out[0]);
or or2(c_out[1], w5, w6);

// third full adder
xor xor5(w7, A[2], B[2]);
xor xor6(sum[2], w7, c_out[1]);
and and5(w8, A[2], B[2]);
and and6(w9, w7, c_out[1]);
or or3(c_out[2], w8, w9);

// fourth full adder
xor xor7(w10, A[3], B[3]);
xor xor8(sum[3], w10, c_out[2]);
and and7(w11, A[3], B[3]);
and and8(w12, w10, c_out[2]);
or or4(carry_out, w11, w12);

endmodule
