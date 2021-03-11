`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah

module SSD_Driver(rout, cc, in, a);
//dimension and sizes
input wire[3:0] in;
output [6:0] rout;
output reg cc;
reg [6:0] out;
output reg [6:0] a; 

//behavioral model logic development
always@(*)
begin
 cc = 1'b0;
 a = 7'b1111111;
    case(in)
    4'b0000 : out = 7'b0111111;//0
    4'b0001 : out = 7'b0000110;//1
    4'b0010 : out = 7'b1011011;//2
    4'b0011 : out = 7'b1001111;//3
    4'b0100 : out = 7'b1100110;//4
    4'b0101 : out = 7'b1101101;//5
    4'b0110 : out = 7'b1111101;//6
    4'b0111 : out = 7'b0000111;//7
    4'b1000 : out = 7'b1111111;//8
    4'b1001 : out = 7'b1101111;//9
    default: out = 7'bzzzzzzz;
    endcase
end
//xnor xnor1(rout, out, 7'b0000000);
assign rout = {~out[6],~out[5],~out[4],~out[3],~out[2],~out[1],~out[0]};
endmodule
