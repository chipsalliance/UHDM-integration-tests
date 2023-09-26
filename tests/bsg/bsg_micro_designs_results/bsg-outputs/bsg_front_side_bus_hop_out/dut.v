module bsg_front_side_bus_hop_out(clk_i, reset_i, v_i, data_i, ready_o, yumi_o, v_o, data_o, ready_i);
  reg _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  input clk_i;
  wire clk_i;
  input [31:0] data_i;
  wire [31:0] data_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire \fifo.clk_i ;
  wire [15:0] \fifo.data_i ;
  wire [15:0] \fifo.data_o ;
  reg \fifo.empty_r ;
  reg \fifo.full_r ;
  reg \fifo.head_r ;
  wire \fifo.mem_1r1w.r_addr_i ;
  wire [15:0] \fifo.mem_1r1w.r_data_o ;
  reg [15:0] \fifo.mem_1r1w.synth.nz.mem[0] ;
  reg [15:0] \fifo.mem_1r1w.synth.nz.mem[1] ;
  wire \fifo.mem_1r1w.synth.r_addr_i ;
  wire [15:0] \fifo.mem_1r1w.synth.r_data_o ;
  wire \fifo.mem_1r1w.synth.unused0 ;
  wire \fifo.mem_1r1w.synth.w_addr_i ;
  wire \fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fifo.mem_1r1w.synth.w_data_i ;
  wire \fifo.mem_1r1w.synth.w_reset_i ;
  wire \fifo.mem_1r1w.w_addr_i ;
  wire \fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fifo.mem_1r1w.w_data_i ;
  wire \fifo.mem_1r1w.w_reset_i ;
  wire \fifo.reset_i ;
  reg \fifo.tail_r ;
  wire \fifo.v_o ;
  wire fifo_v;
  input ready_i;
  wire ready_i;
  output ready_o;
  wire ready_o;
  input reset_i;
  wire reset_i;
  reg v1_blocked_r;
  input [1:0] v_i;
  wire [1:0] v_i;
  output v_o;
  wire v_o;
  output yumi_o;
  wire yumi_o;
  wire yumi_o_tmp;
  assign data_o[0] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [0] : \fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign data_o[1] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [1] : \fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign data_o[2] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [2] : \fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign data_o[3] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [3] : \fifo.mem_1r1w.synth.nz.mem[0] [3];
  assign data_o[4] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [4] : \fifo.mem_1r1w.synth.nz.mem[0] [4];
  assign data_o[5] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [5] : \fifo.mem_1r1w.synth.nz.mem[0] [5];
  assign data_o[6] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [6] : \fifo.mem_1r1w.synth.nz.mem[0] [6];
  assign data_o[7] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [7] : \fifo.mem_1r1w.synth.nz.mem[0] [7];
  assign data_o[8] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [8] : \fifo.mem_1r1w.synth.nz.mem[0] [8];
  assign data_o[9] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [9] : \fifo.mem_1r1w.synth.nz.mem[0] [9];
  assign data_o[10] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [10] : \fifo.mem_1r1w.synth.nz.mem[0] [10];
  assign data_o[11] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [11] : \fifo.mem_1r1w.synth.nz.mem[0] [11];
  assign data_o[12] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [12] : \fifo.mem_1r1w.synth.nz.mem[0] [12];
  assign data_o[13] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [13] : \fifo.mem_1r1w.synth.nz.mem[0] [13];
  assign data_o[14] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [14] : \fifo.mem_1r1w.synth.nz.mem[0] [14];
  assign data_o[15] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [15] : \fifo.mem_1r1w.synth.nz.mem[0] [15];
  assign _004_ = ~\fifo.head_r ;
  assign _009_ = \fifo.empty_r  | ~(ready_i);
  assign _003_ = _009_ ^ _004_;
  assign _010_ = v_i[0] & ~(v1_blocked_r);
  assign \fifo.mem_1r1w.synth.w_data_i [0] = _010_ ? data_i[0] : data_i[16];
  assign \fifo.mem_1r1w.synth.w_data_i [1] = _010_ ? data_i[1] : data_i[17];
  assign \fifo.mem_1r1w.synth.w_data_i [2] = _010_ ? data_i[2] : data_i[18];
  assign \fifo.mem_1r1w.synth.w_data_i [3] = _010_ ? data_i[3] : data_i[19];
  assign \fifo.mem_1r1w.synth.w_data_i [4] = _010_ ? data_i[4] : data_i[20];
  assign \fifo.mem_1r1w.synth.w_data_i [5] = _010_ ? data_i[5] : data_i[21];
  assign \fifo.mem_1r1w.synth.w_data_i [6] = _010_ ? data_i[6] : data_i[22];
  assign \fifo.mem_1r1w.synth.w_data_i [7] = _010_ ? data_i[7] : data_i[23];
  assign \fifo.mem_1r1w.synth.w_data_i [8] = _010_ ? data_i[8] : data_i[24];
  assign \fifo.mem_1r1w.synth.w_data_i [9] = _010_ ? data_i[9] : data_i[25];
  assign \fifo.mem_1r1w.synth.w_data_i [10] = _010_ ? data_i[10] : data_i[26];
  assign \fifo.mem_1r1w.synth.w_data_i [11] = _010_ ? data_i[11] : data_i[27];
  assign \fifo.mem_1r1w.synth.w_data_i [12] = _010_ ? data_i[12] : data_i[28];
  assign \fifo.mem_1r1w.synth.w_data_i [13] = _010_ ? data_i[13] : data_i[29];
  assign \fifo.mem_1r1w.synth.w_data_i [14] = _010_ ? data_i[14] : data_i[30];
  assign \fifo.mem_1r1w.synth.w_data_i [15] = _010_ ? data_i[15] : data_i[31];
  assign _002_ = ~\fifo.tail_r ;
  assign v_o = ~\fifo.empty_r ;
  assign _011_ = ~(v_i[1] | v_i[0]);
  assign _012_ = _011_ | \fifo.full_r ;
  assign _013_ = v_i[1] & ~(\fifo.full_r );
  assign yumi_o = _013_ & ~(_010_);
  assign ready_o = ~(\fifo.full_r  | v1_blocked_r);
  assign _001_ = _010_ & v_i[1];
  assign _008_ = \fifo.tail_r  & ~(_012_);
  assign _007_ = _002_ & ~(_012_);
  assign _014_ = _012_ | \fifo.empty_r ;
  assign _015_ = _009_ & ~(_014_);
  assign _016_ = _009_ & \fifo.full_r ;
  assign _005_ = _016_ | _015_;
  assign _017_ = _012_ & ~(v_o);
  assign _018_ = _009_ | \fifo.full_r ;
  assign _019_ = _012_ & ~(_018_);
  assign _006_ = _019_ | _017_;
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [0] <= \fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [1] <= \fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [2] <= \fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [3] <= \fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [4] <= \fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [5] <= \fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [6] <= \fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [7] <= \fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [8] <= \fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [9] <= \fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [10] <= \fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [11] <= \fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [12] <= \fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [13] <= \fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [14] <= \fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_008_) \fifo.mem_1r1w.synth.nz.mem[1] [15] <= \fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (reset_i) v1_blocked_r <= 1'h0;
    else if (!\fifo.full_r ) v1_blocked_r <= _001_;
  always @(posedge clk_i)
    if (reset_i) \fifo.full_r  <= 1'h0;
    else \fifo.full_r  <= _005_;
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [0] <= \fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [1] <= \fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [2] <= \fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [3] <= \fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [4] <= \fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [5] <= \fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [6] <= \fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [7] <= \fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [8] <= \fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [9] <= \fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [10] <= \fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [11] <= \fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [12] <= \fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [13] <= \fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [14] <= \fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_007_) \fifo.mem_1r1w.synth.nz.mem[0] [15] <= \fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (reset_i) \fifo.empty_r  <= 1'h1;
    else \fifo.empty_r  <= _006_;
  always @(posedge clk_i)
    if (reset_i) \fifo.tail_r  <= 1'h0;
    else if (!_012_) \fifo.tail_r  <= _002_;
  always @(posedge clk_i)
    if (reset_i) \fifo.head_r  <= 1'h0;
    else if (!_009_) \fifo.head_r  <= _004_;
  always @(posedge clk_i)
    if (reset_i) _000_ <= 1'h0;
    else _000_ <= _003_;
  assign \fifo.clk_i  = clk_i;
  assign \fifo.data_i  = \fifo.mem_1r1w.synth.w_data_i ;
  assign \fifo.data_o  = data_o;
  assign \fifo.mem_1r1w.r_addr_i  = \fifo.head_r ;
  assign \fifo.mem_1r1w.r_data_o  = data_o;
  assign \fifo.mem_1r1w.synth.r_addr_i  = \fifo.head_r ;
  assign \fifo.mem_1r1w.synth.r_data_o  = data_o;
  assign \fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fifo.mem_1r1w.synth.w_addr_i  = \fifo.tail_r ;
  assign \fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fifo.mem_1r1w.w_addr_i  = \fifo.tail_r ;
  assign \fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fifo.mem_1r1w.w_data_i  = \fifo.mem_1r1w.synth.w_data_i ;
  assign \fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fifo.reset_i  = reset_i;
  assign \fifo.v_o  = v_o;
  assign fifo_v = v_o;
  assign yumi_o_tmp = yumi_o;
endmodule
