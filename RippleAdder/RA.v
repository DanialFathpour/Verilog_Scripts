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

module Ripple_Adder_4bits(
	input [3:0] A, B,
	input Cin,
	output [3:0] Sum,
	output Cout
    );
	wire C[2:0];
	Full_Adder FA1 (A[0], B[0], Cin, Sum[0], C[0]);
	Full_Adder FA2 (A[1], B[1], C[0], Sum[1], C[1]);
	Full_Adder FA3 (A[2], B[2], C[1], Sum[2], C[2]);
	Full_Adder FA4 (A[3], B[3], C[2], Sum[3], Cout);
endmodule