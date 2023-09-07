`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:58:49 01/14/2023
// Design Name:   Array_Multiplier
// Module Name:   D:/University/5/Computer architucture/Project/Multiplier/Array_Multiplier/Array_Multiplier_Testbench.v
// Project Name:  Array_Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Array_Multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Array_Multiplier_Testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] Product;

	// Instantiate the Unit Under Test (UUT)
	Array_Multiplier uut (
		.A(A), 
		.B(B), 
		.Product(Product)
	);

	initial begin
		// Initialize Inputs
		A = 4'b1111;
		B = 4'b1110;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

