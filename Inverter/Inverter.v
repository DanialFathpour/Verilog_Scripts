module Invertor(
    input a,
    output w
    );
    supply1 VDD;
    supply0 GND;
    pmos #5 T1(w,VDD,a);
    nmos #3 T2(w,GND,a);
endmodule