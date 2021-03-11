`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)

module RGB_Driver(out, SW);

//Dimension and sizes
input wire [5:0] SW;
output reg [5:0] out;

//Behavioural logic development
always@(*)
begin
    out = SW;
end
endmodule
