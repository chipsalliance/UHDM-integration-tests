module dut();
   typedef struct packed {
      logic       v;
      logic       ready_and_rev;
      logic [66-1:0] data;
  } bp_mem_ready_and_link_s;
  logic [1-1:0][68-1:0]  mem_fwd_link_i;
  logic [1-1:0][68-1:0]  mem_rev_link_o;
  logic [1-1:0][68-1:0]  mem_dma_link_o;
  typedef enum logic[2:0] {P=3'd0, W, E, N, S} Dirs;
  bp_mem_ready_and_link_s [S:N][1-1:0] mem_ver_link_lo;

  assign mem_rev_link_o = mem_ver_link_lo[N];
  assign mem_ver_link_lo[S] = mem_fwd_link_i;
  assign mem_dma_link_o = mem_ver_link_lo[S];
   typedef struct packed {
      logic       v;
      logic       ready_and_rev;
      logic [66-1:0] data;
  } bp_io_ready_and_link_s;
  bp_io_ready_and_link_s [1-1:0][E:W] io_fwd_link_li;
  bp_io_ready_and_link_s [1-1:0][E:W] io_fwd_link_lo;
  bp_io_ready_and_link_s [1-1:0][E:W] io_rev_link_li;
  bp_io_ready_and_link_s [1-1:0][E:W] io_rev_link_lo;
  bp_io_ready_and_link_s [1-1:0][S:W] io_fwd_mesh_lo;
  bp_io_ready_and_link_s [1-1:0][S:W] io_fwd_mesh_li;
assign io_fwd_mesh_lo[0][E:W] = io_fwd_link_lo[0][E:W];
  for (genvar i = 0; i < 1; i++)
    begin : cmd_link
      assign io_fwd_link_li[i][E:W] = io_fwd_mesh_li[i][E:W];
    end
endmodule
