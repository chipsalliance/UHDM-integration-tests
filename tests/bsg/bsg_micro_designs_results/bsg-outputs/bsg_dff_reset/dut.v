module bsg_dff_reset(clk_i, reset_i, data_i, data_o);
  input clk_i;
  wire clk_i;
  input [15:0] data_i;
  wire [15:0] data_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  reg [15:0] data_r;
  input reset_i;
  wire reset_i;
  always @(posedge clk_i)
    if (reset_i) data_r[0] <= 1'h0;
    else data_r[0] <= data_i[0];
  always @(posedge clk_i)
    if (reset_i) data_r[1] <= 1'h0;
    else data_r[1] <= data_i[1];
  always @(posedge clk_i)
    if (reset_i) data_r[2] <= 1'h0;
    else data_r[2] <= data_i[2];
  always @(posedge clk_i)
    if (reset_i) data_r[3] <= 1'h0;
    else data_r[3] <= data_i[3];
  always @(posedge clk_i)
    if (reset_i) data_r[4] <= 1'h0;
    else data_r[4] <= data_i[4];
  always @(posedge clk_i)
    if (reset_i) data_r[5] <= 1'h0;
    else data_r[5] <= data_i[5];
  always @(posedge clk_i)
    if (reset_i) data_r[6] <= 1'h0;
    else data_r[6] <= data_i[6];
  always @(posedge clk_i)
    if (reset_i) data_r[7] <= 1'h0;
    else data_r[7] <= data_i[7];
  always @(posedge clk_i)
    if (reset_i) data_r[8] <= 1'h0;
    else data_r[8] <= data_i[8];
  always @(posedge clk_i)
    if (reset_i) data_r[9] <= 1'h0;
    else data_r[9] <= data_i[9];
  always @(posedge clk_i)
    if (reset_i) data_r[10] <= 1'h0;
    else data_r[10] <= data_i[10];
  always @(posedge clk_i)
    if (reset_i) data_r[11] <= 1'h0;
    else data_r[11] <= data_i[11];
  always @(posedge clk_i)
    if (reset_i) data_r[12] <= 1'h0;
    else data_r[12] <= data_i[12];
  always @(posedge clk_i)
    if (reset_i) data_r[13] <= 1'h0;
    else data_r[13] <= data_i[13];
  always @(posedge clk_i)
    if (reset_i) data_r[14] <= 1'h0;
    else data_r[14] <= data_i[14];
  always @(posedge clk_i)
    if (reset_i) data_r[15] <= 1'h0;
    else data_r[15] <= data_i[15];
  assign data_o = data_r;
endmodule
