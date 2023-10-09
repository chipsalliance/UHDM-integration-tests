module top(output int o);
   prim_flop #(
      .Width(22)
   ) u_prim_flop(.x(o));
endmodule

module prim_flop(output int x);
   parameter int Width = 1;
   parameter logic [Width-1:0] ResetValue = 15;
   assign x = int'(ResetValue);
endmodule
