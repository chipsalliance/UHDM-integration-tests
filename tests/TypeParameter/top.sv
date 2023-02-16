module prim_sparse_fsm_flop #(
  parameter type StateEnumT = logic [8:0],
  parameter int IntParam = 8
) (
);
endmodule

module top();
  typedef logic state_e;

  prim_sparse_fsm_flop #(
    .StateEnumT(state_e),
    .IntParam(1)
  ) u_state_regs (
  );

  typedef logic [2:0] foo_type;

  prim_sparse_fsm_flop #(
    .StateEnumT(foo_type)
  ) u_state_regs2 (
  );

  prim_sparse_fsm_flop #(
    .StateEnumT(foo_type)
  ) u_state_regs3 (
  );

  prim_sparse_fsm_flop u_state_regs3 ();
endmodule
