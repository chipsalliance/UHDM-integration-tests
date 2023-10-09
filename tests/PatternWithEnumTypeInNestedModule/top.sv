module prim_subreg(output int a);
   parameter logic [4:0] RESVAL = '0;
   assign a = int'(RESVAL);
endmodule // prim_subreg

module prim_subreg_shadow(output int b);
   typedef struct packed {
      logic [2:0] a;
      logic [1:0] b;
   } struct_t;

   typedef enum logic [2:0] {
      ENUM_ITEM = 3'b000
   } enum_t;

   parameter struct_t RESVAL = '{
      a: ENUM_ITEM,
      b: '1
   };

   prim_subreg #(
      .RESVAL(RESVAL)
   ) staged_reg (.a(b));
endmodule // prim_subreg_shadow

module top(output int o);
   typedef struct packed {
      logic [1:0] a;
      logic [2:0] b;
   } struct_t;

   typedef enum logic [1:0] {
      ENUM_ITEM = 2'b11
   } enum_t;

   parameter struct_t CTRL_RESET = '{
      a: ENUM_ITEM,
      b: '0
   };

   prim_subreg_shadow #(
      .RESVAL(CTRL_RESET)
   ) u_ctrl_reg_shadowed (.b(o));

   always_comb begin
      assert(o == 24);
   end
endmodule // top
