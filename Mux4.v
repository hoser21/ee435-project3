// ---------------------------------------------------------------------
//    Module:     1-bit 4:1 Mux
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module mux4_1 (z, i0, i1, i2, i3, s0, s1);

output z;
input i0, i1, i2, i3, s0, s1;

wire a, b;

mux2_1 a1(a, i0, i1, s0);
mux2_1 a2(b, i2, i3, s0);
mux2_1 a3(z, a, b, s1);

endmodule
