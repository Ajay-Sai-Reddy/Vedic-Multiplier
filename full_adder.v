`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:51 05/09/2020 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(s,cout,a,b,c);
input a,b,c;
output s,cout;
xor a1(s,a,b,c);
and a2(p,a,b);
and a3(q,b,c);
and a4(r,a,c);
or a5(cout,p,q,r);
endmodule
