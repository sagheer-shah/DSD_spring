`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah


module Inverter(A, A_not);
input A;
output A_not;

not not1(A_not, A);
endmodule
