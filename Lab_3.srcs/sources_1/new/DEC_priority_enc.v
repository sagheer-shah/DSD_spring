`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)
module DEC_priority_enc(Q, D);
//size and dimensions
input wire [9:0] D;
output reg [3:0] Q;

//logic for 8 bit priority encoder
always@(D)
begin
    casex(D)
    10'b0000000001 : Q = 4'b0000;
    10'b000000001x : Q = 4'b0001;
    10'b00000001xx : Q = 4'b0010;
    10'b0000001xxx : Q = 4'b0011;
    10'b000001xxxx : Q = 4'b0100;
    10'b00001xxxxx : Q = 4'b0101;
    10'b0001xxxxxx : Q = 4'b0110;
    10'b001xxxxxxx : Q = 4'b0111;
    10'b01xxxxxxxx : Q = 4'b1000;
    10'b1xxxxxxxxx : Q = 4'b1001;
    default: Q = 4'bzzzz;
    endcase
end
endmodule
