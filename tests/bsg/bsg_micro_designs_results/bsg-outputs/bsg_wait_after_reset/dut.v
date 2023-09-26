module bsg_wait_after_reset(reset_i, clk_i, ready_r_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire [4:0] _08_;
  wire [4:0] _09_;
  input clk_i;
  wire clk_i;
  reg [4:0] counter_r;
  output ready_r_o;
  reg ready_r_o;
  input reset_i;
  wire reset_i;
  assign _08_[0] = ~counter_r[0];
  assign _01_ = counter_r[1] | counter_r[0];
  assign _02_ = counter_r[3] | counter_r[2];
  assign _03_ = _02_ | _01_;
  assign _00_ = _03_ | counter_r[4];
  assign _09_[1] = counter_r[1] ^ counter_r[0];
  assign _04_ = counter_r[1] & counter_r[0];
  assign _09_[2] = _04_ ^ counter_r[2];
  assign _05_ = _04_ & counter_r[2];
  assign _09_[3] = _05_ ^ counter_r[3];
  assign _06_ = ~(counter_r[3] & counter_r[2]);
  assign _07_ = _04_ & ~(_06_);
  assign _09_[4] = _07_ ^ counter_r[4];
  always @(posedge clk_i)
    if (reset_i) ready_r_o <= 1'h0;
    else if (!_00_) ready_r_o <= 1'h1;
  always @(posedge clk_i)
    if (reset_i) counter_r[0] <= 1'h1;
    else if (_00_) counter_r[0] <= _08_[0];
  always @(posedge clk_i)
    if (reset_i) counter_r[1] <= 1'h0;
    else if (_00_) counter_r[1] <= _09_[1];
  always @(posedge clk_i)
    if (reset_i) counter_r[2] <= 1'h0;
    else if (_00_) counter_r[2] <= _09_[2];
  always @(posedge clk_i)
    if (reset_i) counter_r[3] <= 1'h0;
    else if (_00_) counter_r[3] <= _09_[3];
  always @(posedge clk_i)
    if (reset_i) counter_r[4] <= 1'h0;
    else if (_00_) counter_r[4] <= _09_[4];
  assign _08_[4:1] = counter_r[4:1];
  assign _09_[0] = _08_[0];
endmodule
