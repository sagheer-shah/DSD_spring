`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah

module DEC_BCD_TB();
//Dimension and sizes
reg [9:0] SW;
wire [3:0] out;

//setting up data for simualtion
initial
begin
    #00 SW = 10'b0000000000;
    #10 SW = 10'b0000000001;
    #10 SW = 10'b0000000010;
    #10 SW = 10'b0000000100;
    #10 SW = 10'b0000001000;
    #10 SW = 10'b0000010000;
    #10 SW = 10'b0000100000;
    #10 SW = 10'b0001000000;
    #10 SW = 10'b0010000000;
    #10 SW = 10'b0100000000;
    #10 SW = 10'b1000000000;
    #10 $finish;
end

//displaying data on TCL console
initial
begin
$display("Author: Sagheer Abbas Shah\n");
$monitor($time,"ns  input = %b, BCD output = %b",SW,out);
end

//instantiation
DEC_BCD DB0(out, SW);
endmodule