`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:51:13 01/13/2023 
// Design Name: 
// Module Name:    Binary_Multiplier_4bits 
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
module Binary_Multiplier_4bits(
	input [3:0] A, B,
	output [7:0] Product
    );
	 
	wire [3:0] Aug [3:0];
	wire [2:0] SX [3:0];
	wire [2:0] CX;
	
	assign Aug [0][3:0] = {4{A[0]}} & B ; 
	assign Aug [1][3:0] = {4{A[1]}} & B ; 
	assign Aug [2][3:0] = {4{A[2]}} & B ; 
	assign Aug [3][3:0] = {4{A[3]}} & B ; 	
	
	assign Product[0] = A[0] & B[0] ;
	Ripple_Adder_4bits RA1 ({0, Aug[0][3:1]}, Aug [1][3:0], 0, {SX[0][2:0], Product[1]}, CX[0]);
	Ripple_Adder_4bits RA2 ( Aug[2][3:0],{CX[0], SX[0][2:0]} , 0, {SX[1][2:0], Product[2]}, CX[1]);
	Ripple_Adder_4bits RA3 ( Aug[3][3:0],{CX[1], SX[1][2:0]} , 0,  Product[6:3], Product[7]);
	
endmodule
