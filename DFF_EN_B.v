// ---------------------------------------------------------------------
//    Module:     D Flip-Flop with enable
//    Author:     Kevin Hoser and Alex Schendel
//    Contact:    hoser21@up.edu and schendel21@up.edu
//    Date:       03/26/2020
// ---------------------------------------------------------------------

module DFF_EN_B(q, clk, d, reset, en);

output q;
input  d, clk, reset, en;

reg    q;

// always @(negedge reset or posedge clk)

always @(negedge reset or posedge clk)

 if (~reset)
    q <= 1'b0;
 else
    if (en)
        q <= d; 

endmodule
