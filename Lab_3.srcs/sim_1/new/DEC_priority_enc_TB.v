`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)
module DEC_priority_enc_TB();
//inputs and outputs for simulations
reg [9:0] D;
wire [3:0] Q;

//setting up values for simulation
initial
begin
    #00 D = 10'b0000000001;
    #10 D = 10'b0000000010;
    #10 D = 10'b0000000100;
    #10 D = 10'b0000001000;
    #10 D = 10'b0000010000;
    #10 D = 10'b0000100000;
    #10 D = 10'b0001000001;                         
    #10 D = 10'b0010000001;
    #10 D = 10'b0100000001;
    #10 D = 10'b1000000001;
    #10 $finish;
end 

//displaying values on TCL console
initial
begin
$display("Author: Sagheer Abbas Shah\n");
$monitor($time,"ns  Input = %b, BCD_Output = %b", D, Q);
end

//instantiation
DEC_priority_enc DB0(Q, D);

endmodule
