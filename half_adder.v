`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:06 05/09/2020 
// Design Name: 
// Module Name:    half_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module half_adder(s,c,a,b);
input a,b;
output s,c;
and(c,a,b);
xor (s,a,b);
endmodule
