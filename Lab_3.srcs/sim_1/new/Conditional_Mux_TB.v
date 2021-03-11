`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah


module Conditional_Mux_TB();
reg [3:0] D;
reg [1:0] S;
wire D_Out;

initial
begin
    #00 S=2'b00; D=4'b0001;
    #10 S=2'b01; D=4'b1101;
    #10 S=2'b10; D=4'b0100;
    #10 S=2'b11; D=4'b0111;
    #10 $finish;
end

initial
$monitor($time,"ns, S = %b, D = %b, Output = %b", S, D, D_Out);

Conditional_Mux CM0(D_Out, D, S);

endmodule
