module bsg_counter_clear_up_one_hot(clk_i, reset_i, clear_i, up_i, count_r_o);
  wire [16:0] _00_;
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
  reg [16:0] bits_r;
  input clear_i;
  wire clear_i;
  input clk_i;
  wire clk_i;
  output [16:0] count_r_o;
  wire [16:0] count_r_o;
  input reset_i;
  wire reset_i;
  input up_i;
  wire up_i;
  assign _01_ = bits_r[2] & ~(clear_i);
  assign _02_ = bits_r[1] & ~(clear_i);
  assign _00_[2] = up_i ? _02_ : _01_;
  assign _03_ = bits_r[3] & ~(clear_i);
  assign _00_[3] = up_i ? _01_ : _03_;
  assign _04_ = bits_r[4] & ~(clear_i);
  assign _00_[4] = up_i ? _03_ : _04_;
  assign _05_ = bits_r[5] & ~(clear_i);
  assign _00_[5] = up_i ? _04_ : _05_;
  assign _06_ = bits_r[6] & ~(clear_i);
  assign _00_[6] = up_i ? _05_ : _06_;
  assign _07_ = bits_r[7] & ~(clear_i);
  assign _00_[7] = up_i ? _06_ : _07_;
  assign _08_ = bits_r[8] & ~(clear_i);
  assign _00_[8] = up_i ? _07_ : _08_;
  assign _09_ = bits_r[9] & ~(clear_i);
  assign _00_[9] = up_i ? _08_ : _09_;
  assign _10_ = bits_r[10] & ~(clear_i);
  assign _00_[10] = up_i ? _09_ : _10_;
  assign _11_ = bits_r[11] & ~(clear_i);
  assign _00_[11] = up_i ? _10_ : _11_;
  assign _12_ = bits_r[12] & ~(clear_i);
  assign _00_[12] = up_i ? _11_ : _12_;
  assign _13_ = bits_r[13] & ~(clear_i);
  assign _00_[13] = up_i ? _12_ : _13_;
  assign _14_ = bits_r[14] & ~(clear_i);
  assign _00_[14] = up_i ? _13_ : _14_;
  assign _15_ = bits_r[15] & ~(clear_i);
  assign _00_[15] = up_i ? _14_ : _15_;
  assign _16_ = bits_r[16] & ~(clear_i);
  assign _00_[16] = up_i ? _15_ : _16_;
  assign _17_ = clear_i | bits_r[0];
  assign _00_[0] = up_i ? _16_ : _17_;
  assign _00_[1] = up_i ? _17_ : _02_;
  assign _18_ = reset_i | up_i;
  assign _19_ = _18_ | clear_i;
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[0] <= 1'h1;
      else bits_r[0] <= _00_[0];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[1] <= 1'h0;
      else bits_r[1] <= _00_[1];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[2] <= 1'h0;
      else bits_r[2] <= _00_[2];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[3] <= 1'h0;
      else bits_r[3] <= _00_[3];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[4] <= 1'h0;
      else bits_r[4] <= _00_[4];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[5] <= 1'h0;
      else bits_r[5] <= _00_[5];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[6] <= 1'h0;
      else bits_r[6] <= _00_[6];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[7] <= 1'h0;
      else bits_r[7] <= _00_[7];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[8] <= 1'h0;
      else bits_r[8] <= _00_[8];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[9] <= 1'h0;
      else bits_r[9] <= _00_[9];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[10] <= 1'h0;
      else bits_r[10] <= _00_[10];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[11] <= 1'h0;
      else bits_r[11] <= _00_[11];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[12] <= 1'h0;
      else bits_r[12] <= _00_[12];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[13] <= 1'h0;
      else bits_r[13] <= _00_[13];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[14] <= 1'h0;
      else bits_r[14] <= _00_[14];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[15] <= 1'h0;
      else bits_r[15] <= _00_[15];
  always @(posedge clk_i)
    if (_19_)
      if (reset_i) bits_r[16] <= 1'h0;
      else bits_r[16] <= _00_[16];
  assign count_r_o = bits_r;
endmodule
