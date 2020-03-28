// ---------------------------------------------------------------------
//    Module:     32-bit Register 
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schedel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------


`timescale 1ns / 1ns

module registerFile32 (a, b, clk, d, w_sel, w_en, a_sel, b_sel);

output [31:0] a, b;
input [31:0] d;
input clk, w_en;
input [4:0] w_sel, a_sel, b_sel;

wire [31:0] q [31:0];
wire [31:0] en_int;

decoder5_32 enable_select (en_int, w_sel, w_en);
register32 reg0 (q[0], clk, d, en_int[0]);
register32 reg1 (q[1], clk, d, en_int[1]);
register32 reg2 (q[2], clk, d, en_int[2]);
register32 reg3 (q[3], clk, d, en_int[3]);
register32 reg4 (q[4], clk, d, en_int[4]);
register32 reg5 (q[5], clk, d, en_int[5]);
register32 reg6 (q[6], clk, d, en_int[6]);
register32 reg7 (q[7], clk, d, en_int[7]);
register32 reg8 (q[8], clk, d, en_int[8]);
register32 reg9 (q[9], clk, d, en_int[9]);
register32 reg10 (q[10], clk, d, en_int[10]);
register32 reg11 (q[11], clk, d, en_int[11]);
register32 reg12 (q[12], clk, d, en_int[12]);
register32 reg13 (q[13], clk, d, en_int[13]);
register32 reg14 (q[14], clk, d, en_int[14]);
register32 reg15 (q[15], clk, d, en_int[15]);
register32 reg16 (q[16], clk, d, en_int[16]);
register32 reg17 (q[17], clk, d, en_int[17]);
register32 reg18 (q[18], clk, d, en_int[18]);
register32 reg19 (q[19], clk, d, en_int[19]);
register32 reg20 (q[20], clk, d, en_int[20]);
register32 reg21 (q[21], clk, d, en_int[21]);
register32 reg22 (q[22], clk, d, en_int[22]);
register32 reg23 (q[23], clk, d, en_int[23]);
register32 reg24 (q[24], clk, d, en_int[24]);
register32 reg25 (q[25], clk, d, en_int[25]);
register32 reg26 (q[26], clk, d, en_int[26]);
register32 reg27 (q[27], clk, d, en_int[27]);
register32 reg28 (q[28], clk, d, en_int[28]);
register32 reg29 (q[29], clk, d, en_int[29]);
register32 reg30 (q[30], clk, d, en_int[30]);
register32 reg31 (q[31], clk, d, en_int[31]);

mux32_32 muxA (a, q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7],
                    q[8], q[9], q[10], q[11], q[12], q[13], q[14], q[15],
                    q[16], q[17], q[18], q[19], q[20], q[21], q[22], q[23],
                    q[24], q[25], q[26], q[27], q[28], q[29], q[30], q[31], a_sel);
mux32_32 muxB (b, q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7],
                    q[8], q[9], q[10], q[11], q[12], q[13], q[14], q[15],
                    q[16], q[17], q[18], q[19], q[20], q[21], q[22], q[23],
                    q[24], q[25], q[26], q[27], q[28], q[29], q[30], q[31], b_sel);

// mux32_1 muxA0 (a[0], q[0], a_sel);
// mux32_1 muxA1 (a[1], q[1], a_sel);
// mux32_1 muxA2 (a[2], q[2], a_sel);
// mux32_1 muxA3 (a[3], q[3], a_sel);
// mux32_1 muxA4 (a[4], q[4], a_sel);
// mux32_1 muxA5 (a[5], q[5], a_sel);
// mux32_1 muxA6 (a[6], q[6], a_sel);
// mux32_1 muxA7 (a[7], q[7], a_sel);
// mux32_1 muxA8 (a[8], q[8], a_sel);
// mux32_1 muxA9 (a[9], q[9], a_sel);
// mux32_1 muxA10 (a[10], q[10], a_sel);
// mux32_1 muxA11 (a[11], q[11], a_sel);
// mux32_1 muxA12 (a[12], q[12], a_sel);
// mux32_1 muxA13 (a[13], q[13], a_sel);
// mux32_1 muxA14 (a[14], q[14], a_sel);
// mux32_1 muxA15 (a[15], q[15], a_sel);
// mux32_1 muxA16 (a[16], q[16], a_sel);
// mux32_1 muxA17 (a[17], q[17], a_sel);
// mux32_1 muxA18 (a[18], q[18], a_sel);
// mux32_1 muxA19 (a[19], q[19], a_sel);
// mux32_1 muxA20 (a[20], q[20], a_sel);
// mux32_1 muxA21 (a[21], q[21], a_sel);
// mux32_1 muxA22 (a[22], q[22], a_sel);
// mux32_1 muxA23 (a[23], q[23], a_sel);
// mux32_1 muxA24 (a[24], q[24], a_sel);
// mux32_1 muxA25 (a[25], q[25], a_sel);
// mux32_1 muxA26 (a[26], q[26], a_sel);
// mux32_1 muxA27 (a[27], q[27], a_sel);
// mux32_1 muxA28 (a[28], q[28], a_sel);
// mux32_1 muxA29 (a[29], q[29], a_sel);
// mux32_1 muxA30 (a[30], q[30], a_sel);
// mux32_1 muxA31 (a[31], q[31], a_sel);

// mux32_1 muxB0 (b[0], q[0], b_sel);
// mux32_1 muxB1 (b[1], q[1], b_sel);
// mux32_1 muxB2 (b[2], q[2], b_sel);
// mux32_1 muxB3 (b[3], q[3], b_sel);
// mux32_1 muxB4 (b[4], q[4], b_sel);
// mux32_1 muxB5 (b[5], q[5], b_sel);
// mux32_1 muxB6 (b[6], q[6], b_sel);
// mux32_1 muxB7 (b[7], q[7], b_sel);
// mux32_1 muxB8 (b[8], q[8], b_sel);
// mux32_1 muxB9 (b[9], q[9], b_sel);
// mux32_1 muxB10 (b[10], q[10], b_sel);
// mux32_1 muxB11 (b[11], q[11], b_sel);
// mux32_1 muxB12 (b[12], q[12], b_sel);
// mux32_1 muxB13 (b[13], q[12], b_sel);
// mux32_1 muxB14 (b[14], q[14], b_sel);
// mux32_1 muxB15 (b[15], q[15], b_sel);
// mux32_1 muxB16 (b[16], q[16], b_sel);
// mux32_1 muxB17 (b[17], q[17], b_sel);
// mux32_1 muxB18 (b[18], q[18], b_sel);
// mux32_1 muxB19 (b[19], q[19], b_sel);
// mux32_1 muxB20 (b[20], q[20], b_sel);
// mux32_1 muxB21 (b[21], q[21], b_sel);
// mux32_1 muxB22 (b[22], q[22], b_sel);
// mux32_1 muxB23 (b[23], q[23], b_sel);
// mux32_1 muxB24 (b[24], q[24], b_sel);
// mux32_1 muxB25 (b[25], q[25], b_sel);
// mux32_1 muxB26 (b[26], q[26], b_sel);
// mux32_1 muxB27 (b[27], q[27], b_sel);
// mux32_1 muxB28 (b[28], q[28], b_sel);
// mux32_1 muxB29 (b[29], q[29], b_sel);
// mux32_1 muxB30 (b[30], q[30], b_sel);
// mux32_1 muxB31 (b[31], q[31], b_sel);

endmodule