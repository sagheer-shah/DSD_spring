`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)

module Adder_4bit_a_TB();

reg [3:0] A, B;
reg c_in;
wire [3:0] sum;
wire carry_out;

initial
begin
    #00 A = 4'b0100; B = 4'b0011; c_in = 1'b0;
    #10 A = 4'b1100; B = 4'b1111; c_in = 1'b0;
    #10 A = 4'b0111; B = 4'b0111; c_in = 1'b0;
    #10 A = 4'b0101; B = 4'b1011; c_in = 1'b0;
    #10 $finish;
end

initial
begin
$display("Author: Sagheer Abbas Shah\n");
$monitor($time, "ns, A = %d, B = %d, sum = %d", A, B, {carry_out, sum});
end

//instantiate
Adder_4bit_a AA0(carry_out, c_out, sum, A, B, c_in);
endmodule
