`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah

module Universal_shft
#(parameter N=8)
    (
    input wire clk, reset,
    input wire [1:0] ctrl,
    input wire [N-1:0] d,
    output wire [N-1:0] q
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
    2'b01: r_next = {d[N-1], r_reg[N-1:1]};
    2'b10: r_next = {r_reg[N-2:0], d[0]};
    default: r_next = d;
    endcase
end

//output logic
assign q = r_reg;

endmodule
