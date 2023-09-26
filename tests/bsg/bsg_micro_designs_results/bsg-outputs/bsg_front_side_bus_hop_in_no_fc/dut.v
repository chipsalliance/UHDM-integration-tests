module bsg_front_side_bus_hop_in_no_fc(clk_i, reset_i, data_i, v_i, data_o, v_o, local_accept_i);
  input clk_i;
  wire clk_i;
  input [15:0] data_i;
  wire [15:0] data_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  wire [15:0] data_r;
  wire \data_reg.clk_i ;
  wire [15:0] \data_reg.data_i ;
  wire [15:0] \data_reg.data_o ;
  reg [15:0] \data_reg.data_r ;
  input local_accept_i;
  wire local_accept_i;
  input reset_i;
  wire reset_i;
  input v_i;
  wire v_i;
  output [1:0] v_o;
  wire [1:0] v_o;
  wire v_r;
  wire \v_reg.clk_i ;
  wire \v_reg.data_i ;
  wire \v_reg.data_o ;
  reg \v_reg.data_r ;
  wire \v_reg.reset_i ;
  assign v_o[1] = local_accept_i & \v_reg.data_r ;
  always @(posedge clk_i)
    \data_reg.data_r [11] <= data_i[11];
  always @(posedge clk_i)
    \data_reg.data_r [12] <= data_i[12];
  always @(posedge clk_i)
    \data_reg.data_r [13] <= data_i[13];
  always @(posedge clk_i)
    \data_reg.data_r [14] <= data_i[14];
  always @(posedge clk_i)
    \data_reg.data_r [15] <= data_i[15];
  always @(posedge clk_i)
    if (reset_i) \v_reg.data_r  <= 1'h0;
    else \v_reg.data_r  <= v_i;
  always @(posedge clk_i)
    \data_reg.data_r [0] <= data_i[0];
  always @(posedge clk_i)
    \data_reg.data_r [1] <= data_i[1];
  always @(posedge clk_i)
    \data_reg.data_r [2] <= data_i[2];
  always @(posedge clk_i)
    \data_reg.data_r [3] <= data_i[3];
  always @(posedge clk_i)
    \data_reg.data_r [4] <= data_i[4];
  always @(posedge clk_i)
    \data_reg.data_r [5] <= data_i[5];
  always @(posedge clk_i)
    \data_reg.data_r [6] <= data_i[6];
  always @(posedge clk_i)
    \data_reg.data_r [7] <= data_i[7];
  always @(posedge clk_i)
    \data_reg.data_r [8] <= data_i[8];
  always @(posedge clk_i)
    \data_reg.data_r [9] <= data_i[9];
  always @(posedge clk_i)
    \data_reg.data_r [10] <= data_i[10];
  assign data_o = { \data_reg.data_r , \data_reg.data_r  };
  assign data_r = \data_reg.data_r ;
  assign \data_reg.clk_i  = clk_i;
  assign \data_reg.data_i  = data_i;
  assign \data_reg.data_o  = \data_reg.data_r ;
  assign v_o[0] = \v_reg.data_r ;
  assign v_r = \v_reg.data_r ;
  assign \v_reg.clk_i  = clk_i;
  assign \v_reg.data_i  = v_i;
  assign \v_reg.data_o  = \v_reg.data_r ;
  assign \v_reg.reset_i  = reset_i;
endmodule
