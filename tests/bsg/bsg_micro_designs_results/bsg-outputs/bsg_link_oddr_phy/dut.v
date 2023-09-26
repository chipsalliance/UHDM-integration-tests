module bsg_link_oddr_phy(reset_i, clk_i, data_i, ready_o, data_r_o, clk_r_o);
  wire [15:0] _00_;
  wire _01_;
  input clk_i;
  wire clk_i;
  reg clk_r;
  output clk_r_o;
  reg clk_r_o;
  input [31:0] data_i;
  wire [31:0] data_i;
  reg [31:0] data_i_r;
  output [15:0] data_r_o;
  reg [15:0] data_r_o;
  reg odd_r;
  output ready_o;
  wire ready_o;
  input reset_i;
  wire reset_i;
  reg reset_i_r;
  assign _00_[0] = odd_r ? data_i_r[0] : data_i_r[16];
  assign _00_[1] = odd_r ? data_i_r[1] : data_i_r[17];
  assign _00_[2] = odd_r ? data_i_r[2] : data_i_r[18];
  assign _00_[3] = odd_r ? data_i_r[3] : data_i_r[19];
  assign _00_[4] = odd_r ? data_i_r[4] : data_i_r[20];
  assign _00_[5] = odd_r ? data_i_r[5] : data_i_r[21];
  assign _00_[6] = odd_r ? data_i_r[6] : data_i_r[22];
  assign _00_[7] = odd_r ? data_i_r[7] : data_i_r[23];
  assign _00_[8] = odd_r ? data_i_r[8] : data_i_r[24];
  assign _00_[9] = odd_r ? data_i_r[9] : data_i_r[25];
  assign _00_[10] = odd_r ? data_i_r[10] : data_i_r[26];
  assign _00_[11] = odd_r ? data_i_r[11] : data_i_r[27];
  assign _00_[12] = odd_r ? data_i_r[12] : data_i_r[28];
  assign _00_[13] = odd_r ? data_i_r[13] : data_i_r[29];
  assign _00_[14] = odd_r ? data_i_r[14] : data_i_r[30];
  assign _00_[15] = odd_r ? data_i_r[15] : data_i_r[31];
  assign ready_o = ~odd_r;
  assign _01_ = ~clk_r;
  always @(posedge clk_i)
    if (!odd_r) data_i_r[0] <= data_i[0];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[1] <= data_i[1];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[2] <= data_i[2];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[3] <= data_i[3];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[4] <= data_i[4];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[5] <= data_i[5];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[6] <= data_i[6];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[7] <= data_i[7];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[8] <= data_i[8];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[9] <= data_i[9];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[10] <= data_i[10];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[11] <= data_i[11];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[12] <= data_i[12];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[13] <= data_i[13];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[14] <= data_i[14];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[15] <= data_i[15];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[16] <= data_i[16];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[17] <= data_i[17];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[18] <= data_i[18];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[19] <= data_i[19];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[20] <= data_i[20];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[21] <= data_i[21];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[22] <= data_i[22];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[23] <= data_i[23];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[24] <= data_i[24];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[25] <= data_i[25];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[26] <= data_i[26];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[27] <= data_i[27];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[28] <= data_i[28];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[29] <= data_i[29];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[30] <= data_i[30];
  always @(posedge clk_i)
    if (!odd_r) data_i_r[31] <= data_i[31];
  always @(posedge clk_i)
    data_r_o[0] <= _00_[0];
  always @(posedge clk_i)
    data_r_o[1] <= _00_[1];
  always @(posedge clk_i)
    data_r_o[2] <= _00_[2];
  always @(posedge clk_i)
    data_r_o[3] <= _00_[3];
  always @(posedge clk_i)
    data_r_o[4] <= _00_[4];
  always @(posedge clk_i)
    data_r_o[5] <= _00_[5];
  always @(posedge clk_i)
    data_r_o[6] <= _00_[6];
  always @(posedge clk_i)
    data_r_o[7] <= _00_[7];
  always @(posedge clk_i)
    data_r_o[8] <= _00_[8];
  always @(posedge clk_i)
    data_r_o[9] <= _00_[9];
  always @(posedge clk_i)
    data_r_o[10] <= _00_[10];
  always @(posedge clk_i)
    data_r_o[11] <= _00_[11];
  always @(posedge clk_i)
    data_r_o[12] <= _00_[12];
  always @(posedge clk_i)
    data_r_o[13] <= _00_[13];
  always @(posedge clk_i)
    data_r_o[14] <= _00_[14];
  always @(posedge clk_i)
    data_r_o[15] <= _00_[15];
  always @(negedge clk_i)
    clk_r_o <= clk_r;
  always @(posedge clk_i)
    reset_i_r <= reset_i;
  always @(negedge clk_i)
    if (reset_i_r) clk_r <= 1'h0;
    else clk_r <= _01_;
  always @(posedge clk_i)
    if (reset_i) odd_r <= 1'h0;
    else odd_r <= ready_o;
endmodule
