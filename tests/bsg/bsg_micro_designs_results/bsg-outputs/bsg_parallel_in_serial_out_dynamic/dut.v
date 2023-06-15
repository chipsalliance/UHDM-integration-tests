module bsg_parallel_in_serial_out_dynamic(clk_i, reset_i, v_i, len_i, data_i, ready_o, v_o, len_v_o, data_o, yumi_i);
  reg _000_;
  reg _001_;
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
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire [2:0] _208_;
  wire clear_li;
  input clk_i;
  wire clk_i;
  wire [2:0] count_lo;
  wire [2:0] count_r;
  wire count_r_is_zero;
  wire \ctr.clear_i ;
  wire \ctr.clk_i ;
  reg [2:0] \ctr.count_o ;
  wire \ctr.reset_i ;
  wire \ctr.up_i ;
  wire \data_fifo.clk_i ;
  wire [79:0] \data_fifo.data_i ;
  wire \data_fifo.deq_i ;
  reg \data_fifo.empty_r ;
  reg \data_fifo.full_r ;
  reg \data_fifo.head_r ;
  wire \data_fifo.mem_1r1w.r_addr_i ;
  reg [79:0] \data_fifo.mem_1r1w.synth.nz.mem[0] ;
  reg [79:0] \data_fifo.mem_1r1w.synth.nz.mem[1] ;
  wire \data_fifo.mem_1r1w.synth.r_addr_i ;
  wire \data_fifo.mem_1r1w.synth.unused0 ;
  wire \data_fifo.mem_1r1w.synth.w_addr_i ;
  wire \data_fifo.mem_1r1w.synth.w_clk_i ;
  wire [79:0] \data_fifo.mem_1r1w.synth.w_data_i ;
  wire \data_fifo.mem_1r1w.synth.w_reset_i ;
  wire \data_fifo.mem_1r1w.w_addr_i ;
  wire \data_fifo.mem_1r1w.w_clk_i ;
  wire [79:0] \data_fifo.mem_1r1w.w_data_i ;
  wire \data_fifo.mem_1r1w.w_reset_i ;
  wire \data_fifo.reset_i ;
  reg \data_fifo.tail_r ;
  wire \data_fifo.v_i ;
  wire \data_fifo.yumi_i ;
  input [79:0] data_i;
  wire [79:0] data_i;
  wire [15:0] \data_mux.data_o ;
  wire [2:0] \data_mux.sel_i ;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire \go_fifo.clk_i ;
  wire [2:0] \go_fifo.data_i ;
  wire \go_fifo.deq_i ;
  reg \go_fifo.empty_r ;
  reg \go_fifo.full_r ;
  reg \go_fifo.head_r ;
  wire \go_fifo.mem_1r1w.r_addr_i ;
  reg [2:0] \go_fifo.mem_1r1w.synth.nz.mem[0] ;
  reg [2:0] \go_fifo.mem_1r1w.synth.nz.mem[1] ;
  wire \go_fifo.mem_1r1w.synth.r_addr_i ;
  wire \go_fifo.mem_1r1w.synth.unused0 ;
  wire \go_fifo.mem_1r1w.synth.w_addr_i ;
  wire \go_fifo.mem_1r1w.synth.w_clk_i ;
  wire [2:0] \go_fifo.mem_1r1w.synth.w_data_i ;
  wire \go_fifo.mem_1r1w.synth.w_reset_i ;
  wire \go_fifo.mem_1r1w.w_addr_i ;
  wire \go_fifo.mem_1r1w.w_clk_i ;
  wire [2:0] \go_fifo.mem_1r1w.w_data_i ;
  wire \go_fifo.mem_1r1w.w_reset_i ;
  wire \go_fifo.ready_o ;
  wire \go_fifo.reset_i ;
  reg \go_fifo.tail_r ;
  wire \go_fifo.v_i ;
  wire \go_fifo.v_o ;
  wire \go_fifo.yumi_i ;
  wire go_fifo_yumi_li;
  input [2:0] len_i;
  wire [2:0] len_i;
  output len_v_o;
  wire len_v_o;
  output ready_o;
  wire ready_o;
  input reset_i;
  wire reset_i;
  wire up_li;
  input v_i;
  wire v_i;
  output v_o;
  wire v_o;
  input yumi_i;
  wire yumi_i;
  assign _019_ = _001_ ? \go_fifo.mem_1r1w.synth.nz.mem[1] [0] : \go_fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign _020_ = _019_ ^ \ctr.count_o [0];
  assign _021_ = _001_ ? \go_fifo.mem_1r1w.synth.nz.mem[1] [1] : \go_fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign _022_ = _021_ ^ \ctr.count_o [1];
  assign _023_ = _022_ | _020_;
  assign _024_ = _001_ ? \go_fifo.mem_1r1w.synth.nz.mem[1] [2] : \go_fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign _025_ = _024_ ^ \ctr.count_o [2];
  assign _026_ = _025_ | _023_;
  assign \data_fifo.deq_i  = yumi_i & ~(_026_);
  assign _003_ = \data_fifo.deq_i  | reset_i;
  assign _027_ = ~yumi_i;
  assign \ctr.up_i  = _026_ & ~(_027_);
  assign _002_ = \ctr.up_i  | \data_fifo.deq_i ;
  assign _028_ = ~\ctr.count_o [2];
  assign _029_ = \ctr.count_o [1] | \ctr.count_o [0];
  assign len_v_o = _028_ & ~(_029_);
  assign _030_ = ~\ctr.count_o [1];
  assign _031_ = ~\ctr.count_o [0];
  assign _032_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [0] : \data_fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign _033_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [16] : \data_fifo.mem_1r1w.synth.nz.mem[0] [16];
  assign _034_ = \ctr.count_o [0] ? _033_ : _032_;
  assign _035_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [32] : \data_fifo.mem_1r1w.synth.nz.mem[0] [32];
  assign _036_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [48] : \data_fifo.mem_1r1w.synth.nz.mem[0] [48];
  assign _037_ = \ctr.count_o [0] ? _036_ : _035_;
  assign _038_ = \ctr.count_o [1] ? _037_ : _034_;
  assign _039_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [64] : \data_fifo.mem_1r1w.synth.nz.mem[0] [64];
  assign _040_ = ~(_039_ & _031_);
  assign _041_ = _030_ & ~(_040_);
  assign data_o[0] = \ctr.count_o [2] ? _041_ : _038_;
  assign _042_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [1] : \data_fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign _043_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [17] : \data_fifo.mem_1r1w.synth.nz.mem[0] [17];
  assign _044_ = \ctr.count_o [0] ? _043_ : _042_;
  assign _045_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [33] : \data_fifo.mem_1r1w.synth.nz.mem[0] [33];
  assign _046_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [49] : \data_fifo.mem_1r1w.synth.nz.mem[0] [49];
  assign _047_ = \ctr.count_o [0] ? _046_ : _045_;
  assign _048_ = \ctr.count_o [1] ? _047_ : _044_;
  assign _049_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [65] : \data_fifo.mem_1r1w.synth.nz.mem[0] [65];
  assign _050_ = ~(_049_ & _031_);
  assign _051_ = _030_ & ~(_050_);
  assign data_o[1] = \ctr.count_o [2] ? _051_ : _048_;
  assign _052_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [2] : \data_fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign _053_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [18] : \data_fifo.mem_1r1w.synth.nz.mem[0] [18];
  assign _054_ = \ctr.count_o [0] ? _053_ : _052_;
  assign _055_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [34] : \data_fifo.mem_1r1w.synth.nz.mem[0] [34];
  assign _056_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [50] : \data_fifo.mem_1r1w.synth.nz.mem[0] [50];
  assign _057_ = \ctr.count_o [0] ? _056_ : _055_;
  assign _058_ = \ctr.count_o [1] ? _057_ : _054_;
  assign _059_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [66] : \data_fifo.mem_1r1w.synth.nz.mem[0] [66];
  assign _060_ = ~(_059_ & _031_);
  assign _061_ = _030_ & ~(_060_);
  assign data_o[2] = \ctr.count_o [2] ? _061_ : _058_;
  assign _062_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [3] : \data_fifo.mem_1r1w.synth.nz.mem[0] [3];
  assign _063_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [19] : \data_fifo.mem_1r1w.synth.nz.mem[0] [19];
  assign _064_ = \ctr.count_o [0] ? _063_ : _062_;
  assign _065_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [35] : \data_fifo.mem_1r1w.synth.nz.mem[0] [35];
  assign _066_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [51] : \data_fifo.mem_1r1w.synth.nz.mem[0] [51];
  assign _067_ = \ctr.count_o [0] ? _066_ : _065_;
  assign _068_ = \ctr.count_o [1] ? _067_ : _064_;
  assign _069_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [67] : \data_fifo.mem_1r1w.synth.nz.mem[0] [67];
  assign _070_ = ~(_069_ & _031_);
  assign _071_ = _030_ & ~(_070_);
  assign data_o[3] = \ctr.count_o [2] ? _071_ : _068_;
  assign _072_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [4] : \data_fifo.mem_1r1w.synth.nz.mem[0] [4];
  assign _073_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [20] : \data_fifo.mem_1r1w.synth.nz.mem[0] [20];
  assign _074_ = \ctr.count_o [0] ? _073_ : _072_;
  assign _075_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [36] : \data_fifo.mem_1r1w.synth.nz.mem[0] [36];
  assign _076_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [52] : \data_fifo.mem_1r1w.synth.nz.mem[0] [52];
  assign _077_ = \ctr.count_o [0] ? _076_ : _075_;
  assign _078_ = \ctr.count_o [1] ? _077_ : _074_;
  assign _079_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [68] : \data_fifo.mem_1r1w.synth.nz.mem[0] [68];
  assign _080_ = ~(_079_ & _031_);
  assign _081_ = _030_ & ~(_080_);
  assign data_o[4] = \ctr.count_o [2] ? _081_ : _078_;
  assign _082_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [5] : \data_fifo.mem_1r1w.synth.nz.mem[0] [5];
  assign _083_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [21] : \data_fifo.mem_1r1w.synth.nz.mem[0] [21];
  assign _084_ = \ctr.count_o [0] ? _083_ : _082_;
  assign _085_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [37] : \data_fifo.mem_1r1w.synth.nz.mem[0] [37];
  assign _086_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [53] : \data_fifo.mem_1r1w.synth.nz.mem[0] [53];
  assign _087_ = \ctr.count_o [0] ? _086_ : _085_;
  assign _088_ = \ctr.count_o [1] ? _087_ : _084_;
  assign _089_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [69] : \data_fifo.mem_1r1w.synth.nz.mem[0] [69];
  assign _090_ = ~(_089_ & _031_);
  assign _091_ = _030_ & ~(_090_);
  assign data_o[5] = \ctr.count_o [2] ? _091_ : _088_;
  assign _092_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [6] : \data_fifo.mem_1r1w.synth.nz.mem[0] [6];
  assign _093_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [22] : \data_fifo.mem_1r1w.synth.nz.mem[0] [22];
  assign _094_ = \ctr.count_o [0] ? _093_ : _092_;
  assign _095_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [38] : \data_fifo.mem_1r1w.synth.nz.mem[0] [38];
  assign _096_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [54] : \data_fifo.mem_1r1w.synth.nz.mem[0] [54];
  assign _097_ = \ctr.count_o [0] ? _096_ : _095_;
  assign _098_ = \ctr.count_o [1] ? _097_ : _094_;
  assign _099_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [70] : \data_fifo.mem_1r1w.synth.nz.mem[0] [70];
  assign _100_ = ~(_099_ & _031_);
  assign _101_ = _030_ & ~(_100_);
  assign data_o[6] = \ctr.count_o [2] ? _101_ : _098_;
  assign _102_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [7] : \data_fifo.mem_1r1w.synth.nz.mem[0] [7];
  assign _103_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [23] : \data_fifo.mem_1r1w.synth.nz.mem[0] [23];
  assign _104_ = \ctr.count_o [0] ? _103_ : _102_;
  assign _105_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [39] : \data_fifo.mem_1r1w.synth.nz.mem[0] [39];
  assign _106_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [55] : \data_fifo.mem_1r1w.synth.nz.mem[0] [55];
  assign _107_ = \ctr.count_o [0] ? _106_ : _105_;
  assign _108_ = \ctr.count_o [1] ? _107_ : _104_;
  assign _109_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [71] : \data_fifo.mem_1r1w.synth.nz.mem[0] [71];
  assign _110_ = ~(_109_ & _031_);
  assign _111_ = _030_ & ~(_110_);
  assign data_o[7] = \ctr.count_o [2] ? _111_ : _108_;
  assign _112_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [8] : \data_fifo.mem_1r1w.synth.nz.mem[0] [8];
  assign _113_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [24] : \data_fifo.mem_1r1w.synth.nz.mem[0] [24];
  assign _114_ = \ctr.count_o [0] ? _113_ : _112_;
  assign _115_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [40] : \data_fifo.mem_1r1w.synth.nz.mem[0] [40];
  assign _116_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [56] : \data_fifo.mem_1r1w.synth.nz.mem[0] [56];
  assign _117_ = \ctr.count_o [0] ? _116_ : _115_;
  assign _118_ = \ctr.count_o [1] ? _117_ : _114_;
  assign _119_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [72] : \data_fifo.mem_1r1w.synth.nz.mem[0] [72];
  assign _120_ = ~(_119_ & _031_);
  assign _121_ = _030_ & ~(_120_);
  assign data_o[8] = \ctr.count_o [2] ? _121_ : _118_;
  assign _122_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [9] : \data_fifo.mem_1r1w.synth.nz.mem[0] [9];
  assign _123_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [25] : \data_fifo.mem_1r1w.synth.nz.mem[0] [25];
  assign _124_ = \ctr.count_o [0] ? _123_ : _122_;
  assign _125_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [41] : \data_fifo.mem_1r1w.synth.nz.mem[0] [41];
  assign _126_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [57] : \data_fifo.mem_1r1w.synth.nz.mem[0] [57];
  assign _127_ = \ctr.count_o [0] ? _126_ : _125_;
  assign _128_ = \ctr.count_o [1] ? _127_ : _124_;
  assign _129_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [73] : \data_fifo.mem_1r1w.synth.nz.mem[0] [73];
  assign _130_ = ~(_129_ & _031_);
  assign _131_ = _030_ & ~(_130_);
  assign data_o[9] = \ctr.count_o [2] ? _131_ : _128_;
  assign _132_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [10] : \data_fifo.mem_1r1w.synth.nz.mem[0] [10];
  assign _133_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [26] : \data_fifo.mem_1r1w.synth.nz.mem[0] [26];
  assign _134_ = \ctr.count_o [0] ? _133_ : _132_;
  assign _135_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [42] : \data_fifo.mem_1r1w.synth.nz.mem[0] [42];
  assign _136_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [58] : \data_fifo.mem_1r1w.synth.nz.mem[0] [58];
  assign _137_ = \ctr.count_o [0] ? _136_ : _135_;
  assign _138_ = \ctr.count_o [1] ? _137_ : _134_;
  assign _139_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [74] : \data_fifo.mem_1r1w.synth.nz.mem[0] [74];
  assign _140_ = ~(_139_ & _031_);
  assign _141_ = _030_ & ~(_140_);
  assign data_o[10] = \ctr.count_o [2] ? _141_ : _138_;
  assign _142_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [11] : \data_fifo.mem_1r1w.synth.nz.mem[0] [11];
  assign _143_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [27] : \data_fifo.mem_1r1w.synth.nz.mem[0] [27];
  assign _144_ = \ctr.count_o [0] ? _143_ : _142_;
  assign _145_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [43] : \data_fifo.mem_1r1w.synth.nz.mem[0] [43];
  assign _146_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [59] : \data_fifo.mem_1r1w.synth.nz.mem[0] [59];
  assign _147_ = \ctr.count_o [0] ? _146_ : _145_;
  assign _148_ = \ctr.count_o [1] ? _147_ : _144_;
  assign _149_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [75] : \data_fifo.mem_1r1w.synth.nz.mem[0] [75];
  assign _150_ = ~(_149_ & _031_);
  assign _151_ = _030_ & ~(_150_);
  assign data_o[11] = \ctr.count_o [2] ? _151_ : _148_;
  assign _152_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [12] : \data_fifo.mem_1r1w.synth.nz.mem[0] [12];
  assign _153_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [28] : \data_fifo.mem_1r1w.synth.nz.mem[0] [28];
  assign _154_ = \ctr.count_o [0] ? _153_ : _152_;
  assign _155_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [44] : \data_fifo.mem_1r1w.synth.nz.mem[0] [44];
  assign _156_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [60] : \data_fifo.mem_1r1w.synth.nz.mem[0] [60];
  assign _157_ = \ctr.count_o [0] ? _156_ : _155_;
  assign _158_ = \ctr.count_o [1] ? _157_ : _154_;
  assign _159_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [76] : \data_fifo.mem_1r1w.synth.nz.mem[0] [76];
  assign _160_ = ~(_159_ & _031_);
  assign _161_ = _030_ & ~(_160_);
  assign data_o[12] = \ctr.count_o [2] ? _161_ : _158_;
  assign _162_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [13] : \data_fifo.mem_1r1w.synth.nz.mem[0] [13];
  assign _163_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [29] : \data_fifo.mem_1r1w.synth.nz.mem[0] [29];
  assign _164_ = \ctr.count_o [0] ? _163_ : _162_;
  assign _165_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [45] : \data_fifo.mem_1r1w.synth.nz.mem[0] [45];
  assign _166_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [61] : \data_fifo.mem_1r1w.synth.nz.mem[0] [61];
  assign _167_ = \ctr.count_o [0] ? _166_ : _165_;
  assign _168_ = \ctr.count_o [1] ? _167_ : _164_;
  assign _169_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [77] : \data_fifo.mem_1r1w.synth.nz.mem[0] [77];
  assign _170_ = ~(_169_ & _031_);
  assign _171_ = _030_ & ~(_170_);
  assign data_o[13] = \ctr.count_o [2] ? _171_ : _168_;
  assign _172_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [14] : \data_fifo.mem_1r1w.synth.nz.mem[0] [14];
  assign _173_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [30] : \data_fifo.mem_1r1w.synth.nz.mem[0] [30];
  assign _174_ = \ctr.count_o [0] ? _173_ : _172_;
  assign _175_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [46] : \data_fifo.mem_1r1w.synth.nz.mem[0] [46];
  assign _176_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [62] : \data_fifo.mem_1r1w.synth.nz.mem[0] [62];
  assign _177_ = \ctr.count_o [0] ? _176_ : _175_;
  assign _178_ = \ctr.count_o [1] ? _177_ : _174_;
  assign _179_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [78] : \data_fifo.mem_1r1w.synth.nz.mem[0] [78];
  assign _180_ = ~(_179_ & _031_);
  assign _181_ = _030_ & ~(_180_);
  assign data_o[14] = \ctr.count_o [2] ? _181_ : _178_;
  assign _182_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [15] : \data_fifo.mem_1r1w.synth.nz.mem[0] [15];
  assign _183_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [31] : \data_fifo.mem_1r1w.synth.nz.mem[0] [31];
  assign _184_ = \ctr.count_o [0] ? _183_ : _182_;
  assign _185_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [47] : \data_fifo.mem_1r1w.synth.nz.mem[0] [47];
  assign _186_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [63] : \data_fifo.mem_1r1w.synth.nz.mem[0] [63];
  assign _187_ = \ctr.count_o [0] ? _186_ : _185_;
  assign _188_ = \ctr.count_o [1] ? _187_ : _184_;
  assign _189_ = _000_ ? \data_fifo.mem_1r1w.synth.nz.mem[1] [79] : \data_fifo.mem_1r1w.synth.nz.mem[0] [79];
  assign _190_ = ~(_189_ & _031_);
  assign _191_ = _030_ & ~(_190_);
  assign data_o[15] = \ctr.count_o [2] ? _191_ : _188_;
  assign _012_ = ~\go_fifo.head_r ;
  assign _007_ = \data_fifo.deq_i  ^ \go_fifo.head_r ;
  assign _009_ = ~\data_fifo.head_r ;
  assign _006_ = \data_fifo.deq_i  ^ \data_fifo.head_r ;
  assign _008_ = \data_fifo.deq_i  ? \ctr.up_i  : _031_;
  assign _004_ = ~\data_fifo.tail_r ;
  assign ready_o = ~\go_fifo.full_r ;
  assign v_o = ~\go_fifo.empty_r ;
  assign _192_ = \go_fifo.full_r  | ~(v_i);
  assign _005_ = ~\go_fifo.tail_r ;
  assign _193_ = \data_fifo.full_r  | ~(v_i);
  assign _018_ = \go_fifo.tail_r  & ~(_192_);
  assign _016_ = \data_fifo.tail_r  & ~(_193_);
  assign _017_ = _005_ & ~(_192_);
  assign _015_ = _004_ & ~(_193_);
  assign _194_ = _026_ | _027_;
  assign _195_ = _192_ | \go_fifo.empty_r ;
  assign _196_ = _194_ & ~(_195_);
  assign _197_ = \go_fifo.full_r  & ~(\data_fifo.deq_i );
  assign _013_ = _197_ | _196_;
  assign _198_ = _192_ & ~(v_o);
  assign _199_ = _194_ | \go_fifo.full_r ;
  assign _200_ = _192_ & ~(_199_);
  assign _014_ = _200_ | _198_;
  assign _201_ = _193_ | \data_fifo.empty_r ;
  assign _202_ = _194_ & ~(_201_);
  assign _203_ = \data_fifo.full_r  & ~(\data_fifo.deq_i );
  assign _010_ = _203_ | _202_;
  assign _204_ = _193_ & \data_fifo.empty_r ;
  assign _205_ = _194_ | \data_fifo.full_r ;
  assign _206_ = _193_ & ~(_205_);
  assign _011_ = _206_ | _204_;
  assign _208_[1] = \ctr.count_o [1] ^ \ctr.count_o [0];
  assign _207_ = \ctr.count_o [1] & \ctr.count_o [0];
  assign _208_[2] = _207_ ^ \ctr.count_o [2];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [15] <= data_i[15];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [16] <= data_i[16];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [17] <= data_i[17];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [18] <= data_i[18];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [19] <= data_i[19];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [20] <= data_i[20];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [21] <= data_i[21];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [22] <= data_i[22];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [23] <= data_i[23];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [24] <= data_i[24];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [25] <= data_i[25];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [26] <= data_i[26];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [27] <= data_i[27];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [28] <= data_i[28];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [29] <= data_i[29];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [30] <= data_i[30];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [31] <= data_i[31];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [32] <= data_i[32];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [33] <= data_i[33];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [34] <= data_i[34];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [35] <= data_i[35];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [36] <= data_i[36];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [37] <= data_i[37];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [38] <= data_i[38];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [39] <= data_i[39];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [40] <= data_i[40];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [41] <= data_i[41];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [42] <= data_i[42];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [43] <= data_i[43];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [44] <= data_i[44];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [45] <= data_i[45];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [46] <= data_i[46];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [47] <= data_i[47];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [48] <= data_i[48];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [49] <= data_i[49];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [50] <= data_i[50];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [51] <= data_i[51];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [52] <= data_i[52];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [53] <= data_i[53];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [54] <= data_i[54];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [55] <= data_i[55];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [56] <= data_i[56];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [57] <= data_i[57];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [58] <= data_i[58];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [59] <= data_i[59];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [60] <= data_i[60];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [61] <= data_i[61];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [62] <= data_i[62];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [63] <= data_i[63];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [64] <= data_i[64];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [65] <= data_i[65];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [66] <= data_i[66];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [67] <= data_i[67];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [68] <= data_i[68];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [69] <= data_i[69];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [70] <= data_i[70];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [71] <= data_i[71];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [72] <= data_i[72];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [73] <= data_i[73];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [74] <= data_i[74];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [75] <= data_i[75];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [76] <= data_i[76];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [77] <= data_i[77];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [78] <= data_i[78];
  always @(posedge clk_i)
    if (_015_) \data_fifo.mem_1r1w.synth.nz.mem[0] [79] <= data_i[79];
  always @(posedge clk_i)
    if (_018_) \go_fifo.mem_1r1w.synth.nz.mem[1] [0] <= len_i[0];
  always @(posedge clk_i)
    if (_018_) \go_fifo.mem_1r1w.synth.nz.mem[1] [1] <= len_i[1];
  always @(posedge clk_i)
    if (_018_) \go_fifo.mem_1r1w.synth.nz.mem[1] [2] <= len_i[2];
  always @(posedge clk_i)
    if (reset_i) \go_fifo.empty_r  <= 1'h1;
    else \go_fifo.empty_r  <= _014_;
  always @(posedge clk_i)
    if (reset_i) \data_fifo.full_r  <= 1'h0;
    else \data_fifo.full_r  <= _010_;
  always @(posedge clk_i)
    if (reset_i) \go_fifo.tail_r  <= 1'h0;
    else if (!_192_) \go_fifo.tail_r  <= _005_;
  always @(posedge clk_i)
    if (reset_i) \go_fifo.head_r  <= 1'h0;
    else if (\data_fifo.deq_i ) \go_fifo.head_r  <= _012_;
  always @(posedge clk_i)
    if (reset_i) _000_ <= 1'h0;
    else _000_ <= _006_;
  always @(posedge clk_i)
    if (reset_i) \ctr.count_o [0] <= 1'h0;
    else if (_002_) \ctr.count_o [0] <= _008_;
  always @(posedge clk_i)
    if (reset_i) \go_fifo.full_r  <= 1'h0;
    else \go_fifo.full_r  <= _013_;
  always @(posedge clk_i)
    if (reset_i) _001_ <= 1'h0;
    else _001_ <= _007_;
  always @(posedge clk_i)
    if (reset_i) \data_fifo.empty_r  <= 1'h1;
    else \data_fifo.empty_r  <= _011_;
  always @(posedge clk_i)
    if (reset_i) \data_fifo.tail_r  <= 1'h0;
    else if (!_193_) \data_fifo.tail_r  <= _004_;
  always @(posedge clk_i)
    if (reset_i) \data_fifo.head_r  <= 1'h0;
    else if (\data_fifo.deq_i ) \data_fifo.head_r  <= _009_;
  always @(posedge clk_i)
    if (_017_) \go_fifo.mem_1r1w.synth.nz.mem[0] [0] <= len_i[0];
  always @(posedge clk_i)
    if (_017_) \go_fifo.mem_1r1w.synth.nz.mem[0] [1] <= len_i[1];
  always @(posedge clk_i)
    if (_017_) \go_fifo.mem_1r1w.synth.nz.mem[0] [2] <= len_i[2];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [15] <= data_i[15];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [16] <= data_i[16];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [17] <= data_i[17];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [18] <= data_i[18];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [19] <= data_i[19];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [20] <= data_i[20];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [21] <= data_i[21];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [22] <= data_i[22];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [23] <= data_i[23];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [24] <= data_i[24];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [25] <= data_i[25];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [26] <= data_i[26];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [27] <= data_i[27];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [28] <= data_i[28];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [29] <= data_i[29];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [30] <= data_i[30];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [31] <= data_i[31];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [32] <= data_i[32];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [33] <= data_i[33];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [34] <= data_i[34];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [35] <= data_i[35];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [36] <= data_i[36];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [37] <= data_i[37];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [38] <= data_i[38];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [39] <= data_i[39];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [40] <= data_i[40];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [41] <= data_i[41];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [42] <= data_i[42];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [43] <= data_i[43];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [44] <= data_i[44];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [45] <= data_i[45];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [46] <= data_i[46];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [47] <= data_i[47];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [48] <= data_i[48];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [49] <= data_i[49];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [50] <= data_i[50];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [51] <= data_i[51];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [52] <= data_i[52];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [53] <= data_i[53];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [54] <= data_i[54];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [55] <= data_i[55];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [56] <= data_i[56];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [57] <= data_i[57];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [58] <= data_i[58];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [59] <= data_i[59];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [60] <= data_i[60];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [61] <= data_i[61];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [62] <= data_i[62];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [63] <= data_i[63];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [64] <= data_i[64];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [65] <= data_i[65];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [66] <= data_i[66];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [67] <= data_i[67];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [68] <= data_i[68];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [69] <= data_i[69];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [70] <= data_i[70];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [71] <= data_i[71];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [72] <= data_i[72];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [73] <= data_i[73];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [74] <= data_i[74];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [75] <= data_i[75];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [76] <= data_i[76];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [77] <= data_i[77];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [78] <= data_i[78];
  always @(posedge clk_i)
    if (_016_) \data_fifo.mem_1r1w.synth.nz.mem[1] [79] <= data_i[79];
  always @(posedge clk_i)
    if (_003_) \ctr.count_o [1] <= 1'h0;
    else if (\ctr.up_i ) \ctr.count_o [1] <= _208_[1];
  always @(posedge clk_i)
    if (_003_) \ctr.count_o [2] <= 1'h0;
    else if (\ctr.up_i ) \ctr.count_o [2] <= _208_[2];
  assign clear_li = \data_fifo.deq_i ;
  assign count_lo = \ctr.count_o ;
  assign count_r = \ctr.count_o ;
  assign count_r_is_zero = len_v_o;
  assign \ctr.clear_i  = \data_fifo.deq_i ;
  assign \ctr.clk_i  = clk_i;
  assign \ctr.reset_i  = reset_i;
  assign \data_fifo.clk_i  = clk_i;
  assign \data_fifo.data_i  = data_i;
  assign \data_fifo.mem_1r1w.r_addr_i  = \data_fifo.head_r ;
  assign \data_fifo.mem_1r1w.synth.r_addr_i  = \data_fifo.head_r ;
  assign \data_fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \data_fifo.mem_1r1w.synth.w_addr_i  = \data_fifo.tail_r ;
  assign \data_fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \data_fifo.mem_1r1w.synth.w_data_i  = data_i;
  assign \data_fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \data_fifo.mem_1r1w.w_addr_i  = \data_fifo.tail_r ;
  assign \data_fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \data_fifo.mem_1r1w.w_data_i  = data_i;
  assign \data_fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \data_fifo.reset_i  = reset_i;
  assign \data_fifo.v_i  = v_i;
  assign \data_fifo.yumi_i  = \data_fifo.deq_i ;
  assign \data_mux.data_o  = data_o;
  assign \data_mux.sel_i  = \ctr.count_o ;
  assign \go_fifo.clk_i  = clk_i;
  assign \go_fifo.data_i  = len_i;
  assign \go_fifo.deq_i  = \data_fifo.deq_i ;
  assign \go_fifo.mem_1r1w.r_addr_i  = \go_fifo.head_r ;
  assign \go_fifo.mem_1r1w.synth.r_addr_i  = \go_fifo.head_r ;
  assign \go_fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \go_fifo.mem_1r1w.synth.w_addr_i  = \go_fifo.tail_r ;
  assign \go_fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \go_fifo.mem_1r1w.synth.w_data_i  = len_i;
  assign \go_fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \go_fifo.mem_1r1w.w_addr_i  = \go_fifo.tail_r ;
  assign \go_fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \go_fifo.mem_1r1w.w_data_i  = len_i;
  assign \go_fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \go_fifo.ready_o  = ready_o;
  assign \go_fifo.reset_i  = reset_i;
  assign \go_fifo.v_i  = v_i;
  assign \go_fifo.v_o  = v_o;
  assign \go_fifo.yumi_i  = \data_fifo.deq_i ;
  assign go_fifo_yumi_li = \data_fifo.deq_i ;
  assign up_li = \ctr.up_i ;
endmodule
