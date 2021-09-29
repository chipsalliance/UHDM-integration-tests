module top(output int o);
   parameter int unsigned Depth = 4;

   if (Depth > 2) begin
      function automatic int get1();
         return 1;
      endfunction // get1

      assign o = get1();
   end
   else
     assign o = 0;
endmodule
