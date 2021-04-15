`timescale 1ns / 1ps
//author: Sagheer

module clk_divider(clkin, clkout);
input clkin;
output reg clkout;


reg [31:0] counter;

initial begin
clkout = 1'b0; // blocking assignment 
counter = 32'h00000000;

end 

always@(posedge clkin)
begin
    if (counter == 32'h5F5E100)begin
    counter <= 1'b0;   // non-blocking assignment 
    clkout <= ~ clkout; end
    else 
    begin
    counter <= counter + 1;
    
    end 
    
end

endmodule 

//module TB;
//reg clkin;
//wire clkout; 
//wire [31:0] counter;

//parameter T = 10; // 10 ns

//initial
//clkin = 0;
//always 
//#(T/2) clkin = ~ clkin;

//clk_divider inst0(clkin, clkout, counter);

//endmodule 



//////////////////////////////////////
module Top(clkIn, In, q0, q1, q2, q3);
input clkIn, In;
output q0, q1, q2, q3;
wire clkout;

clk_divider inst0(clkIn, clkout);
shift_nonblocking inst1(q0, q1, q2, q3, In, clkout);



endmodule


module shift_nonblocking(q0, q1, q2, out, in, clk);
input in, clk;
output reg q0, q1, q2, out; 


always@(posedge clk)
begin
    q0  <= in;
    q1  <= q0;
    q2  <= q1;
    out <= q2;
end 
endmodule
