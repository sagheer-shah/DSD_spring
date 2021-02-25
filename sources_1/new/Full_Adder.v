`timescale 1ns / 1ps


//Auhtor: Sagheer Abbas Shah

module Full_Adder(sum, c_out, a, b, c_in);
//dimensions and size
input a, b, c_in;
output sum, c_out;

//wires
wire s1,c1,s2;

//logic discription
//  sum
xor xor1(s1, a, b);
xor xor2(sum, s1, c_in);
// c_out
and and1(c1, a, b);
and and2(s2, s1, c_in);
xor xor3(c_out, s2, c1);

endmodule
