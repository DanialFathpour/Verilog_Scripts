`timescale  1ns/1ns
`include "Mux.v"

module MuxTB;
    reg A = 0;

    wire W;

    Mux M1 (A, B, S, W);

    parameter time_limit = 100;

    initial begin
        $dumpfile("Mux.vcd");
        $dumpvars(0, MuxTB);
        #10
        A = 1;
        #30
        A = 0;
        #100
        $dumpoff;
        $finish;
    end
endmodule