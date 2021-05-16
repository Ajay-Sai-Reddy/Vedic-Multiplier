`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:30:53 05/09/2020 
// Design Name: 
// Module Name:    sixbit_adder 
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
module sixbit_adder(a,b,s);
input [5:0]a;
input [5:0]b;
output [5:0]s;
wire [5:0]c;
half_adder a1(s[0],c[0],a[0],b[0]);
full_adder a2(s[1],c[1],a[1],b[1],c[0]);
full_adder a3(s[2],c[2],a[2],b[2],c[1]);
full_adder a4(s[3],c[3],a[3],b[3],c[2]);
full_adder a5(s[4],c[4],a[4],b[4],c[3]);
full_adder a6(s[5],c[5],a[5],b[5],c[4]);
endmodule
