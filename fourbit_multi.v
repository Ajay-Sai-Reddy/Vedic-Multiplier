`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:29 05/09/2020 
// Design Name: 
// Module Name:    fourbit_multi 
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
module fourbit_multi(a,b,c);
input [3:0]a,b;
output [7:0]c;
wire [3:0]s1,s2,s3,s4,s7;
wire [4:0]s5;
wire [5:0]s6,s8,s9,s10;
twobit_multi a1(a[1:0],b[1:0],s1);
twobit_multi a2(a[3:2],b[1:0],s2);
twobit_multi a3(a[1:0],b[3:2],s3);
twobit_multi a4(a[3:2],b[3:2],s4);
assign c[1:0]=s1[1:0];
assign s7={2'b00,s1[3:2]};
fourbit_adder a5(s2,s7,s5[3:0],s5[4]);
assign s8={2'b00,s3[3:0]};
assign s9={s4[3:0],2'b00};
sixbit_adder a6(s8,s9,s6);
assign s10={1'b0,s5};
sixbit_adder a7(s6,s10,c[7:2]);
endmodule 
