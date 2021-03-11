`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)


module Conditional_Mux(D_Out, D, S);
// dimension and sizes
input [3:0] D;
input [1:0] S;
output D_Out;

//logic development
assign D_Out = S[1]?(S[0]?D[3]:D[2]):(S[0]?D[1]:D[0]);

endmodule
