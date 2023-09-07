`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:21:35 01/11/2023 
// Design Name: 
// Module Name:    Carry_Select_Adder_16bits 
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
module Carry_Select_Adder_16bits(

	input [15:0] a,b,
	input cin,
	output [15:0] sum,
	output cout
	);

	wire [2:0] c;

	Carry_Select_Adder_4bits csa_slice0(
	(a[3:0]),
	(b[3:0]),
	(cin),
	(sum[3:0]),
	(c[0]));

	Carry_Select_Adder_4bits csa_slice1(
	(a[7:4]),
	(b[7:4]),
	(c[0]),
	(sum[7:4]),
	(c[1]));

	Carry_Select_Adder_4bits csa_slice2(
	(a[11:8]),
	(b[11:8]),
	(c[1]),
	(sum[11:8]), 
	(c[2]));

	Carry_Select_Adder_4bits csa_slice3(
	(a[15:12]),
	(b[15:12]),
	(c[2]),
	(sum[15:12]),
	(cout));
	
endmodule
