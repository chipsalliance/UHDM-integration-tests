module bsg_relay_fifo(clk_i, reset_i, ready_o, data_i, v_i, v_o, data_o, ready_i);
  reg _00_;
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
  input clk_i;
  wire clk_i;
  input [15:0] data_i;
  wire [15:0] data_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  input ready_i;
  wire ready_i;
  output ready_o;
  wire ready_o;
  input reset_i;
  wire reset_i;
  wire \two_fifo.clk_i ;
  wire [15:0] \two_fifo.data_i ;
  wire [15:0] \two_fifo.data_o ;
  wire \two_fifo.deq_i ;
  reg \two_fifo.empty_r ;
  wire \two_fifo.enq_i ;
  reg \two_fifo.full_r ;
  reg \two_fifo.head_r ;
  wire \two_fifo.mem_1r1w.r_addr_i ;
  wire [15:0] \two_fifo.mem_1r1w.r_data_o ;
  reg [15:0] \two_fifo.mem_1r1w.synth.nz.mem[0] ;
  reg [15:0] \two_fifo.mem_1r1w.synth.nz.mem[1] ;
  wire \two_fifo.mem_1r1w.synth.r_addr_i ;
  wire [15:0] \two_fifo.mem_1r1w.synth.r_data_o ;
  wire \two_fifo.mem_1r1w.synth.unused0 ;
  wire \two_fifo.mem_1r1w.synth.w_addr_i ;
  wire \two_fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \two_fifo.mem_1r1w.synth.w_data_i ;
  wire \two_fifo.mem_1r1w.synth.w_reset_i ;
  wire \two_fifo.mem_1r1w.synth.w_v_i ;
  wire \two_fifo.mem_1r1w.w_addr_i ;
  wire \two_fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \two_fifo.mem_1r1w.w_data_i ;
  wire \two_fifo.mem_1r1w.w_reset_i ;
  wire \two_fifo.mem_1r1w.w_v_i ;
  wire \two_fifo.ready_o ;
  wire \two_fifo.reset_i ;
  reg \two_fifo.tail_r ;
  wire \two_fifo.v_i ;
  wire \two_fifo.v_o ;
  wire \two_fifo.yumi_i ;
  input v_i;
  wire v_i;
  output v_o;
  wire v_o;
  wire yumi;
  assign _03_ = ~\two_fifo.head_r ;
  assign \two_fifo.deq_i  = ready_i & ~(\two_fifo.empty_r );
  assign _02_ = \two_fifo.deq_i  ^ \two_fifo.head_r ;
  assign data_o[0] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [0] : \two_fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign data_o[1] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [1] : \two_fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign data_o[2] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [2] : \two_fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign data_o[3] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [3] : \two_fifo.mem_1r1w.synth.nz.mem[0] [3];
  assign data_o[4] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [4] : \two_fifo.mem_1r1w.synth.nz.mem[0] [4];
  assign data_o[5] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [5] : \two_fifo.mem_1r1w.synth.nz.mem[0] [5];
  assign data_o[6] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [6] : \two_fifo.mem_1r1w.synth.nz.mem[0] [6];
  assign data_o[7] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [7] : \two_fifo.mem_1r1w.synth.nz.mem[0] [7];
  assign data_o[8] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [8] : \two_fifo.mem_1r1w.synth.nz.mem[0] [8];
  assign data_o[9] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [9] : \two_fifo.mem_1r1w.synth.nz.mem[0] [9];
  assign data_o[10] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [10] : \two_fifo.mem_1r1w.synth.nz.mem[0] [10];
  assign data_o[11] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [11] : \two_fifo.mem_1r1w.synth.nz.mem[0] [11];
  assign data_o[12] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [12] : \two_fifo.mem_1r1w.synth.nz.mem[0] [12];
  assign data_o[13] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [13] : \two_fifo.mem_1r1w.synth.nz.mem[0] [13];
  assign data_o[14] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [14] : \two_fifo.mem_1r1w.synth.nz.mem[0] [14];
  assign data_o[15] = _00_ ? \two_fifo.mem_1r1w.synth.nz.mem[1] [15] : \two_fifo.mem_1r1w.synth.nz.mem[0] [15];
  assign _01_ = ~\two_fifo.tail_r ;
  assign ready_o = ~\two_fifo.full_r ;
  assign v_o = ~\two_fifo.empty_r ;
  assign \two_fifo.enq_i  = v_i & ~(\two_fifo.full_r );
  assign _09_ = \two_fifo.full_r  | ~(v_i);
  assign _07_ = \two_fifo.tail_r  & ~(_09_);
  assign _06_ = _01_ & ~(_09_);
  assign _10_ = \two_fifo.empty_r  | ~(ready_i);
  assign _11_ = _09_ | \two_fifo.empty_r ;
  assign _12_ = _10_ & ~(_11_);
  assign _13_ = \two_fifo.full_r  & ~(\two_fifo.deq_i );
  assign _04_ = _13_ | _12_;
  assign _14_ = \two_fifo.empty_r  & ~(\two_fifo.enq_i );
  assign _15_ = _10_ | \two_fifo.full_r ;
  assign _08_ = _09_ & ~(_15_);
  assign _05_ = _08_ | _14_;
  always @(posedge clk_i)
    if (reset_i) \two_fifo.full_r  <= 1'h0;
    else \two_fifo.full_r  <= _04_;
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_07_) \two_fifo.mem_1r1w.synth.nz.mem[1] [15] <= data_i[15];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_06_) \two_fifo.mem_1r1w.synth.nz.mem[0] [15] <= data_i[15];
  always @(posedge clk_i)
    if (reset_i) \two_fifo.empty_r  <= 1'h1;
    else \two_fifo.empty_r  <= _05_;
  always @(posedge clk_i)
    if (reset_i) \two_fifo.tail_r  <= 1'h0;
    else if (\two_fifo.enq_i ) \two_fifo.tail_r  <= _01_;
  always @(posedge clk_i)
    if (reset_i) \two_fifo.head_r  <= 1'h0;
    else if (\two_fifo.deq_i ) \two_fifo.head_r  <= _03_;
  always @(posedge clk_i)
    if (reset_i) _00_ <= 1'h0;
    else _00_ <= _02_;
  assign \two_fifo.clk_i  = clk_i;
  assign \two_fifo.data_i  = data_i;
  assign \two_fifo.data_o  = data_o;
  assign \two_fifo.mem_1r1w.r_addr_i  = \two_fifo.head_r ;
  assign \two_fifo.mem_1r1w.r_data_o  = data_o;
  assign \two_fifo.mem_1r1w.synth.r_addr_i  = \two_fifo.head_r ;
  assign \two_fifo.mem_1r1w.synth.r_data_o  = data_o;
  assign \two_fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \two_fifo.mem_1r1w.synth.w_addr_i  = \two_fifo.tail_r ;
  assign \two_fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \two_fifo.mem_1r1w.synth.w_data_i  = data_i;
  assign \two_fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \two_fifo.mem_1r1w.synth.w_v_i  = \two_fifo.enq_i ;
  assign \two_fifo.mem_1r1w.w_addr_i  = \two_fifo.tail_r ;
  assign \two_fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \two_fifo.mem_1r1w.w_data_i  = data_i;
  assign \two_fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \two_fifo.mem_1r1w.w_v_i  = \two_fifo.enq_i ;
  assign \two_fifo.ready_o  = ready_o;
  assign \two_fifo.reset_i  = reset_i;
  assign \two_fifo.v_i  = v_i;
  assign \two_fifo.v_o  = v_o;
  assign \two_fifo.yumi_i  = \two_fifo.deq_i ;
  assign yumi = \two_fifo.deq_i ;
endmodule
