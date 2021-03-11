`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah


module SSD_Driver_TB();
//dimesnion and sizes
reg [3:0] in;
wire [6:0] out;
wire cc;


//initiating signal
initial
begin
    #00 in = 4'b0000; 
    #10 in = 4'b0001;
    #10 in = 4'b0010;
    #10 in = 4'b0011;
    #10 in = 4'b0100;
    #10 in = 4'b0101;
    #10 in = 4'b0110;
    #10 in = 4'b0111;
    #10 in = 4'b1000;
    #10 in = 4'b1001;
    #10 $finish;
end

initial
begin
$display("Author: Sagheer Abbas Shah\n");
$monitor($time,"ns input = %b, output = %b", in, out);
end

//instantiation
SSD_Driver SSD1(out, cc, in);

endmodule
