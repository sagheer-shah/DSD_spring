`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah (041-18-0016)


module V_4to1Mux_TB();
//dimesions and sizes
reg [3:0] D_in;
reg [1:0] s;
wire D_out;

//initiating signals for simulation
initial
begin
    #00 s=2'b00; D_in=4'bxxx0;
    #10 s=2'b00; D_in=4'bxxx1;
    #10 s=2'b01; D_in=4'bxx0x;
    #10 s=2'b01; D_in=4'bxx1x;
    #10 s=2'b10; D_in=4'bx0xx;
    #10 s=2'b10; D_in=4'bx1xx;
    #10 s=2'b11; D_in=4'b0xxx;
    #10 s=2'b11; D_in=4'b1xxx;
    #10 $finish;
end

//displaying and monitoring outputs on TCL console
initial
begin
$display("Author: Sagheer Abbas Shah\n");
$monitor($time,"ns, S = %b, D_in = %b, Output = %b", s, D_in, D_out);
end
//instantiation
B_4to1Mux BM0(D_out, s, D_in);

endmodule

