module bsg_counter_clock_downsample(clk_i, reset_i, val_i, clk_r_o);
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
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  input clk_i;
  wire clk_i;
  output clk_r_o;
  reg clk_r_o;
  input reset_i;
  wire reset_i;
  wire [14:0] \strobe.C_n ;
  wire [15:0] \strobe.C_n_prereset ;
  wire [14:0] \strobe.C_r ;
  wire \strobe.C_reg.clk_i ;
  wire [14:0] \strobe.C_reg.data_i ;
  wire [14:0] \strobe.C_reg.data_o ;
  reg [14:0] \strobe.C_reg.data_r ;
  wire [15:0] \strobe.S_n ;
  wire [15:0] \strobe.S_n_n ;
  wire [15:0] \strobe.S_r ;
  wire \strobe.S_reg.clk_i ;
  wire [15:0] \strobe.S_reg.data_i ;
  wire [15:0] \strobe.S_reg.data_o ;
  reg [15:0] \strobe.S_reg.data_r ;
  wire [15:0] \strobe.andr.i ;
  wire \strobe.andr.o ;
  wire \strobe.clk_i ;
  wire [15:0] \strobe.init_val_r_i ;
  wire [15:0] \strobe.muxi2_S_n.i0 ;
  wire [15:0] \strobe.muxi2_S_n.i1 ;
  wire [15:0] \strobe.muxi2_S_n.i2 ;
  wire [15:0] \strobe.muxi2_S_n.o ;
  wire [15:0] \strobe.nand_C_n.a_i ;
  wire [15:0] \strobe.nand_C_n.b_i ;
  wire [15:0] \strobe.nand_C_n.o ;
  wire \strobe.new_val ;
  wire [14:0] \strobe.nor3_C_n.a_i ;
  wire [14:0] \strobe.nor3_C_n.b_i ;
  wire [14:0] \strobe.nor3_C_n.c_i ;
  wire [14:0] \strobe.nor3_C_n.o ;
  wire \strobe.reset_r_i ;
  wire \strobe.strobe_buf_gate.i ;
  wire \strobe.strobe_buf_gate.o ;
  wire \strobe.strobe_n ;
  wire \strobe.strobe_n_buf ;
  reg \strobe.strobe_r_o ;
  wire [15:0] \strobe.xnor_S_n.a_i ;
  wire [15:0] \strobe.xnor_S_n.b_i ;
  wire [15:0] \strobe.xnor_S_n.o ;
  wire strobe_r;
  input [15:0] val_i;
  wire [15:0] val_i;
  assign _062_ = \strobe.S_reg.data_r [1] & \strobe.S_reg.data_r [0];
  assign _063_ = ~(\strobe.S_reg.data_r [3] & \strobe.S_reg.data_r [2]);
  assign _064_ = _062_ & ~(_063_);
  assign _065_ = ~(\strobe.S_reg.data_r [5] & \strobe.S_reg.data_r [4]);
  assign _066_ = ~(\strobe.S_reg.data_r [7] & \strobe.S_reg.data_r [6]);
  assign _067_ = _066_ | _065_;
  assign _068_ = _064_ & ~(_067_);
  assign _069_ = ~(\strobe.S_reg.data_r [9] & \strobe.S_reg.data_r [8]);
  assign _070_ = ~(\strobe.S_reg.data_r [11] & \strobe.S_reg.data_r [10]);
  assign _071_ = _070_ | _069_;
  assign _072_ = ~(\strobe.S_reg.data_r [13] & \strobe.S_reg.data_r [12]);
  assign _073_ = ~(\strobe.S_reg.data_r [15] & \strobe.S_reg.data_r [14]);
  assign _074_ = _073_ | _072_;
  assign _075_ = _074_ | _071_;
  assign \strobe.strobe_n  = _068_ & ~(_075_);
  assign _077_ = ~clk_r_o;
  assign _076_ = ~reset_i;
  assign _000_ = ~\strobe.S_reg.data_r [0];
  assign _001_ = \strobe.strobe_n  | _000_;
  assign \strobe.C_reg.data_i [0] = _076_ & ~(_001_);
  assign _002_ = ~(\strobe.C_reg.data_r [0] & \strobe.S_reg.data_r [1]);
  assign _003_ = _002_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [1] = _076_ & ~(_003_);
  assign _004_ = ~(\strobe.C_reg.data_r [1] & \strobe.S_reg.data_r [2]);
  assign _005_ = _004_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [2] = _076_ & ~(_005_);
  assign _006_ = ~(\strobe.C_reg.data_r [2] & \strobe.S_reg.data_r [3]);
  assign _007_ = _006_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [3] = _076_ & ~(_007_);
  assign _008_ = ~(\strobe.C_reg.data_r [3] & \strobe.S_reg.data_r [4]);
  assign _009_ = _008_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [4] = _076_ & ~(_009_);
  assign _010_ = ~(\strobe.C_reg.data_r [4] & \strobe.S_reg.data_r [5]);
  assign _011_ = _010_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [5] = _076_ & ~(_011_);
  assign _012_ = ~(\strobe.C_reg.data_r [5] & \strobe.S_reg.data_r [6]);
  assign _013_ = _012_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [6] = _076_ & ~(_013_);
  assign _014_ = ~(\strobe.C_reg.data_r [6] & \strobe.S_reg.data_r [7]);
  assign _015_ = _014_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [7] = _076_ & ~(_015_);
  assign _016_ = ~(\strobe.C_reg.data_r [7] & \strobe.S_reg.data_r [8]);
  assign _017_ = _016_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [8] = _076_ & ~(_017_);
  assign _018_ = ~(\strobe.C_reg.data_r [8] & \strobe.S_reg.data_r [9]);
  assign _019_ = _018_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [9] = _076_ & ~(_019_);
  assign _020_ = ~(\strobe.C_reg.data_r [9] & \strobe.S_reg.data_r [10]);
  assign _021_ = _020_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [10] = _076_ & ~(_021_);
  assign _022_ = ~(\strobe.C_reg.data_r [10] & \strobe.S_reg.data_r [11]);
  assign _023_ = _022_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [11] = _076_ & ~(_023_);
  assign _024_ = ~(\strobe.C_reg.data_r [11] & \strobe.S_reg.data_r [12]);
  assign _025_ = _024_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [12] = _076_ & ~(_025_);
  assign _026_ = ~(\strobe.C_reg.data_r [12] & \strobe.S_reg.data_r [13]);
  assign _027_ = _026_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [13] = _076_ & ~(_027_);
  assign _028_ = ~(\strobe.C_reg.data_r [13] & \strobe.S_reg.data_r [14]);
  assign _029_ = _028_ | \strobe.strobe_n ;
  assign \strobe.C_reg.data_i [14] = _076_ & ~(_029_);
  assign _030_ = ~val_i[0];
  assign _031_ = \strobe.strobe_n  | reset_i;
  assign \strobe.S_reg.data_i [0] = _031_ ? _030_ : _000_;
  assign _032_ = ~val_i[1];
  assign _033_ = \strobe.C_reg.data_r [0] ^ \strobe.S_reg.data_r [1];
  assign \strobe.S_reg.data_i [1] = _031_ ? _032_ : _033_;
  assign _034_ = ~val_i[2];
  assign _035_ = \strobe.C_reg.data_r [1] ^ \strobe.S_reg.data_r [2];
  assign \strobe.S_reg.data_i [2] = _031_ ? _034_ : _035_;
  assign _036_ = ~val_i[3];
  assign _037_ = \strobe.C_reg.data_r [2] ^ \strobe.S_reg.data_r [3];
  assign \strobe.S_reg.data_i [3] = _031_ ? _036_ : _037_;
  assign _038_ = ~val_i[4];
  assign _039_ = \strobe.C_reg.data_r [3] ^ \strobe.S_reg.data_r [4];
  assign \strobe.S_reg.data_i [4] = _031_ ? _038_ : _039_;
  assign _040_ = ~val_i[5];
  assign _041_ = \strobe.C_reg.data_r [4] ^ \strobe.S_reg.data_r [5];
  assign \strobe.S_reg.data_i [5] = _031_ ? _040_ : _041_;
  assign _042_ = ~val_i[6];
  assign _043_ = \strobe.C_reg.data_r [5] ^ \strobe.S_reg.data_r [6];
  assign \strobe.S_reg.data_i [6] = _031_ ? _042_ : _043_;
  assign _044_ = ~val_i[7];
  assign _045_ = \strobe.C_reg.data_r [6] ^ \strobe.S_reg.data_r [7];
  assign \strobe.S_reg.data_i [7] = _031_ ? _044_ : _045_;
  assign _046_ = ~val_i[8];
  assign _047_ = \strobe.C_reg.data_r [7] ^ \strobe.S_reg.data_r [8];
  assign \strobe.S_reg.data_i [8] = _031_ ? _046_ : _047_;
  assign _048_ = ~val_i[9];
  assign _049_ = \strobe.C_reg.data_r [8] ^ \strobe.S_reg.data_r [9];
  assign \strobe.S_reg.data_i [9] = _031_ ? _048_ : _049_;
  assign _050_ = ~val_i[10];
  assign _051_ = \strobe.C_reg.data_r [9] ^ \strobe.S_reg.data_r [10];
  assign \strobe.S_reg.data_i [10] = _031_ ? _050_ : _051_;
  assign _052_ = ~val_i[11];
  assign _053_ = \strobe.C_reg.data_r [10] ^ \strobe.S_reg.data_r [11];
  assign \strobe.S_reg.data_i [11] = _031_ ? _052_ : _053_;
  assign _054_ = ~val_i[12];
  assign _055_ = \strobe.C_reg.data_r [11] ^ \strobe.S_reg.data_r [12];
  assign \strobe.S_reg.data_i [12] = _031_ ? _054_ : _055_;
  assign _056_ = ~val_i[13];
  assign _057_ = \strobe.C_reg.data_r [12] ^ \strobe.S_reg.data_r [13];
  assign \strobe.S_reg.data_i [13] = _031_ ? _056_ : _057_;
  assign _058_ = ~val_i[14];
  assign _059_ = \strobe.C_reg.data_r [13] ^ \strobe.S_reg.data_r [14];
  assign \strobe.S_reg.data_i [14] = _031_ ? _058_ : _059_;
  assign _060_ = ~val_i[15];
  assign _061_ = \strobe.C_reg.data_r [14] ^ \strobe.S_reg.data_r [15];
  assign \strobe.S_reg.data_i [15] = _031_ ? _060_ : _061_;
  always @(posedge clk_i)
    if (reset_i) clk_r_o <= 1'h0;
    else if (\strobe.strobe_r_o ) clk_r_o <= _077_;
  always @(posedge clk_i)
    \strobe.strobe_r_o  <= \strobe.strobe_n ;
  always @(posedge clk_i)
    \strobe.S_reg.data_r [0] <= \strobe.S_reg.data_i [0];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [1] <= \strobe.S_reg.data_i [1];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [2] <= \strobe.S_reg.data_i [2];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [3] <= \strobe.S_reg.data_i [3];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [4] <= \strobe.S_reg.data_i [4];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [5] <= \strobe.S_reg.data_i [5];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [6] <= \strobe.S_reg.data_i [6];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [7] <= \strobe.S_reg.data_i [7];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [8] <= \strobe.S_reg.data_i [8];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [9] <= \strobe.S_reg.data_i [9];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [10] <= \strobe.S_reg.data_i [10];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [11] <= \strobe.S_reg.data_i [11];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [12] <= \strobe.S_reg.data_i [12];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [13] <= \strobe.S_reg.data_i [13];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [14] <= \strobe.S_reg.data_i [14];
  always @(posedge clk_i)
    \strobe.S_reg.data_r [15] <= \strobe.S_reg.data_i [15];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [0] <= \strobe.C_reg.data_i [0];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [1] <= \strobe.C_reg.data_i [1];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [2] <= \strobe.C_reg.data_i [2];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [3] <= \strobe.C_reg.data_i [3];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [4] <= \strobe.C_reg.data_i [4];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [5] <= \strobe.C_reg.data_i [5];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [6] <= \strobe.C_reg.data_i [6];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [7] <= \strobe.C_reg.data_i [7];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [8] <= \strobe.C_reg.data_i [8];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [9] <= \strobe.C_reg.data_i [9];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [10] <= \strobe.C_reg.data_i [10];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [11] <= \strobe.C_reg.data_i [11];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [12] <= \strobe.C_reg.data_i [12];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [13] <= \strobe.C_reg.data_i [13];
  always @(posedge clk_i)
    \strobe.C_reg.data_r [14] <= \strobe.C_reg.data_i [14];
  assign \strobe.C_n  = \strobe.C_reg.data_i ;
  assign \strobe.C_n_prereset [15] = 1'hx;
  assign \strobe.C_r  = \strobe.C_reg.data_r ;
  assign \strobe.C_reg.clk_i  = clk_i;
  assign \strobe.C_reg.data_o  = \strobe.C_reg.data_r ;
  assign \strobe.S_n [0] = \strobe.S_reg.data_r [0];
  assign \strobe.S_n_n  = \strobe.S_reg.data_i ;
  assign \strobe.S_r  = \strobe.S_reg.data_r ;
  assign \strobe.S_reg.clk_i  = clk_i;
  assign \strobe.S_reg.data_o  = \strobe.S_reg.data_r ;
  assign \strobe.andr.i  = \strobe.S_reg.data_r ;
  assign \strobe.andr.o  = \strobe.strobe_n ;
  assign \strobe.clk_i  = clk_i;
  assign \strobe.init_val_r_i  = val_i;
  assign \strobe.muxi2_S_n.i0  = { \strobe.S_n [15:1], \strobe.S_reg.data_r [0] };
  assign \strobe.muxi2_S_n.i1  = val_i;
  assign \strobe.muxi2_S_n.i2 [14:0] = { \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15], \strobe.muxi2_S_n.i2 [15] };
  assign \strobe.muxi2_S_n.o  = \strobe.S_reg.data_i ;
  assign \strobe.nand_C_n.a_i  = \strobe.S_reg.data_r ;
  assign \strobe.nand_C_n.b_i  = { \strobe.C_reg.data_r , 1'h1 };
  assign \strobe.nand_C_n.o  = { 1'hx, \strobe.C_n_prereset [14:0] };
  assign \strobe.new_val  = \strobe.muxi2_S_n.i2 [15];
  assign \strobe.nor3_C_n.a_i  = { \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n , \strobe.strobe_n  };
  assign \strobe.nor3_C_n.b_i  = \strobe.C_n_prereset [14:0];
  assign \strobe.nor3_C_n.c_i  = { reset_i, reset_i, reset_i, reset_i, reset_i, reset_i, reset_i, reset_i, reset_i, reset_i, reset_i, reset_i, reset_i, reset_i, reset_i };
  assign \strobe.nor3_C_n.o  = \strobe.C_reg.data_i ;
  assign \strobe.reset_r_i  = reset_i;
  assign \strobe.strobe_buf_gate.i  = \strobe.strobe_n ;
  assign \strobe.strobe_buf_gate.o  = \strobe.strobe_n ;
  assign \strobe.strobe_n_buf  = \strobe.strobe_n ;
  assign \strobe.xnor_S_n.a_i  = \strobe.S_reg.data_r ;
  assign \strobe.xnor_S_n.b_i  = { \strobe.C_reg.data_r , 1'h1 };
  assign \strobe.xnor_S_n.o  = { \strobe.S_n [15:1], \strobe.S_reg.data_r [0] };
  assign strobe_r = \strobe.strobe_r_o ;
endmodule
