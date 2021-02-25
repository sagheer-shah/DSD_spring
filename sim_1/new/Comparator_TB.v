`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah


module Comparator_TB();
reg A, B;
wire A_gt_B, A_lt_B, A_eq_B;

initial
begin
    #00 a = 1'b0; b = 1'b0;
    #10 a = 1'b0; b = 1'b1;
    #10 a = 1'b1; b = 1'b0;
    #10 a = 1'b1; b = 1'b1;
    #10 $finish;
end

initial
$monitor($time, "ns, A = %b, B = %b, A_gt_B = %b, A_lt_B = %b, A_eq_B = %b ", A, B, A_gt_B, A_lt_B, A_eq_B);

Comparator C0(A_gt_B, A_lt_B, A_eq_B, A, B);

endmodule
