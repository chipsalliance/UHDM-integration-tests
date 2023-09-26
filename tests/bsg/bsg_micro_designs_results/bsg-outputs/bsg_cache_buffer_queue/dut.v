module bsg_cache_buffer_queue(clk_i, reset_i, v_i, data_i, v_o, data_o, yumi_i, el0_valid_o, el1_valid_o, el0_snoop_o, el1_snoop_o, empty_o, full_o);
  wire _000_;
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
  wire _037_;
  wire [1:0] _038_;
  wire [1:0] _039_;
  input clk_i;
  wire clk_i;
  input [15:0] data_i;
  wire [15:0] data_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire el0_enable;
  reg [15:0] el0_r;
  output [15:0] el0_snoop_o;
  wire [15:0] el0_snoop_o;
  output el0_valid_o;
  wire el0_valid_o;
  wire el1_enable;
  reg [15:0] el1_r;
  output [15:0] el1_snoop_o;
  wire [15:0] el1_snoop_o;
  output el1_valid_o;
  wire el1_valid_o;
  output empty_o;
  wire empty_o;
  output full_o;
  wire full_o;
  wire mux0_sel;
  wire mux1_sel;
  reg [1:0] num_els_r;
  input reset_i;
  wire reset_i;
  input v_i;
  wire v_i;
  output v_o;
  wire v_o;
  input yumi_i;
  wire yumi_i;
  assign _019_ = num_els_r[0] | ~(num_els_r[1]);
  assign el0_valid_o = ~_019_;
  assign _020_ = num_els_r[0] & ~(num_els_r[1]);
  assign _021_ = _019_ & ~(_020_);
  assign el1_valid_o = ~_021_;
  assign empty_o = ~(num_els_r[0] | num_els_r[1]);
  assign data_o[0] = _021_ ? data_i[0] : el1_r[0];
  assign data_o[1] = _021_ ? data_i[1] : el1_r[1];
  assign data_o[2] = _021_ ? data_i[2] : el1_r[2];
  assign data_o[3] = _021_ ? data_i[3] : el1_r[3];
  assign data_o[4] = _021_ ? data_i[4] : el1_r[4];
  assign data_o[5] = _021_ ? data_i[5] : el1_r[5];
  assign data_o[6] = _021_ ? data_i[6] : el1_r[6];
  assign data_o[7] = _021_ ? data_i[7] : el1_r[7];
  assign data_o[8] = _021_ ? data_i[8] : el1_r[8];
  assign data_o[9] = _021_ ? data_i[9] : el1_r[9];
  assign data_o[10] = _021_ ? data_i[10] : el1_r[10];
  assign data_o[11] = _021_ ? data_i[11] : el1_r[11];
  assign data_o[12] = _021_ ? data_i[12] : el1_r[12];
  assign data_o[13] = _021_ ? data_i[13] : el1_r[13];
  assign data_o[14] = _021_ ? data_i[14] : el1_r[14];
  assign data_o[15] = _021_ ? data_i[15] : el1_r[15];
  assign _022_ = _019_ ? data_i[0] : el0_r[0];
  assign _029_ = _019_ ? data_i[1] : el0_r[1];
  assign _030_ = _019_ ? data_i[2] : el0_r[2];
  assign _031_ = _019_ ? data_i[3] : el0_r[3];
  assign _032_ = _019_ ? data_i[4] : el0_r[4];
  assign _033_ = _019_ ? data_i[5] : el0_r[5];
  assign _034_ = _019_ ? data_i[6] : el0_r[6];
  assign _035_ = _019_ ? data_i[7] : el0_r[7];
  assign _036_ = _019_ ? data_i[8] : el0_r[8];
  assign _037_ = _019_ ? data_i[9] : el0_r[9];
  assign _023_ = _019_ ? data_i[10] : el0_r[10];
  assign _024_ = _019_ ? data_i[11] : el0_r[11];
  assign _025_ = _019_ ? data_i[12] : el0_r[12];
  assign _026_ = _019_ ? data_i[13] : el0_r[13];
  assign _027_ = _019_ ? data_i[14] : el0_r[14];
  assign _028_ = _019_ ? data_i[15] : el0_r[15];
  assign _000_ = yumi_i & ~(_019_);
  assign _001_ = ~(yumi_i & v_i);
  assign _002_ = _020_ & ~(_001_);
  assign _003_ = _002_ | _000_;
  assign _004_ = yumi_i | ~(v_i);
  assign _005_ = empty_o & ~(_004_);
  assign _006_ = _005_ | _003_;
  assign _007_ = num_els_r[0] & num_els_r[1];
  assign el1_enable = _006_ & ~(_007_);
  assign _008_ = _001_ | _019_;
  assign _009_ = _020_ & ~(_004_);
  assign _010_ = _008_ & ~(_009_);
  assign el0_enable = el1_valid_o & ~(_010_);
  assign _011_ = ~v_i;
  assign _012_ = empty_o & ~(_011_);
  assign _013_ = _021_ & ~(_012_);
  assign v_o = ~(_013_ | _007_);
  assign _014_ = v_o & yumi_i;
  assign _015_ = _014_ & ~(v_i);
  assign _016_ = _015_ ^ num_els_r[1];
  assign _017_ = _014_ ^ _011_;
  assign _018_ = num_els_r[0] & ~(_017_);
  assign _039_[1] = _018_ ^ _016_;
  assign _038_[0] = ~(_017_ ^ num_els_r[0]);
  always @(posedge clk_i)
    if (reset_i) num_els_r[0] <= 1'h0;
    else num_els_r[0] <= _038_[0];
  always @(posedge clk_i)
    if (reset_i) num_els_r[1] <= 1'h0;
    else num_els_r[1] <= _039_[1];
  always @(posedge clk_i)
    if (el0_enable) el0_r[0] <= data_i[0];
  always @(posedge clk_i)
    if (el0_enable) el0_r[1] <= data_i[1];
  always @(posedge clk_i)
    if (el0_enable) el0_r[2] <= data_i[2];
  always @(posedge clk_i)
    if (el0_enable) el0_r[3] <= data_i[3];
  always @(posedge clk_i)
    if (el0_enable) el0_r[4] <= data_i[4];
  always @(posedge clk_i)
    if (el0_enable) el0_r[5] <= data_i[5];
  always @(posedge clk_i)
    if (el0_enable) el0_r[6] <= data_i[6];
  always @(posedge clk_i)
    if (el0_enable) el0_r[7] <= data_i[7];
  always @(posedge clk_i)
    if (el0_enable) el0_r[8] <= data_i[8];
  always @(posedge clk_i)
    if (el0_enable) el0_r[9] <= data_i[9];
  always @(posedge clk_i)
    if (el0_enable) el0_r[10] <= data_i[10];
  always @(posedge clk_i)
    if (el0_enable) el0_r[11] <= data_i[11];
  always @(posedge clk_i)
    if (el0_enable) el0_r[12] <= data_i[12];
  always @(posedge clk_i)
    if (el0_enable) el0_r[13] <= data_i[13];
  always @(posedge clk_i)
    if (el0_enable) el0_r[14] <= data_i[14];
  always @(posedge clk_i)
    if (el0_enable) el0_r[15] <= data_i[15];
  always @(posedge clk_i)
    if (el1_enable) el1_r[0] <= _022_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[1] <= _029_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[2] <= _030_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[3] <= _031_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[4] <= _032_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[5] <= _033_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[6] <= _034_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[7] <= _035_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[8] <= _036_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[9] <= _037_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[10] <= _023_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[11] <= _024_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[12] <= _025_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[13] <= _026_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[14] <= _027_;
  always @(posedge clk_i)
    if (el1_enable) el1_r[15] <= _028_;
  assign _039_[0] = _038_[0];
  assign el0_snoop_o = el0_r;
  assign el1_snoop_o = el1_r;
  assign full_o = el0_valid_o;
  assign mux0_sel = el0_valid_o;
  assign mux1_sel = el1_valid_o;
endmodule
