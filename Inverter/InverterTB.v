`timescale  1ns/1ns
`include "Inverter.v"

module InverterTB;
    reg A = 0;

    wire W;

    Invertor I1 (A, W);

    parameter time_limit = 100;

    initial begin
        $dumpfile("Inverter.vcd");
        $dumpvars(0, InverterTB);
        #10
        A = 1;
        #30
        A = 0;
        #100
        $dumpoff;
        $finish;
    end
endmodule