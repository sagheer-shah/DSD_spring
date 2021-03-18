`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah
module Priority_Enc_8bit(Q, D);
//size and dimensions
input wire [7:0] D;
output reg [2:0] Q;

//logic for 8 bit priority encoder
always@(D)
begin
    casex(D)
    8'b00000001 : Q = 3'b000;
    8'b0000001x : Q = 3'b001;
    8'b000001xx : Q = 3'b010;
    8'b00001xxx : Q = 3'b011;
    8'b0001xxxx : Q = 3'b100;
    8'b001xxxxx : Q = 3'b101;
    8'b01xxxxxx : Q = 3'b110;
    8'b1xxxxxxx : Q = 3'b111;
    default: Q = 3'bzzz;
    endcase
end
endmodule
