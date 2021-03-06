`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah


module Decoder2_4_TB();
       reg enable; 
       reg A;
       reg B;
       wire [3:0] D;
    
initial
begin
#00 enable = 1'b1; A = 1'b1; B = 1'b1;
#10 enable = 1'b0; A = 1'b0; B = 1'b0;
#10 enable = 1'b0; A = 1'b0; B = 1'b1;
#10 enable = 1'b0; A = 1'b1; B = 1'b0;
#10 enable = 1'b0; A = 1'b1; B = 1'b1;
#10 $stop;
end

initial
$monitor($time, "ns -- enable = %b, A = %b, B = %b -- D = %b", enable, A, B, D);

//instantiate
Decoder2_4 D0(D, enable, A, B);
endmodule
