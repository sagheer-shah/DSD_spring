`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah


module Decoder2_4(D, enable, A, B);
 input enable;
 input A;
 input B;
 output [3:0] D;
    
//Logic
assign D[0]= ~(~A & ~B & ~enable); 
assign D[1]= ~(~A & B & ~enable); 
assign D[2]= ~(A &  ~B & ~enable); 
assign D[3]= ~(A & B & ~enable); 

endmodule
