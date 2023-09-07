module Half_Adder(
   	input A, B,
	output Sum, Cout
	);
	assign #9 Sum = A ^ B ;
	assign #12 Cout = A & B;
	
endmodule

module Full_Adder (
    input A,
    input B,
    input Carry_In,
    output Sum,
    output Carry_out
	);
    assign Carry_out = A & B | A & Carry_In | B & Carry_In;
    assign Sum = A ^ B ^ Carry_In;
endmodule

module Carry_Save_Adder_Multiplier4bits(
   	input [3:0] A, B,
	output [7:0] Product
    );
	 
	wire [5:0] SX;
	wire [10:0] CX;
	
	
	assign Product[0] = A[0] & B[0] ;
	Half_Adder HA1 (A[0] & B[1], A[1] & B[0], Product[1], CX[0]);		
	Half_Adder HA2 (A[3] & B[1], A[2] & B[2], SX[2], CX[3]);
	Half_Adder HA3 (CX[0], SX[0], Product[2], CX[4]);
	Half_Adder HA4 (SX[3], CX[4], Product[3], CX[8]);
	
	Full_Adder FA1 (A[2] & B[0], A[1] & B[1], A[0] & B[2], SX[0], CX[1]);
	Full_Adder FA2 (A[3] & B[0], A[2] & B[1], A[1] & B[2], SX[1], CX[2]);
	Full_Adder FA3 (A[0] & B[3], SX[1], CX[1], SX[3], CX[5]);
	Full_Adder FA4 (A[1] & B[3], SX[2], CX[2], SX[4], CX[6]);
	Full_Adder FA5 (A[3] & B[2], A[2] & B[3], CX[3], SX[5], CX[7]);
	Full_Adder FA6 (CX[5], SX[4], CX[8], Product[4], CX[9]);
	Full_Adder FA7 (CX[6], SX[5], CX[9], Product[5], CX[10]);
	Full_Adder FA8 (A[3] & B[3], CX[7], CX[10], Product[6], Product[7]);
	
endmodule