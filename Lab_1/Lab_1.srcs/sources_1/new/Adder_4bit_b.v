`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)


module Adder_4bit_b(carry_out, sum, A, B, c_in);

//dimensions and sizes
input [3:0] A,B;
input c_in;
output [3:0] sum;
output carry_out;

//wires
wire c1,c2,c3;

//logic description
Full_Adder FA0(c1, sum[0], A[0], B[0], c_in);//first FA instantiated
Full_Adder FA1(c2, sum[1], A[1], B[1], c1);//second FA instantiated
Full_Adder FA2(c3, sum[2], A[2], B[2], c2);//thirdFA instantiated
Full_Adder FA3(carry_out, sum[3], A[3], B[3], c3);//fourth FA instantiated

endmodule
