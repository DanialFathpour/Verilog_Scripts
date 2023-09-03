`timescale  1ns/1ns
`include "HA.v"

module HATB;
    reg A = 0;
    reg B = 0;

    wire Sum;
    wire Carry_out;

    Half_Adder HA1 (A, B, Sum, Carry_out);

    parameter time_limit = 100;

    initial begin
        $dumpfile("Half_Adder.vcd");
        $dumpvars(0, HATB);
        #10
        A = 1; B = 0;
        #30
        A = 1; B = 1;
        #100
        A = 0; B = 0;
        #100
        $dumpoff;
        $finish;
    end
endmodule