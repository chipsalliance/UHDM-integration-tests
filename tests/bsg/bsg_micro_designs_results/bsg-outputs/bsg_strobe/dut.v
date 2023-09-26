module bsg_strobe(clk_i, reset_r_i, init_val_r_i, strobe_r_o);
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
  wire [14:0] C_n;
  wire [15:0] C_n_prereset;
  wire [14:0] C_r;
  wire \C_reg.clk_i ;
  wire [14:0] \C_reg.data_i ;
  wire [14:0] \C_reg.data_o ;
  reg [14:0] \C_reg.data_r ;
  wire [15:0] S_n;
  wire [15:0] S_n_n;
  wire [15:0] S_r;
  wire \S_reg.clk_i ;
  wire [15:0] \S_reg.data_i ;
  wire [15:0] \S_reg.data_o ;
  reg [15:0] \S_reg.data_r ;
  wire [15:0] \andr.i ;
  wire \andr.o ;
  input clk_i;
  wire clk_i;
  input [15:0] init_val_r_i;
  wire [15:0] init_val_r_i;
  wire [15:0] \muxi2_S_n.i0 ;
  wire [15:0] \muxi2_S_n.i1 ;
  wire [15:0] \muxi2_S_n.i2 ;
  wire [15:0] \muxi2_S_n.o ;
  wire [15:0] \nand_C_n.a_i ;
  wire [15:0] \nand_C_n.b_i ;
  wire [15:0] \nand_C_n.o ;
  wire new_val;
  wire [14:0] \nor3_C_n.a_i ;
  wire [14:0] \nor3_C_n.b_i ;
  wire [14:0] \nor3_C_n.c_i ;
  wire [14:0] \nor3_C_n.o ;
  input reset_r_i;
  wire reset_r_i;
  wire \strobe_buf_gate.i ;
  wire \strobe_buf_gate.o ;
  wire strobe_n;
  wire strobe_n_buf;
  output strobe_r_o;
  reg strobe_r_o;
  wire [15:0] \xnor_S_n.a_i ;
  wire [15:0] \xnor_S_n.b_i ;
  wire [15:0] \xnor_S_n.o ;
  assign _060_ = \S_reg.data_r [1] & \S_reg.data_r [0];
  assign _061_ = ~(\S_reg.data_r [3] & \S_reg.data_r [2]);
  assign _062_ = _060_ & ~(_061_);
  assign _063_ = ~(\S_reg.data_r [5] & \S_reg.data_r [4]);
  assign _064_ = ~(\S_reg.data_r [7] & \S_reg.data_r [6]);
  assign _065_ = _064_ | _063_;
  assign _066_ = _062_ & ~(_065_);
  assign _067_ = ~(\S_reg.data_r [9] & \S_reg.data_r [8]);
  assign _068_ = ~(\S_reg.data_r [11] & \S_reg.data_r [10]);
  assign _069_ = _068_ | _067_;
  assign _070_ = ~(\S_reg.data_r [13] & \S_reg.data_r [12]);
  assign _071_ = ~(\S_reg.data_r [15] & \S_reg.data_r [14]);
  assign _072_ = _071_ | _070_;
  assign _073_ = _072_ | _069_;
  assign strobe_n = _066_ & ~(_073_);
  assign _074_ = ~init_val_r_i[15];
  assign _075_ = \C_reg.data_r [14] ^ \S_reg.data_r [15];
  assign _076_ = strobe_n | reset_r_i;
  assign \S_reg.data_i [15] = _076_ ? _074_ : _075_;
  assign _000_ = ~init_val_r_i[14];
  assign _001_ = \C_reg.data_r [13] ^ \S_reg.data_r [14];
  assign \S_reg.data_i [14] = _076_ ? _000_ : _001_;
  assign _002_ = ~init_val_r_i[13];
  assign _003_ = \C_reg.data_r [12] ^ \S_reg.data_r [13];
  assign \S_reg.data_i [13] = _076_ ? _002_ : _003_;
  assign _004_ = ~init_val_r_i[12];
  assign _005_ = \C_reg.data_r [11] ^ \S_reg.data_r [12];
  assign \S_reg.data_i [12] = _076_ ? _004_ : _005_;
  assign _006_ = ~init_val_r_i[11];
  assign _007_ = \C_reg.data_r [10] ^ \S_reg.data_r [11];
  assign \S_reg.data_i [11] = _076_ ? _006_ : _007_;
  assign _008_ = ~init_val_r_i[10];
  assign _009_ = \C_reg.data_r [9] ^ \S_reg.data_r [10];
  assign \S_reg.data_i [10] = _076_ ? _008_ : _009_;
  assign _010_ = ~init_val_r_i[9];
  assign _011_ = \C_reg.data_r [8] ^ \S_reg.data_r [9];
  assign \S_reg.data_i [9] = _076_ ? _010_ : _011_;
  assign _012_ = ~init_val_r_i[8];
  assign _013_ = \C_reg.data_r [7] ^ \S_reg.data_r [8];
  assign \S_reg.data_i [8] = _076_ ? _012_ : _013_;
  assign _014_ = ~init_val_r_i[7];
  assign _015_ = \C_reg.data_r [6] ^ \S_reg.data_r [7];
  assign \S_reg.data_i [7] = _076_ ? _014_ : _015_;
  assign _016_ = ~init_val_r_i[6];
  assign _017_ = \C_reg.data_r [5] ^ \S_reg.data_r [6];
  assign \S_reg.data_i [6] = _076_ ? _016_ : _017_;
  assign _018_ = ~init_val_r_i[5];
  assign _019_ = \C_reg.data_r [4] ^ \S_reg.data_r [5];
  assign \S_reg.data_i [5] = _076_ ? _018_ : _019_;
  assign _020_ = ~init_val_r_i[4];
  assign _021_ = \C_reg.data_r [3] ^ \S_reg.data_r [4];
  assign \S_reg.data_i [4] = _076_ ? _020_ : _021_;
  assign _022_ = ~init_val_r_i[3];
  assign _023_ = \C_reg.data_r [2] ^ \S_reg.data_r [3];
  assign \S_reg.data_i [3] = _076_ ? _022_ : _023_;
  assign _024_ = ~init_val_r_i[2];
  assign _025_ = \C_reg.data_r [1] ^ \S_reg.data_r [2];
  assign \S_reg.data_i [2] = _076_ ? _024_ : _025_;
  assign _026_ = ~init_val_r_i[1];
  assign _027_ = \C_reg.data_r [0] ^ \S_reg.data_r [1];
  assign \S_reg.data_i [1] = _076_ ? _026_ : _027_;
  assign _028_ = ~\S_reg.data_r [0];
  assign _029_ = ~init_val_r_i[0];
  assign \S_reg.data_i [0] = _076_ ? _029_ : _028_;
  assign _030_ = ~reset_r_i;
  assign _031_ = strobe_n | _028_;
  assign \C_reg.data_i [0] = _030_ & ~(_031_);
  assign _032_ = ~(\C_reg.data_r [0] & \S_reg.data_r [1]);
  assign _033_ = _032_ | strobe_n;
  assign \C_reg.data_i [1] = _030_ & ~(_033_);
  assign _034_ = ~(\C_reg.data_r [1] & \S_reg.data_r [2]);
  assign _035_ = _034_ | strobe_n;
  assign \C_reg.data_i [2] = _030_ & ~(_035_);
  assign _036_ = ~(\C_reg.data_r [2] & \S_reg.data_r [3]);
  assign _037_ = _036_ | strobe_n;
  assign \C_reg.data_i [3] = _030_ & ~(_037_);
  assign _038_ = ~(\C_reg.data_r [3] & \S_reg.data_r [4]);
  assign _039_ = _038_ | strobe_n;
  assign \C_reg.data_i [4] = _030_ & ~(_039_);
  assign _040_ = ~(\C_reg.data_r [4] & \S_reg.data_r [5]);
  assign _041_ = _040_ | strobe_n;
  assign \C_reg.data_i [5] = _030_ & ~(_041_);
  assign _042_ = ~(\C_reg.data_r [5] & \S_reg.data_r [6]);
  assign _043_ = _042_ | strobe_n;
  assign \C_reg.data_i [6] = _030_ & ~(_043_);
  assign _044_ = ~(\C_reg.data_r [6] & \S_reg.data_r [7]);
  assign _045_ = _044_ | strobe_n;
  assign \C_reg.data_i [7] = _030_ & ~(_045_);
  assign _046_ = ~(\C_reg.data_r [7] & \S_reg.data_r [8]);
  assign _047_ = _046_ | strobe_n;
  assign \C_reg.data_i [8] = _030_ & ~(_047_);
  assign _048_ = ~(\C_reg.data_r [8] & \S_reg.data_r [9]);
  assign _049_ = _048_ | strobe_n;
  assign \C_reg.data_i [9] = _030_ & ~(_049_);
  assign _050_ = ~(\C_reg.data_r [9] & \S_reg.data_r [10]);
  assign _051_ = _050_ | strobe_n;
  assign \C_reg.data_i [10] = _030_ & ~(_051_);
  assign _052_ = ~(\C_reg.data_r [10] & \S_reg.data_r [11]);
  assign _053_ = _052_ | strobe_n;
  assign \C_reg.data_i [11] = _030_ & ~(_053_);
  assign _054_ = ~(\C_reg.data_r [11] & \S_reg.data_r [12]);
  assign _055_ = _054_ | strobe_n;
  assign \C_reg.data_i [12] = _030_ & ~(_055_);
  assign _056_ = ~(\C_reg.data_r [12] & \S_reg.data_r [13]);
  assign _057_ = _056_ | strobe_n;
  assign \C_reg.data_i [13] = _030_ & ~(_057_);
  assign _058_ = ~(\C_reg.data_r [13] & \S_reg.data_r [14]);
  assign _059_ = _058_ | strobe_n;
  assign \C_reg.data_i [14] = _030_ & ~(_059_);
  always @(posedge clk_i)
    strobe_r_o <= strobe_n;
  always @(posedge clk_i)
    \C_reg.data_r [0] <= \C_reg.data_i [0];
  always @(posedge clk_i)
    \C_reg.data_r [1] <= \C_reg.data_i [1];
  always @(posedge clk_i)
    \C_reg.data_r [2] <= \C_reg.data_i [2];
  always @(posedge clk_i)
    \C_reg.data_r [3] <= \C_reg.data_i [3];
  always @(posedge clk_i)
    \C_reg.data_r [4] <= \C_reg.data_i [4];
  always @(posedge clk_i)
    \C_reg.data_r [5] <= \C_reg.data_i [5];
  always @(posedge clk_i)
    \C_reg.data_r [6] <= \C_reg.data_i [6];
  always @(posedge clk_i)
    \C_reg.data_r [7] <= \C_reg.data_i [7];
  always @(posedge clk_i)
    \C_reg.data_r [8] <= \C_reg.data_i [8];
  always @(posedge clk_i)
    \C_reg.data_r [9] <= \C_reg.data_i [9];
  always @(posedge clk_i)
    \C_reg.data_r [10] <= \C_reg.data_i [10];
  always @(posedge clk_i)
    \C_reg.data_r [11] <= \C_reg.data_i [11];
  always @(posedge clk_i)
    \C_reg.data_r [12] <= \C_reg.data_i [12];
  always @(posedge clk_i)
    \C_reg.data_r [13] <= \C_reg.data_i [13];
  always @(posedge clk_i)
    \C_reg.data_r [14] <= \C_reg.data_i [14];
  always @(posedge clk_i)
    \S_reg.data_r [0] <= \S_reg.data_i [0];
  always @(posedge clk_i)
    \S_reg.data_r [1] <= \S_reg.data_i [1];
  always @(posedge clk_i)
    \S_reg.data_r [2] <= \S_reg.data_i [2];
  always @(posedge clk_i)
    \S_reg.data_r [3] <= \S_reg.data_i [3];
  always @(posedge clk_i)
    \S_reg.data_r [4] <= \S_reg.data_i [4];
  always @(posedge clk_i)
    \S_reg.data_r [5] <= \S_reg.data_i [5];
  always @(posedge clk_i)
    \S_reg.data_r [6] <= \S_reg.data_i [6];
  always @(posedge clk_i)
    \S_reg.data_r [7] <= \S_reg.data_i [7];
  always @(posedge clk_i)
    \S_reg.data_r [8] <= \S_reg.data_i [8];
  always @(posedge clk_i)
    \S_reg.data_r [9] <= \S_reg.data_i [9];
  always @(posedge clk_i)
    \S_reg.data_r [10] <= \S_reg.data_i [10];
  always @(posedge clk_i)
    \S_reg.data_r [11] <= \S_reg.data_i [11];
  always @(posedge clk_i)
    \S_reg.data_r [12] <= \S_reg.data_i [12];
  always @(posedge clk_i)
    \S_reg.data_r [13] <= \S_reg.data_i [13];
  always @(posedge clk_i)
    \S_reg.data_r [14] <= \S_reg.data_i [14];
  always @(posedge clk_i)
    \S_reg.data_r [15] <= \S_reg.data_i [15];
  assign C_n = \C_reg.data_i ;
  assign C_n_prereset = { 1'hx, \nand_C_n.o [14:0] };
  assign C_r = \C_reg.data_r ;
  assign \C_reg.clk_i  = clk_i;
  assign \C_reg.data_o  = \C_reg.data_r ;
  assign S_n = { \muxi2_S_n.i0 [15:1], \S_reg.data_r [0] };
  assign S_n_n = \S_reg.data_i ;
  assign S_r = \S_reg.data_r ;
  assign \S_reg.clk_i  = clk_i;
  assign \S_reg.data_o  = \S_reg.data_r ;
  assign \andr.i  = \S_reg.data_r ;
  assign \andr.o  = strobe_n;
  assign \muxi2_S_n.i0 [0] = \S_reg.data_r [0];
  assign \muxi2_S_n.i1  = init_val_r_i;
  assign \muxi2_S_n.i2 [14:0] = { \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15], \muxi2_S_n.i2 [15] };
  assign \muxi2_S_n.o  = \S_reg.data_i ;
  assign \nand_C_n.a_i  = \S_reg.data_r ;
  assign \nand_C_n.b_i  = { \C_reg.data_r , 1'h1 };
  assign \nand_C_n.o [15] = 1'hx;
  assign new_val = \muxi2_S_n.i2 [15];
  assign \nor3_C_n.a_i  = { strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n, strobe_n };
  assign \nor3_C_n.b_i  = \nand_C_n.o [14:0];
  assign \nor3_C_n.c_i  = { reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i, reset_r_i };
  assign \nor3_C_n.o  = \C_reg.data_i ;
  assign \strobe_buf_gate.i  = strobe_n;
  assign \strobe_buf_gate.o  = strobe_n;
  assign strobe_n_buf = strobe_n;
  assign \xnor_S_n.a_i  = \S_reg.data_r ;
  assign \xnor_S_n.b_i  = { \C_reg.data_r , 1'h1 };
  assign \xnor_S_n.o  = { \muxi2_S_n.i0 [15:1], \S_reg.data_r [0] };
endmodule
