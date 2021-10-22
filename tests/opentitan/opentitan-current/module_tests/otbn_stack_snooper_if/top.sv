module top;
  logic [15:0] array [3];
  logic [2:0] q;
  otbn_stack_snooper_if #(
    .StackIntgWidth(16),
    .StackWidth(8),
    .StackDepth(3)
  ) snoop (
    .stack_storage(array),
    .stack_wr_ptr_q(q)
  );
endmodule
