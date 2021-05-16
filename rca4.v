`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:34 05/09/2020 
// Design Name: 
// Module Name:    rca4 
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
module rca4(s,carry,a,b);
input [3:0]a,b;
output [3:0]s;
output carry;
wire [3:1]c;
full_adder a1(s[0],c[1],a[0],b[0],0);
full_adder a2(s[1],c[2],a[1],b[1],c[1]);
full_adder a3(s[2],c[3],a[2],b[2],c[2]);
full_adder a4(s[3],carry,a[3],b[3],c[3]);
endmodule
