module bsg_dff_en_bypass(clk_i, en_i, data_i, data_o);
  input clk_i;
  wire clk_i;
  input [15:0] data_i;
  wire [15:0] data_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire [15:0] data_r;
  wire \dff.clk_i ;
  wire [15:0] \dff.data_i ;
  wire [15:0] \dff.data_o ;
  reg [15:0] \dff.data_r ;
  wire \dff.en_i ;
  input en_i;
  wire en_i;
  assign data_o[1] = en_i ? data_i[1] : \dff.data_r [1];
  assign data_o[2] = en_i ? data_i[2] : \dff.data_r [2];
  assign data_o[3] = en_i ? data_i[3] : \dff.data_r [3];
  assign data_o[4] = en_i ? data_i[4] : \dff.data_r [4];
  assign data_o[5] = en_i ? data_i[5] : \dff.data_r [5];
  assign data_o[6] = en_i ? data_i[6] : \dff.data_r [6];
  assign data_o[7] = en_i ? data_i[7] : \dff.data_r [7];
  assign data_o[8] = en_i ? data_i[8] : \dff.data_r [8];
  assign data_o[9] = en_i ? data_i[9] : \dff.data_r [9];
  assign data_o[10] = en_i ? data_i[10] : \dff.data_r [10];
  assign data_o[11] = en_i ? data_i[11] : \dff.data_r [11];
  assign data_o[12] = en_i ? data_i[12] : \dff.data_r [12];
  assign data_o[13] = en_i ? data_i[13] : \dff.data_r [13];
  assign data_o[14] = en_i ? data_i[14] : \dff.data_r [14];
  assign data_o[15] = en_i ? data_i[15] : \dff.data_r [15];
  assign data_o[0] = en_i ? data_i[0] : \dff.data_r [0];
  always @(posedge clk_i)
    \dff.data_r [0] <= data_o[0];
  always @(posedge clk_i)
    \dff.data_r [1] <= data_o[1];
  always @(posedge clk_i)
    \dff.data_r [2] <= data_o[2];
  always @(posedge clk_i)
    \dff.data_r [3] <= data_o[3];
  always @(posedge clk_i)
    \dff.data_r [4] <= data_o[4];
  always @(posedge clk_i)
    \dff.data_r [5] <= data_o[5];
  always @(posedge clk_i)
    \dff.data_r [6] <= data_o[6];
  always @(posedge clk_i)
    \dff.data_r [7] <= data_o[7];
  always @(posedge clk_i)
    \dff.data_r [8] <= data_o[8];
  always @(posedge clk_i)
    \dff.data_r [9] <= data_o[9];
  always @(posedge clk_i)
    \dff.data_r [10] <= data_o[10];
  always @(posedge clk_i)
    \dff.data_r [11] <= data_o[11];
  always @(posedge clk_i)
    \dff.data_r [12] <= data_o[12];
  always @(posedge clk_i)
    \dff.data_r [13] <= data_o[13];
  always @(posedge clk_i)
    \dff.data_r [14] <= data_o[14];
  always @(posedge clk_i)
    \dff.data_r [15] <= data_o[15];
  assign data_r = \dff.data_r ;
  assign \dff.clk_i  = clk_i;
  assign \dff.data_i  = data_i;
  assign \dff.data_o  = \dff.data_r ;
  assign \dff.en_i  = en_i;
endmodule
