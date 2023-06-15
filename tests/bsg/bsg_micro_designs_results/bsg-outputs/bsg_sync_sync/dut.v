module bsg_sync_sync(oclk_i, iclk_data_i, oclk_data_o);
  input [15:0] iclk_data_i;
  wire [15:0] iclk_data_i;
  reg [7:0] \maxb[0].bss8.bsg_SYNC_1_r ;
  reg [7:0] \maxb[0].bss8.bsg_SYNC_2_r ;
  wire [7:0] \maxb[0].bss8.iclk_data_i ;
  wire [7:0] \maxb[0].bss8.oclk_data_o ;
  wire \maxb[0].bss8.oclk_i ;
  reg [7:0] \maxb[1].bss8.bsg_SYNC_1_r ;
  reg [7:0] \maxb[1].bss8.bsg_SYNC_2_r ;
  wire [7:0] \maxb[1].bss8.iclk_data_i ;
  wire [7:0] \maxb[1].bss8.oclk_data_o ;
  wire \maxb[1].bss8.oclk_i ;
  output [15:0] oclk_data_o;
  wire [15:0] oclk_data_o;
  input oclk_i;
  wire oclk_i;
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_1_r [2] <= iclk_data_i[10];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_1_r [3] <= iclk_data_i[11];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_1_r [4] <= iclk_data_i[12];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_1_r [5] <= iclk_data_i[13];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_1_r [6] <= iclk_data_i[14];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_1_r [7] <= iclk_data_i[15];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_2_r [0] <= \maxb[1].bss8.bsg_SYNC_1_r [0];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_2_r [1] <= \maxb[1].bss8.bsg_SYNC_1_r [1];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_2_r [2] <= \maxb[1].bss8.bsg_SYNC_1_r [2];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_2_r [3] <= \maxb[1].bss8.bsg_SYNC_1_r [3];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_2_r [4] <= \maxb[1].bss8.bsg_SYNC_1_r [4];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_2_r [5] <= \maxb[1].bss8.bsg_SYNC_1_r [5];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_2_r [6] <= \maxb[1].bss8.bsg_SYNC_1_r [6];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_2_r [7] <= \maxb[1].bss8.bsg_SYNC_1_r [7];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_1_r [0] <= iclk_data_i[0];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_1_r [1] <= iclk_data_i[1];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_1_r [2] <= iclk_data_i[2];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_1_r [3] <= iclk_data_i[3];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_1_r [4] <= iclk_data_i[4];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_1_r [5] <= iclk_data_i[5];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_1_r [6] <= iclk_data_i[6];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_1_r [7] <= iclk_data_i[7];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_2_r [0] <= \maxb[0].bss8.bsg_SYNC_1_r [0];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_2_r [1] <= \maxb[0].bss8.bsg_SYNC_1_r [1];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_2_r [2] <= \maxb[0].bss8.bsg_SYNC_1_r [2];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_2_r [3] <= \maxb[0].bss8.bsg_SYNC_1_r [3];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_2_r [4] <= \maxb[0].bss8.bsg_SYNC_1_r [4];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_2_r [5] <= \maxb[0].bss8.bsg_SYNC_1_r [5];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_2_r [6] <= \maxb[0].bss8.bsg_SYNC_1_r [6];
  always @(posedge oclk_i)
    \maxb[0].bss8.bsg_SYNC_2_r [7] <= \maxb[0].bss8.bsg_SYNC_1_r [7];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_1_r [0] <= iclk_data_i[8];
  always @(posedge oclk_i)
    \maxb[1].bss8.bsg_SYNC_1_r [1] <= iclk_data_i[9];
  assign \maxb[0].bss8.iclk_data_i  = iclk_data_i[7:0];
  assign \maxb[0].bss8.oclk_data_o  = \maxb[0].bss8.bsg_SYNC_2_r ;
  assign \maxb[0].bss8.oclk_i  = oclk_i;
  assign \maxb[1].bss8.iclk_data_i  = iclk_data_i[15:8];
  assign \maxb[1].bss8.oclk_data_o  = \maxb[1].bss8.bsg_SYNC_2_r ;
  assign \maxb[1].bss8.oclk_i  = oclk_i;
  assign oclk_data_o = { \maxb[1].bss8.bsg_SYNC_2_r , \maxb[0].bss8.bsg_SYNC_2_r  };
endmodule
