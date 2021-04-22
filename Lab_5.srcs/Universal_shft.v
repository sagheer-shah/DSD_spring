`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah

module Universal_shft
#(parameter N=8)
    (
    input wire clk, reset, 
    input wire [1:0] ctrl,
    input wire [N-1:0] d,
    output reg [N-1:0] q,
    output reg Sout
    );
    

//signal declaration
reg [N-1:0] r_reg, r_next;

//central block
always@(posedge clk, posedge reset)
begin
    if(reset)
        r_reg <= 0;
    else
        r_reg <= r_next;
end


//next state logic
always@(*)
begin
    case(ctrl)
    2'b00: r_next = r_reg;
    2'b01: r_next = {d[N-1], r_reg[N-1:1]}; //right
    2'b10: r_next = {r_reg[N-2:0], d[0]};   //left
    default: r_next = d;
    endcase
end

//output logic 
always@(*)
begin
    case(ctrl)
    2'b00: q = r_reg;
    2'b01: Sout = r_reg[0]; //right
    2'b10: Sout = r_reg[7]; //left
    default: q = r_reg;
    endcase
end
endmodule
