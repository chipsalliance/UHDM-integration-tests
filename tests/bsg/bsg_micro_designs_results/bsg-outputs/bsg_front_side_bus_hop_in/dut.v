module bsg_front_side_bus_hop_in(clk_i, reset_i, ready_o, v_i, data_i, v_o, data_o, ready_i);
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
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  input clk_i;
  wire clk_i;
  input [15:0] data_i;
  wire [15:0] data_i;
  output [79:0] data_o;
  wire [79:0] data_o;
  wire [15:0] data_o_tmp;
  wire \fifo.clk_i ;
  wire [15:0] \fifo.data_i ;
  wire [15:0] \fifo.data_o ;
  wire \fifo.deq_i ;
  reg \fifo.empty_r ;
  wire \fifo.enq_i ;
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
  wire \fifo.mem_1r1w.synth.w_v_i ;
  wire \fifo.mem_1r1w.w_addr_i ;
  wire \fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fifo.mem_1r1w.w_data_i ;
  wire \fifo.mem_1r1w.w_reset_i ;
  wire \fifo.mem_1r1w.w_v_i ;
  wire \fifo.ready_o ;
  wire \fifo.reset_i ;
  reg \fifo.tail_r ;
  wire \fifo.v_i ;
  wire \fifo.yumi_i ;
  wire fifo_yumi;
  input [4:0] ready_i;
  wire [4:0] ready_i;
  output ready_o;
  wire ready_o;
  input reset_i;
  wire reset_i;
  reg [4:0] sent_r;
  input v_i;
  wire v_i;
  output [4:0] v_o;
  wire [4:0] v_o;
  wire [4:0] v_o_tmp;
  assign _022_ = \fifo.empty_r  | sent_r[0];
  assign _023_ = ready_i[0] & ~(_022_);
  assign _024_ = _023_ | sent_r[0];
  assign _025_ = \fifo.empty_r  | sent_r[1];
  assign _026_ = _025_ | ~(ready_i[1]);
  assign _027_ = _026_ & ~(sent_r[1]);
  assign _028_ = _027_ | ~(_024_);
  assign _029_ = \fifo.empty_r  | sent_r[2];
  assign _030_ = ready_i[2] & ~(_029_);
  assign _031_ = ~(_030_ | sent_r[2]);
  assign _032_ = \fifo.empty_r  | sent_r[3];
  assign _033_ = ready_i[3] & ~(_032_);
  assign _034_ = ~(_033_ | sent_r[3]);
  assign _035_ = _034_ | _031_;
  assign _036_ = _035_ | _028_;
  assign _013_ = \fifo.empty_r  | sent_r[4];
  assign _014_ = _013_ | ~(ready_i[4]);
  assign _015_ = _014_ & ~(sent_r[4]);
  assign \fifo.deq_i  = ~(_015_ | _036_);
  assign data_o[64] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [0] : \fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign data_o[65] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [1] : \fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign data_o[66] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [2] : \fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign data_o[67] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [3] : \fifo.mem_1r1w.synth.nz.mem[0] [3];
  assign data_o[68] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [4] : \fifo.mem_1r1w.synth.nz.mem[0] [4];
  assign data_o[69] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [5] : \fifo.mem_1r1w.synth.nz.mem[0] [5];
  assign data_o[70] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [6] : \fifo.mem_1r1w.synth.nz.mem[0] [6];
  assign data_o[71] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [7] : \fifo.mem_1r1w.synth.nz.mem[0] [7];
  assign data_o[72] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [8] : \fifo.mem_1r1w.synth.nz.mem[0] [8];
  assign data_o[73] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [9] : \fifo.mem_1r1w.synth.nz.mem[0] [9];
  assign data_o[74] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [10] : \fifo.mem_1r1w.synth.nz.mem[0] [10];
  assign data_o[75] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [11] : \fifo.mem_1r1w.synth.nz.mem[0] [11];
  assign data_o[76] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [12] : \fifo.mem_1r1w.synth.nz.mem[0] [12];
  assign data_o[77] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [13] : \fifo.mem_1r1w.synth.nz.mem[0] [13];
  assign data_o[78] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [14] : \fifo.mem_1r1w.synth.nz.mem[0] [14];
  assign data_o[79] = _000_ ? \fifo.mem_1r1w.synth.nz.mem[1] [15] : \fifo.mem_1r1w.synth.nz.mem[0] [15];
  assign _008_ = ~\fifo.head_r ;
  assign _007_ = \fifo.deq_i  ^ \fifo.head_r ;
  assign _006_ = ~\fifo.tail_r ;
  assign ready_o = ~\fifo.full_r ;
  assign \fifo.enq_i  = v_i & ~(\fifo.full_r );
  assign v_o[0] = ~_022_;
  assign _001_ = _024_ & ~(\fifo.deq_i );
  assign v_o[1] = ~_025_;
  assign _002_ = ~(\fifo.deq_i  | _027_);
  assign v_o[2] = ~_029_;
  assign _003_ = ~(\fifo.deq_i  | _031_);
  assign v_o[3] = ~_032_;
  assign _004_ = ~(\fifo.deq_i  | _034_);
  assign v_o[4] = ~_013_;
  assign _005_ = _036_ & ~(_015_);
  assign _011_ = \fifo.enq_i  & ~(\fifo.tail_r );
  assign _012_ = \fifo.enq_i  & ~(_006_);
  assign _016_ = \fifo.empty_r  | ~(\fifo.enq_i );
  assign _017_ = ~(_016_ | \fifo.deq_i );
  assign _018_ = \fifo.full_r  & ~(\fifo.deq_i );
  assign _009_ = _018_ | _017_;
  assign _019_ = \fifo.empty_r  & ~(\fifo.enq_i );
  assign _020_ = \fifo.deq_i  & ~(\fifo.full_r );
  assign _021_ = _020_ & ~(\fifo.enq_i );
  assign _010_ = _021_ | _019_;
  always @(posedge clk_i)
    if (reset_i) \fifo.full_r  <= 1'h0;
    else \fifo.full_r  <= _009_;
  always @(posedge clk_i)
    if (reset_i) sent_r[4] <= 1'h0;
    else sent_r[4] <= _005_;
  always @(posedge clk_i)
    if (reset_i) sent_r[3] <= 1'h0;
    else sent_r[3] <= _004_;
  always @(posedge clk_i)
    if (reset_i) sent_r[2] <= 1'h0;
    else sent_r[2] <= _003_;
  always @(posedge clk_i)
    if (reset_i) sent_r[1] <= 1'h0;
    else sent_r[1] <= _002_;
  always @(posedge clk_i)
    if (reset_i) sent_r[0] <= 1'h0;
    else sent_r[0] <= _001_;
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_011_) \fifo.mem_1r1w.synth.nz.mem[0] [15] <= data_i[15];
  always @(posedge clk_i)
    if (reset_i) \fifo.empty_r  <= 1'h1;
    else \fifo.empty_r  <= _010_;
  always @(posedge clk_i)
    if (reset_i) \fifo.tail_r  <= 1'h0;
    else if (\fifo.enq_i ) \fifo.tail_r  <= _006_;
  always @(posedge clk_i)
    if (reset_i) \fifo.head_r  <= 1'h0;
    else if (\fifo.deq_i ) \fifo.head_r  <= _008_;
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_012_) \fifo.mem_1r1w.synth.nz.mem[1] [15] <= data_i[15];
  always @(posedge clk_i)
    if (reset_i) _000_ <= 1'h0;
    else _000_ <= _007_;
  assign data_o[63:0] = { data_o[79:64], data_o[79:64], data_o[79:64], data_o[79:64] };
  assign data_o_tmp = data_o[79:64];
  assign \fifo.clk_i  = clk_i;
  assign \fifo.data_i  = data_i;
  assign \fifo.data_o  = data_o[79:64];
  assign \fifo.mem_1r1w.r_addr_i  = \fifo.head_r ;
  assign \fifo.mem_1r1w.r_data_o  = data_o[79:64];
  assign \fifo.mem_1r1w.synth.r_addr_i  = \fifo.head_r ;
  assign \fifo.mem_1r1w.synth.r_data_o  = data_o[79:64];
  assign \fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fifo.mem_1r1w.synth.w_addr_i  = \fifo.tail_r ;
  assign \fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fifo.mem_1r1w.synth.w_data_i  = data_i;
  assign \fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fifo.mem_1r1w.synth.w_v_i  = \fifo.enq_i ;
  assign \fifo.mem_1r1w.w_addr_i  = \fifo.tail_r ;
  assign \fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fifo.mem_1r1w.w_data_i  = data_i;
  assign \fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fifo.mem_1r1w.w_v_i  = \fifo.enq_i ;
  assign \fifo.ready_o  = ready_o;
  assign \fifo.reset_i  = reset_i;
  assign \fifo.v_i  = v_i;
  assign \fifo.yumi_i  = \fifo.deq_i ;
  assign fifo_yumi = \fifo.deq_i ;
  assign v_o_tmp = v_o;
endmodule
