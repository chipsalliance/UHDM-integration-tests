`include "dut1.sv"  // defines dut with output 1
`include "dut2.sv"  // redefines dut with output 2
module top(output int o);
  dut u_dut(.o(o));
endmodule
