module top(output string o);
   parameter string NAME = "abcd";
   localparam string x = {NAME, "efgh"};
   assign o = x;
endmodule
