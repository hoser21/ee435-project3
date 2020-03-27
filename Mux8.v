// ---------------------------------------------------------------------
//    Module:     1-bit 8:1 Mux
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module mux8_1 (z, i, s);

output z;
input [7:0] i;
input [2:0] s;

wire a, b;

mux4_1 a1(a, i[0], i[1], i[2], i[3], s[0], s[1]);
mux4_1 a2(b, i[4], i[5], i[6], i[7], s[0], s[1]);
mux2_1 a3(z, a, b, s[2]);

endmodule
