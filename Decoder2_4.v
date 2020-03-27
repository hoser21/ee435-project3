// ---------------------------------------------------------------------
//    Module:     1-bit 2:4 Decoder
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module decoder2_4 (d3, d2, d1, d0, i1, i0, en);

output d3, d2, d1, d0;
input i1, i0, en;

wire i1_not, i0_not;
wire e0, e1, e2, e3;

a1 not(i1_not, i1);
a2 not(i0_not, i0);

a3 and(e0, i1_not, i0_not);
a4 and(e1, i1_not, i0);
a5 and(e2, i1, i0_not);
a6 and(e3, i1, i0);

a7 and(d0, e0, en);
a8 and(d1, e1, en);
a9 and(d2, e2, en);
a10 and(d3, e3, en);

endmodule