`timescale 1ns / 1ps
///Author: Sagheer Abbas Shah (041-18-0016)

module Comparator_2_bit(Gr, Eq, Lr, A, B);
// dimension and sizes of inputs and outputs
input [1:0] A, B;
output Gr, Eq, Lr;

//wires for making input output connections
wire [11:0]w;

//Logic development using gate level modelling
not not1(w[0], A[0]);
not not2(w[1], A[1]);
not not3(w[2], B[0]);
not not4(w[3], B[1]);

//logic when A is greater than B
and and1(w[4], A[1], w[3]);
and and2(w[5], A[0], w[3], w[2]);
and and3(w[6], A[1], A[0], w[2]);
or or1(Gr, w[4], w[5], w[6]);

//logic when A is equal to B
xnor xnor1(w[7], A[0], B[0]);
xnor xnor2(w[8], A[1], B[1]);
and and4(Eq, w[7], w[8]);

// logic when A is lesser than B
and and5(w[9], w[1], B[1]);
and and6(w[10], w[0], B[1], B[0]);
and and7(w[11], w[1], w[0], B[0]);
or or2(Lr, w[9], w[10], w[11]);

endmodule
