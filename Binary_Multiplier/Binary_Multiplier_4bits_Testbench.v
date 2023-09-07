`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:30:50 01/13/2023
// Design Name:   Binary_Multiplier_4bits
// Module Name:   D:/University/5/Computer architucture/Project/Multiplier/Binary_Multiplier/Binary_Multiplier_4bits_Testbench.v
// Project Name:  Binary_Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Binary_Multiplier_4bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Binary_Multiplier_4bits_Testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] Product;

	// Instantiate the Unit Under Test (UUT)
	Binary_Multiplier_4bits uut (
		.A(A), 
		.B(B), 
		.Product(Product)
	);
	
	initial begin
		// Initialize Inputs
		A = 15;
		B = 14;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

