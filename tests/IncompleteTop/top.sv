module dut #(
   parameter int val = 4
) (
   out
);
   assign out = val;
endmodule;


module top(output int o);
   dut #(
      .val(5)
   ) u_dut (
      .o(o)
   );
endmodule
