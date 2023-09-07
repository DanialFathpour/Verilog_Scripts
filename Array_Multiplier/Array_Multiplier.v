`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:52:37 01/13/2023 
// Design Name: 
// Module Name:    Array_Multiplier 
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
module Array_Multiplier(
	input [3:0]A, B, 
	output [7:0]Product
    );
	
	wire [14:0] CX;
	wire [8:0] SX;
	
	Array_Multiplier_Cell AMC1 (A[0], B[0], 0, 0, Product[0],CX[0]); 
	Array_Multiplier_Cell AMC2 (A[0], B[1], 0, CX[0] , SX[0],CX[1]); 
	Array_Multiplier_Cell AMC3 (A[0], B[2], 0, CX[1], SX[1],CX[2]); 
	Array_Multiplier_Cell AMC4 (A[0], B[3], 0, CX[2], SX[2],CX[3]); 
	
	Array_Multiplier_Cell AMC5 (A[1], B[0], SX[0], 0, Product[1], CX[4]); 
	Array_Multiplier_Cell AMC6 (A[1], B[1], SX[1], CX[4], SX[3], CX[5]); 
	Array_Multiplier_Cell AMC7 (A[1], B[2], SX[2], CX[5], SX[4], CX[6]); 
	Array_Multiplier_Cell AMC8 (A[1], B[3], CX[3], CX[6], SX[5], CX[7]); 
	
	Array_Multiplier_Cell AMC9 (A[2], B[0], SX[3], 0, Product[2], CX[8]); 
	Array_Multiplier_Cell AMC10 (A[2], B[1], SX[4], CX[8], SX[6], CX[9]); 
	Array_Multiplier_Cell AMC11 (A[2], B[2], SX[5], CX[9], SX[7], CX[10]); 
	Array_Multiplier_Cell AMC12 (A[2], B[3], CX[7], CX[10], SX[8], CX[11]); 
	
	Array_Multiplier_Cell AMC13 (A[3], B[0], SX[6], 0, Product[3], CX[12]); 
	Array_Multiplier_Cell AMC14 (A[3], B[1], SX[7], CX[12], Product[4], CX[13]); 
	Array_Multiplier_Cell AMC15 (A[3], B[2], SX[8], CX[13], Product[5], CX[14]); 
	Array_Multiplier_Cell AMC16 (A[3], B[3], CX[11], CX[14], Product[6], Product[7]); 
	
endmodule
