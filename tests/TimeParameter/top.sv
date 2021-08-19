module top(output int o);
   parameter time T = 50us;
   assign o = int'(T);
endmodule
