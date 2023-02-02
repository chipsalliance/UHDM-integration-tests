module prim_sparse_fsm_flop #(
  parameter type StateEnumT = logic [8:0]
) (
  input StateEnumT state_i
);
endmodule

module top();
  typedef logic state_e;

  state_e state_d;

  prim_sparse_fsm_flop #(
    .StateEnumT(state_e)
  ) u_state_regs (
    .state_i(state_d)
  );
endmodule
