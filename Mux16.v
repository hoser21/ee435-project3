// ---------------------------------------------------------------------
//    Module:     1-bit 16:1 Mux
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module mux16_1 (z, i, s);

output z;
input [15:0] i;
input [3:0] s;

wire a, b;

mux8_1 a1(a, i[7:0], s[2:0]);
mux8_1 a2(b, i[15:8], s[2:0]);
mux2_1 a3(z, a, b, s[3]);

endmodule