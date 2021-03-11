`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah


module COMBO_of_DECSSD(rout, SW, cc, a);
//dimensions and sizes 
input [9:0] SW;
output [6:0] rout;
output cc;
output [6:0] a;  

//wires
wire [3:0] w;

//logic
DEC_to_BCD DB0(w, SW);
SSD_Driver SD0(rout, cc, w, a);

endmodule
