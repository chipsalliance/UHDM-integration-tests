module top(output [5:0] o);
   assign o = {3{'{1'b1,
                   1'b0}}};
endmodule // top
