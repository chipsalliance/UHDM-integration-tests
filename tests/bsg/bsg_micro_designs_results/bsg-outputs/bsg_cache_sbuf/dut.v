module bsg_cache_sbuf(clk_i, reset_i, sbuf_entry_i, v_i, sbuf_entry_o, v_o, yumi_i, empty_o, full_o, bypass_addr_i, bypass_v_i, bypass_data_o, bypass_mask_o);
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
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire _237_;
  wire _238_;
  wire _239_;
  wire _240_;
  wire _241_;
  wire _242_;
  wire _243_;
  wire _244_;
  wire _245_;
  wire _246_;
  wire _247_;
  wire _248_;
  wire _249_;
  wire _250_;
  wire _251_;
  wire _252_;
  wire _253_;
  wire _254_;
  wire _255_;
  wire _256_;
  wire _257_;
  wire _258_;
  wire _259_;
  wire _260_;
  wire _261_;
  wire _262_;
  wire _263_;
  wire _264_;
  wire _265_;
  wire _266_;
  wire _267_;
  wire _268_;
  wire _269_;
  wire _270_;
  wire _271_;
  wire _272_;
  wire _273_;
  wire _274_;
  wire _275_;
  wire _276_;
  wire _277_;
  wire _278_;
  wire _279_;
  wire _280_;
  wire _281_;
  wire _282_;
  wire _283_;
  wire _284_;
  wire _285_;
  wire _286_;
  wire _287_;
  wire _288_;
  wire _289_;
  wire _290_;
  wire _291_;
  wire [1:0] _292_;
  wire [1:0] _293_;
  input [27:0] bypass_addr_i;
  wire [27:0] bypass_addr_i;
  wire [31:0] bypass_data_n;
  output [31:0] bypass_data_o;
  reg [31:0] bypass_data_o;
  wire [3:0] bypass_mask_n;
  output [3:0] bypass_mask_o;
  reg [3:0] bypass_mask_o;
  input bypass_v_i;
  wire bypass_v_i;
  wire [25:0] bypass_word_addr;
  input clk_i;
  wire clk_i;
  wire [64:0] el0;
  wire el0_valid;
  wire [31:0] el0or1_data;
  wire [64:0] el1;
  wire el1_valid;
  output empty_o;
  wire empty_o;
  output full_o;
  wire full_o;
  wire [31:0] \mux_segmented_merge0.data0_i ;
  wire [31:0] \mux_segmented_merge0.data1_i ;
  wire [31:0] \mux_segmented_merge0.data_o ;
  wire [31:0] \mux_segmented_merge1.data0_i ;
  wire [31:0] \mux_segmented_merge1.data1_i ;
  wire [31:0] \mux_segmented_merge1.data_o ;
  wire \q0.clk_i ;
  wire [64:0] \q0.data_i ;
  wire [64:0] \q0.data_o ;
  wire \q0.el0_enable ;
  reg [64:0] \q0.el0_r ;
  wire [64:0] \q0.el0_snoop_o ;
  wire \q0.el0_valid_o ;
  wire \q0.el1_enable ;
  reg [64:0] \q0.el1_r ;
  wire [64:0] \q0.el1_snoop_o ;
  wire \q0.el1_valid_o ;
  wire \q0.empty_o ;
  wire \q0.full_o ;
  wire \q0.mux0_sel ;
  wire \q0.mux1_sel ;
  reg [1:0] \q0.num_els_r ;
  wire \q0.reset_i ;
  wire \q0.v_i ;
  wire \q0.v_o ;
  wire \q0.yumi_i ;
  input reset_i;
  wire reset_i;
  input [64:0] sbuf_entry_i;
  wire [64:0] sbuf_entry_i;
  wire [64:0] sbuf_entry_in;
  output [64:0] sbuf_entry_o;
  wire [64:0] sbuf_entry_o;
  input v_i;
  wire v_i;
  output v_o;
  wire v_o;
  input yumi_i;
  wire yumi_i;
  assign _043_ = full_o ? \q0.el0_r [49] : sbuf_entry_i[49];
  assign _045_ = full_o ? \q0.el0_r [50] : sbuf_entry_i[50];
  assign _046_ = full_o ? \q0.el0_r [51] : sbuf_entry_i[51];
  assign _047_ = full_o ? \q0.el0_r [52] : sbuf_entry_i[52];
  assign _048_ = full_o ? \q0.el0_r [53] : sbuf_entry_i[53];
  assign _049_ = full_o ? \q0.el0_r [54] : sbuf_entry_i[54];
  assign _050_ = full_o ? \q0.el0_r [55] : sbuf_entry_i[55];
  assign _051_ = full_o ? \q0.el0_r [56] : sbuf_entry_i[56];
  assign _052_ = full_o ? \q0.el0_r [57] : sbuf_entry_i[57];
  assign _053_ = full_o ? \q0.el0_r [58] : sbuf_entry_i[58];
  assign _054_ = full_o ? \q0.el0_r [59] : sbuf_entry_i[59];
  assign _056_ = full_o ? \q0.el0_r [60] : sbuf_entry_i[60];
  assign _057_ = full_o ? \q0.el0_r [61] : sbuf_entry_i[61];
  assign _058_ = full_o ? \q0.el0_r [62] : sbuf_entry_i[62];
  assign _059_ = full_o ? \q0.el0_r [63] : sbuf_entry_i[63];
  assign _060_ = full_o ? \q0.el0_r [64] : sbuf_entry_i[64];
  assign _068_ = bypass_addr_i[2] ^ \q0.el0_r [39];
  assign _069_ = bypass_addr_i[3] ^ \q0.el0_r [40];
  assign _070_ = _069_ | _068_;
  assign _071_ = bypass_addr_i[4] ^ \q0.el0_r [41];
  assign _072_ = bypass_addr_i[5] ^ \q0.el0_r [42];
  assign _073_ = _072_ | _071_;
  assign _074_ = _073_ | _070_;
  assign _075_ = bypass_addr_i[6] ^ \q0.el0_r [43];
  assign _076_ = bypass_addr_i[7] ^ \q0.el0_r [44];
  assign _077_ = _076_ | _075_;
  assign _078_ = bypass_addr_i[8] ^ \q0.el0_r [45];
  assign _079_ = bypass_addr_i[9] ^ \q0.el0_r [46];
  assign _080_ = _079_ | _078_;
  assign _081_ = _080_ | _077_;
  assign _082_ = _081_ | _074_;
  assign _083_ = bypass_addr_i[10] ^ \q0.el0_r [47];
  assign _084_ = bypass_addr_i[11] ^ \q0.el0_r [48];
  assign _085_ = _084_ | _083_;
  assign _086_ = bypass_addr_i[12] ^ \q0.el0_r [49];
  assign _087_ = bypass_addr_i[13] ^ \q0.el0_r [50];
  assign _088_ = _087_ | _086_;
  assign _089_ = _088_ | _085_;
  assign _090_ = bypass_addr_i[14] ^ \q0.el0_r [51];
  assign _091_ = bypass_addr_i[15] ^ \q0.el0_r [52];
  assign _092_ = _091_ | _090_;
  assign _093_ = bypass_addr_i[16] ^ \q0.el0_r [53];
  assign _094_ = bypass_addr_i[17] ^ \q0.el0_r [54];
  assign _095_ = _094_ | _093_;
  assign _096_ = _095_ | _092_;
  assign _097_ = _096_ | _089_;
  assign _098_ = _097_ | _082_;
  assign _099_ = bypass_addr_i[18] ^ \q0.el0_r [55];
  assign _100_ = bypass_addr_i[19] ^ \q0.el0_r [56];
  assign _101_ = _100_ | _099_;
  assign _102_ = bypass_addr_i[20] ^ \q0.el0_r [57];
  assign _103_ = bypass_addr_i[21] ^ \q0.el0_r [58];
  assign _104_ = _103_ | _102_;
  assign _105_ = _104_ | _101_;
  assign _106_ = bypass_addr_i[22] ^ \q0.el0_r [59];
  assign _107_ = bypass_addr_i[23] ^ \q0.el0_r [60];
  assign _108_ = _107_ | _106_;
  assign _109_ = bypass_addr_i[24] ^ \q0.el0_r [61];
  assign _110_ = bypass_addr_i[25] ^ \q0.el0_r [62];
  assign _111_ = _110_ | _109_;
  assign _112_ = _111_ | _108_;
  assign _113_ = _112_ | _105_;
  assign _114_ = bypass_addr_i[26] ^ \q0.el0_r [63];
  assign _115_ = bypass_addr_i[27] ^ \q0.el0_r [64];
  assign _116_ = _115_ | _114_;
  assign _117_ = _116_ | _113_;
  assign _118_ = ~(_117_ | _098_);
  assign _119_ = ~(_118_ & full_o);
  assign _120_ = _119_ | ~(\q0.el0_r [4]);
  assign _121_ = _120_ ? \q0.el1_r [29] : \q0.el0_r [29];
  assign _122_ = ~v_i;
  assign _123_ = bypass_addr_i[2] ^ sbuf_entry_i[39];
  assign _124_ = bypass_addr_i[3] ^ sbuf_entry_i[40];
  assign _125_ = _124_ | _123_;
  assign _126_ = bypass_addr_i[4] ^ sbuf_entry_i[41];
  assign _127_ = bypass_addr_i[5] ^ sbuf_entry_i[42];
  assign _128_ = _127_ | _126_;
  assign _129_ = _128_ | _125_;
  assign _130_ = bypass_addr_i[6] ^ sbuf_entry_i[43];
  assign _131_ = bypass_addr_i[7] ^ sbuf_entry_i[44];
  assign _132_ = _131_ | _130_;
  assign _133_ = bypass_addr_i[8] ^ sbuf_entry_i[45];
  assign _134_ = bypass_addr_i[9] ^ sbuf_entry_i[46];
  assign _135_ = _134_ | _133_;
  assign _136_ = _135_ | _132_;
  assign _137_ = _136_ | _129_;
  assign _138_ = bypass_addr_i[10] ^ sbuf_entry_i[47];
  assign _139_ = bypass_addr_i[11] ^ sbuf_entry_i[48];
  assign _140_ = _139_ | _138_;
  assign _141_ = bypass_addr_i[12] ^ sbuf_entry_i[49];
  assign _142_ = bypass_addr_i[13] ^ sbuf_entry_i[50];
  assign _143_ = _142_ | _141_;
  assign _144_ = _143_ | _140_;
  assign _145_ = bypass_addr_i[14] ^ sbuf_entry_i[51];
  assign _146_ = bypass_addr_i[15] ^ sbuf_entry_i[52];
  assign _147_ = _146_ | _145_;
  assign _148_ = bypass_addr_i[16] ^ sbuf_entry_i[53];
  assign _149_ = bypass_addr_i[17] ^ sbuf_entry_i[54];
  assign _150_ = _149_ | _148_;
  assign _151_ = _150_ | _147_;
  assign _152_ = _151_ | _144_;
  assign _153_ = _152_ | _137_;
  assign _154_ = bypass_addr_i[18] ^ sbuf_entry_i[55];
  assign _155_ = bypass_addr_i[19] ^ sbuf_entry_i[56];
  assign _156_ = _155_ | _154_;
  assign _157_ = bypass_addr_i[20] ^ sbuf_entry_i[57];
  assign _158_ = bypass_addr_i[21] ^ sbuf_entry_i[58];
  assign _159_ = _158_ | _157_;
  assign _160_ = _159_ | _156_;
  assign _161_ = bypass_addr_i[22] ^ sbuf_entry_i[59];
  assign _162_ = bypass_addr_i[23] ^ sbuf_entry_i[60];
  assign _163_ = _162_ | _161_;
  assign _164_ = bypass_addr_i[24] ^ sbuf_entry_i[61];
  assign _165_ = bypass_addr_i[25] ^ sbuf_entry_i[62];
  assign _166_ = _165_ | _164_;
  assign _167_ = _166_ | _163_;
  assign _168_ = _167_ | _160_;
  assign _169_ = bypass_addr_i[26] ^ sbuf_entry_i[63];
  assign _170_ = bypass_addr_i[27] ^ sbuf_entry_i[64];
  assign _171_ = _170_ | _169_;
  assign _172_ = _171_ | _168_;
  assign _173_ = _172_ | _153_;
  assign _174_ = _173_ | _122_;
  assign _175_ = sbuf_entry_i[4] & ~(_174_);
  assign bypass_data_n[24] = _175_ ? sbuf_entry_i[29] : _121_;
  assign _176_ = _120_ ? \q0.el1_r [30] : \q0.el0_r [30];
  assign bypass_data_n[25] = _175_ ? sbuf_entry_i[30] : _176_;
  assign _177_ = _120_ ? \q0.el1_r [31] : \q0.el0_r [31];
  assign bypass_data_n[26] = _175_ ? sbuf_entry_i[31] : _177_;
  assign _178_ = _120_ ? \q0.el1_r [32] : \q0.el0_r [32];
  assign bypass_data_n[27] = _175_ ? sbuf_entry_i[32] : _178_;
  assign _179_ = _120_ ? \q0.el1_r [33] : \q0.el0_r [33];
  assign bypass_data_n[28] = _175_ ? sbuf_entry_i[33] : _179_;
  assign _180_ = _120_ ? \q0.el1_r [34] : \q0.el0_r [34];
  assign bypass_data_n[29] = _175_ ? sbuf_entry_i[34] : _180_;
  assign _181_ = _120_ ? \q0.el1_r [35] : \q0.el0_r [35];
  assign bypass_data_n[30] = _175_ ? sbuf_entry_i[35] : _181_;
  assign _182_ = _120_ ? \q0.el1_r [36] : \q0.el0_r [36];
  assign bypass_data_n[31] = _175_ ? sbuf_entry_i[36] : _182_;
  assign _183_ = _119_ | ~(\q0.el0_r [3]);
  assign _184_ = _183_ ? \q0.el1_r [21] : \q0.el0_r [21];
  assign _185_ = sbuf_entry_i[3] & ~(_174_);
  assign bypass_data_n[16] = _185_ ? sbuf_entry_i[21] : _184_;
  assign _186_ = _183_ ? \q0.el1_r [22] : \q0.el0_r [22];
  assign bypass_data_n[17] = _185_ ? sbuf_entry_i[22] : _186_;
  assign _187_ = _183_ ? \q0.el1_r [23] : \q0.el0_r [23];
  assign bypass_data_n[18] = _185_ ? sbuf_entry_i[23] : _187_;
  assign _188_ = _183_ ? \q0.el1_r [24] : \q0.el0_r [24];
  assign bypass_data_n[19] = _185_ ? sbuf_entry_i[24] : _188_;
  assign _189_ = _183_ ? \q0.el1_r [25] : \q0.el0_r [25];
  assign bypass_data_n[20] = _185_ ? sbuf_entry_i[25] : _189_;
  assign _190_ = _183_ ? \q0.el1_r [26] : \q0.el0_r [26];
  assign bypass_data_n[21] = _185_ ? sbuf_entry_i[26] : _190_;
  assign _191_ = _183_ ? \q0.el1_r [27] : \q0.el0_r [27];
  assign bypass_data_n[22] = _185_ ? sbuf_entry_i[27] : _191_;
  assign _192_ = _183_ ? \q0.el1_r [28] : \q0.el0_r [28];
  assign bypass_data_n[23] = _185_ ? sbuf_entry_i[28] : _192_;
  assign _193_ = _119_ | ~(\q0.el0_r [2]);
  assign _194_ = _193_ ? \q0.el1_r [13] : \q0.el0_r [13];
  assign _195_ = sbuf_entry_i[2] & ~(_174_);
  assign bypass_data_n[8] = _195_ ? sbuf_entry_i[13] : _194_;
  assign _196_ = _193_ ? \q0.el1_r [14] : \q0.el0_r [14];
  assign bypass_data_n[9] = _195_ ? sbuf_entry_i[14] : _196_;
  assign _197_ = _193_ ? \q0.el1_r [15] : \q0.el0_r [15];
  assign bypass_data_n[10] = _195_ ? sbuf_entry_i[15] : _197_;
  assign _198_ = _193_ ? \q0.el1_r [16] : \q0.el0_r [16];
  assign bypass_data_n[11] = _195_ ? sbuf_entry_i[16] : _198_;
  assign _199_ = _193_ ? \q0.el1_r [17] : \q0.el0_r [17];
  assign bypass_data_n[12] = _195_ ? sbuf_entry_i[17] : _199_;
  assign _200_ = _193_ ? \q0.el1_r [18] : \q0.el0_r [18];
  assign bypass_data_n[13] = _195_ ? sbuf_entry_i[18] : _200_;
  assign _201_ = _193_ ? \q0.el1_r [19] : \q0.el0_r [19];
  assign bypass_data_n[14] = _195_ ? sbuf_entry_i[19] : _201_;
  assign _202_ = _193_ ? \q0.el1_r [20] : \q0.el0_r [20];
  assign bypass_data_n[15] = _195_ ? sbuf_entry_i[20] : _202_;
  assign _203_ = _119_ | ~(\q0.el0_r [1]);
  assign _204_ = _203_ ? \q0.el1_r [5] : \q0.el0_r [5];
  assign _205_ = sbuf_entry_i[1] & ~(_174_);
  assign bypass_data_n[0] = _205_ ? sbuf_entry_i[5] : _204_;
  assign _206_ = _203_ ? \q0.el1_r [6] : \q0.el0_r [6];
  assign bypass_data_n[1] = _205_ ? sbuf_entry_i[6] : _206_;
  assign _207_ = _203_ ? \q0.el1_r [7] : \q0.el0_r [7];
  assign bypass_data_n[2] = _205_ ? sbuf_entry_i[7] : _207_;
  assign _208_ = _203_ ? \q0.el1_r [8] : \q0.el0_r [8];
  assign bypass_data_n[3] = _205_ ? sbuf_entry_i[8] : _208_;
  assign _209_ = _203_ ? \q0.el1_r [9] : \q0.el0_r [9];
  assign bypass_data_n[4] = _205_ ? sbuf_entry_i[9] : _209_;
  assign _210_ = _203_ ? \q0.el1_r [10] : \q0.el0_r [10];
  assign bypass_data_n[5] = _205_ ? sbuf_entry_i[10] : _210_;
  assign _211_ = _203_ ? \q0.el1_r [11] : \q0.el0_r [11];
  assign bypass_data_n[6] = _205_ ? sbuf_entry_i[11] : _211_;
  assign _212_ = _203_ ? \q0.el1_r [12] : \q0.el0_r [12];
  assign bypass_data_n[7] = _205_ ? sbuf_entry_i[12] : _212_;
  assign _213_ = v_i & ~(_065_);
  assign _214_ = _067_ & ~(_213_);
  assign _215_ = \q0.num_els_r [0] & \q0.num_els_r [1];
  assign _216_ = _215_ | _214_;
  assign v_o = ~_216_;
  assign _217_ = ~(yumi_i & v_i);
  assign _218_ = _217_ | ~(full_o);
  assign _219_ = yumi_i | ~(v_i);
  assign _220_ = _066_ & ~(_219_);
  assign _221_ = _220_ | ~(_218_);
  assign \q0.el0_enable  = _221_ & ~(_067_);
  assign _222_ = ~(full_o & yumi_i);
  assign _223_ = _066_ & ~(_217_);
  assign _224_ = _222_ & ~(_223_);
  assign _225_ = ~(_219_ | _065_);
  assign _226_ = _225_ | ~(_224_);
  assign \q0.el1_enable  = _226_ & ~(_215_);
  assign _227_ = bypass_addr_i[2] ^ \q0.el1_r [39];
  assign _228_ = bypass_addr_i[3] ^ \q0.el1_r [40];
  assign _229_ = _228_ | _227_;
  assign _230_ = bypass_addr_i[4] ^ \q0.el1_r [41];
  assign _231_ = bypass_addr_i[5] ^ \q0.el1_r [42];
  assign _232_ = _231_ | _230_;
  assign _233_ = _232_ | _229_;
  assign _234_ = bypass_addr_i[6] ^ \q0.el1_r [43];
  assign _235_ = bypass_addr_i[7] ^ \q0.el1_r [44];
  assign _236_ = _235_ | _234_;
  assign _237_ = bypass_addr_i[8] ^ \q0.el1_r [45];
  assign _238_ = bypass_addr_i[9] ^ \q0.el1_r [46];
  assign _239_ = _238_ | _237_;
  assign _240_ = _239_ | _236_;
  assign _241_ = _240_ | _233_;
  assign _242_ = bypass_addr_i[10] ^ \q0.el1_r [47];
  assign _243_ = bypass_addr_i[11] ^ \q0.el1_r [48];
  assign _244_ = _243_ | _242_;
  assign _245_ = bypass_addr_i[12] ^ \q0.el1_r [49];
  assign _246_ = bypass_addr_i[13] ^ \q0.el1_r [50];
  assign _247_ = _246_ | _245_;
  assign _248_ = _247_ | _244_;
  assign _249_ = bypass_addr_i[14] ^ \q0.el1_r [51];
  assign _250_ = bypass_addr_i[15] ^ \q0.el1_r [52];
  assign _251_ = _250_ | _249_;
  assign _252_ = bypass_addr_i[16] ^ \q0.el1_r [53];
  assign _253_ = bypass_addr_i[17] ^ \q0.el1_r [54];
  assign _254_ = _253_ | _252_;
  assign _255_ = _254_ | _251_;
  assign _256_ = _255_ | _248_;
  assign _257_ = _256_ | _241_;
  assign _258_ = bypass_addr_i[18] ^ \q0.el1_r [55];
  assign _259_ = bypass_addr_i[19] ^ \q0.el1_r [56];
  assign _260_ = _259_ | _258_;
  assign _261_ = bypass_addr_i[20] ^ \q0.el1_r [57];
  assign _262_ = bypass_addr_i[21] ^ \q0.el1_r [58];
  assign _263_ = _262_ | _261_;
  assign _264_ = _263_ | _260_;
  assign _265_ = bypass_addr_i[22] ^ \q0.el1_r [59];
  assign _266_ = bypass_addr_i[23] ^ \q0.el1_r [60];
  assign _267_ = _266_ | _265_;
  assign _268_ = bypass_addr_i[24] ^ \q0.el1_r [61];
  assign _269_ = bypass_addr_i[25] ^ \q0.el1_r [62];
  assign _270_ = _269_ | _268_;
  assign _271_ = _270_ | _267_;
  assign _272_ = _271_ | _264_;
  assign _273_ = bypass_addr_i[26] ^ \q0.el1_r [63];
  assign _274_ = bypass_addr_i[27] ^ \q0.el1_r [64];
  assign _275_ = _274_ | _273_;
  assign _276_ = _275_ | _272_;
  assign _277_ = _276_ | _257_;
  assign _278_ = _277_ | _067_;
  assign _279_ = \q0.el1_r [1] & ~(_278_);
  assign _280_ = _279_ | ~(_203_);
  assign bypass_mask_n[0] = _280_ | _205_;
  assign _281_ = \q0.el1_r [2] & ~(_278_);
  assign _282_ = _281_ | ~(_193_);
  assign bypass_mask_n[1] = _282_ | _195_;
  assign _283_ = \q0.el1_r [3] & ~(_278_);
  assign _284_ = _283_ | ~(_183_);
  assign bypass_mask_n[2] = _284_ | _185_;
  assign _285_ = \q0.el1_r [4] & ~(_278_);
  assign _286_ = _285_ | ~(_120_);
  assign bypass_mask_n[3] = _286_ | _175_;
  assign _287_ = yumi_i & ~(_216_);
  assign _288_ = _287_ & ~(v_i);
  assign _289_ = _288_ ^ \q0.num_els_r [1];
  assign _290_ = _287_ ^ _122_;
  assign _291_ = \q0.num_els_r [0] & ~(_290_);
  assign _293_[1] = _291_ ^ _289_;
  assign _292_[0] = ~(_290_ ^ \q0.num_els_r [0]);
  assign full_o = \q0.num_els_r [1] & ~(\q0.num_els_r [0]);
  assign _065_ = \q0.num_els_r [0] | \q0.num_els_r [1];
  assign empty_o = ~_065_;
  assign _066_ = \q0.num_els_r [0] & ~(\q0.num_els_r [1]);
  assign _067_ = ~(_066_ | full_o);
  assign sbuf_entry_o[0] = _067_ ? sbuf_entry_i[0] : \q0.el1_r [0];
  assign sbuf_entry_o[1] = _067_ ? sbuf_entry_i[1] : \q0.el1_r [1];
  assign sbuf_entry_o[2] = _067_ ? sbuf_entry_i[2] : \q0.el1_r [2];
  assign sbuf_entry_o[3] = _067_ ? sbuf_entry_i[3] : \q0.el1_r [3];
  assign sbuf_entry_o[4] = _067_ ? sbuf_entry_i[4] : \q0.el1_r [4];
  assign sbuf_entry_o[5] = _067_ ? sbuf_entry_i[5] : \q0.el1_r [5];
  assign sbuf_entry_o[6] = _067_ ? sbuf_entry_i[6] : \q0.el1_r [6];
  assign sbuf_entry_o[7] = _067_ ? sbuf_entry_i[7] : \q0.el1_r [7];
  assign sbuf_entry_o[8] = _067_ ? sbuf_entry_i[8] : \q0.el1_r [8];
  assign sbuf_entry_o[9] = _067_ ? sbuf_entry_i[9] : \q0.el1_r [9];
  assign sbuf_entry_o[10] = _067_ ? sbuf_entry_i[10] : \q0.el1_r [10];
  assign sbuf_entry_o[11] = _067_ ? sbuf_entry_i[11] : \q0.el1_r [11];
  assign sbuf_entry_o[12] = _067_ ? sbuf_entry_i[12] : \q0.el1_r [12];
  assign sbuf_entry_o[13] = _067_ ? sbuf_entry_i[13] : \q0.el1_r [13];
  assign sbuf_entry_o[14] = _067_ ? sbuf_entry_i[14] : \q0.el1_r [14];
  assign sbuf_entry_o[15] = _067_ ? sbuf_entry_i[15] : \q0.el1_r [15];
  assign sbuf_entry_o[16] = _067_ ? sbuf_entry_i[16] : \q0.el1_r [16];
  assign sbuf_entry_o[17] = _067_ ? sbuf_entry_i[17] : \q0.el1_r [17];
  assign sbuf_entry_o[18] = _067_ ? sbuf_entry_i[18] : \q0.el1_r [18];
  assign sbuf_entry_o[19] = _067_ ? sbuf_entry_i[19] : \q0.el1_r [19];
  assign sbuf_entry_o[20] = _067_ ? sbuf_entry_i[20] : \q0.el1_r [20];
  assign sbuf_entry_o[21] = _067_ ? sbuf_entry_i[21] : \q0.el1_r [21];
  assign sbuf_entry_o[22] = _067_ ? sbuf_entry_i[22] : \q0.el1_r [22];
  assign sbuf_entry_o[23] = _067_ ? sbuf_entry_i[23] : \q0.el1_r [23];
  assign sbuf_entry_o[24] = _067_ ? sbuf_entry_i[24] : \q0.el1_r [24];
  assign sbuf_entry_o[25] = _067_ ? sbuf_entry_i[25] : \q0.el1_r [25];
  assign sbuf_entry_o[26] = _067_ ? sbuf_entry_i[26] : \q0.el1_r [26];
  assign sbuf_entry_o[27] = _067_ ? sbuf_entry_i[27] : \q0.el1_r [27];
  assign sbuf_entry_o[28] = _067_ ? sbuf_entry_i[28] : \q0.el1_r [28];
  assign sbuf_entry_o[29] = _067_ ? sbuf_entry_i[29] : \q0.el1_r [29];
  assign sbuf_entry_o[30] = _067_ ? sbuf_entry_i[30] : \q0.el1_r [30];
  assign sbuf_entry_o[31] = _067_ ? sbuf_entry_i[31] : \q0.el1_r [31];
  assign sbuf_entry_o[32] = _067_ ? sbuf_entry_i[32] : \q0.el1_r [32];
  assign sbuf_entry_o[33] = _067_ ? sbuf_entry_i[33] : \q0.el1_r [33];
  assign sbuf_entry_o[34] = _067_ ? sbuf_entry_i[34] : \q0.el1_r [34];
  assign sbuf_entry_o[35] = _067_ ? sbuf_entry_i[35] : \q0.el1_r [35];
  assign sbuf_entry_o[36] = _067_ ? sbuf_entry_i[36] : \q0.el1_r [36];
  assign sbuf_entry_o[37] = _067_ ? sbuf_entry_i[37] : \q0.el1_r [37];
  assign sbuf_entry_o[38] = _067_ ? sbuf_entry_i[38] : \q0.el1_r [38];
  assign sbuf_entry_o[39] = _067_ ? sbuf_entry_i[39] : \q0.el1_r [39];
  assign sbuf_entry_o[40] = _067_ ? sbuf_entry_i[40] : \q0.el1_r [40];
  assign sbuf_entry_o[41] = _067_ ? sbuf_entry_i[41] : \q0.el1_r [41];
  assign sbuf_entry_o[42] = _067_ ? sbuf_entry_i[42] : \q0.el1_r [42];
  assign sbuf_entry_o[43] = _067_ ? sbuf_entry_i[43] : \q0.el1_r [43];
  assign sbuf_entry_o[44] = _067_ ? sbuf_entry_i[44] : \q0.el1_r [44];
  assign sbuf_entry_o[45] = _067_ ? sbuf_entry_i[45] : \q0.el1_r [45];
  assign sbuf_entry_o[46] = _067_ ? sbuf_entry_i[46] : \q0.el1_r [46];
  assign sbuf_entry_o[47] = _067_ ? sbuf_entry_i[47] : \q0.el1_r [47];
  assign sbuf_entry_o[48] = _067_ ? sbuf_entry_i[48] : \q0.el1_r [48];
  assign sbuf_entry_o[49] = _067_ ? sbuf_entry_i[49] : \q0.el1_r [49];
  assign sbuf_entry_o[50] = _067_ ? sbuf_entry_i[50] : \q0.el1_r [50];
  assign sbuf_entry_o[51] = _067_ ? sbuf_entry_i[51] : \q0.el1_r [51];
  assign sbuf_entry_o[52] = _067_ ? sbuf_entry_i[52] : \q0.el1_r [52];
  assign sbuf_entry_o[53] = _067_ ? sbuf_entry_i[53] : \q0.el1_r [53];
  assign sbuf_entry_o[54] = _067_ ? sbuf_entry_i[54] : \q0.el1_r [54];
  assign sbuf_entry_o[55] = _067_ ? sbuf_entry_i[55] : \q0.el1_r [55];
  assign sbuf_entry_o[56] = _067_ ? sbuf_entry_i[56] : \q0.el1_r [56];
  assign sbuf_entry_o[57] = _067_ ? sbuf_entry_i[57] : \q0.el1_r [57];
  assign sbuf_entry_o[58] = _067_ ? sbuf_entry_i[58] : \q0.el1_r [58];
  assign sbuf_entry_o[59] = _067_ ? sbuf_entry_i[59] : \q0.el1_r [59];
  assign sbuf_entry_o[60] = _067_ ? sbuf_entry_i[60] : \q0.el1_r [60];
  assign sbuf_entry_o[61] = _067_ ? sbuf_entry_i[61] : \q0.el1_r [61];
  assign sbuf_entry_o[62] = _067_ ? sbuf_entry_i[62] : \q0.el1_r [62];
  assign sbuf_entry_o[63] = _067_ ? sbuf_entry_i[63] : \q0.el1_r [63];
  assign sbuf_entry_o[64] = _067_ ? sbuf_entry_i[64] : \q0.el1_r [64];
  assign _000_ = full_o ? \q0.el0_r [0] : sbuf_entry_i[0];
  assign _011_ = full_o ? \q0.el0_r [1] : sbuf_entry_i[1];
  assign _022_ = full_o ? \q0.el0_r [2] : sbuf_entry_i[2];
  assign _033_ = full_o ? \q0.el0_r [3] : sbuf_entry_i[3];
  assign _044_ = full_o ? \q0.el0_r [4] : sbuf_entry_i[4];
  assign _055_ = full_o ? \q0.el0_r [5] : sbuf_entry_i[5];
  assign _061_ = full_o ? \q0.el0_r [6] : sbuf_entry_i[6];
  assign _062_ = full_o ? \q0.el0_r [7] : sbuf_entry_i[7];
  assign _063_ = full_o ? \q0.el0_r [8] : sbuf_entry_i[8];
  assign _064_ = full_o ? \q0.el0_r [9] : sbuf_entry_i[9];
  assign _001_ = full_o ? \q0.el0_r [10] : sbuf_entry_i[10];
  assign _002_ = full_o ? \q0.el0_r [11] : sbuf_entry_i[11];
  assign _003_ = full_o ? \q0.el0_r [12] : sbuf_entry_i[12];
  assign _004_ = full_o ? \q0.el0_r [13] : sbuf_entry_i[13];
  assign _005_ = full_o ? \q0.el0_r [14] : sbuf_entry_i[14];
  assign _006_ = full_o ? \q0.el0_r [15] : sbuf_entry_i[15];
  assign _007_ = full_o ? \q0.el0_r [16] : sbuf_entry_i[16];
  assign _008_ = full_o ? \q0.el0_r [17] : sbuf_entry_i[17];
  assign _009_ = full_o ? \q0.el0_r [18] : sbuf_entry_i[18];
  assign _010_ = full_o ? \q0.el0_r [19] : sbuf_entry_i[19];
  assign _012_ = full_o ? \q0.el0_r [20] : sbuf_entry_i[20];
  assign _013_ = full_o ? \q0.el0_r [21] : sbuf_entry_i[21];
  assign _014_ = full_o ? \q0.el0_r [22] : sbuf_entry_i[22];
  assign _015_ = full_o ? \q0.el0_r [23] : sbuf_entry_i[23];
  assign _016_ = full_o ? \q0.el0_r [24] : sbuf_entry_i[24];
  assign _017_ = full_o ? \q0.el0_r [25] : sbuf_entry_i[25];
  assign _018_ = full_o ? \q0.el0_r [26] : sbuf_entry_i[26];
  assign _019_ = full_o ? \q0.el0_r [27] : sbuf_entry_i[27];
  assign _020_ = full_o ? \q0.el0_r [28] : sbuf_entry_i[28];
  assign _021_ = full_o ? \q0.el0_r [29] : sbuf_entry_i[29];
  assign _023_ = full_o ? \q0.el0_r [30] : sbuf_entry_i[30];
  assign _024_ = full_o ? \q0.el0_r [31] : sbuf_entry_i[31];
  assign _025_ = full_o ? \q0.el0_r [32] : sbuf_entry_i[32];
  assign _026_ = full_o ? \q0.el0_r [33] : sbuf_entry_i[33];
  assign _027_ = full_o ? \q0.el0_r [34] : sbuf_entry_i[34];
  assign _028_ = full_o ? \q0.el0_r [35] : sbuf_entry_i[35];
  assign _029_ = full_o ? \q0.el0_r [36] : sbuf_entry_i[36];
  assign _030_ = full_o ? \q0.el0_r [37] : sbuf_entry_i[37];
  assign _031_ = full_o ? \q0.el0_r [38] : sbuf_entry_i[38];
  assign _032_ = full_o ? \q0.el0_r [39] : sbuf_entry_i[39];
  assign _034_ = full_o ? \q0.el0_r [40] : sbuf_entry_i[40];
  assign _035_ = full_o ? \q0.el0_r [41] : sbuf_entry_i[41];
  assign _036_ = full_o ? \q0.el0_r [42] : sbuf_entry_i[42];
  assign _037_ = full_o ? \q0.el0_r [43] : sbuf_entry_i[43];
  assign _038_ = full_o ? \q0.el0_r [44] : sbuf_entry_i[44];
  assign _039_ = full_o ? \q0.el0_r [45] : sbuf_entry_i[45];
  assign _040_ = full_o ? \q0.el0_r [46] : sbuf_entry_i[46];
  assign _041_ = full_o ? \q0.el0_r [47] : sbuf_entry_i[47];
  assign _042_ = full_o ? \q0.el0_r [48] : sbuf_entry_i[48];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[0] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[0] <= bypass_data_n[0];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[1] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[1] <= bypass_data_n[1];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[2] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[2] <= bypass_data_n[2];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[3] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[3] <= bypass_data_n[3];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[4] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[4] <= bypass_data_n[4];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[5] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[5] <= bypass_data_n[5];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[6] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[6] <= bypass_data_n[6];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[7] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[7] <= bypass_data_n[7];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[8] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[8] <= bypass_data_n[8];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[9] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[9] <= bypass_data_n[9];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[10] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[10] <= bypass_data_n[10];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[11] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[11] <= bypass_data_n[11];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[12] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[12] <= bypass_data_n[12];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[13] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[13] <= bypass_data_n[13];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[14] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[14] <= bypass_data_n[14];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[15] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[15] <= bypass_data_n[15];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[16] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[16] <= bypass_data_n[16];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[17] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[17] <= bypass_data_n[17];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[18] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[18] <= bypass_data_n[18];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[19] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[19] <= bypass_data_n[19];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[20] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[20] <= bypass_data_n[20];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[21] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[21] <= bypass_data_n[21];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[22] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[22] <= bypass_data_n[22];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[23] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[23] <= bypass_data_n[23];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[24] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[24] <= bypass_data_n[24];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[25] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[25] <= bypass_data_n[25];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[26] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[26] <= bypass_data_n[26];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[27] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[27] <= bypass_data_n[27];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[28] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[28] <= bypass_data_n[28];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[29] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[29] <= bypass_data_n[29];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[30] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[30] <= bypass_data_n[30];
  always @(posedge clk_i)
    if (reset_i) bypass_data_o[31] <= 1'h0;
    else if (bypass_v_i) bypass_data_o[31] <= bypass_data_n[31];
  always @(posedge clk_i)
    if (reset_i) bypass_mask_o[0] <= 1'h0;
    else if (bypass_v_i) bypass_mask_o[0] <= bypass_mask_n[0];
  always @(posedge clk_i)
    if (reset_i) bypass_mask_o[1] <= 1'h0;
    else if (bypass_v_i) bypass_mask_o[1] <= bypass_mask_n[1];
  always @(posedge clk_i)
    if (reset_i) bypass_mask_o[2] <= 1'h0;
    else if (bypass_v_i) bypass_mask_o[2] <= bypass_mask_n[2];
  always @(posedge clk_i)
    if (reset_i) bypass_mask_o[3] <= 1'h0;
    else if (bypass_v_i) bypass_mask_o[3] <= bypass_mask_n[3];
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [0] <= _000_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [1] <= _011_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [2] <= _022_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [3] <= _033_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [4] <= _044_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [5] <= _055_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [6] <= _061_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [7] <= _062_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [8] <= _063_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [9] <= _064_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [10] <= _001_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [11] <= _002_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [12] <= _003_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [13] <= _004_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [14] <= _005_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [15] <= _006_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [16] <= _007_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [17] <= _008_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [18] <= _009_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [19] <= _010_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [20] <= _012_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [21] <= _013_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [22] <= _014_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [23] <= _015_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [24] <= _016_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [25] <= _017_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [26] <= _018_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [27] <= _019_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [28] <= _020_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [29] <= _021_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [30] <= _023_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [31] <= _024_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [32] <= _025_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [33] <= _026_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [34] <= _027_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [35] <= _028_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [36] <= _029_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [37] <= _030_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [38] <= _031_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [39] <= _032_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [40] <= _034_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [41] <= _035_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [42] <= _036_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [43] <= _037_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [44] <= _038_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [45] <= _039_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [46] <= _040_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [47] <= _041_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [48] <= _042_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [49] <= _043_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [50] <= _045_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [51] <= _046_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [52] <= _047_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [53] <= _048_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [54] <= _049_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [55] <= _050_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [56] <= _051_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [57] <= _052_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [58] <= _053_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [59] <= _054_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [60] <= _056_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [61] <= _057_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [62] <= _058_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [63] <= _059_;
  always @(posedge clk_i)
    if (\q0.el1_enable ) \q0.el1_r [64] <= _060_;
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [0] <= sbuf_entry_i[0];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [1] <= sbuf_entry_i[1];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [2] <= sbuf_entry_i[2];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [3] <= sbuf_entry_i[3];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [4] <= sbuf_entry_i[4];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [5] <= sbuf_entry_i[5];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [6] <= sbuf_entry_i[6];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [7] <= sbuf_entry_i[7];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [8] <= sbuf_entry_i[8];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [9] <= sbuf_entry_i[9];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [10] <= sbuf_entry_i[10];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [11] <= sbuf_entry_i[11];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [12] <= sbuf_entry_i[12];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [13] <= sbuf_entry_i[13];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [14] <= sbuf_entry_i[14];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [15] <= sbuf_entry_i[15];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [16] <= sbuf_entry_i[16];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [17] <= sbuf_entry_i[17];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [18] <= sbuf_entry_i[18];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [19] <= sbuf_entry_i[19];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [20] <= sbuf_entry_i[20];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [21] <= sbuf_entry_i[21];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [22] <= sbuf_entry_i[22];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [23] <= sbuf_entry_i[23];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [24] <= sbuf_entry_i[24];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [25] <= sbuf_entry_i[25];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [26] <= sbuf_entry_i[26];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [27] <= sbuf_entry_i[27];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [28] <= sbuf_entry_i[28];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [29] <= sbuf_entry_i[29];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [30] <= sbuf_entry_i[30];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [31] <= sbuf_entry_i[31];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [32] <= sbuf_entry_i[32];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [33] <= sbuf_entry_i[33];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [34] <= sbuf_entry_i[34];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [35] <= sbuf_entry_i[35];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [36] <= sbuf_entry_i[36];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [37] <= sbuf_entry_i[37];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [38] <= sbuf_entry_i[38];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [39] <= sbuf_entry_i[39];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [40] <= sbuf_entry_i[40];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [41] <= sbuf_entry_i[41];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [42] <= sbuf_entry_i[42];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [43] <= sbuf_entry_i[43];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [44] <= sbuf_entry_i[44];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [45] <= sbuf_entry_i[45];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [46] <= sbuf_entry_i[46];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [47] <= sbuf_entry_i[47];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [48] <= sbuf_entry_i[48];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [49] <= sbuf_entry_i[49];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [50] <= sbuf_entry_i[50];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [51] <= sbuf_entry_i[51];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [52] <= sbuf_entry_i[52];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [53] <= sbuf_entry_i[53];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [54] <= sbuf_entry_i[54];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [55] <= sbuf_entry_i[55];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [56] <= sbuf_entry_i[56];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [57] <= sbuf_entry_i[57];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [58] <= sbuf_entry_i[58];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [59] <= sbuf_entry_i[59];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [60] <= sbuf_entry_i[60];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [61] <= sbuf_entry_i[61];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [62] <= sbuf_entry_i[62];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [63] <= sbuf_entry_i[63];
  always @(posedge clk_i)
    if (\q0.el0_enable ) \q0.el0_r [64] <= sbuf_entry_i[64];
  always @(posedge clk_i)
    if (reset_i) \q0.num_els_r [0] <= 1'h0;
    else \q0.num_els_r [0] <= _292_[0];
  always @(posedge clk_i)
    if (reset_i) \q0.num_els_r [1] <= 1'h0;
    else \q0.num_els_r [1] <= _293_[1];
  assign _293_[0] = _292_[0];
  assign bypass_word_addr = bypass_addr_i[27:2];
  assign el0 = \q0.el0_r ;
  assign el0_valid = full_o;
  assign el0or1_data = \mux_segmented_merge0.data_o ;
  assign el1 = \q0.el1_r ;
  assign el1_valid = \q0.el1_valid_o ;
  assign \mux_segmented_merge0.data0_i  = \q0.el1_r [36:5];
  assign \mux_segmented_merge0.data1_i  = \q0.el0_r [36:5];
  assign \mux_segmented_merge1.data0_i  = \mux_segmented_merge0.data_o ;
  assign \mux_segmented_merge1.data1_i  = sbuf_entry_i[36:5];
  assign \mux_segmented_merge1.data_o  = bypass_data_n;
  assign \q0.clk_i  = clk_i;
  assign \q0.data_i  = sbuf_entry_i;
  assign \q0.data_o  = sbuf_entry_o;
  assign \q0.el0_snoop_o  = \q0.el0_r ;
  assign \q0.el0_valid_o  = full_o;
  assign \q0.el1_snoop_o  = \q0.el1_r ;
  assign \q0.empty_o  = empty_o;
  assign \q0.full_o  = full_o;
  assign \q0.mux0_sel  = full_o;
  assign \q0.mux1_sel  = \q0.el1_valid_o ;
  assign \q0.reset_i  = reset_i;
  assign \q0.v_i  = v_i;
  assign \q0.v_o  = v_o;
  assign \q0.yumi_i  = yumi_i;
  assign sbuf_entry_in = sbuf_entry_i;
endmodule
