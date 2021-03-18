`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah
module AD_FF(q, d, clk, reset);
//dimensions and sizes
input d, clk, reset;
output reg q;
//asynchronous reset D-FF
always@(posedge clk, posedge reset)
begin
    if (reset == 1)
    q <= 1'b0;
    else 
    q <= d;
end
endmodule
