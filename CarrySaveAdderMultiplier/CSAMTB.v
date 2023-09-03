`timescale  1ns/1ns
`include "CSAM.v"

module CSAMTB;
    reg [3:0] A = 0'b0000, [3:0] B = 0'b0000;

    wire [7:0] Sum;

    Carry_Save_Adder_Multiplier4bits CSAM1 (A, B, Sum);

    parameter time_limit = 100;

    initial begin
        $dumpfile("CSAM.vcd");
        $dumpvars(0, CSAMTB);
        #10
        A = 0'b0001;
        B = 0'b0110;
        #80
        A = 0'b0101;
        B = 0'b1110;    
        #100
        $dumpoff;
        $finish;
    end
endmodule