`timescale 1ns / 1ps
//Auhtor: Sagheer Abbas Shah
module DFF_w_EN(q, d, clk, en, reset);
input d, clk, reset, en;
output reg q;
//asynchronous reset and synchronous enable D-FF
always@(posedge clk, posedge reset)
begin
    if (reset == 1)
    q <= 1'b0;
    else if(en == 0)
    q <= q;
    else 
    q <= d;
end
endmodule
