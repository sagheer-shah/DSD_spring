`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)

module B_4to1Mux(D_out, s, D_in);

//Dimensions and sizes
input wire [3:0] D_in;
input wire [1:0] s;
output reg D_out;

//Behavioral Model Logic development
always@(s, D_in)//Assigning sensitivity list in Paranthesis
begin
    if(s[1] == 1'b0 && s[0] == 1'b0)
         D_out = D_in[0];
    else if(s[1] == 1'b0 && s[0] == 1'b1)
         D_out = D_in[1];
    else if(s[1] == 1'b1 && s[0] == 1'b0)
         D_out = D_in[2];
    else if(s[1] == 1'b1 && s[0] == 1'b1)
         D_out = D_in[3];
    else
         D_out = 1'bz;
end

endmodule
