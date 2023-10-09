module top(output int o);
   int a [int];
   assign a[5] = 5;
   assign o = a[5];
endmodule
