module bsg_lfsr(clk, reset_i, yumi_i, o);
  wire _0_;
  input clk;
  wire clk;
  output [15:0] o;
  wire [15:0] o;
  wire [15:0] o_n;
  wire [15:0] o_r;
  input reset_i;
  wire reset_i;
  wire [15:0] xor_mask;
  input yumi_i;
  wire yumi_i;
  always @* if (_0_) assert(1'h0);
  reg \o_r_reg[0] ;
  always @(posedge clk)
    if (reset_i) \o_r_reg[0]  <= 1'h1;
    else if (yumi_i) \o_r_reg[0]  <= 1'h0;
  assign o_r[0] = \o_r_reg[0] ;
  \$initstate  _3_ (
    .Y(_0_)
  );
  assign o = { 15'h0000, o_r[0] };
  assign o_n = 16'h0000;
  assign o_r[15:1] = 15'h0000;
  assign xor_mask = 16'hxxxx;
endmodule
