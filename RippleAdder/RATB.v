`timescale  1ns/1ns
`include "RA.v"

module RATB;
    reg [3:0] A = 0'b0000, [3:0] B = 0'b0000, Cin = 0;

    wire [3:0] Sum, Cout;

    Ripple_Adder_4bits RA1 (A, B, Cin, Sum, Cout);

    parameter time_limit = 100;

    initial begin
        $dumpfile("RA.vcd");
        $dumpvars(0, RATB);
        #10
        A = 0'b0001;
        B = 0'b0110;
        C = 1;
        #80
        A = 0'b0101;
        B = 0'b1110;
        C = 0;
        #100
        $dumpoff;
        $finish;
    end
endmodule