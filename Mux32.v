// ---------------------------------------------------------------------
//    Module:     1-bit 32:1 Mux
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module mux32_1 (z, i, s);

output z;
input [31:0] i;
input [4:0] s;

wire a, b;

mux16_1 a1(a, i[15:0], s[3:0]);
mux16_1 a2(b, i[31:16], s[3:0]);
mux2_1 a3(z, a, b, s[4]);

endmodule