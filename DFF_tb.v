// ---------------------------------------------------------------------
//    Module:     Testbench for 1-bit D Flip-Flop with enable
//    Author:     Alex Schendel and Kevin Hoser
//    Contact:    schendel21@up.edu and hoser21@up.edu
//    Date:       3/26/2020
//
//    All rights reserved
// ---------------------------------------------------------------------

`timescale 1ns / 1ns

module test_DFF;

reg       d, clk, reset, en;
wire      q;

DFF DFF1(q, clk, d, reset, en); 
  
always
  clk = 0;
  #10 clk = 1;
  #10

initial	// Test stimulus
  begin
    #10  d = 0; reset =  0; en = 0;
    #10 $stop;
  end
  
initial
   begin
    $display("      time d  reset  en  clk  q "); 
    $monitor($stime,, d,,, reset,,, en,,,,,, clk,,,,,, q); 
   end

endmodule  