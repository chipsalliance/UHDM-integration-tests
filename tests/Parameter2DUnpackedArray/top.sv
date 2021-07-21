module top(output logic o);
   parameter logic P [1:0][2:0] = '{'{1, 1, 1},
                                    '{1, 1, 1}};
   assign o = P[1][1];
endmodule
