module bsg_async_ptr_gray(w_clk_i, w_reset_i, w_inc_i, r_clk_i, w_ptr_binary_r_o, w_ptr_gray_r_o, w_ptr_gray_r_rsync_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire [4:0] \ptr_sync.iclk_data_o ;
  wire \ptr_sync.iclk_i ;
  wire \ptr_sync.iclk_reset_i ;
  wire [4:0] \ptr_sync.oclk_data_o ;
  wire \ptr_sync.oclk_i ;
  reg [4:0] \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r ;
  reg [4:0] \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r ;
  wire [4:0] \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r ;
  wire [4:0] \ptr_sync.sync.p.z.blss.iclk_data_o ;
  wire \ptr_sync.sync.p.z.blss.iclk_i ;
  wire \ptr_sync.sync.p.z.blss.iclk_reset_i ;
  wire [4:0] \ptr_sync.sync.p.z.blss.oclk_data_o ;
  wire \ptr_sync.sync.p.z.blss.oclk_i ;
  input r_clk_i;
  wire r_clk_i;
  input w_clk_i;
  wire w_clk_i;
  input w_inc_i;
  wire w_inc_i;
  output [4:0] w_ptr_binary_r_o;
  wire [4:0] w_ptr_binary_r_o;
  wire [4:0] w_ptr_gray_r;
  output [4:0] w_ptr_gray_r_o;
  wire [4:0] w_ptr_gray_r_o;
  wire [4:0] w_ptr_gray_r_rsync;
  output [4:0] w_ptr_gray_r_rsync_o;
  wire [4:0] w_ptr_gray_r_rsync_o;
  wire [4:0] w_ptr_p1_r;
  wire [4:0] w_ptr_p2;
  reg [4:0] w_ptr_r;
  input w_reset_i;
  wire w_reset_i;
  assign w_ptr_p2[0] = ~w_ptr_p1_r[0];
  assign _00_ = \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [0] ^ w_ptr_p1_r[2];
  assign _01_ = w_ptr_p1_r[3] ^ w_ptr_p1_r[2];
  assign _02_ = w_ptr_p1_r[4] ^ w_ptr_p1_r[3];
  assign w_ptr_p2[1] = \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [0] ^ w_ptr_p1_r[0];
  assign _03_ = \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [0] & w_ptr_p1_r[0];
  assign w_ptr_p2[2] = _03_ ^ w_ptr_p1_r[2];
  assign _04_ = _03_ & w_ptr_p1_r[2];
  assign w_ptr_p2[3] = _04_ ^ w_ptr_p1_r[3];
  assign _05_ = ~(w_ptr_p1_r[3] & w_ptr_p1_r[2]);
  assign _06_ = _03_ & ~(_05_);
  assign w_ptr_p2[4] = _06_ ^ w_ptr_p1_r[4];
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[0] <= 1'h0;
    else if (w_inc_i) w_ptr_r[0] <= w_ptr_p1_r[0];
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[1] <= 1'h0;
    else if (w_inc_i) w_ptr_r[1] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [0];
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[2] <= 1'h0;
    else if (w_inc_i) w_ptr_r[2] <= w_ptr_p1_r[2];
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[3] <= 1'h0;
    else if (w_inc_i) w_ptr_r[3] <= w_ptr_p1_r[3];
  always @(posedge w_clk_i)
    if (w_reset_i) w_ptr_r[4] <= 1'h0;
    else if (w_inc_i) w_ptr_r[4] <= w_ptr_p1_r[4];
  reg \w_ptr_p1_r_reg[0] ;
  always @(posedge w_clk_i)
    if (w_reset_i) \w_ptr_p1_r_reg[0]  <= 1'h1;
    else if (w_inc_i) \w_ptr_p1_r_reg[0]  <= w_ptr_p2[0];
  assign w_ptr_p1_r[0] = \w_ptr_p1_r_reg[0] ;
  reg \w_ptr_p1_r_reg[2] ;
  always @(posedge w_clk_i)
    if (w_reset_i) \w_ptr_p1_r_reg[2]  <= 1'h0;
    else if (w_inc_i) \w_ptr_p1_r_reg[2]  <= w_ptr_p2[2];
  assign w_ptr_p1_r[2] = \w_ptr_p1_r_reg[2] ;
  reg \w_ptr_p1_r_reg[3] ;
  always @(posedge w_clk_i)
    if (w_reset_i) \w_ptr_p1_r_reg[3]  <= 1'h0;
    else if (w_inc_i) \w_ptr_p1_r_reg[3]  <= w_ptr_p2[3];
  assign w_ptr_p1_r[3] = \w_ptr_p1_r_reg[3] ;
  reg \w_ptr_p1_r_reg[4] ;
  always @(posedge w_clk_i)
    if (w_reset_i) \w_ptr_p1_r_reg[4]  <= 1'h0;
    else if (w_inc_i) \w_ptr_p1_r_reg[4]  <= w_ptr_p2[4];
  assign w_ptr_p1_r[4] = \w_ptr_p1_r_reg[4] ;
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r [0] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [0];
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r [1] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [1];
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r [2] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [2];
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r [3] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [3];
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r [4] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [4];
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [0] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [0];
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [1] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [1];
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [2] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [2];
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [3] <= \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [3];
  always @(posedge r_clk_i)
    \ptr_sync.sync.p.z.blss.bsg_SYNC_1_r [4] <= w_ptr_r[4];
  reg \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[0] ;
  always @(posedge w_clk_i)
    if (w_reset_i) \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[0]  <= 1'h0;
    else if (w_inc_i) \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[0]  <= w_ptr_p2[1];
  assign \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [0] = \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[0] ;
  reg \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[1] ;
  always @(posedge w_clk_i)
    if (w_reset_i) \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[1]  <= 1'h0;
    else if (w_inc_i) \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[1]  <= _00_;
  assign \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [1] = \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[1] ;
  reg \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[2] ;
  always @(posedge w_clk_i)
    if (w_reset_i) \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[2]  <= 1'h0;
    else if (w_inc_i) \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[2]  <= _01_;
  assign \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [2] = \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[2] ;
  reg \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[3] ;
  always @(posedge w_clk_i)
    if (w_reset_i) \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[3]  <= 1'h0;
    else if (w_inc_i) \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[3]  <= _02_;
  assign \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [3] = \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r_reg[3] ;
  assign \ptr_sync.iclk_data_o  = { w_ptr_r[4], \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [3:0] };
  assign \ptr_sync.iclk_i  = w_clk_i;
  assign \ptr_sync.iclk_reset_i  = w_reset_i;
  assign \ptr_sync.oclk_data_o  = \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r ;
  assign \ptr_sync.oclk_i  = r_clk_i;
  assign \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [4] = w_ptr_r[4];
  assign \ptr_sync.sync.p.z.blss.iclk_data_o  = { w_ptr_r[4], \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [3:0] };
  assign \ptr_sync.sync.p.z.blss.iclk_i  = w_clk_i;
  assign \ptr_sync.sync.p.z.blss.iclk_reset_i  = w_reset_i;
  assign \ptr_sync.sync.p.z.blss.oclk_data_o  = \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r ;
  assign \ptr_sync.sync.p.z.blss.oclk_i  = r_clk_i;
  assign w_ptr_binary_r_o = w_ptr_r;
  assign w_ptr_gray_r = { w_ptr_r[4], \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [3:0] };
  assign w_ptr_gray_r_o = { w_ptr_r[4], \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [3:0] };
  assign w_ptr_gray_r_rsync = \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r ;
  assign w_ptr_gray_r_rsync_o = \ptr_sync.sync.p.z.blss.bsg_SYNC_2_r ;
  assign w_ptr_p1_r[1] = \ptr_sync.sync.p.z.blss.bsg_SYNC_LNCH_r [0];
endmodule
