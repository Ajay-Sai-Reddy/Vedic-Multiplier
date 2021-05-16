`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:00 05/09/2020 
// Design Name: 
// Module Name:    nrml_multiplier 
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
module nrml_multiplier(x,y,p);
input [3:0]x,y;
output [7:0]p;
wire [3:0] c1,c2,c3,s1,s2,s3,xy0,xy1,xy2,xy3;
assign xy0[0]=x[0]&y[0];
assign xy0[1]=x[1]&y[0];
assign xy0[2]=x[2]&y[0];
assign xy0[3]=x[3]&y[0];

assign xy1[0]=x[0]&y[1];
assign xy1[1]=x[1]&y[1];
assign xy1[2]=x[2]&y[1];
assign xy1[3]=x[3]&y[1];

assign xy2[0]=x[0]&y[2];
assign xy2[1]=x[1]&y[2];
assign xy2[2]=x[2]&y[2];
assign xy2[3]=x[3]&y[2];

assign xy3[0]=x[0]&y[3];
assign xy3[1]=x[1]&y[3];
assign xy3[2]=x[2]&y[3];
assign xy3[3]=x[3]&y[3];

half_adder a1 (s1[0],c1[0],xy0[1],xy1[0]);
full_adder a2 (s1[1],c1[1],xy0[2],xy1[1],c1[0]);
half_adder a3 (s2[0],c2[0],xy2[0],s1[1]);
full_adder a4 (s1[2],c1[2],c1[1],xy0[3],xy1[2]);
full_adder a5 (s2[1],c2[1],c2[0],xy2[1],s1[2]);
half_adder a6 (s3[0],c3[0],xy3[0],s2[1]);
half_adder a7 (s1[3],c1[3],c1[2],xy1[3]);
full_adder a8 (s2[2],c2[2],c2[1],xy2[2],s1[3]);
full_adder a9 (s3[1],c3[1],c3[0],xy3[1],s2[2]);
full_adder a10 (s2[3],c2[3],c2[2],xy2[3],c1[3]);
full_adder a11 (s3[2],c3[2],c3[1],xy3[2],s2[3]);
full_adder a12 (s3[3],c3[3],c3[2],xy3[3],c2[3]);

assign p[0]=xy0[0];
assign p[1]=s1[0];
assign p[2]=s2[0];
assign p[3]=s3[0];
assign p[4]=s3[1];
assign p[5]=s3[2];
assign p[6]=s3[3];
assign p[7]=c3[3];

endmodule
