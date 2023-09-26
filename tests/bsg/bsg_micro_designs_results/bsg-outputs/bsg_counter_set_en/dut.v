module bsg_counter_set_en(clk_i, reset_i, set_i, en_i, val_i, count_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  input clk_i;
  wire clk_i;
  output [2:0] count_o;
  reg [2:0] count_o;
  input en_i;
  wire en_i;
  input reset_i;
  wire reset_i;
  input set_i;
  wire set_i;
  input [2:0] val_i;
  wire [2:0] val_i;
  assign _00_ = en_i | set_i;
  assign _01_ = ~count_o[0];
  assign _05_ = set_i ? val_i[0] : _01_;
  assign _02_ = count_o[1] ^ count_o[0];
  assign _06_ = set_i ? val_i[1] : _02_;
  assign _03_ = count_o[1] & count_o[0];
  assign _04_ = _03_ ^ count_o[2];
  assign _07_ = set_i ? val_i[2] : _04_;
  always @(posedge clk_i)
    if (reset_i) count_o[0] <= 1'h0;
    else if (_00_) count_o[0] <= _05_;
  always @(posedge clk_i)
    if (reset_i) count_o[1] <= 1'h0;
    else if (_00_) count_o[1] <= _06_;
  always @(posedge clk_i)
    if (reset_i) count_o[2] <= 1'h0;
    else if (_00_) count_o[2] <= _07_;
endmodule
