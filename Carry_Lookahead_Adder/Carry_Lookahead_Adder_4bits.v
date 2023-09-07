`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:02:04 01/11/2023 
// Design Name: 
// Module Name:    Carry_Lookahead_Adder_4bits 
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
module Carry_Look_Ahead_Adder_4bits(
	input [3:0] A,
   input [3:0] B,
   input Cin,
   output [3:0] S,
   output Cout,
	output PG,
	output GG
   );
	
	wire C[4:0];
	wire CX[2:0];
	wire [3:0]P, G;
	
	assign C[0] = Cin;
	
	assign PG = P[0] & P[1] & P[2] & P[3] ;
	assign GG = (G[3] | (G[2] & P[3]) | (G[1] & P[2] & P[3]) | (G[0] & P[1] & P[2] & P[3])) ;
	
	assign C[1] = G[0] | (P[0] & C[0]);
	assign C[2] = G[1] | (G[0] & P[1]) | (C[0] & P[0] & P[1]);
	assign C[3] = G[2] | (G[1] & P[2]) | (G[0] & P[1] & P[2]) | (C[0] & P[0] & P[1] & P[2]);
	assign C[4] = G[3] | (G[2] & P[3]) | (G[1] & P[2] & P[3]) | (G[0] & P[1] & P[2] & P[3]) | (C[0] & P[0] & P[1] & P[2] & P[3]);
	
	Full_Adder FA1 (A[0], B[0], C[0], S[0], CX[0], P[0], G[0]);
	Full_Adder FA2 (A[1], B[1], C[1], S[1], CX[1], P[1], G[1]);
	Full_Adder FA3 (A[2], B[2], C[2], S[2], CX[2], P[2], G[2]);           
	Full_Adder FA4 (A[3], B[3], C[3], S[3], Cout, P[3], G[3]); 
	
endmodule
