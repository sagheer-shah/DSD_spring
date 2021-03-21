`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)

module Mux_16to1_TB();
//dimensions and sizes
reg [15:0]ID;
reg [4:0] s1,s2;
wire OD;


initial 
begin
    #00 ID = 16'b1100110010101010; s1 = 5'b10100; s2 = 5'b10010;
    #10 ID = 16'b1100110101110001; s1 = 5'b10101; s2 = 5'b11110;
    #10 ID = 16'b1101010001000111; s1 = 5'b00100; s2 = 5'b10101;
    #10 ID = 16'b1101111111110111; s1 = 5'b11111; s2 = 5'b10011;
    #10 $finish;
end

initial
begin
$display("Author: Sagheer Abbas Shah");
$monitor($time,"ns, Input Data = %b, S1 = %b, S2 = %b, Output Data = %b ", ID, s1, s2, OD);
end

//instantiation
Mux_16to1 MX00(OD, s1, s2,ID);

endmodule
