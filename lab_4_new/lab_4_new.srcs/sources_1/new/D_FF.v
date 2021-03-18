`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah
module D_FF(q, d, clk);

input d, clk;
output reg q;
//D flip-flop
always@(posedge clk)
begin
    q  <= d;
end
endmodule
