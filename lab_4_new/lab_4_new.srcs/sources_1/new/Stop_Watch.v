`timescale 1ns / 1ps
//Author: Sagheer Abbas Shah

module Stop_Watch(anodes, cathodes, clk, reset);
input clk, reset;
output reg [7:0] anodes;
output reg [6:0] cathodes; 

parameter N = 19;  // 100 MHz /(2**16) ~= 1525 Hz  : 1/1525 Hz = 0.655 ms
 
// internal registers
reg [N-1:0] current_state;  
wire [N-1:0] next_state;

// 
reg [7:0] sseg;  

// current_state logic
always@(posedge clk, posedge reset)
begin
    if(reset)
        current_state <= 0;
    else 
        current_state <= next_state;     
end


// next_state logic
assign next_state = current_state + 1; 

wire [6:0] Outt0, Outt1, Outt2, Outt3, Outt4, Outt5, Outt6, Outt7; 


// output logic 
always@(*)
begin
    case(current_state[N-1:N-3])
    3'b000 : begin   anodes = 8'b11111110;//unit of seconds
                    cathodes = Outt0; end
    
    3'b001 : begin   anodes = 8'b11111101; //tens of seconds
                    cathodes = Outt1; end 
                    
    3'b010 : begin   anodes = 8'b11111011;//unit of minutes
                    cathodes = Outt2; end   
                                    
    3'b011 : begin   anodes = 8'b11110111;//tens of minutes
                    cathodes = Outt3; end  
    
    3'b100 : begin   anodes = 8'b11101111;//unit of hours
                    cathodes = Outt4; end
                    
    3'b101 : begin   anodes = 8'b11011111;//tens of hours
                    cathodes = Outt5; end
                    
    3'b110 : begin   anodes = 8'b10111111;//hundreds of hours
                    cathodes = Outt6; end
                    
    3'b111 : begin   anodes = 8'b01111111;//thousands of hours
                    cathodes = Outt7; end
                         
    default : begin anodes = 8'b11111111;
                    cathodes = 7'b1111111; end                                 
          
    endcase
end
//instantiations will come under for seven segment and time_calc

endmodule

//-----------------------------------------------------------------------------------------

//module for calculating time
module time_calc(hours, minutes, seconds, clk, reset, en);
//dimension and sizes for inputs and outputs
input clk, reset, en;
output [7:0] minutes, seconds;
output [15:0] hours;

//wires and internal registers and parameters
parameter N = 28;
wire max_tick;
reg [N-1:0] r_reg, r_next;

always@(posedge clk, posedge reset)
begin
    if (reset)
        r_reg <= 0;
    else
        r_reg <= r_next;
        
end
// next_state logic
always@(*)
begin
    if (en)          // up counter
        r_next = r_reg + 1;    
    else 
        r_next = r_reg;
end 

//output logic
assign max_tick = (r_reg == 2**N-1) ? 1 : 0; //the rest will come under after the concept is clear


endmodule