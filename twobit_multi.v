`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:05 05/09/2020 
// Design Name: 
// Module Name:    twobit_multi 
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
module twobit_multi(a,b,c);
input [1:0]a;
input [1:0]b;
output wire [3:0]c;
wire p,q,r,s;
and u1(c[0],a[0],b[0]);
and u2(p,a[0],b[1]);
and u3(q,a[1],b[0]);
half_adder u4(c[1],r,p,q);
and u5(s,a[1],b[1]);
half_adder u6(c[2],c[3],r,s);
endmodule
