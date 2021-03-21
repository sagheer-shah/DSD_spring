`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)

module Comparator_2_bit_TB();
//Setting up registors and wires to store input and transmit output
reg [1:0] A, B;
wire Gr, Eq, Lr;

//setting up simulation
initial 
begin
    #00 A=2'b00; B=2'b00;
    #10 A=2'b00; B=2'b01;
    #10 A=2'b00; B=2'b10;
    #10 A=2'b00; B=2'b11;
    #10 A=2'b01; B=2'b00;
    #10 A=2'b01; B=2'b01;
    #10 A=2'b01; B=2'b10;
    #10 A=2'b01; B=2'b11;
    #10 A=2'b10; B=2'b00;
    #10 A=2'b10; B=2'b01;
    #10 A=2'b10; B=2'b10;
    #10 A=2'b10; B=2'b11;
    #10 A=2'b11; B=2'b00;
    #10 A=2'b11; B=2'b01;
    #10 A=2'b11; B=2'b10;
    #10 A=2'b11; B=2'b11;
    #10 $finish;
end

//Prepapring display for TCL console
initial
begin
$display("Author: Sagheer Abbas Shah\n");
$monitor($time,"ns  A = %b, B = %b, (A<B) = %b, (A=B) = %b, (A>B) = %b", A, B, Lr, Eq, Gr);
end

//Instantiation
Comparator_2_bit C2B0(Gr, Eq, Lr, A, B);
endmodule
