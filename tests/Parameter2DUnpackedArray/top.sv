module top(output int o);
   parameter int P [1:0][2:0] = '{'{0, 1, 2},
                                  '{10, 11, 12}};
   assign o = P[1][1];
endmodule
