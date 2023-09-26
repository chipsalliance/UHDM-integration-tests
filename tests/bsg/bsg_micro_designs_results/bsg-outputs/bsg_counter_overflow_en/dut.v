module bsg_counter_overflow_en(clk_i, reset_i, en_i, count_o, overflow_o);
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
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire [23:0] _060_;
  wire [23:0] _061_;
  input clk_i;
  wire clk_i;
  output [23:0] count_o;
  reg [23:0] count_o;
  input en_i;
  wire en_i;
  output overflow_o;
  wire overflow_o;
  input reset_i;
  wire reset_i;
  assign _023_ = ~(count_o[1] | count_o[0]);
  assign _024_ = count_o[3] | count_o[2];
  assign _025_ = _023_ & ~(_024_);
  assign _026_ = count_o[5] | count_o[4];
  assign _027_ = count_o[6] | ~(count_o[7]);
  assign _028_ = _027_ | _026_;
  assign _029_ = _025_ & ~(_028_);
  assign _030_ = count_o[8] | ~(count_o[9]);
  assign _031_ = count_o[11] | ~(count_o[10]);
  assign _032_ = _031_ | _030_;
  assign _033_ = count_o[13] | ~(count_o[12]);
  assign _034_ = count_o[14] | ~(count_o[15]);
  assign _035_ = _034_ | _033_;
  assign _036_ = _035_ | _032_;
  assign _037_ = _029_ & ~(_036_);
  assign _038_ = count_o[17] | count_o[16];
  assign _039_ = count_o[18] | ~(count_o[19]);
  assign _040_ = _039_ | _038_;
  assign _041_ = count_o[21] | ~(count_o[20]);
  assign _042_ = count_o[22] | ~(count_o[23]);
  assign _043_ = _042_ | _041_;
  assign _044_ = _043_ | _040_;
  assign overflow_o = _037_ & ~(_044_);
  assign _060_[0] = ~count_o[0];
  assign _059_ = overflow_o | reset_i;
  assign _061_[1] = count_o[1] ^ count_o[0];
  assign _045_ = ~(count_o[1] & count_o[0]);
  assign _061_[2] = ~(_045_ ^ count_o[2]);
  assign _046_ = count_o[2] & ~(_045_);
  assign _061_[3] = _046_ ^ count_o[3];
  assign _047_ = ~(count_o[3] & count_o[2]);
  assign _048_ = _047_ | _045_;
  assign _061_[4] = ~(_048_ ^ count_o[4]);
  assign _049_ = count_o[4] & ~(_048_);
  assign _061_[5] = _049_ ^ count_o[5];
  assign _050_ = ~(count_o[5] & count_o[4]);
  assign _051_ = _050_ | _048_;
  assign _061_[6] = ~(_051_ ^ count_o[6]);
  assign _052_ = count_o[6] & ~(_051_);
  assign _061_[7] = _052_ ^ count_o[7];
  assign _053_ = ~(count_o[7] & count_o[6]);
  assign _054_ = _053_ | _050_;
  assign _055_ = _054_ | _048_;
  assign _061_[8] = ~(_055_ ^ count_o[8]);
  assign _056_ = count_o[8] & ~(_055_);
  assign _061_[9] = _056_ ^ count_o[9];
  assign _057_ = ~(count_o[9] & count_o[8]);
  assign _058_ = _057_ | _055_;
  assign _061_[10] = ~(_058_ ^ count_o[10]);
  assign _000_ = count_o[10] & ~(_058_);
  assign _061_[11] = _000_ ^ count_o[11];
  assign _001_ = ~(count_o[10] & count_o[11]);
  assign _002_ = _001_ | _057_;
  assign _003_ = _002_ | _055_;
  assign _061_[12] = ~(_003_ ^ count_o[12]);
  assign _004_ = count_o[12] & ~(_003_);
  assign _061_[13] = _004_ ^ count_o[13];
  assign _005_ = ~(count_o[13] & count_o[12]);
  assign _006_ = _005_ | _003_;
  assign _061_[14] = ~(_006_ ^ count_o[14]);
  assign _007_ = count_o[14] & ~(_006_);
  assign _061_[15] = _007_ ^ count_o[15];
  assign _008_ = ~(count_o[14] & count_o[15]);
  assign _009_ = _008_ | _005_;
  assign _010_ = _009_ | _002_;
  assign _011_ = _010_ | _055_;
  assign _061_[16] = ~(_011_ ^ count_o[16]);
  assign _012_ = count_o[16] & ~(_011_);
  assign _061_[17] = _012_ ^ count_o[17];
  assign _013_ = ~(count_o[17] & count_o[16]);
  assign _014_ = _013_ | _011_;
  assign _061_[18] = ~(_014_ ^ count_o[18]);
  assign _015_ = count_o[18] & ~(_014_);
  assign _061_[19] = _015_ ^ count_o[19];
  assign _016_ = ~(count_o[18] & count_o[19]);
  assign _017_ = _016_ | _013_;
  assign _018_ = _017_ | _011_;
  assign _061_[20] = ~(_018_ ^ count_o[20]);
  assign _019_ = count_o[20] & ~(_018_);
  assign _061_[21] = _019_ ^ count_o[21];
  assign _020_ = ~(count_o[21] & count_o[20]);
  assign _021_ = _020_ | _018_;
  assign _061_[22] = ~(_021_ ^ count_o[22]);
  assign _022_ = count_o[22] & ~(_021_);
  assign _061_[23] = _022_ ^ count_o[23];
  always @(posedge clk_i)
    if (_059_) count_o[0] <= 1'h0;
    else if (en_i) count_o[0] <= _060_[0];
  always @(posedge clk_i)
    if (_059_) count_o[1] <= 1'h0;
    else if (en_i) count_o[1] <= _061_[1];
  always @(posedge clk_i)
    if (_059_) count_o[2] <= 1'h0;
    else if (en_i) count_o[2] <= _061_[2];
  always @(posedge clk_i)
    if (_059_) count_o[3] <= 1'h0;
    else if (en_i) count_o[3] <= _061_[3];
  always @(posedge clk_i)
    if (_059_) count_o[4] <= 1'h0;
    else if (en_i) count_o[4] <= _061_[4];
  always @(posedge clk_i)
    if (_059_) count_o[5] <= 1'h0;
    else if (en_i) count_o[5] <= _061_[5];
  always @(posedge clk_i)
    if (_059_) count_o[6] <= 1'h0;
    else if (en_i) count_o[6] <= _061_[6];
  always @(posedge clk_i)
    if (_059_) count_o[7] <= 1'h0;
    else if (en_i) count_o[7] <= _061_[7];
  always @(posedge clk_i)
    if (_059_) count_o[8] <= 1'h0;
    else if (en_i) count_o[8] <= _061_[8];
  always @(posedge clk_i)
    if (_059_) count_o[9] <= 1'h0;
    else if (en_i) count_o[9] <= _061_[9];
  always @(posedge clk_i)
    if (_059_) count_o[10] <= 1'h0;
    else if (en_i) count_o[10] <= _061_[10];
  always @(posedge clk_i)
    if (_059_) count_o[11] <= 1'h0;
    else if (en_i) count_o[11] <= _061_[11];
  always @(posedge clk_i)
    if (_059_) count_o[12] <= 1'h0;
    else if (en_i) count_o[12] <= _061_[12];
  always @(posedge clk_i)
    if (_059_) count_o[13] <= 1'h0;
    else if (en_i) count_o[13] <= _061_[13];
  always @(posedge clk_i)
    if (_059_) count_o[14] <= 1'h0;
    else if (en_i) count_o[14] <= _061_[14];
  always @(posedge clk_i)
    if (_059_) count_o[15] <= 1'h0;
    else if (en_i) count_o[15] <= _061_[15];
  always @(posedge clk_i)
    if (_059_) count_o[16] <= 1'h0;
    else if (en_i) count_o[16] <= _061_[16];
  always @(posedge clk_i)
    if (_059_) count_o[17] <= 1'h0;
    else if (en_i) count_o[17] <= _061_[17];
  always @(posedge clk_i)
    if (_059_) count_o[18] <= 1'h0;
    else if (en_i) count_o[18] <= _061_[18];
  always @(posedge clk_i)
    if (_059_) count_o[19] <= 1'h0;
    else if (en_i) count_o[19] <= _061_[19];
  always @(posedge clk_i)
    if (_059_) count_o[20] <= 1'h0;
    else if (en_i) count_o[20] <= _061_[20];
  always @(posedge clk_i)
    if (_059_) count_o[21] <= 1'h0;
    else if (en_i) count_o[21] <= _061_[21];
  always @(posedge clk_i)
    if (_059_) count_o[22] <= 1'h0;
    else if (en_i) count_o[22] <= _061_[22];
  always @(posedge clk_i)
    if (_059_) count_o[23] <= 1'h0;
    else if (en_i) count_o[23] <= _061_[23];
  assign _060_[23:1] = count_o[23:1];
  assign _061_[0] = _060_[0];
endmodule
