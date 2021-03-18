`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah
module T_FF(q, t, clk, reset, en);
input t, clk, reset, en;
output reg q;

//T flipflop
always@(posedge clk, posedge reset)
begin
        if (reset)
        q <= 1'b0;
        else if (en == 0)   
        q <= q;
        else if (t == 0)
        q <= q;
        else if (t == 1)
        q <= ~q;      
        else
        q <= q;
end
endmodule