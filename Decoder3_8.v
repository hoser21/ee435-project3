// ---------------------------------------------------------------------
//    Module:     1-bit 3:8 Decoder
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module decoder3_8 (d, i, en);

output [7:0] d;
input [2:0] i;

wire i2_not;
wire [7:0] e;

a1 not(i2_not, i[2]);

a2 decoder2_4(e[3], e[2], e[1], e[0], i[1], i[0], i2_not);
a3 decoder2_4(e[7], e[6], e[5], e[4], i[1], i[0], i2);

a4 and(d[0], e[0], en);
a5 and(d[1], e[1], en);
a6 and(d[2], e[2], en);
a7 and(d[3], e[3], en);
a8 and(d[4], e[4], en);
a9 and(d[5], e[5], en);
a10 and(d[6], e[6], en);
a11 and(d[7], e[7], en);

endmodule