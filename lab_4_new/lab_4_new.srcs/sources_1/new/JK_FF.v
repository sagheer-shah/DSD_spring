`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah
module JK_FF(q, j, k, clk, reset, en);
input j, k, clk, reset, en;
output reg q;

//JK flipflop
always@(posedge clk, posedge reset)
begin
        if (reset)
        q <= 1'b0;
        else if (en == 0)   
        q <= q;
        else if (j == 0 && k == 0)
        q <= q;
        else if (j == 1 && k == 0)
        q <= 1;
        else if (j == 0 && k == 1)
        q <= 0;
        else if (j == 1 && k == 1)
        q <= ~q;      
        else
        q <= q;
end
endmodule
