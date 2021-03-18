`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah

module SR_FF(q, s, r, clk, reset, en);

input s, r, clk, reset, en;
output reg q;

//SR flipflop using NOR gates
always@(posedge clk, posedge reset)
begin
    if (reset)
    q <= 1'b0;
    else if (en == 0)
    q <= q;
    else if (s == 0 && r == 0)
    q <= q;
    else if (s == 1 && r == 0)
    q <= 1;
    else if (s == 0 && r == 1)
    q <= 0;
    else if (s == 1 && r == 1)
    q <= 1'bx;
    else
    q <= q;
end
endmodule
