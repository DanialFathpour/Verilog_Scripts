module Half_Adder(
    input A, B,
	output Sum, Cout
	);
	assign #9 Sum = A ^ B ;
	assign #12 Cout = A & B;
endmodule