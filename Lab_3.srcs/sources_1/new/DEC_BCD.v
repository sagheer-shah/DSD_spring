`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)

module DEC_BCD(out, SW);
//Dimension and sizes
input wire [9:0] SW;
output reg [3:0] out;

//logic development using behavioral modelling
always@(*)
begin
    if(SW[0] == 1)
    out = 4'b0000;
    else if(SW[1] == 1)
    out = 4'b0001;
    else if(SW[2] == 1)
    out = 4'b0010;
    else if(SW[3] == 1)
    out = 4'b0011;
    else if(SW[4] == 1)
    out = 4'b0100;
    else if(SW[5] == 1)
    out = 4'b0101;
    else if(SW[6] == 1)
    out = 4'b0110;
    else if(SW[7] == 1)
    out = 4'b0111;
    else if(SW[8] == 1)
    out = 4'b1000;
    else if(SW[9] == 1)
    out = 4'b1001;
    else 
    out = 4'bzzzz;
end

endmodule