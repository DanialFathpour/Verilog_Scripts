`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:25:04 01/12/2023
// Design Name:   Carry_Look_Ahead_Adder_4bits
// Module Name:   D:/University/5/Computer architucture/Project/Adder/Carry_Lookahead_Adder/Carry_Look_Ahead_Adder_4bits_Testbench.v
// Project Name:  Carry_Lookahead_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Carry_Look_Ahead_Adder_4bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Carry_Look_Ahead_Adder_4bits_Testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;
	wire PG;
	wire GG;

	// Instantiate the Unit Under Test (UUT)
	Carry_Look_Ahead_Adder_4bits uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout), 
		.PG(PG), 
		.GG(GG)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0101;
		B = 4'b0110;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

