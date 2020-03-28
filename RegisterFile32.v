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
register32 regs[31:0] (q, clk, d, en_int);
mux32_1 muxA[31:0] (a, q, a_sel);
mux32_1 muxB[31:0] (b, q, b_sel);

endmodule