module bsg_cache_to_axi_rx(clk_i, reset_i, v_i, yumi_o, cache_id_i, addr_i, dma_data_o, dma_data_v_o, dma_data_ready_i, axi_arid_o, axi_araddr_addr_o, axi_araddr_cache_id_o, axi_arlen_o, axi_arsize_o, axi_arburst_o, axi_arcache_o, axi_arprot_o, axi_arlock_o, axi_arvalid_o, axi_arready_i, axi_rid_i
, axi_rdata_i, axi_rresp_i, axi_rlast_i, axi_rvalid_i, axi_rready_o);
  reg _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire [1:0] _024_;
  input [27:0] addr_i;
  wire [27:0] addr_i;
  output [27:0] axi_araddr_addr_o;
  wire [27:0] axi_araddr_addr_o;
  output axi_araddr_cache_id_o;
  wire axi_araddr_cache_id_o;
  output [1:0] axi_arburst_o;
  wire [1:0] axi_arburst_o;
  output [3:0] axi_arcache_o;
  wire [3:0] axi_arcache_o;
  output [5:0] axi_arid_o;
  wire [5:0] axi_arid_o;
  output [7:0] axi_arlen_o;
  wire [7:0] axi_arlen_o;
  output axi_arlock_o;
  wire axi_arlock_o;
  output [2:0] axi_arprot_o;
  wire [2:0] axi_arprot_o;
  input axi_arready_i;
  wire axi_arready_i;
  output [2:0] axi_arsize_o;
  wire [2:0] axi_arsize_o;
  output axi_arvalid_o;
  wire axi_arvalid_o;
  input [31:0] axi_rdata_i;
  wire [31:0] axi_rdata_i;
  input [5:0] axi_rid_i;
  wire [5:0] axi_rid_i;
  input axi_rlast_i;
  wire axi_rlast_i;
  output axi_rready_o;
  wire axi_rready_o;
  input [1:0] axi_rresp_i;
  wire [1:0] axi_rresp_i;
  input axi_rvalid_i;
  wire axi_rvalid_i;
  input cache_id_i;
  wire cache_id_i;
  wire cache_sel;
  input clk_i;
  wire clk_i;
  wire [1:0] count_lo;
  wire \counter.clear_i ;
  wire \counter.clk_i ;
  reg [1:0] \counter.count_o ;
  wire \counter.reset_i ;
  wire \counter.up_i ;
  wire counter_clear_li;
  wire counter_up_li;
  wire \demux.bd.o ;
  wire \demux.lo ;
  wire \demux.o ;
  wire \demux.v_i ;
  output [31:0] dma_data_o;
  wire [31:0] dma_data_o;
  input dma_data_ready_i;
  wire dma_data_ready_i;
  output dma_data_v_o;
  wire dma_data_v_o;
  wire \piso.clk_i ;
  wire [31:0] \piso.data_i ;
  wire [31:0] \piso.data_li ;
  wire [31:0] \piso.data_o ;
  wire \piso.fifo0_ready_lo ;
  wire [31:0] \piso.fifo_data_lo ;
  wire \piso.fifo_v_li ;
  wire \piso.ready_and_o ;
  wire \piso.reset_i ;
  wire \piso.two_fifo.fifo0.clk_i ;
  wire [31:0] \piso.two_fifo.fifo0.data_i ;
  wire [31:0] \piso.two_fifo.fifo0.data_o ;
  reg \piso.two_fifo.fifo0.empty_r ;
  reg \piso.two_fifo.fifo0.full_r ;
  reg \piso.two_fifo.fifo0.head_r ;
  wire \piso.two_fifo.fifo0.mem_1r1w.r_addr_i ;
  wire [31:0] \piso.two_fifo.fifo0.mem_1r1w.r_data_o ;
  reg [31:0] \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] ;
  reg [31:0] \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] ;
  wire \piso.two_fifo.fifo0.mem_1r1w.synth.r_addr_i ;
  wire [31:0] \piso.two_fifo.fifo0.mem_1r1w.synth.r_data_o ;
  wire \piso.two_fifo.fifo0.mem_1r1w.synth.unused0 ;
  wire \piso.two_fifo.fifo0.mem_1r1w.synth.w_addr_i ;
  wire \piso.two_fifo.fifo0.mem_1r1w.synth.w_clk_i ;
  wire [31:0] \piso.two_fifo.fifo0.mem_1r1w.synth.w_data_i ;
  wire \piso.two_fifo.fifo0.mem_1r1w.synth.w_reset_i ;
  wire \piso.two_fifo.fifo0.mem_1r1w.w_addr_i ;
  wire \piso.two_fifo.fifo0.mem_1r1w.w_clk_i ;
  wire [31:0] \piso.two_fifo.fifo0.mem_1r1w.w_data_i ;
  wire \piso.two_fifo.fifo0.mem_1r1w.w_reset_i ;
  wire \piso.two_fifo.fifo0.ready_o ;
  wire \piso.two_fifo.fifo0.reset_i ;
  reg \piso.two_fifo.fifo0.tail_r ;
  wire \piso.two_fifo.fifo0.v_i ;
  wire \piso.valid_i ;
  wire [31:0] piso_data_lo;
  input reset_i;
  wire reset_i;
  wire \tag_fifo.clk_i ;
  wire \tag_fifo.data_i ;
  wire \tag_fifo.reset_i ;
  wire \tag_fifo.unhardened.un.fifo.clk_i ;
  wire \tag_fifo.unhardened.un.fifo.data_i ;
  wire \tag_fifo.unhardened.un.fifo.deque ;
  wire \tag_fifo.unhardened.un.fifo.empty ;
  wire \tag_fifo.unhardened.un.fifo.enque ;
  wire \tag_fifo.unhardened.un.fifo.ft.clk_i ;
  wire \tag_fifo.unhardened.un.fifo.ft.deq_i ;
  reg \tag_fifo.unhardened.un.fifo.ft.deq_r ;
  wire \tag_fifo.unhardened.un.fifo.ft.empty ;
  wire \tag_fifo.unhardened.un.fifo.ft.empty_o ;
  wire \tag_fifo.unhardened.un.fifo.ft.enq_i ;
  reg \tag_fifo.unhardened.un.fifo.ft.enq_r ;
  wire \tag_fifo.unhardened.un.fifo.ft.equal_ptrs ;
  wire \tag_fifo.unhardened.un.fifo.ft.full ;
  wire \tag_fifo.unhardened.un.fifo.ft.full_o ;
  wire \tag_fifo.unhardened.un.fifo.ft.reset_i ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr.add_i ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr.clk ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr.genblk1.ignore ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr.n_o ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr.o ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr.ptr_n ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr.ptr_r ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr.reset_i ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr_n ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr_n_o ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr_r ;
  wire \tag_fifo.unhardened.un.fifo.ft.rptr_r_o ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr.add_i ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr.clk ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr.genblk1.ignore ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr.n_o ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr.o ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr.ptr_n ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr.ptr_r ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr.reset_i ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr_r ;
  wire \tag_fifo.unhardened.un.fifo.ft.wptr_r_o ;
  wire \tag_fifo.unhardened.un.fifo.full ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.r_addr_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.r_v_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.r_addr_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.r_v_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.unused0 ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.unused1 ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_addr_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_clk_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_data_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_reset_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_v_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.w_addr_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.w_clk_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.w_data_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.w_reset_i ;
  wire \tag_fifo.unhardened.un.fifo.mem_1r1w.w_v_i ;
  wire \tag_fifo.unhardened.un.fifo.reset_i ;
  wire \tag_fifo.unhardened.un.fifo.rptr_r ;
  wire \tag_fifo.unhardened.un.fifo.v_o ;
  wire \tag_fifo.unhardened.un.fifo.v_o_tmp ;
  wire \tag_fifo.unhardened.un.fifo.wptr_r ;
  wire \tag_fifo.unhardened.un.fifo.yumi_i ;
  wire \tag_fifo.v_o ;
  wire \tag_fifo.yumi_i ;
  wire tag_fifo_v_lo;
  wire tag_fifo_yumi_li;
  wire [5:0] unused_rid;
  wire unused_rlast;
  wire [1:0] unused_rresp;
  input v_i;
  wire v_i;
  output yumi_o;
  wire yumi_o;
  assign _012_ = ~(\counter.count_o [0] & \counter.count_o [1]);
  assign _013_ = \piso.two_fifo.fifo0.empty_r  | ~(dma_data_ready_i);
  assign _014_ = _013_ | \tag_fifo.unhardened.un.fifo.ft.deq_r ;
  assign \counter.clear_i  = ~(_014_ | _012_);
  assign _002_ = \counter.clear_i  | reset_i;
  assign \counter.up_i  = _012_ & ~(_014_);
  assign _001_ = \counter.up_i  | \counter.clear_i ;
  assign _006_ = ~\piso.two_fifo.fifo0.head_r ;
  assign _004_ = _014_ ^ _006_;
  assign dma_data_o[0] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [0] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [0];
  assign dma_data_o[1] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [1] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [1];
  assign dma_data_o[2] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [2] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [2];
  assign dma_data_o[3] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [3] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [3];
  assign dma_data_o[4] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [4] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [4];
  assign dma_data_o[5] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [5] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [5];
  assign dma_data_o[6] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [6] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [6];
  assign dma_data_o[7] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [7] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [7];
  assign dma_data_o[8] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [8] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [8];
  assign dma_data_o[9] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [9] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [9];
  assign dma_data_o[10] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [10] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [10];
  assign dma_data_o[11] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [11] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [11];
  assign dma_data_o[12] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [12] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [12];
  assign dma_data_o[13] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [13] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [13];
  assign dma_data_o[14] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [14] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [14];
  assign dma_data_o[15] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [15] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [15];
  assign dma_data_o[16] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [16] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [16];
  assign dma_data_o[17] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [17] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [17];
  assign dma_data_o[18] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [18] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [18];
  assign dma_data_o[19] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [19] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [19];
  assign dma_data_o[20] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [20] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [20];
  assign dma_data_o[21] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [21] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [21];
  assign dma_data_o[22] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [22] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [22];
  assign dma_data_o[23] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [23] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [23];
  assign dma_data_o[24] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [24] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [24];
  assign dma_data_o[25] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [25] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [25];
  assign dma_data_o[26] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [26] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [26];
  assign dma_data_o[27] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [27] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [27];
  assign dma_data_o[28] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [28] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [28];
  assign dma_data_o[29] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [29] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [29];
  assign dma_data_o[30] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [30] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [30];
  assign dma_data_o[31] = _000_ ? \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [31] : \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [31];
  assign _015_ = ~\counter.count_o [0];
  assign _005_ = \counter.clear_i  ? \counter.up_i  : _015_;
  assign _003_ = ~\piso.two_fifo.fifo0.tail_r ;
  assign _016_ = \piso.two_fifo.fifo0.full_r  | ~(axi_rvalid_i);
  assign axi_rready_o = ~\piso.two_fifo.fifo0.full_r ;
  assign _017_ = axi_arready_i & v_i;
  assign yumi_o = _017_ & ~(\tag_fifo.unhardened.un.fifo.ft.enq_r );
  assign axi_arvalid_o = v_i & ~(\tag_fifo.unhardened.un.fifo.ft.enq_r );
  assign dma_data_v_o = ~(\piso.two_fifo.fifo0.empty_r  | \tag_fifo.unhardened.un.fifo.ft.deq_r );
  assign _011_ = \piso.two_fifo.fifo0.tail_r  & ~(_016_);
  assign _009_ = yumi_o | \counter.clear_i ;
  assign _018_ = _016_ & \piso.two_fifo.fifo0.empty_r ;
  assign _019_ = _014_ | \piso.two_fifo.fifo0.full_r ;
  assign _020_ = _016_ & ~(_019_);
  assign _008_ = _020_ | _018_;
  assign _021_ = _016_ | \piso.two_fifo.fifo0.empty_r ;
  assign _022_ = _014_ & ~(_021_);
  assign _023_ = _014_ & ~(axi_rready_o);
  assign _007_ = _023_ | _022_;
  assign _010_ = _003_ & ~(_016_);
  assign _024_[1] = \counter.count_o [0] ^ \counter.count_o [1];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [0] <= axi_rdata_i[0];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [1] <= axi_rdata_i[1];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [2] <= axi_rdata_i[2];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [3] <= axi_rdata_i[3];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [4] <= axi_rdata_i[4];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [5] <= axi_rdata_i[5];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [6] <= axi_rdata_i[6];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [7] <= axi_rdata_i[7];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [8] <= axi_rdata_i[8];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [9] <= axi_rdata_i[9];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [10] <= axi_rdata_i[10];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [11] <= axi_rdata_i[11];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [12] <= axi_rdata_i[12];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [13] <= axi_rdata_i[13];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [14] <= axi_rdata_i[14];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [15] <= axi_rdata_i[15];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [16] <= axi_rdata_i[16];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [17] <= axi_rdata_i[17];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [18] <= axi_rdata_i[18];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [19] <= axi_rdata_i[19];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [20] <= axi_rdata_i[20];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [21] <= axi_rdata_i[21];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [22] <= axi_rdata_i[22];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [23] <= axi_rdata_i[23];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [24] <= axi_rdata_i[24];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [25] <= axi_rdata_i[25];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [26] <= axi_rdata_i[26];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [27] <= axi_rdata_i[27];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [28] <= axi_rdata_i[28];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [29] <= axi_rdata_i[29];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [30] <= axi_rdata_i[30];
  always @(posedge clk_i)
    if (_010_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[0] [31] <= axi_rdata_i[31];
  always @(posedge clk_i)
    if (reset_i) \tag_fifo.unhardened.un.fifo.ft.deq_r  <= 1'h1;
    else if (_009_) \tag_fifo.unhardened.un.fifo.ft.deq_r  <= \counter.clear_i ;
  always @(posedge clk_i)
    if (reset_i) \tag_fifo.unhardened.un.fifo.ft.enq_r  <= 1'h0;
    else if (_009_) \tag_fifo.unhardened.un.fifo.ft.enq_r  <= yumi_o;
  always @(posedge clk_i)
    if (reset_i) \counter.count_o [0] <= 1'h0;
    else if (_001_) \counter.count_o [0] <= _005_;
  always @(posedge clk_i)
    if (reset_i) \piso.two_fifo.fifo0.full_r  <= 1'h0;
    else \piso.two_fifo.fifo0.full_r  <= _007_;
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [0] <= axi_rdata_i[0];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [1] <= axi_rdata_i[1];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [2] <= axi_rdata_i[2];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [3] <= axi_rdata_i[3];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [4] <= axi_rdata_i[4];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [5] <= axi_rdata_i[5];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [6] <= axi_rdata_i[6];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [7] <= axi_rdata_i[7];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [8] <= axi_rdata_i[8];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [9] <= axi_rdata_i[9];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [10] <= axi_rdata_i[10];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [11] <= axi_rdata_i[11];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [12] <= axi_rdata_i[12];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [13] <= axi_rdata_i[13];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [14] <= axi_rdata_i[14];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [15] <= axi_rdata_i[15];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [16] <= axi_rdata_i[16];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [17] <= axi_rdata_i[17];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [18] <= axi_rdata_i[18];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [19] <= axi_rdata_i[19];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [20] <= axi_rdata_i[20];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [21] <= axi_rdata_i[21];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [22] <= axi_rdata_i[22];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [23] <= axi_rdata_i[23];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [24] <= axi_rdata_i[24];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [25] <= axi_rdata_i[25];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [26] <= axi_rdata_i[26];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [27] <= axi_rdata_i[27];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [28] <= axi_rdata_i[28];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [29] <= axi_rdata_i[29];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [30] <= axi_rdata_i[30];
  always @(posedge clk_i)
    if (_011_) \piso.two_fifo.fifo0.mem_1r1w.synth.nz.mem[1] [31] <= axi_rdata_i[31];
  always @(posedge clk_i)
    if (reset_i) \piso.two_fifo.fifo0.head_r  <= 1'h0;
    else if (!_014_) \piso.two_fifo.fifo0.head_r  <= _006_;
  always @(posedge clk_i)
    if (reset_i) \piso.two_fifo.fifo0.tail_r  <= 1'h0;
    else if (!_016_) \piso.two_fifo.fifo0.tail_r  <= _003_;
  always @(posedge clk_i)
    if (reset_i) \piso.two_fifo.fifo0.empty_r  <= 1'h1;
    else \piso.two_fifo.fifo0.empty_r  <= _008_;
  always @(posedge clk_i)
    if (reset_i) _000_ <= 1'h0;
    else _000_ <= _004_;
  always @(posedge clk_i)
    if (_002_) \counter.count_o [1] <= 1'h0;
    else if (\counter.up_i ) \counter.count_o [1] <= _024_[1];
  assign axi_araddr_addr_o = addr_i;
  assign axi_araddr_cache_id_o = cache_id_i;
  assign axi_arburst_o = 2'h0;
  assign axi_arcache_o = 4'h0;
  assign axi_arid_o = 6'h00;
  assign axi_arlen_o = 8'h00;
  assign axi_arlock_o = 1'h0;
  assign axi_arprot_o = 3'h0;
  assign axi_arsize_o = 3'h2;
  assign cache_sel = \demux.o ;
  assign count_lo = \counter.count_o ;
  assign \counter.clk_i  = clk_i;
  assign \counter.reset_i  = reset_i;
  assign counter_clear_li = \counter.clear_i ;
  assign counter_up_li = \counter.up_i ;
  assign \demux.bd.o  = 1'h1;
  assign \demux.lo  = 1'h1;
  assign \demux.v_i  = \demux.o ;
  assign \piso.clk_i  = clk_i;
  assign \piso.data_i  = axi_rdata_i;
  assign \piso.data_li  = axi_rdata_i;
  assign \piso.data_o  = dma_data_o;
  assign \piso.fifo0_ready_lo  = axi_rready_o;
  assign \piso.fifo_data_lo  = dma_data_o;
  assign \piso.fifo_v_li  = axi_rvalid_i;
  assign \piso.ready_and_o  = axi_rready_o;
  assign \piso.reset_i  = reset_i;
  assign \piso.two_fifo.fifo0.clk_i  = clk_i;
  assign \piso.two_fifo.fifo0.data_i  = axi_rdata_i;
  assign \piso.two_fifo.fifo0.data_o  = dma_data_o;
  assign \piso.two_fifo.fifo0.mem_1r1w.r_addr_i  = \piso.two_fifo.fifo0.head_r ;
  assign \piso.two_fifo.fifo0.mem_1r1w.r_data_o  = dma_data_o;
  assign \piso.two_fifo.fifo0.mem_1r1w.synth.r_addr_i  = \piso.two_fifo.fifo0.head_r ;
  assign \piso.two_fifo.fifo0.mem_1r1w.synth.r_data_o  = dma_data_o;
  assign \piso.two_fifo.fifo0.mem_1r1w.synth.unused0  = reset_i;
  assign \piso.two_fifo.fifo0.mem_1r1w.synth.w_addr_i  = \piso.two_fifo.fifo0.tail_r ;
  assign \piso.two_fifo.fifo0.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \piso.two_fifo.fifo0.mem_1r1w.synth.w_data_i  = axi_rdata_i;
  assign \piso.two_fifo.fifo0.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \piso.two_fifo.fifo0.mem_1r1w.w_addr_i  = \piso.two_fifo.fifo0.tail_r ;
  assign \piso.two_fifo.fifo0.mem_1r1w.w_clk_i  = clk_i;
  assign \piso.two_fifo.fifo0.mem_1r1w.w_data_i  = axi_rdata_i;
  assign \piso.two_fifo.fifo0.mem_1r1w.w_reset_i  = reset_i;
  assign \piso.two_fifo.fifo0.ready_o  = axi_rready_o;
  assign \piso.two_fifo.fifo0.reset_i  = reset_i;
  assign \piso.two_fifo.fifo0.v_i  = axi_rvalid_i;
  assign \piso.valid_i  = axi_rvalid_i;
  assign piso_data_lo = dma_data_o;
  assign \tag_fifo.clk_i  = clk_i;
  assign \tag_fifo.data_i  = cache_id_i;
  assign \tag_fifo.reset_i  = reset_i;
  assign \tag_fifo.unhardened.un.fifo.clk_i  = clk_i;
  assign \tag_fifo.unhardened.un.fifo.data_i  = cache_id_i;
  assign \tag_fifo.unhardened.un.fifo.deque  = \counter.clear_i ;
  assign \tag_fifo.unhardened.un.fifo.empty  = \tag_fifo.unhardened.un.fifo.ft.deq_r ;
  assign \tag_fifo.unhardened.un.fifo.enque  = yumi_o;
  assign \tag_fifo.unhardened.un.fifo.ft.clk_i  = clk_i;
  assign \tag_fifo.unhardened.un.fifo.ft.deq_i  = \counter.clear_i ;
  assign \tag_fifo.unhardened.un.fifo.ft.empty  = \tag_fifo.unhardened.un.fifo.ft.deq_r ;
  assign \tag_fifo.unhardened.un.fifo.ft.empty_o  = \tag_fifo.unhardened.un.fifo.ft.deq_r ;
  assign \tag_fifo.unhardened.un.fifo.ft.enq_i  = yumi_o;
  assign \tag_fifo.unhardened.un.fifo.ft.equal_ptrs  = 1'h1;
  assign \tag_fifo.unhardened.un.fifo.ft.full  = \tag_fifo.unhardened.un.fifo.ft.enq_r ;
  assign \tag_fifo.unhardened.un.fifo.ft.full_o  = \tag_fifo.unhardened.un.fifo.ft.enq_r ;
  assign \tag_fifo.unhardened.un.fifo.ft.reset_i  = reset_i;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr.add_i  = \counter.clear_i ;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr.clk  = clk_i;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr.genblk1.ignore  = \counter.clear_i ;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr.n_o  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr.o  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr.ptr_n  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr.ptr_r  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr.reset_i  = reset_i;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr_n  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr_n_o  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr_r  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.rptr_r_o  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr.add_i  = yumi_o;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr.clk  = clk_i;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr.genblk1.ignore  = yumi_o;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr.n_o  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr.o  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr.ptr_n  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr.ptr_r  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr.reset_i  = reset_i;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr_r  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.ft.wptr_r_o  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.full  = \tag_fifo.unhardened.un.fifo.ft.enq_r ;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.r_addr_i  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.r_v_i  = \demux.o ;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.r_addr_i  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.r_v_i  = \demux.o ;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.unused1  = \demux.o ;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_addr_i  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_data_i  = cache_id_i;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.synth.w_v_i  = yumi_o;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.w_addr_i  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.w_data_i  = cache_id_i;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \tag_fifo.unhardened.un.fifo.mem_1r1w.w_v_i  = yumi_o;
  assign \tag_fifo.unhardened.un.fifo.reset_i  = reset_i;
  assign \tag_fifo.unhardened.un.fifo.rptr_r  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.v_o  = \demux.o ;
  assign \tag_fifo.unhardened.un.fifo.v_o_tmp  = \demux.o ;
  assign \tag_fifo.unhardened.un.fifo.wptr_r  = 1'h0;
  assign \tag_fifo.unhardened.un.fifo.yumi_i  = \counter.clear_i ;
  assign \tag_fifo.v_o  = \demux.o ;
  assign \tag_fifo.yumi_i  = \counter.clear_i ;
  assign tag_fifo_v_lo = \demux.o ;
  assign tag_fifo_yumi_li = \counter.clear_i ;
  assign unused_rid = axi_rid_i;
  assign unused_rlast = axi_rlast_i;
  assign unused_rresp = axi_rresp_i;
endmodule
