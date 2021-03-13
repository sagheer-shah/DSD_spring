`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)

module Mux_4to1_TB();
//Setting up registers and wires
reg [3:0] ID;
reg s1,s2;
wire OD;

//setting up simulation
initial
begin
    #00 s1=0; s2=0; ID=4'bxxx0;
    #10 s1=0; s2=0; ID=4'bxxx1;
    #10 s1=0; s2=1; ID=4'bxx0x;
    #10 s1=0; s2=1; ID=4'bxx1x;
    #10 s1=1; s2=0; ID=4'bx0xx;
    #10 s1=1; s2=0; ID=4'bx1xx;
    #10 s1=1; s2=1; ID=4'b0xxx;
    #10 s1=1; s2=1; ID=4'b1xxx;
    #10 $finish;
end

//Displaying information on TCL console
initial
begin
$display("Author: Sagheer Abbas Shah\n");
$monitor($time,"ns  S1 = %b, S0 = %b, Input = %b, Output = %b", s1, s2, ID, OD);
end

//instantiation
Mux_4to1 M40(OD, s1, s2, ID);
endmodule
