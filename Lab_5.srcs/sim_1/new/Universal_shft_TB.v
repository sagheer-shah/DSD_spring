`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah

module Universal_shft_TB;
parameter N = 8;
//inputs and outputs declaration
 reg clk, reset;
reg [1:0] ctrl;
reg [N-1:0] d;
wire [N-1:0] q;

//setting up simulation
initial
begin
    clk = 0;
end

//instantiation
Universal_shft UNS0(clk, reset, ctrl, d, q);

//clock generation
initial
begin
    clk = 0;
end
always
#10 clk = ~clk;


initial 
begin
//reset
reset = 0;
#10 reset = 1;
//unreset snd test functionality
 @(negedge clk) reset = 0;
//------------------
// SIPO, left shifting
   @(negedge clk); ctrl = 2'b10; d[0] = 1'b1;
   repeat(8) @(negedge clk);    
//-----------------
reset = 1;
//SIPO, right shifting
 @(negedge clk); reset = 0; ctrl = 2'b01; d[7] = 1'b1;
 repeat(8) @(negedge clk);
 //-------------
reset = 1;
 //SIPO, right shifting
  @(negedge clk); reset = 0; ctrl = 2'b11; d = 8'b10101101;
  
 //-------------
 reset = 1;
 //PIPO, left shifting
 @(negedge clk); reset = 0;ctrl = 2'b10; d = 8'b10101101;
 repeat(8) @(negedge clk); 
 //----------------
  reset = 1;
 //PIPO, right shifting
 @(negedge clk); reset = 0;ctrl = 2'b01; d = 8'b10101101;
 repeat(8) @(negedge clk); 
 $stop;  
end


endmodule
