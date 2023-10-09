module prim_subreg(output int a);
   parameter logic [1:0] RESVAL = '0;
   assign a = int'(RESVAL);
endmodule // prim_subreg

module prim_subreg_shadow(output int b);
   parameter logic [1:0] RESVAL = '0;
   prim_subreg #(
      .RESVAL(RESVAL)
   ) staged_reg (.a(b));
endmodule // prim_subreg_shadow

module top(output int o);
   typedef struct packed {
      logic force_zero_masks;
      logic manual_operation;
   } ctrl_reg_t;

   parameter ctrl_reg_t CTRL_RESET = '{
      force_zero_masks: '1,
      manual_operation: '0
   };

   prim_subreg_shadow #(
      .RESVAL(CTRL_RESET)
   ) u_ctrl_reg_shadowed (.b(o));
endmodule // top
