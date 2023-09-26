module bsg_one_fifo(clk_i, reset_i, ready_o, data_i, v_i, v_o, data_o, yumi_i);
  wire _00_;
  input clk_i;
  wire clk_i;
  input [15:0] data_i;
  wire [15:0] data_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire \dff.clk_i ;
  wire [15:0] \dff.data_i ;
  wire [15:0] \dff.data_o ;
  reg [15:0] \dff.data_r ;
  wire \dff.en_i ;
  wire \dff_full.clk_i ;
  wire \dff_full.data_i ;
  wire \dff_full.data_o ;
  reg \dff_full.data_r ;
  wire \dff_full.reset_i ;
  wire full_r;
  output ready_o;
  wire ready_o;
  input reset_i;
  wire reset_i;
  input v_i;
  wire v_i;
  output v_o;
  wire v_o;
  input yumi_i;
  wire yumi_i;
  assign ready_o = ~\dff_full.data_r ;
  assign _00_ = ~yumi_i;
  assign \dff_full.data_i  = \dff_full.data_r  ? _00_ : v_i;
  assign \dff.en_i  = v_i & ~(\dff_full.data_r );
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [2] <= data_i[2];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [3] <= data_i[3];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [4] <= data_i[4];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [5] <= data_i[5];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [6] <= data_i[6];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [7] <= data_i[7];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [8] <= data_i[8];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [9] <= data_i[9];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [10] <= data_i[10];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [11] <= data_i[11];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [12] <= data_i[12];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [13] <= data_i[13];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [14] <= data_i[14];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [15] <= data_i[15];
  always @(posedge clk_i)
    if (reset_i) \dff_full.data_r  <= 1'h0;
    else \dff_full.data_r  <= \dff_full.data_i ;
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [0] <= data_i[0];
  always @(posedge clk_i)
    if (\dff.en_i ) \dff.data_r [1] <= data_i[1];
  assign data_o = \dff.data_r ;
  assign \dff.clk_i  = clk_i;
  assign \dff.data_i  = data_i;
  assign \dff.data_o  = \dff.data_r ;
  assign \dff_full.clk_i  = clk_i;
  assign \dff_full.data_o  = \dff_full.data_r ;
  assign \dff_full.reset_i  = reset_i;
  assign full_r = \dff_full.data_r ;
  assign v_o = \dff_full.data_r ;
endmodule
