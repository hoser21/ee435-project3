// ---------------------------------------------------------------------
//    Module:     1-bit 4:16 Decoder
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module decoder4_16 (d, i, en);

output [15:0] d;
input [3:0] i;

wire i3_not;
wire [15:0] e;

a1 not(i3_not, i[3]);

a2 decoder3_8(e[7:0], i[2:0], i3_not);
a3 decoder3_8(e[15:8], i[2:0], i3);

a4 and(d[0], e[0], en);
a5 and(d[1], e[1], en);
a6 and(d[2], e[2], en);
a7 and(d[3], e[3], en);
a8 and(d[4], e[4], en);
a9 and(d[5], e[5], en);
a10 and(d[6], e[6], en);
a11 and(d[7], e[7], en);
a12 and(d[8], e[8], en);
a13 and(d[9], e[9], en);
a14 and(d[10], e[10], en);
a15 and(d[11], e[11], en);
a16 and(d[12], e[12], en);
a17 and(d[13], e[13], en);
a18 and(d[14], e[14], en);
a19 and(d[15], e[15], en);

endmodule