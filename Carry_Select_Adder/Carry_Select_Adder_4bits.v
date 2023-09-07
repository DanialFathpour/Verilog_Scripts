`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:12 01/11/2023 
// Design Name: 
// Module Name:    Carry_Select_Adder_4bits 
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
module Carry_Select_Adder_4bits(
   input [3:0] A,
   input [3:0] B,
   input Cin,
   output [3:0] S,
   output Cout
   );
	wire [3:0] CX0,CX1;
	wire [3:0] S0,S1;
	
	Full_Adder FA1 (A[0], B[0], 0, S0[0], CX0[0]);
	Full_Adder FA2 (A[1], B[1], CX0[0], S0[1], CX0[1]);
	Full_Adder FA3 (A[2], B[2], CX0[1], S0[2], CX0[2]);
	Full_Adder FA4 (A[3], B[3], CX0[2], S0[3], CX0[3]);
	
	Full_Adder FA5 (A[0], B[0], 1, S1[0], CX1[0]);
	Full_Adder FA6 (A[1], B[1], CX1[0], S1[1], CX1[1]);
	Full_Adder FA7 (A[2], B[2], CX1[1], S1[2], CX1[2]);
	Full_Adder FA8 (A[3], B[3], CX1[2], S1[3], CX1[3]);
	
	Mux2to1 Mux1 (S0[0], S1[0], Cin, S[0]);
	Mux2to1 Mux2 (S0[1], S1[1], Cin, S[1]);
	Mux2to1 Mux3 (S0[2], S1[2], Cin, S[2]);
	Mux2to1 Mux4 (S0[3], S1[3], Cin, S[3]);
	Mux2to1 MuxC (CX0[3], CX1[3], Cin, Cout);
endmodule
