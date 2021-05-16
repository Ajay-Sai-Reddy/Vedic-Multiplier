`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:21:08 05/09/2020 
// Design Name: 
// Module Name:    fourbit_adder 
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
module fourbit_adder(a,b,s,cout);
input [3:0]a;
input [3:0]b;
output [3:0]s;
output cout;
wire [2:0]c;
half_adder a1(s[0],c[0],a[0],b[0]);
full_adder a2(s[1],c[1],a[1],b[1],c[0]);
full_adder a3(s[2],c[2],a[2],b[2],c[1]);
full_adder a4(s[3],cout,a[3],b[3],c[2]);
endmodule
