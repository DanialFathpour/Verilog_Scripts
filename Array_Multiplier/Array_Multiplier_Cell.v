`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:10:36 01/13/2023 
// Design Name: 
// Module Name:    Array_Multiplier_Cell 
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
module Array_Multiplier_Cell(
   input A, B, Sumin, Cin,
	output Sumout, Cout
	);
	
	Full_Adder FA (Sumin, A & B, Cin, Sumout, Cout);
	
endmodule
