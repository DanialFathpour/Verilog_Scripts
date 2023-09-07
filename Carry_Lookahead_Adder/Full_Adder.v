`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:26 01/11/2023 
// Design Name: 
// Module Name:    Full_Adder 
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
module Full_Adder(
	input A, B, Cin,
	output Sum, Cout, CP, CG
	);
	assign #12 Sum = A ^ B ^ Cin;
	assign #15 Cout = ((A ^ B) & Cin) | (A & B);
	assign #2 CP = A | B;
	assign #3 CG = A & B;
endmodule
 