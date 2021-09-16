module top #(
  parameter int AddrWidth = 32
) (
  input logic clk_i,
  input logic wr_valid,             // Qualified write access.
  input logic [AddrWidth-1:0] addr, // Incoming addr.
  input logic [15:0] data           // Incoming data.
);
   sw_test_status_if #(AddrWidth) u_sw(clk_i, wr_valid, addr, data);
endmodule // top
