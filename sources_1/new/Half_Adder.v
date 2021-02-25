`timescale 1ns / 1ps
//Auhtor: Sagheer Abbas Shah

module Half_Adder(sum, c_out, a, b);
//dimension and size
input a, b;
output sum, c_out;

//logic description
and and1(c_out, a, b);
xor xor1(sum, a, b);

endmodule
