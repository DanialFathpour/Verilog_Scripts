module Mux(
    input a,
    input b,
    input s,
    output o
    );
    //assign #30 o = (~s & a) | (s & b);
    assign #30 o = ~s ? a : b;
endmodule