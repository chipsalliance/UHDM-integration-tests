module top(output int o);
   int q[$];
   initial begin
      q.insert(0, 1);
      o = q[0];
   end
endmodule
