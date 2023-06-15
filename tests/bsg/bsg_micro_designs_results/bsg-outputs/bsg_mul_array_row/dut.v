module bsg_mul_array_row(clk_i, rst_i, v_i, a_i, b_i, s_i, c_i, prod_accum_i, a_o, b_o, s_o, c_o, prod_accum_o);
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
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  input [15:0] a_i;
  wire [15:0] a_i;
  output [15:0] a_o;
  wire [15:0] a_o;
  reg [15:0] a_r;
  wire [15:0] \adder0.b_i ;
  wire \adder0.c_o ;
  wire [15:0] \adder0.s_o ;
  wire [15:0] \and0.a_i ;
  wire [15:0] \and0.b_i ;
  input [15:0] b_i;
  wire [15:0] b_i;
  output [15:0] b_o;
  wire [15:0] b_o;
  reg [15:0] b_r;
  input c_i;
  wire c_i;
  output c_o;
  wire c_o;
  reg c_r;
  input clk_i;
  wire clk_i;
  wire pc;
  input [14:0] prod_accum_i;
  wire [14:0] prod_accum_i;
  output [15:0] prod_accum_o;
  wire [15:0] prod_accum_o;
  wire [15:0] prod_accum_r;
  wire [15:0] ps;
  input rst_i;
  wire rst_i;
  input [15:0] s_i;
  wire [15:0] s_i;
  output [15:0] s_o;
  wire [15:0] s_o;
  reg [15:0] s_r;
  input v_i;
  wire v_i;
  assign _070_ = ~(a_i[1] & b_i[15]);
  assign _071_ = ~(_070_ ^ s_i[2]);
  assign _072_ = ~(b_i[15] & a_i[0]);
  assign _073_ = _072_ | ~(s_i[1]);
  assign ps[1] = ~(_073_ ^ _071_);
  assign _074_ = ~s_i[3];
  assign _075_ = a_i[2] & b_i[15];
  assign _076_ = _075_ ^ _074_;
  assign _077_ = s_i[2] & ~(_070_);
  assign _078_ = _071_ & ~(_073_);
  assign _079_ = _078_ | _077_;
  assign ps[2] = ~(_079_ ^ _076_);
  assign _080_ = a_i[3] & b_i[15];
  assign _081_ = ~(_080_ ^ s_i[4]);
  assign _082_ = ~(_075_ & s_i[3]);
  assign _083_ = _079_ & ~(_076_);
  assign _084_ = _082_ & ~(_083_);
  assign ps[3] = _084_ ^ _081_;
  assign _085_ = ~s_i[5];
  assign _086_ = a_i[4] & b_i[15];
  assign _087_ = _086_ ^ _085_;
  assign _088_ = _080_ & s_i[4];
  assign _089_ = ~(_082_ | _081_);
  assign _090_ = _089_ | _088_;
  assign _091_ = _081_ | _076_;
  assign _092_ = _079_ & ~(_091_);
  assign _093_ = _092_ | _090_;
  assign ps[4] = ~(_093_ ^ _087_);
  assign _094_ = a_i[5] & b_i[15];
  assign _095_ = ~(_094_ ^ s_i[6]);
  assign _096_ = ~(_086_ & s_i[5]);
  assign _097_ = _093_ & ~(_087_);
  assign _098_ = _096_ & ~(_097_);
  assign ps[5] = _098_ ^ _095_;
  assign _099_ = a_i[6] & b_i[15];
  assign _100_ = ~(_099_ ^ s_i[7]);
  assign _101_ = _094_ & s_i[6];
  assign _102_ = ~(_096_ | _095_);
  assign _103_ = _102_ | _101_;
  assign _104_ = _095_ | _087_;
  assign _105_ = _104_ | ~(_093_);
  assign _106_ = _105_ & ~(_103_);
  assign ps[6] = _106_ ^ _100_;
  assign _107_ = ~(a_i[7] & b_i[15]);
  assign _108_ = _107_ ^ s_i[8];
  assign _109_ = ~(_099_ & s_i[7]);
  assign _110_ = ~(_106_ | _100_);
  assign _111_ = _109_ & ~(_110_);
  assign ps[7] = _111_ ^ _108_;
  assign _000_ = ~(a_i[8] & b_i[15]);
  assign _001_ = _000_ ^ s_i[9];
  assign _002_ = s_i[8] & ~(_107_);
  assign _003_ = ~(_109_ | _108_);
  assign _004_ = _003_ | _002_;
  assign _005_ = _108_ | _100_;
  assign _006_ = _103_ & ~(_005_);
  assign _007_ = _006_ | _004_;
  assign _008_ = _005_ | _104_;
  assign _009_ = _093_ & ~(_008_);
  assign _010_ = _009_ | _007_;
  assign ps[8] = ~(_010_ ^ _001_);
  assign _011_ = a_i[9] & b_i[15];
  assign _012_ = ~(_011_ ^ s_i[10]);
  assign _013_ = _000_ | ~(s_i[9]);
  assign _014_ = _010_ & ~(_001_);
  assign _015_ = _013_ & ~(_014_);
  assign ps[9] = _015_ ^ _012_;
  assign _016_ = a_i[10] & b_i[15];
  assign _017_ = ~(_016_ ^ s_i[11]);
  assign _018_ = _011_ & s_i[10];
  assign _019_ = ~(_013_ | _012_);
  assign _020_ = _019_ | _018_;
  assign _021_ = _012_ | _001_;
  assign _022_ = _021_ | ~(_010_);
  assign _023_ = _022_ & ~(_020_);
  assign ps[10] = _023_ ^ _017_;
  assign _024_ = a_i[11] & b_i[15];
  assign _025_ = ~(_024_ ^ s_i[12]);
  assign _026_ = ~(_016_ & s_i[11]);
  assign _027_ = ~(_023_ | _017_);
  assign _028_ = _026_ & ~(_027_);
  assign ps[11] = _028_ ^ _025_;
  assign _029_ = a_i[12] & b_i[15];
  assign _030_ = ~(_029_ ^ s_i[13]);
  assign _031_ = _024_ & s_i[12];
  assign _032_ = ~(_026_ | _025_);
  assign _033_ = _032_ | _031_;
  assign _034_ = _025_ | _017_;
  assign _035_ = _020_ & ~(_034_);
  assign _036_ = _035_ | _033_;
  assign _037_ = _034_ | _021_;
  assign _038_ = _010_ & ~(_037_);
  assign _039_ = ~(_038_ | _036_);
  assign ps[12] = _039_ ^ _030_;
  assign _040_ = ~s_i[14];
  assign _041_ = a_i[13] & b_i[15];
  assign _042_ = _041_ ^ _040_;
  assign _043_ = ~(_029_ & s_i[13]);
  assign _044_ = ~(_039_ | _030_);
  assign _045_ = _043_ & ~(_044_);
  assign ps[13] = _045_ ^ _042_;
  assign _046_ = a_i[14] & b_i[15];
  assign _047_ = ~(_046_ ^ s_i[15]);
  assign _048_ = _041_ & ~(_040_);
  assign _049_ = ~(_043_ | _042_);
  assign _050_ = ~(_049_ | _048_);
  assign _051_ = _042_ | _030_;
  assign _052_ = ~(_051_ | _039_);
  assign _053_ = _050_ & ~(_052_);
  assign ps[14] = _053_ ^ _047_;
  assign _054_ = a_i[15] & b_i[15];
  assign _055_ = ~(_054_ ^ c_i);
  assign _056_ = ~(_046_ & s_i[15]);
  assign _057_ = ~(_053_ | _047_);
  assign _058_ = _056_ & ~(_057_);
  assign ps[15] = _058_ ^ _055_;
  assign ps[0] = ~(_072_ ^ s_i[1]);
  assign _059_ = _054_ & c_i;
  assign _060_ = ~(_056_ | _055_);
  assign _061_ = _060_ | _059_;
  assign _062_ = _055_ | _047_;
  assign _063_ = ~(_062_ | _050_);
  assign _064_ = _063_ | _061_;
  assign _065_ = _062_ | _051_;
  assign _066_ = _036_ & ~(_065_);
  assign _067_ = _066_ | _064_;
  assign _068_ = _065_ | _037_;
  assign _069_ = _010_ & ~(_068_);
  assign pc = _069_ | _067_;
  always @(posedge clk_i)
    if (rst_i) a_r[0] <= 1'h0;
    else if (v_i) a_r[0] <= a_i[0];
  always @(posedge clk_i)
    if (rst_i) a_r[1] <= 1'h0;
    else if (v_i) a_r[1] <= a_i[1];
  always @(posedge clk_i)
    if (rst_i) a_r[2] <= 1'h0;
    else if (v_i) a_r[2] <= a_i[2];
  always @(posedge clk_i)
    if (rst_i) a_r[3] <= 1'h0;
    else if (v_i) a_r[3] <= a_i[3];
  always @(posedge clk_i)
    if (rst_i) a_r[4] <= 1'h0;
    else if (v_i) a_r[4] <= a_i[4];
  always @(posedge clk_i)
    if (rst_i) a_r[5] <= 1'h0;
    else if (v_i) a_r[5] <= a_i[5];
  always @(posedge clk_i)
    if (rst_i) a_r[6] <= 1'h0;
    else if (v_i) a_r[6] <= a_i[6];
  always @(posedge clk_i)
    if (rst_i) a_r[7] <= 1'h0;
    else if (v_i) a_r[7] <= a_i[7];
  always @(posedge clk_i)
    if (rst_i) a_r[8] <= 1'h0;
    else if (v_i) a_r[8] <= a_i[8];
  always @(posedge clk_i)
    if (rst_i) a_r[9] <= 1'h0;
    else if (v_i) a_r[9] <= a_i[9];
  always @(posedge clk_i)
    if (rst_i) a_r[10] <= 1'h0;
    else if (v_i) a_r[10] <= a_i[10];
  always @(posedge clk_i)
    if (rst_i) a_r[11] <= 1'h0;
    else if (v_i) a_r[11] <= a_i[11];
  always @(posedge clk_i)
    if (rst_i) a_r[12] <= 1'h0;
    else if (v_i) a_r[12] <= a_i[12];
  always @(posedge clk_i)
    if (rst_i) a_r[13] <= 1'h0;
    else if (v_i) a_r[13] <= a_i[13];
  always @(posedge clk_i)
    if (rst_i) a_r[14] <= 1'h0;
    else if (v_i) a_r[14] <= a_i[14];
  always @(posedge clk_i)
    if (rst_i) a_r[15] <= 1'h0;
    else if (v_i) a_r[15] <= a_i[15];
  always @(posedge clk_i)
    if (rst_i) b_r[0] <= 1'h0;
    else if (v_i) b_r[0] <= b_i[0];
  always @(posedge clk_i)
    if (rst_i) b_r[1] <= 1'h0;
    else if (v_i) b_r[1] <= b_i[1];
  always @(posedge clk_i)
    if (rst_i) b_r[2] <= 1'h0;
    else if (v_i) b_r[2] <= b_i[2];
  always @(posedge clk_i)
    if (rst_i) b_r[3] <= 1'h0;
    else if (v_i) b_r[3] <= b_i[3];
  always @(posedge clk_i)
    if (rst_i) b_r[4] <= 1'h0;
    else if (v_i) b_r[4] <= b_i[4];
  always @(posedge clk_i)
    if (rst_i) b_r[5] <= 1'h0;
    else if (v_i) b_r[5] <= b_i[5];
  always @(posedge clk_i)
    if (rst_i) b_r[6] <= 1'h0;
    else if (v_i) b_r[6] <= b_i[6];
  always @(posedge clk_i)
    if (rst_i) b_r[7] <= 1'h0;
    else if (v_i) b_r[7] <= b_i[7];
  always @(posedge clk_i)
    if (rst_i) b_r[8] <= 1'h0;
    else if (v_i) b_r[8] <= b_i[8];
  always @(posedge clk_i)
    if (rst_i) b_r[9] <= 1'h0;
    else if (v_i) b_r[9] <= b_i[9];
  always @(posedge clk_i)
    if (rst_i) b_r[10] <= 1'h0;
    else if (v_i) b_r[10] <= b_i[10];
  always @(posedge clk_i)
    if (rst_i) b_r[11] <= 1'h0;
    else if (v_i) b_r[11] <= b_i[11];
  always @(posedge clk_i)
    if (rst_i) b_r[12] <= 1'h0;
    else if (v_i) b_r[12] <= b_i[12];
  always @(posedge clk_i)
    if (rst_i) b_r[13] <= 1'h0;
    else if (v_i) b_r[13] <= b_i[13];
  always @(posedge clk_i)
    if (rst_i) b_r[14] <= 1'h0;
    else if (v_i) b_r[14] <= b_i[14];
  always @(posedge clk_i)
    if (rst_i) b_r[15] <= 1'h0;
    else if (v_i) b_r[15] <= b_i[15];
  always @(posedge clk_i)
    if (rst_i) s_r[0] <= 1'h0;
    else if (v_i) s_r[0] <= ps[0];
  always @(posedge clk_i)
    if (rst_i) s_r[1] <= 1'h0;
    else if (v_i) s_r[1] <= ps[1];
  always @(posedge clk_i)
    if (rst_i) s_r[2] <= 1'h0;
    else if (v_i) s_r[2] <= ps[2];
  always @(posedge clk_i)
    if (rst_i) s_r[3] <= 1'h0;
    else if (v_i) s_r[3] <= ps[3];
  always @(posedge clk_i)
    if (rst_i) s_r[4] <= 1'h0;
    else if (v_i) s_r[4] <= ps[4];
  always @(posedge clk_i)
    if (rst_i) s_r[5] <= 1'h0;
    else if (v_i) s_r[5] <= ps[5];
  always @(posedge clk_i)
    if (rst_i) s_r[6] <= 1'h0;
    else if (v_i) s_r[6] <= ps[6];
  always @(posedge clk_i)
    if (rst_i) s_r[7] <= 1'h0;
    else if (v_i) s_r[7] <= ps[7];
  always @(posedge clk_i)
    if (rst_i) s_r[8] <= 1'h0;
    else if (v_i) s_r[8] <= ps[8];
  always @(posedge clk_i)
    if (rst_i) s_r[9] <= 1'h0;
    else if (v_i) s_r[9] <= ps[9];
  always @(posedge clk_i)
    if (rst_i) s_r[10] <= 1'h0;
    else if (v_i) s_r[10] <= ps[10];
  always @(posedge clk_i)
    if (rst_i) s_r[11] <= 1'h0;
    else if (v_i) s_r[11] <= ps[11];
  always @(posedge clk_i)
    if (rst_i) s_r[12] <= 1'h0;
    else if (v_i) s_r[12] <= ps[12];
  always @(posedge clk_i)
    if (rst_i) s_r[13] <= 1'h0;
    else if (v_i) s_r[13] <= ps[13];
  always @(posedge clk_i)
    if (rst_i) s_r[14] <= 1'h0;
    else if (v_i) s_r[14] <= ps[14];
  always @(posedge clk_i)
    if (rst_i) s_r[15] <= 1'h0;
    else if (v_i) s_r[15] <= ps[15];
  always @(posedge clk_i)
    if (rst_i) c_r <= 1'h0;
    else if (v_i) c_r <= pc;
  reg \prod_accum_r_reg[0] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[0]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[0]  <= prod_accum_i[0];
  assign prod_accum_r[0] = \prod_accum_r_reg[0] ;
  reg \prod_accum_r_reg[1] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[1]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[1]  <= prod_accum_i[1];
  assign prod_accum_r[1] = \prod_accum_r_reg[1] ;
  reg \prod_accum_r_reg[2] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[2]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[2]  <= prod_accum_i[2];
  assign prod_accum_r[2] = \prod_accum_r_reg[2] ;
  reg \prod_accum_r_reg[3] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[3]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[3]  <= prod_accum_i[3];
  assign prod_accum_r[3] = \prod_accum_r_reg[3] ;
  reg \prod_accum_r_reg[4] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[4]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[4]  <= prod_accum_i[4];
  assign prod_accum_r[4] = \prod_accum_r_reg[4] ;
  reg \prod_accum_r_reg[5] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[5]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[5]  <= prod_accum_i[5];
  assign prod_accum_r[5] = \prod_accum_r_reg[5] ;
  reg \prod_accum_r_reg[6] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[6]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[6]  <= prod_accum_i[6];
  assign prod_accum_r[6] = \prod_accum_r_reg[6] ;
  reg \prod_accum_r_reg[7] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[7]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[7]  <= prod_accum_i[7];
  assign prod_accum_r[7] = \prod_accum_r_reg[7] ;
  reg \prod_accum_r_reg[8] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[8]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[8]  <= prod_accum_i[8];
  assign prod_accum_r[8] = \prod_accum_r_reg[8] ;
  reg \prod_accum_r_reg[9] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[9]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[9]  <= prod_accum_i[9];
  assign prod_accum_r[9] = \prod_accum_r_reg[9] ;
  reg \prod_accum_r_reg[10] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[10]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[10]  <= prod_accum_i[10];
  assign prod_accum_r[10] = \prod_accum_r_reg[10] ;
  reg \prod_accum_r_reg[11] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[11]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[11]  <= prod_accum_i[11];
  assign prod_accum_r[11] = \prod_accum_r_reg[11] ;
  reg \prod_accum_r_reg[12] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[12]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[12]  <= prod_accum_i[12];
  assign prod_accum_r[12] = \prod_accum_r_reg[12] ;
  reg \prod_accum_r_reg[13] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[13]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[13]  <= prod_accum_i[13];
  assign prod_accum_r[13] = \prod_accum_r_reg[13] ;
  reg \prod_accum_r_reg[14] ;
  always @(posedge clk_i)
    if (rst_i) \prod_accum_r_reg[14]  <= 1'h0;
    else if (v_i) \prod_accum_r_reg[14]  <= prod_accum_i[14];
  assign prod_accum_r[14] = \prod_accum_r_reg[14] ;
  assign a_o = a_r;
  assign \adder0.b_i  = { c_i, s_i[15:1] };
  assign \adder0.c_o  = pc;
  assign \adder0.s_o  = ps;
  assign \and0.a_i  = a_i;
  assign \and0.b_i  = { b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15], b_i[15] };
  assign b_o = b_r;
  assign c_o = c_r;
  assign prod_accum_o = { s_r[0], prod_accum_r[14:0] };
  assign prod_accum_r[15] = s_r[0];
  assign s_o = s_r;
endmodule
