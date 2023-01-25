module foo #(
  parameter type LOGIC_TYPE = logic [3:0]
) (
  input LOGIC_TYPE a_in,
  output a
);
  assign a = a_in[0];
endmodule

module top(output a, output b);
  logic [3:0] val = 5;
  foo #(.LOGIC_TYPE(logic[1:0])) foo1(.a_in(val), .a(a));
  foo foo1(.a_in(val), .a(b));
endmodule
