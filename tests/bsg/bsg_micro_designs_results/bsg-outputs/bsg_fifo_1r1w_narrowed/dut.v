module bsg_fifo_1r1w_narrowed(clk_i, reset_i, data_i, v_i, ready_o, v_o, data_o, yumi_i);
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
  input clk_i;
  wire clk_i;
  wire [15:0] data;
  input [15:0] data_i;
  wire [15:0] data_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire \main_fifo.clk_i ;
  wire [15:0] \main_fifo.data_i ;
  wire [15:0] \main_fifo.data_o ;
  wire \main_fifo.ready_o ;
  wire \main_fifo.reset_i ;
  wire \main_fifo.unhardened.un.fifo.clk_i ;
  wire [15:0] \main_fifo.unhardened.un.fifo.data_i ;
  wire [15:0] \main_fifo.unhardened.un.fifo.data_o ;
  wire \main_fifo.unhardened.un.fifo.deque ;
  wire \main_fifo.unhardened.un.fifo.enque ;
  wire \main_fifo.unhardened.un.fifo.ft.clk_i ;
  wire \main_fifo.unhardened.un.fifo.ft.deq_i ;
  reg \main_fifo.unhardened.un.fifo.ft.deq_r ;
  wire \main_fifo.unhardened.un.fifo.ft.enq_i ;
  reg \main_fifo.unhardened.un.fifo.ft.enq_r ;
  wire \main_fifo.unhardened.un.fifo.ft.reset_i ;
  wire \main_fifo.unhardened.un.fifo.ft.rptr.add_i ;
  wire \main_fifo.unhardened.un.fifo.ft.rptr.clk ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.rptr.n_o ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.rptr.o ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.rptr.ptr_n ;
  reg [2:0] \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r ;
  wire \main_fifo.unhardened.un.fifo.ft.rptr.reset_i ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.rptr_n ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.rptr_n_o ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.rptr_r ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.rptr_r_o ;
  wire \main_fifo.unhardened.un.fifo.ft.wptr.add_i ;
  wire \main_fifo.unhardened.un.fifo.ft.wptr.clk ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.wptr.n_o ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.wptr.o ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.wptr.ptr_n ;
  reg [2:0] \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r ;
  wire \main_fifo.unhardened.un.fifo.ft.wptr.reset_i ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.wptr_r ;
  wire [2:0] \main_fifo.unhardened.un.fifo.ft.wptr_r_o ;
  wire [2:0] \main_fifo.unhardened.un.fifo.mem_1r1w.r_addr_i ;
  wire [15:0] \main_fifo.unhardened.un.fifo.mem_1r1w.r_data_o ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.r_v_i ;
  reg [15:0] \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] ;
  reg [15:0] \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] ;
  reg [15:0] \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] ;
  reg [15:0] \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] ;
  reg [15:0] \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] ;
  wire [2:0] \main_fifo.unhardened.un.fifo.mem_1r1w.synth.r_addr_i ;
  wire [15:0] \main_fifo.unhardened.un.fifo.mem_1r1w.synth.r_data_o ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.synth.r_v_i ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.synth.unused0 ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.synth.unused1 ;
  wire [2:0] \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_addr_i ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_data_i ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_reset_i ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_v_i ;
  wire [2:0] \main_fifo.unhardened.un.fifo.mem_1r1w.w_addr_i ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \main_fifo.unhardened.un.fifo.mem_1r1w.w_data_i ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.w_reset_i ;
  wire \main_fifo.unhardened.un.fifo.mem_1r1w.w_v_i ;
  wire \main_fifo.unhardened.un.fifo.ready_lo ;
  wire \main_fifo.unhardened.un.fifo.ready_o ;
  wire \main_fifo.unhardened.un.fifo.reset_i ;
  wire [2:0] \main_fifo.unhardened.un.fifo.rptr_r ;
  wire \main_fifo.unhardened.un.fifo.v_i ;
  wire \main_fifo.unhardened.un.fifo.v_o ;
  wire \main_fifo.unhardened.un.fifo.v_o_tmp ;
  wire [2:0] \main_fifo.unhardened.un.fifo.wptr_r ;
  wire \main_fifo.unhardened.un.fifo.yumi_i ;
  wire \main_fifo.v_i ;
  wire \main_fifo.v_o ;
  wire \main_fifo.yumi_i ;
  wire \output_narrower.clk_i ;
  wire [15:0] \output_narrower.data[0] ;
  wire [15:0] \output_narrower.data_i ;
  wire [15:0] \output_narrower.data_o ;
  wire \output_narrower.deque_i ;
  wire \output_narrower.deque_o ;
  wire \output_narrower.reset_i ;
  output ready_o;
  wire ready_o;
  input reset_i;
  wire reset_i;
  input v_i;
  wire v_i;
  output v_o;
  wire v_o;
  wire yumi;
  input yumi_i;
  wire yumi_i;
  assign _006_ = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [0] ^ \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0];
  assign _007_ = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1] ^ \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1];
  assign _008_ = _007_ | _006_;
  assign _009_ = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [2] ^ \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2];
  assign _010_ = _009_ | _008_;
  assign _011_ = \main_fifo.unhardened.un.fifo.ft.enq_r  & ~(_010_);
  assign \main_fifo.unhardened.un.fifo.ft.enq_i  = v_i & ~(_011_);
  assign _012_ = \main_fifo.unhardened.un.fifo.ft.enq_i  ^ \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [0];
  assign _013_ = ~\main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [2];
  assign _014_ = ~\main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [0];
  assign _015_ = _014_ & ~(\main_fifo.unhardened.un.fifo.ft.enq_i );
  assign _016_ = _015_ & ~(\main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1]);
  assign _017_ = _016_ | _013_;
  assign _018_ = \main_fifo.unhardened.un.fifo.ft.enq_i  ^ _014_;
  assign \main_fifo.unhardened.un.fifo.ft.wptr.n_o [0] = _017_ ? _012_ : _018_;
  assign _019_ = ~(\main_fifo.unhardened.un.fifo.ft.enq_i  & \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [0]);
  assign _020_ = ~(_019_ ^ \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1]);
  assign _021_ = _015_ ^ \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1];
  assign \main_fifo.unhardened.un.fifo.ft.wptr.n_o [1] = _017_ ? _020_ : _021_;
  assign _022_ = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1] & ~(_019_);
  assign _023_ = _022_ ^ \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [2];
  assign _024_ = _016_ ^ _013_;
  assign \main_fifo.unhardened.un.fifo.ft.wptr.n_o [2] = _017_ ? _023_ : _024_;
  assign _025_ = yumi_i ^ \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0];
  assign _026_ = ~\main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2];
  assign _027_ = ~(yumi_i | \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0]);
  assign _028_ = _027_ & ~(\main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1]);
  assign _029_ = _028_ | _026_;
  assign _030_ = ~(yumi_i ^ \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0]);
  assign \main_fifo.unhardened.un.fifo.ft.rptr.n_o [0] = _029_ ? _025_ : _030_;
  assign _031_ = yumi_i & \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0];
  assign _032_ = _031_ ^ \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1];
  assign _033_ = _027_ ^ \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1];
  assign \main_fifo.unhardened.un.fifo.ft.rptr.n_o [1] = _029_ ? _032_ : _033_;
  assign _034_ = ~\main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1];
  assign _035_ = _031_ & ~(_034_);
  assign _036_ = _035_ ^ \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2];
  assign _037_ = _028_ ^ _026_;
  assign \main_fifo.unhardened.un.fifo.ft.rptr.n_o [2] = _029_ ? _036_ : _037_;
  assign _038_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [0] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign _039_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [0] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [0];
  assign _040_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _039_ : _038_;
  assign data_o[0] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [0] : _040_;
  assign _041_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [1] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign _042_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [1] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [1];
  assign _043_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _042_ : _041_;
  assign data_o[1] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [1] : _043_;
  assign _044_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [2] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign _045_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [2] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [2];
  assign _046_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _045_ : _044_;
  assign data_o[2] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [2] : _046_;
  assign _047_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [3] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [3];
  assign _048_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [3] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [3];
  assign _049_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _048_ : _047_;
  assign data_o[3] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [3] : _049_;
  assign _050_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [4] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [4];
  assign _051_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [4] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [4];
  assign _052_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _051_ : _050_;
  assign data_o[4] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [4] : _052_;
  assign _053_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [5] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [5];
  assign _054_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [5] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [5];
  assign _055_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _054_ : _053_;
  assign data_o[5] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [5] : _055_;
  assign _056_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [6] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [6];
  assign _057_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [6] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [6];
  assign _058_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _057_ : _056_;
  assign data_o[6] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [6] : _058_;
  assign _059_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [7] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [7];
  assign _060_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [7] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [7];
  assign _061_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _060_ : _059_;
  assign data_o[7] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [7] : _061_;
  assign _062_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [8] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [8];
  assign _063_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [8] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [8];
  assign _064_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _063_ : _062_;
  assign data_o[8] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [8] : _064_;
  assign _065_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [9] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [9];
  assign _066_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [9] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [9];
  assign _067_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _066_ : _065_;
  assign data_o[9] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [9] : _067_;
  assign _068_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [10] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [10];
  assign _069_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [10] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [10];
  assign _070_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _069_ : _068_;
  assign data_o[10] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [10] : _070_;
  assign _071_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [11] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [11];
  assign _072_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [11] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [11];
  assign _073_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _072_ : _071_;
  assign data_o[11] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [11] : _073_;
  assign _074_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [12] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [12];
  assign _075_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [12] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [12];
  assign _076_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _075_ : _074_;
  assign data_o[12] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [12] : _076_;
  assign _077_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [13] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [13];
  assign _078_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [13] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [13];
  assign _079_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _078_ : _077_;
  assign data_o[13] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [13] : _079_;
  assign _080_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [14] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [14];
  assign _081_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [14] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [14];
  assign _082_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _081_ : _080_;
  assign data_o[14] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [14] : _082_;
  assign _083_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [15] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [15];
  assign _084_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [15] : \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [15];
  assign _085_ = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] ? _084_ : _083_;
  assign data_o[15] = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] ? \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [15] : _085_;
  assign ready_o = ~_011_;
  assign v_o = _010_ | ~(\main_fifo.unhardened.un.fifo.ft.deq_r );
  assign _086_ = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [2] | ~(\main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1]);
  assign _087_ = _086_ | \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [0];
  assign _003_ = \main_fifo.unhardened.un.fifo.ft.enq_i  & ~(_087_);
  assign _088_ = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1] | ~(\main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [2]);
  assign _089_ = _088_ | \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [0];
  assign _005_ = \main_fifo.unhardened.un.fifo.ft.enq_i  & ~(_089_);
  assign _090_ = _086_ | _014_;
  assign _004_ = \main_fifo.unhardened.un.fifo.ft.enq_i  & ~(_090_);
  assign _091_ = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [2] | \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1];
  assign _092_ = _091_ | _014_;
  assign _002_ = \main_fifo.unhardened.un.fifo.ft.enq_i  & ~(_092_);
  assign _093_ = _091_ | \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [0];
  assign _001_ = \main_fifo.unhardened.un.fifo.ft.enq_i  & ~(_093_);
  assign _000_ = \main_fifo.unhardened.un.fifo.ft.enq_i  | yumi_i;
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_004_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[3] [15] <= data_i[15];
  always @(posedge clk_i)
    if (reset_i) \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] <= 1'h0;
    else \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [0] <= \main_fifo.unhardened.un.fifo.ft.rptr.n_o [0];
  always @(posedge clk_i)
    if (reset_i) \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] <= 1'h0;
    else \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [1] <= \main_fifo.unhardened.un.fifo.ft.rptr.n_o [1];
  always @(posedge clk_i)
    if (reset_i) \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] <= 1'h0;
    else \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r [2] <= \main_fifo.unhardened.un.fifo.ft.rptr.n_o [2];
  always @(posedge clk_i)
    if (reset_i) \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [0] <= 1'h0;
    else \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [0] <= \main_fifo.unhardened.un.fifo.ft.wptr.n_o [0];
  always @(posedge clk_i)
    if (reset_i) \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1] <= 1'h0;
    else \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [1] <= \main_fifo.unhardened.un.fifo.ft.wptr.n_o [1];
  always @(posedge clk_i)
    if (reset_i) \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [2] <= 1'h0;
    else \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r [2] <= \main_fifo.unhardened.un.fifo.ft.wptr.n_o [2];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_005_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[4] [15] <= data_i[15];
  always @(posedge clk_i)
    if (reset_i) \main_fifo.unhardened.un.fifo.ft.deq_r  <= 1'h1;
    else if (_000_) \main_fifo.unhardened.un.fifo.ft.deq_r  <= yumi_i;
  always @(posedge clk_i)
    if (reset_i) \main_fifo.unhardened.un.fifo.ft.enq_r  <= 1'h0;
    else if (_000_) \main_fifo.unhardened.un.fifo.ft.enq_r  <= \main_fifo.unhardened.un.fifo.ft.enq_i ;
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_003_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[2] [15] <= data_i[15];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_001_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[0] [15] <= data_i[15];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [0] <= data_i[0];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [1] <= data_i[1];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [2] <= data_i[2];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [3] <= data_i[3];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [4] <= data_i[4];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [5] <= data_i[5];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [6] <= data_i[6];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [7] <= data_i[7];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [8] <= data_i[8];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [9] <= data_i[9];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [10] <= data_i[10];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [11] <= data_i[11];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [12] <= data_i[12];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [13] <= data_i[13];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [14] <= data_i[14];
  always @(posedge clk_i)
    if (_002_) \main_fifo.unhardened.un.fifo.mem_1r1w.synth.nz.mem[1] [15] <= data_i[15];
  assign data = data_o;
  assign \main_fifo.clk_i  = clk_i;
  assign \main_fifo.data_i  = data_i;
  assign \main_fifo.data_o  = data_o;
  assign \main_fifo.ready_o  = ready_o;
  assign \main_fifo.reset_i  = reset_i;
  assign \main_fifo.unhardened.un.fifo.clk_i  = clk_i;
  assign \main_fifo.unhardened.un.fifo.data_i  = data_i;
  assign \main_fifo.unhardened.un.fifo.data_o  = data_o;
  assign \main_fifo.unhardened.un.fifo.deque  = yumi_i;
  assign \main_fifo.unhardened.un.fifo.enque  = \main_fifo.unhardened.un.fifo.ft.enq_i ;
  assign \main_fifo.unhardened.un.fifo.ft.clk_i  = clk_i;
  assign \main_fifo.unhardened.un.fifo.ft.deq_i  = yumi_i;
  assign \main_fifo.unhardened.un.fifo.ft.reset_i  = reset_i;
  assign \main_fifo.unhardened.un.fifo.ft.rptr.add_i  = yumi_i;
  assign \main_fifo.unhardened.un.fifo.ft.rptr.clk  = clk_i;
  assign \main_fifo.unhardened.un.fifo.ft.rptr.o  = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.ft.rptr.ptr_n  = \main_fifo.unhardened.un.fifo.ft.rptr.n_o ;
  assign \main_fifo.unhardened.un.fifo.ft.rptr.reset_i  = reset_i;
  assign \main_fifo.unhardened.un.fifo.ft.rptr_n  = \main_fifo.unhardened.un.fifo.ft.rptr.n_o ;
  assign \main_fifo.unhardened.un.fifo.ft.rptr_n_o  = \main_fifo.unhardened.un.fifo.ft.rptr.n_o ;
  assign \main_fifo.unhardened.un.fifo.ft.rptr_r  = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.ft.rptr_r_o  = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.ft.wptr.add_i  = \main_fifo.unhardened.un.fifo.ft.enq_i ;
  assign \main_fifo.unhardened.un.fifo.ft.wptr.clk  = clk_i;
  assign \main_fifo.unhardened.un.fifo.ft.wptr.o  = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.ft.wptr.ptr_n  = \main_fifo.unhardened.un.fifo.ft.wptr.n_o ;
  assign \main_fifo.unhardened.un.fifo.ft.wptr.reset_i  = reset_i;
  assign \main_fifo.unhardened.un.fifo.ft.wptr_r  = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.ft.wptr_r_o  = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.r_addr_i  = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.r_data_o  = data_o;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.r_v_i  = v_o;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.r_addr_i  = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.r_data_o  = data_o;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.r_v_i  = v_o;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.unused1  = v_o;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_addr_i  = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_data_i  = data_i;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.synth.w_v_i  = \main_fifo.unhardened.un.fifo.ft.enq_i ;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.w_addr_i  = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.w_data_i  = data_i;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \main_fifo.unhardened.un.fifo.mem_1r1w.w_v_i  = \main_fifo.unhardened.un.fifo.ft.enq_i ;
  assign \main_fifo.unhardened.un.fifo.ready_lo  = ready_o;
  assign \main_fifo.unhardened.un.fifo.ready_o  = ready_o;
  assign \main_fifo.unhardened.un.fifo.reset_i  = reset_i;
  assign \main_fifo.unhardened.un.fifo.rptr_r  = \main_fifo.unhardened.un.fifo.ft.rptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.v_i  = v_i;
  assign \main_fifo.unhardened.un.fifo.v_o  = v_o;
  assign \main_fifo.unhardened.un.fifo.v_o_tmp  = v_o;
  assign \main_fifo.unhardened.un.fifo.wptr_r  = \main_fifo.unhardened.un.fifo.ft.wptr.ptr_r ;
  assign \main_fifo.unhardened.un.fifo.yumi_i  = yumi_i;
  assign \main_fifo.v_i  = v_i;
  assign \main_fifo.v_o  = v_o;
  assign \main_fifo.yumi_i  = yumi_i;
  assign \output_narrower.clk_i  = clk_i;
  assign \output_narrower.data[0]  = data_o;
  assign \output_narrower.data_i  = data_o;
  assign \output_narrower.data_o  = data_o;
  assign \output_narrower.deque_i  = yumi_i;
  assign \output_narrower.deque_o  = yumi_i;
  assign \output_narrower.reset_i  = reset_i;
  assign yumi = yumi_i;
endmodule
