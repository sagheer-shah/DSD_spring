`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)

module Full_Adder(c_out, sum, A, B, c_in);
//dimensions and sizes
input  A;
input  B;
input c_in;
output c_out;
output sum;

//wires
wire w1,w2,w3;

//logic development
xor xor1(w1, A, B);
xor xor2(sum, w1, c_in);
and and1(w2, A, B);
and and2(w3, w1, c_in);
or or1(c_out, w2, w3);
endmodule
