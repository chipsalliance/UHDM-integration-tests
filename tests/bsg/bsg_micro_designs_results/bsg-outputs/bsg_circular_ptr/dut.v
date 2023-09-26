module bsg_circular_ptr(clk, reset_i, add_i, o, n_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  input add_i;
  wire add_i;
  input clk;
  wire clk;
  output [3:0] n_o;
  wire [3:0] n_o;
  output [3:0] o;
  wire [3:0] o;
  wire [3:0] ptr_n;
  reg [3:0] ptr_r;
  input reset_i;
  wire reset_i;
  assign n_o[0] = add_i ^ ptr_r[0];
  assign _00_ = ptr_r[1] ^ ptr_r[0];
  assign n_o[1] = add_i ? _00_ : ptr_r[1];
  assign _01_ = ~(ptr_r[1] & ptr_r[0]);
  assign _02_ = ~(_01_ ^ ptr_r[2]);
  assign n_o[2] = add_i ? _02_ : ptr_r[2];
  assign _03_ = ptr_r[2] & ~(_01_);
  assign _04_ = _03_ ^ ptr_r[3];
  assign n_o[3] = add_i ? _04_ : ptr_r[3];
  always @(posedge clk)
    if (reset_i) ptr_r[2] <= 1'h0;
    else ptr_r[2] <= n_o[2];
  always @(posedge clk)
    if (reset_i) ptr_r[3] <= 1'h0;
    else ptr_r[3] <= n_o[3];
  always @(posedge clk)
    if (reset_i) ptr_r[0] <= 1'h0;
    else ptr_r[0] <= n_o[0];
  always @(posedge clk)
    if (reset_i) ptr_r[1] <= 1'h0;
    else ptr_r[1] <= n_o[1];
  assign o = ptr_r;
  assign ptr_n = n_o;
endmodule
