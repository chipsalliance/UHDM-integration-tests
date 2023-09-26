module bsg_counter_clear_up(clk_i, reset_i, clear_i, up_i, count_o);
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
  wire [23:0] _041_;
  input clear_i;
  wire clear_i;
  input clk_i;
  wire clk_i;
  output [23:0] count_o;
  reg [23:0] count_o;
  input reset_i;
  wire reset_i;
  input up_i;
  wire up_i;
  assign _001_ = clear_i | reset_i;
  assign _000_ = up_i | clear_i;
  assign _014_ = ~count_o[0];
  assign _002_ = clear_i ? up_i : _014_;
  assign _041_[1] = count_o[1] ^ count_o[0];
  assign _015_ = ~(count_o[1] & count_o[0]);
  assign _041_[2] = ~(_015_ ^ count_o[2]);
  assign _016_ = count_o[2] & ~(_015_);
  assign _041_[3] = _016_ ^ count_o[3];
  assign _017_ = ~(count_o[3] & count_o[2]);
  assign _018_ = _017_ | _015_;
  assign _041_[4] = ~(_018_ ^ count_o[4]);
  assign _019_ = count_o[4] & ~(_018_);
  assign _041_[5] = _019_ ^ count_o[5];
  assign _020_ = ~(count_o[5] & count_o[4]);
  assign _021_ = _020_ | _018_;
  assign _041_[6] = ~(_021_ ^ count_o[6]);
  assign _022_ = count_o[6] & ~(_021_);
  assign _041_[7] = _022_ ^ count_o[7];
  assign _023_ = ~(count_o[7] & count_o[6]);
  assign _024_ = _023_ | _020_;
  assign _025_ = _024_ | _018_;
  assign _041_[8] = ~(_025_ ^ count_o[8]);
  assign _026_ = count_o[8] & ~(_025_);
  assign _041_[9] = _026_ ^ count_o[9];
  assign _027_ = ~(count_o[9] & count_o[8]);
  assign _028_ = _027_ | _025_;
  assign _041_[10] = ~(_028_ ^ count_o[10]);
  assign _029_ = count_o[10] & ~(_028_);
  assign _041_[11] = _029_ ^ count_o[11];
  assign _030_ = ~(count_o[11] & count_o[10]);
  assign _031_ = _030_ | _027_;
  assign _032_ = _031_ | _025_;
  assign _041_[12] = ~(_032_ ^ count_o[12]);
  assign _033_ = count_o[12] & ~(_032_);
  assign _041_[13] = _033_ ^ count_o[13];
  assign _034_ = ~(count_o[13] & count_o[12]);
  assign _035_ = _034_ | _032_;
  assign _041_[14] = ~(_035_ ^ count_o[14]);
  assign _036_ = count_o[14] & ~(_035_);
  assign _041_[15] = _036_ ^ count_o[15];
  assign _037_ = ~(count_o[15] & count_o[14]);
  assign _038_ = _037_ | _034_;
  assign _039_ = _038_ | _031_;
  assign _040_ = _039_ | _025_;
  assign _041_[16] = ~(_040_ ^ count_o[16]);
  assign _003_ = count_o[16] & ~(_040_);
  assign _041_[17] = _003_ ^ count_o[17];
  assign _004_ = ~(count_o[17] & count_o[16]);
  assign _005_ = _004_ | _040_;
  assign _041_[18] = ~(_005_ ^ count_o[18]);
  assign _006_ = count_o[18] & ~(_005_);
  assign _041_[19] = _006_ ^ count_o[19];
  assign _007_ = ~(count_o[19] & count_o[18]);
  assign _008_ = _007_ | _004_;
  assign _009_ = _008_ | _040_;
  assign _041_[20] = ~(_009_ ^ count_o[20]);
  assign _010_ = count_o[20] & ~(_009_);
  assign _041_[21] = _010_ ^ count_o[21];
  assign _011_ = ~(count_o[21] & count_o[20]);
  assign _012_ = _011_ | _009_;
  assign _041_[22] = ~(_012_ ^ count_o[22]);
  assign _013_ = count_o[22] & ~(_012_);
  assign _041_[23] = _013_ ^ count_o[23];
  always @(posedge clk_i)
    if (reset_i) count_o[0] <= 1'h0;
    else if (_000_) count_o[0] <= _002_;
  always @(posedge clk_i)
    if (_001_) count_o[1] <= 1'h0;
    else if (up_i) count_o[1] <= _041_[1];
  always @(posedge clk_i)
    if (_001_) count_o[2] <= 1'h0;
    else if (up_i) count_o[2] <= _041_[2];
  always @(posedge clk_i)
    if (_001_) count_o[3] <= 1'h0;
    else if (up_i) count_o[3] <= _041_[3];
  always @(posedge clk_i)
    if (_001_) count_o[4] <= 1'h0;
    else if (up_i) count_o[4] <= _041_[4];
  always @(posedge clk_i)
    if (_001_) count_o[5] <= 1'h0;
    else if (up_i) count_o[5] <= _041_[5];
  always @(posedge clk_i)
    if (_001_) count_o[6] <= 1'h0;
    else if (up_i) count_o[6] <= _041_[6];
  always @(posedge clk_i)
    if (_001_) count_o[7] <= 1'h0;
    else if (up_i) count_o[7] <= _041_[7];
  always @(posedge clk_i)
    if (_001_) count_o[8] <= 1'h0;
    else if (up_i) count_o[8] <= _041_[8];
  always @(posedge clk_i)
    if (_001_) count_o[9] <= 1'h0;
    else if (up_i) count_o[9] <= _041_[9];
  always @(posedge clk_i)
    if (_001_) count_o[10] <= 1'h0;
    else if (up_i) count_o[10] <= _041_[10];
  always @(posedge clk_i)
    if (_001_) count_o[11] <= 1'h0;
    else if (up_i) count_o[11] <= _041_[11];
  always @(posedge clk_i)
    if (_001_) count_o[12] <= 1'h0;
    else if (up_i) count_o[12] <= _041_[12];
  always @(posedge clk_i)
    if (_001_) count_o[13] <= 1'h0;
    else if (up_i) count_o[13] <= _041_[13];
  always @(posedge clk_i)
    if (_001_) count_o[14] <= 1'h0;
    else if (up_i) count_o[14] <= _041_[14];
  always @(posedge clk_i)
    if (_001_) count_o[15] <= 1'h0;
    else if (up_i) count_o[15] <= _041_[15];
  always @(posedge clk_i)
    if (_001_) count_o[16] <= 1'h0;
    else if (up_i) count_o[16] <= _041_[16];
  always @(posedge clk_i)
    if (_001_) count_o[17] <= 1'h0;
    else if (up_i) count_o[17] <= _041_[17];
  always @(posedge clk_i)
    if (_001_) count_o[18] <= 1'h0;
    else if (up_i) count_o[18] <= _041_[18];
  always @(posedge clk_i)
    if (_001_) count_o[19] <= 1'h0;
    else if (up_i) count_o[19] <= _041_[19];
  always @(posedge clk_i)
    if (_001_) count_o[20] <= 1'h0;
    else if (up_i) count_o[20] <= _041_[20];
  always @(posedge clk_i)
    if (_001_) count_o[21] <= 1'h0;
    else if (up_i) count_o[21] <= _041_[21];
  always @(posedge clk_i)
    if (_001_) count_o[22] <= 1'h0;
    else if (up_i) count_o[22] <= _041_[22];
  always @(posedge clk_i)
    if (_001_) count_o[23] <= 1'h0;
    else if (up_i) count_o[23] <= _041_[23];
endmodule
