module bsg_cycle_counter(clk_i, reset_i, ctr_r_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire [15:0] _22_;
  wire [15:0] _23_;
  input clk_i;
  wire clk_i;
  output [15:0] ctr_r_o;
  reg [15:0] ctr_r_o;
  input reset_i;
  wire reset_i;
  assign _22_[0] = ~ctr_r_o[0];
  assign _23_[1] = ctr_r_o[1] ^ ctr_r_o[0];
  assign _00_ = ~(ctr_r_o[1] & ctr_r_o[0]);
  assign _23_[2] = ~(_00_ ^ ctr_r_o[2]);
  assign _01_ = ctr_r_o[2] & ~(_00_);
  assign _23_[3] = _01_ ^ ctr_r_o[3];
  assign _02_ = ~(ctr_r_o[3] & ctr_r_o[2]);
  assign _03_ = _02_ | _00_;
  assign _23_[4] = ~(_03_ ^ ctr_r_o[4]);
  assign _04_ = ctr_r_o[4] & ~(_03_);
  assign _23_[5] = _04_ ^ ctr_r_o[5];
  assign _05_ = ~(ctr_r_o[5] & ctr_r_o[4]);
  assign _06_ = _05_ | _03_;
  assign _23_[6] = ~(_06_ ^ ctr_r_o[6]);
  assign _07_ = ctr_r_o[6] & ~(_06_);
  assign _23_[7] = _07_ ^ ctr_r_o[7];
  assign _08_ = ~(ctr_r_o[7] & ctr_r_o[6]);
  assign _09_ = _08_ | _05_;
  assign _10_ = _09_ | _03_;
  assign _23_[8] = ~(_10_ ^ ctr_r_o[8]);
  assign _11_ = ctr_r_o[8] & ~(_10_);
  assign _23_[9] = _11_ ^ ctr_r_o[9];
  assign _12_ = ~(ctr_r_o[9] & ctr_r_o[8]);
  assign _13_ = _12_ | _10_;
  assign _23_[10] = ~(_13_ ^ ctr_r_o[10]);
  assign _14_ = ctr_r_o[10] & ~(_13_);
  assign _23_[11] = _14_ ^ ctr_r_o[11];
  assign _15_ = ~(ctr_r_o[11] & ctr_r_o[10]);
  assign _16_ = _15_ | _12_;
  assign _17_ = _16_ | _10_;
  assign _23_[12] = ~(_17_ ^ ctr_r_o[12]);
  assign _18_ = ctr_r_o[12] & ~(_17_);
  assign _23_[13] = _18_ ^ ctr_r_o[13];
  assign _19_ = ~(ctr_r_o[13] & ctr_r_o[12]);
  assign _20_ = _19_ | _17_;
  assign _23_[14] = ~(_20_ ^ ctr_r_o[14]);
  assign _21_ = ctr_r_o[14] & ~(_20_);
  assign _23_[15] = _21_ ^ ctr_r_o[15];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[6] <= 1'h0;
    else ctr_r_o[6] <= _23_[6];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[7] <= 1'h0;
    else ctr_r_o[7] <= _23_[7];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[8] <= 1'h0;
    else ctr_r_o[8] <= _23_[8];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[9] <= 1'h0;
    else ctr_r_o[9] <= _23_[9];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[10] <= 1'h0;
    else ctr_r_o[10] <= _23_[10];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[11] <= 1'h0;
    else ctr_r_o[11] <= _23_[11];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[12] <= 1'h0;
    else ctr_r_o[12] <= _23_[12];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[13] <= 1'h0;
    else ctr_r_o[13] <= _23_[13];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[14] <= 1'h0;
    else ctr_r_o[14] <= _23_[14];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[15] <= 1'h0;
    else ctr_r_o[15] <= _23_[15];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[0] <= 1'h0;
    else ctr_r_o[0] <= _22_[0];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[1] <= 1'h0;
    else ctr_r_o[1] <= _23_[1];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[2] <= 1'h0;
    else ctr_r_o[2] <= _23_[2];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[3] <= 1'h0;
    else ctr_r_o[3] <= _23_[3];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[4] <= 1'h0;
    else ctr_r_o[4] <= _23_[4];
  always @(posedge clk_i)
    if (reset_i) ctr_r_o[5] <= 1'h0;
    else ctr_r_o[5] <= _23_[5];
  assign _22_[15:1] = ctr_r_o[15:1];
  assign _23_[0] = _22_[0];
endmodule
