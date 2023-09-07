`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:09 01/12/2023 
// Design Name: 
// Module Name:    Carry_Look_Ahead_Adder_16bits 
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
module Carry_Look_Ahead_Adder_16bits(
   input [15:0] A,
   input [15:0] B,
   input Cin,
   output [15:0] S,
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
	
	Carry_Look_Ahead_Adder_4bits CLA1 (A[3:0], B[3:0], C[0], S[3:0], CX[0], P[0], G[0]);
	Carry_Look_Ahead_Adder_4bits CLA2 (A[7:4], B[7:4], C[1], S[7:4], CX[1], P[1], G[1]);
	Carry_Look_Ahead_Adder_4bits CLA3 (A[11:8], B[11:8], C[2], S[11:8], CX[2], P[2], G[2]);           
	Carry_Look_Ahead_Adder_4bits CLA4 (A[15:12], B[15:12], C[3], S[15:12], Cout, P[3], G[3]); 

endmodule
