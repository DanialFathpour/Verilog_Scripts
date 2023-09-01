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