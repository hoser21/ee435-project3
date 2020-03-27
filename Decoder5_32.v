// ---------------------------------------------------------------------
//    Module:     1-bit 5:32 Decoder
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module decoder4_16 (d, i, en);

output [32:0] d;
input [4:0] i;

wire i4_not;
wire [32:0] e;

a1 not(i4_not, i[4]);

a2 decoder4_16(e[15:0], i[3:0], i4_not);
a3 decoder4_16(e[32:16], i[3:0], i4);

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

a20 and(d[16], e[16], en);
a21 and(d[17], e[17], en);
a22 and(d[18], e[18], en);
a23 and(d[19], e[19], en);
a24 and(d[20], e[20], en);
a25 and(d[21], e[21], en);
a26 and(d[22], e[22], en);
a27 and(d[23], e[23], en);
a28 and(d[24], e[24], en);
a29 and(d[25], e[25], en);
a30 and(d[26], e[26], en);
a31 and(d[27], e[27], en);
a32 and(d[28], e[28], en);
a33 and(d[29], e[29], en);
a34 and(d[30], e[30], en);
a35 and(d[31], e[31], en);

endmodule