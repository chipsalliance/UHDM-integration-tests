module bsg_launch_sync_sync(iclk_i, iclk_reset_i, oclk_i, iclk_data_i, iclk_data_o, oclk_data_o);
  input [15:0] iclk_data_i;
  wire [15:0] iclk_data_i;
  output [15:0] iclk_data_o;
  wire [15:0] iclk_data_o;
  input iclk_i;
  wire iclk_i;
  input iclk_reset_i;
  wire iclk_reset_i;
  output [15:0] oclk_data_o;
  wire [15:0] oclk_data_o;
  input oclk_i;
  wire oclk_i;
  reg [7:0] \sync.p.maxb[0].blss.bsg_SYNC_1_r ;
  reg [7:0] \sync.p.maxb[0].blss.bsg_SYNC_2_r ;
  reg [7:0] \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r ;
  wire [7:0] \sync.p.maxb[0].blss.iclk_data_i ;
  wire [7:0] \sync.p.maxb[0].blss.iclk_data_o ;
  wire \sync.p.maxb[0].blss.iclk_i ;
  wire \sync.p.maxb[0].blss.iclk_reset_i ;
  wire [7:0] \sync.p.maxb[0].blss.oclk_data_o ;
  wire \sync.p.maxb[0].blss.oclk_i ;
  reg [7:0] \sync.p.maxb[1].blss.bsg_SYNC_1_r ;
  reg [7:0] \sync.p.maxb[1].blss.bsg_SYNC_2_r ;
  reg [7:0] \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r ;
  wire [7:0] \sync.p.maxb[1].blss.iclk_data_i ;
  wire [7:0] \sync.p.maxb[1].blss.iclk_data_o ;
  wire \sync.p.maxb[1].blss.iclk_i ;
  wire \sync.p.maxb[1].blss.iclk_reset_i ;
  wire [7:0] \sync.p.maxb[1].blss.oclk_data_o ;
  wire \sync.p.maxb[1].blss.oclk_i ;
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_1_r [3] <= \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [3];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_1_r [4] <= \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [4];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_1_r [5] <= \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [5];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_1_r [6] <= \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [6];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_1_r [7] <= \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [7];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_2_r [0] <= \sync.p.maxb[0].blss.bsg_SYNC_1_r [0];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_2_r [1] <= \sync.p.maxb[0].blss.bsg_SYNC_1_r [1];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_2_r [2] <= \sync.p.maxb[0].blss.bsg_SYNC_1_r [2];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_2_r [3] <= \sync.p.maxb[0].blss.bsg_SYNC_1_r [3];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_2_r [4] <= \sync.p.maxb[0].blss.bsg_SYNC_1_r [4];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_2_r [5] <= \sync.p.maxb[0].blss.bsg_SYNC_1_r [5];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_2_r [6] <= \sync.p.maxb[0].blss.bsg_SYNC_1_r [6];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_2_r [7] <= \sync.p.maxb[0].blss.bsg_SYNC_1_r [7];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [0] <= 1'h0;
    else \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [0] <= iclk_data_i[0];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [1] <= 1'h0;
    else \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [1] <= iclk_data_i[1];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [2] <= 1'h0;
    else \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [2] <= iclk_data_i[2];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [3] <= 1'h0;
    else \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [3] <= iclk_data_i[3];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [4] <= 1'h0;
    else \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [4] <= iclk_data_i[4];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [5] <= 1'h0;
    else \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [5] <= iclk_data_i[5];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [6] <= 1'h0;
    else \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [6] <= iclk_data_i[6];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [7] <= 1'h0;
    else \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [7] <= iclk_data_i[7];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_1_r [0] <= \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [0];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_1_r [1] <= \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [1];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_1_r [2] <= \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [2];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_1_r [3] <= \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [3];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_1_r [4] <= \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [4];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_1_r [5] <= \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [5];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_1_r [6] <= \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [6];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_1_r [7] <= \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [7];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_2_r [0] <= \sync.p.maxb[1].blss.bsg_SYNC_1_r [0];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_2_r [1] <= \sync.p.maxb[1].blss.bsg_SYNC_1_r [1];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_2_r [2] <= \sync.p.maxb[1].blss.bsg_SYNC_1_r [2];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_2_r [3] <= \sync.p.maxb[1].blss.bsg_SYNC_1_r [3];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_2_r [4] <= \sync.p.maxb[1].blss.bsg_SYNC_1_r [4];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_2_r [5] <= \sync.p.maxb[1].blss.bsg_SYNC_1_r [5];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_2_r [6] <= \sync.p.maxb[1].blss.bsg_SYNC_1_r [6];
  always @(posedge oclk_i)
    \sync.p.maxb[1].blss.bsg_SYNC_2_r [7] <= \sync.p.maxb[1].blss.bsg_SYNC_1_r [7];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [0] <= 1'h0;
    else \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [0] <= iclk_data_i[8];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [1] <= 1'h0;
    else \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [1] <= iclk_data_i[9];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [2] <= 1'h0;
    else \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [2] <= iclk_data_i[10];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [3] <= 1'h0;
    else \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [3] <= iclk_data_i[11];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [4] <= 1'h0;
    else \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [4] <= iclk_data_i[12];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [5] <= 1'h0;
    else \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [5] <= iclk_data_i[13];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [6] <= 1'h0;
    else \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [6] <= iclk_data_i[14];
  always @(posedge iclk_i)
    if (iclk_reset_i) \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [7] <= 1'h0;
    else \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r [7] <= iclk_data_i[15];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_1_r [0] <= \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [0];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_1_r [1] <= \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [1];
  always @(posedge oclk_i)
    \sync.p.maxb[0].blss.bsg_SYNC_1_r [2] <= \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r [2];
  assign iclk_data_o = { \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r , \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r  };
  assign oclk_data_o = { \sync.p.maxb[1].blss.bsg_SYNC_2_r , \sync.p.maxb[0].blss.bsg_SYNC_2_r  };
  assign \sync.p.maxb[0].blss.iclk_data_i  = iclk_data_i[7:0];
  assign \sync.p.maxb[0].blss.iclk_data_o  = \sync.p.maxb[0].blss.bsg_SYNC_LNCH_r ;
  assign \sync.p.maxb[0].blss.iclk_i  = iclk_i;
  assign \sync.p.maxb[0].blss.iclk_reset_i  = iclk_reset_i;
  assign \sync.p.maxb[0].blss.oclk_data_o  = \sync.p.maxb[0].blss.bsg_SYNC_2_r ;
  assign \sync.p.maxb[0].blss.oclk_i  = oclk_i;
  assign \sync.p.maxb[1].blss.iclk_data_i  = iclk_data_i[15:8];
  assign \sync.p.maxb[1].blss.iclk_data_o  = \sync.p.maxb[1].blss.bsg_SYNC_LNCH_r ;
  assign \sync.p.maxb[1].blss.iclk_i  = iclk_i;
  assign \sync.p.maxb[1].blss.iclk_reset_i  = iclk_reset_i;
  assign \sync.p.maxb[1].blss.oclk_data_o  = \sync.p.maxb[1].blss.bsg_SYNC_2_r ;
  assign \sync.p.maxb[1].blss.oclk_i  = oclk_i;
endmodule
