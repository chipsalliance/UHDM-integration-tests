module top(output logic[3:0] a, b, c);
   logic [2:0][3:0] x = '{'{0, 1, 1, 0},
			 '{1, 1, 1, 0},
			 '{0, 1, 0, 1}};
   
   assign a = x[0];
   assign b = x[1];
   assign c = x[2];
endmodule
