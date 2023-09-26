module bsg_fsb(clk_i, reset_i, asm_v_i, asm_data_i, asm_yumi_o, asm_v_o, asm_data_o, asm_ready_i, node_v_o, node_data_o, node_ready_i, node_en_r_o, node_reset_r_o, node_v_i, node_data_i, node_yumi_o);
  reg _000_;
  reg _001_;
  reg _002_;
  reg _003_;
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
  input [15:0] asm_data_i;
  wire [15:0] asm_data_i;
  output [15:0] asm_data_o;
  wire [15:0] asm_data_o;
  input asm_ready_i;
  wire asm_ready_i;
  input asm_v_i;
  wire asm_v_i;
  output asm_v_o;
  wire asm_v_o;
  output asm_yumi_o;
  wire asm_yumi_o;
  input clk_i;
  wire clk_i;
  wire \fsb_node[0].hopin.clk_i ;
  wire [15:0] \fsb_node[0].hopin.data_i ;
  wire [31:0] \fsb_node[0].hopin.data_o ;
  wire [15:0] \fsb_node[0].hopin.data_o_tmp ;
  wire \fsb_node[0].hopin.fifo.clk_i ;
  wire [15:0] \fsb_node[0].hopin.fifo.data_i ;
  wire [15:0] \fsb_node[0].hopin.fifo.data_o ;
  reg \fsb_node[0].hopin.fifo.empty_r ;
  wire \fsb_node[0].hopin.fifo.enq_i ;
  reg \fsb_node[0].hopin.fifo.full_r ;
  wire [15:0] \fsb_node[0].hopin.fifo.mem_1r1w.r_data_o ;
  wire [15:0] \fsb_node[0].hopin.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[0].hopin.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[0].hopin.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[0].hopin.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[0].hopin.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[0].hopin.fifo.mem_1r1w.synth.w_v_i ;
  wire \fsb_node[0].hopin.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[0].hopin.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[0].hopin.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[0].hopin.fifo.mem_1r1w.w_v_i ;
  wire \fsb_node[0].hopin.fifo.reset_i ;
  wire \fsb_node[0].hopin.fifo.v_i ;
  wire \fsb_node[0].hopin.reset_i ;
  reg [1:0] \fsb_node[0].hopin.sent_r ;
  wire \fsb_node[0].hopin.v_i ;
  wire \fsb_node[0].hopout.clk_i ;
  wire [31:0] \fsb_node[0].hopout.data_i ;
  wire [15:0] \fsb_node[0].hopout.data_o ;
  wire \fsb_node[0].hopout.fifo.clk_i ;
  wire [15:0] \fsb_node[0].hopout.fifo.data_i ;
  wire [15:0] \fsb_node[0].hopout.fifo.data_o ;
  wire \fsb_node[0].hopout.fifo.deq_i ;
  reg \fsb_node[0].hopout.fifo.empty_r ;
  wire \fsb_node[0].hopout.fifo.enq_i ;
  reg \fsb_node[0].hopout.fifo.full_r ;
  reg \fsb_node[0].hopout.fifo.head_r ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.r_addr_i ;
  wire [15:0] \fsb_node[0].hopout.fifo.mem_1r1w.r_data_o ;
  reg [15:0] \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] ;
  reg [15:0] \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.synth.r_addr_i ;
  wire [15:0] \fsb_node[0].hopout.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_addr_i ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_v_i ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.w_addr_i ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[0].hopout.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[0].hopout.fifo.mem_1r1w.w_v_i ;
  wire \fsb_node[0].hopout.fifo.reset_i ;
  reg \fsb_node[0].hopout.fifo.tail_r ;
  wire \fsb_node[0].hopout.fifo.v_o ;
  wire \fsb_node[0].hopout.fifo.yumi_i ;
  wire \fsb_node[0].hopout.fifo_v ;
  wire \fsb_node[0].hopout.ready_i ;
  wire \fsb_node[0].hopout.reset_i ;
  wire \fsb_node[0].hopout.source_sel ;
  wire \fsb_node[0].hopout.v1_blocked_r ;
  wire [1:0] \fsb_node[0].hopout.v_i ;
  wire \fsb_node[0].hopout.v_o ;
  wire \fsb_node[0].hopout.yumi_o ;
  wire \fsb_node[0].hopout.yumi_o_tmp ;
  wire \fsb_node[0].murn_gateway.clk_i ;
  wire [15:0] \fsb_node[0].murn_gateway.data_i ;
  wire [15:0] \fsb_node[0].murn_gateway.genblk1.data_RPT ;
  wire \fsb_node[0].murn_gateway.genblk1.for_switch ;
  wire \fsb_node[0].murn_gateway.genblk1.for_this_node ;
  wire \fsb_node[0].murn_gateway.genblk1.id_match ;
  wire \fsb_node[0].murn_gateway.genblk1.node_en_r ;
  wire \fsb_node[0].murn_gateway.genblk1.node_reset_r ;
  wire \fsb_node[0].murn_gateway.node_en_r_o ;
  wire \fsb_node[0].murn_gateway.node_reset_r_o ;
  wire \fsb_node[0].murn_gateway.ready_i ;
  wire \fsb_node[0].murn_gateway.reset_i ;
  wire \fsb_node[0].murn_gateway.v_o ;
  wire [15:0] \fsb_node[0].node_data_o_int ;
  wire \fsb_node[0].node_en_r_int ;
  wire [15:0] \fsb_node[0].out_hop_data_m1 ;
  wire \fsb_node[0].out_hop_v_m1 ;
  wire \fsb_node[1].hopin.clk_i ;
  wire [15:0] \fsb_node[1].hopin.data_i ;
  wire [31:0] \fsb_node[1].hopin.data_o ;
  wire [15:0] \fsb_node[1].hopin.data_o_tmp ;
  wire \fsb_node[1].hopin.fifo.clk_i ;
  wire [15:0] \fsb_node[1].hopin.fifo.data_i ;
  wire [15:0] \fsb_node[1].hopin.fifo.data_o ;
  reg \fsb_node[1].hopin.fifo.empty_r ;
  reg \fsb_node[1].hopin.fifo.full_r ;
  wire [15:0] \fsb_node[1].hopin.fifo.mem_1r1w.r_data_o ;
  wire [15:0] \fsb_node[1].hopin.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[1].hopin.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[1].hopin.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[1].hopin.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[1].hopin.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[1].hopin.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[1].hopin.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[1].hopin.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[1].hopin.fifo.reset_i ;
  wire \fsb_node[1].hopin.reset_i ;
  reg [1:0] \fsb_node[1].hopin.sent_r ;
  wire \fsb_node[1].hopout.clk_i ;
  wire [31:0] \fsb_node[1].hopout.data_i ;
  wire [15:0] \fsb_node[1].hopout.data_o ;
  wire \fsb_node[1].hopout.fifo.clk_i ;
  wire [15:0] \fsb_node[1].hopout.fifo.data_i ;
  wire [15:0] \fsb_node[1].hopout.fifo.data_o ;
  wire \fsb_node[1].hopout.fifo.deq_i ;
  reg \fsb_node[1].hopout.fifo.empty_r ;
  wire \fsb_node[1].hopout.fifo.enq_i ;
  reg \fsb_node[1].hopout.fifo.full_r ;
  reg \fsb_node[1].hopout.fifo.head_r ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.r_addr_i ;
  wire [15:0] \fsb_node[1].hopout.fifo.mem_1r1w.r_data_o ;
  reg [15:0] \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] ;
  reg [15:0] \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.synth.r_addr_i ;
  wire [15:0] \fsb_node[1].hopout.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_addr_i ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_v_i ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.w_addr_i ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[1].hopout.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[1].hopout.fifo.mem_1r1w.w_v_i ;
  wire \fsb_node[1].hopout.fifo.reset_i ;
  reg \fsb_node[1].hopout.fifo.tail_r ;
  wire \fsb_node[1].hopout.fifo.yumi_i ;
  wire \fsb_node[1].hopout.reset_i ;
  wire \fsb_node[1].hopout.source_sel ;
  wire \fsb_node[1].hopout.v1_blocked_r ;
  wire [1:0] \fsb_node[1].hopout.v_i ;
  wire \fsb_node[1].hopout.yumi_o ;
  wire \fsb_node[1].hopout.yumi_o_tmp ;
  wire \fsb_node[1].murn_gateway.clk_i ;
  wire [15:0] \fsb_node[1].murn_gateway.data_i ;
  wire [15:0] \fsb_node[1].murn_gateway.genblk1.data_RPT ;
  wire \fsb_node[1].murn_gateway.genblk1.for_switch ;
  wire \fsb_node[1].murn_gateway.genblk1.for_this_node ;
  wire \fsb_node[1].murn_gateway.genblk1.id_match ;
  wire \fsb_node[1].murn_gateway.genblk1.node_en_r ;
  wire \fsb_node[1].murn_gateway.genblk1.node_reset_r ;
  wire \fsb_node[1].murn_gateway.node_en_r_o ;
  wire \fsb_node[1].murn_gateway.node_reset_r_o ;
  wire \fsb_node[1].murn_gateway.ready_i ;
  wire \fsb_node[1].murn_gateway.reset_i ;
  wire \fsb_node[1].murn_gateway.v_o ;
  wire [15:0] \fsb_node[1].node_data_o_int ;
  wire \fsb_node[1].node_en_r_int ;
  wire [15:0] \fsb_node[1].out_hop_data_m1 ;
  wire \fsb_node[2].hopin.clk_i ;
  wire [15:0] \fsb_node[2].hopin.data_i ;
  wire [31:0] \fsb_node[2].hopin.data_o ;
  wire [15:0] \fsb_node[2].hopin.data_o_tmp ;
  wire \fsb_node[2].hopin.fifo.clk_i ;
  wire [15:0] \fsb_node[2].hopin.fifo.data_i ;
  wire [15:0] \fsb_node[2].hopin.fifo.data_o ;
  reg \fsb_node[2].hopin.fifo.empty_r ;
  reg \fsb_node[2].hopin.fifo.full_r ;
  wire [15:0] \fsb_node[2].hopin.fifo.mem_1r1w.r_data_o ;
  wire [15:0] \fsb_node[2].hopin.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[2].hopin.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[2].hopin.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[2].hopin.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[2].hopin.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[2].hopin.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[2].hopin.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[2].hopin.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[2].hopin.fifo.reset_i ;
  wire \fsb_node[2].hopin.reset_i ;
  reg [1:0] \fsb_node[2].hopin.sent_r ;
  wire \fsb_node[2].hopout.clk_i ;
  wire [31:0] \fsb_node[2].hopout.data_i ;
  wire [15:0] \fsb_node[2].hopout.data_o ;
  wire \fsb_node[2].hopout.fifo.clk_i ;
  wire [15:0] \fsb_node[2].hopout.fifo.data_i ;
  wire [15:0] \fsb_node[2].hopout.fifo.data_o ;
  wire \fsb_node[2].hopout.fifo.deq_i ;
  reg \fsb_node[2].hopout.fifo.empty_r ;
  wire \fsb_node[2].hopout.fifo.enq_i ;
  reg \fsb_node[2].hopout.fifo.full_r ;
  reg \fsb_node[2].hopout.fifo.head_r ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.r_addr_i ;
  wire [15:0] \fsb_node[2].hopout.fifo.mem_1r1w.r_data_o ;
  reg [15:0] \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] ;
  reg [15:0] \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.synth.r_addr_i ;
  wire [15:0] \fsb_node[2].hopout.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_addr_i ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_v_i ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.w_addr_i ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[2].hopout.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[2].hopout.fifo.mem_1r1w.w_v_i ;
  wire \fsb_node[2].hopout.fifo.reset_i ;
  reg \fsb_node[2].hopout.fifo.tail_r ;
  wire \fsb_node[2].hopout.fifo.yumi_i ;
  wire \fsb_node[2].hopout.reset_i ;
  wire \fsb_node[2].hopout.source_sel ;
  wire \fsb_node[2].hopout.v1_blocked_r ;
  wire [1:0] \fsb_node[2].hopout.v_i ;
  wire \fsb_node[2].hopout.yumi_o ;
  wire \fsb_node[2].hopout.yumi_o_tmp ;
  wire \fsb_node[2].murn_gateway.clk_i ;
  wire [15:0] \fsb_node[2].murn_gateway.data_i ;
  wire [15:0] \fsb_node[2].murn_gateway.genblk1.data_RPT ;
  wire \fsb_node[2].murn_gateway.genblk1.for_switch ;
  wire \fsb_node[2].murn_gateway.genblk1.for_this_node ;
  wire \fsb_node[2].murn_gateway.genblk1.id_match ;
  wire \fsb_node[2].murn_gateway.genblk1.node_en_r ;
  wire \fsb_node[2].murn_gateway.genblk1.node_reset_r ;
  wire \fsb_node[2].murn_gateway.node_en_r_o ;
  wire \fsb_node[2].murn_gateway.node_reset_r_o ;
  wire \fsb_node[2].murn_gateway.ready_i ;
  wire \fsb_node[2].murn_gateway.reset_i ;
  wire \fsb_node[2].murn_gateway.v_o ;
  wire [15:0] \fsb_node[2].node_data_o_int ;
  wire \fsb_node[2].node_en_r_int ;
  wire [15:0] \fsb_node[2].out_hop_data_m1 ;
  wire \fsb_node[3].hopin.clk_i ;
  wire [15:0] \fsb_node[3].hopin.data_i ;
  wire [31:0] \fsb_node[3].hopin.data_o ;
  wire [15:0] \fsb_node[3].hopin.data_o_tmp ;
  wire \fsb_node[3].hopin.fifo.clk_i ;
  wire [15:0] \fsb_node[3].hopin.fifo.data_i ;
  wire [15:0] \fsb_node[3].hopin.fifo.data_o ;
  reg \fsb_node[3].hopin.fifo.empty_r ;
  reg \fsb_node[3].hopin.fifo.full_r ;
  wire [15:0] \fsb_node[3].hopin.fifo.mem_1r1w.r_data_o ;
  wire [15:0] \fsb_node[3].hopin.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[3].hopin.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[3].hopin.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[3].hopin.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[3].hopin.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[3].hopin.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[3].hopin.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[3].hopin.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[3].hopin.fifo.reset_i ;
  wire \fsb_node[3].hopin.reset_i ;
  reg [1:0] \fsb_node[3].hopin.sent_r ;
  wire \fsb_node[3].hopout.clk_i ;
  wire [31:0] \fsb_node[3].hopout.data_i ;
  wire [15:0] \fsb_node[3].hopout.data_o ;
  wire \fsb_node[3].hopout.fifo.clk_i ;
  wire [15:0] \fsb_node[3].hopout.fifo.data_i ;
  wire [15:0] \fsb_node[3].hopout.fifo.data_o ;
  wire \fsb_node[3].hopout.fifo.deq_i ;
  reg \fsb_node[3].hopout.fifo.empty_r ;
  wire \fsb_node[3].hopout.fifo.enq_i ;
  reg \fsb_node[3].hopout.fifo.full_r ;
  reg \fsb_node[3].hopout.fifo.head_r ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.r_addr_i ;
  wire [15:0] \fsb_node[3].hopout.fifo.mem_1r1w.r_data_o ;
  reg [15:0] \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] ;
  reg [15:0] \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.synth.r_addr_i ;
  wire [15:0] \fsb_node[3].hopout.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_addr_i ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_v_i ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.w_addr_i ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[3].hopout.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[3].hopout.fifo.mem_1r1w.w_v_i ;
  wire \fsb_node[3].hopout.fifo.reset_i ;
  reg \fsb_node[3].hopout.fifo.tail_r ;
  wire \fsb_node[3].hopout.fifo.yumi_i ;
  wire \fsb_node[3].hopout.reset_i ;
  wire \fsb_node[3].hopout.source_sel ;
  wire \fsb_node[3].hopout.v1_blocked_r ;
  wire [1:0] \fsb_node[3].hopout.v_i ;
  wire \fsb_node[3].hopout.yumi_o ;
  wire \fsb_node[3].hopout.yumi_o_tmp ;
  wire \fsb_node[3].murn_gateway.clk_i ;
  wire [15:0] \fsb_node[3].murn_gateway.data_i ;
  wire [15:0] \fsb_node[3].murn_gateway.genblk1.data_RPT ;
  wire \fsb_node[3].murn_gateway.genblk1.for_switch ;
  wire \fsb_node[3].murn_gateway.genblk1.for_this_node ;
  wire \fsb_node[3].murn_gateway.genblk1.id_match ;
  wire \fsb_node[3].murn_gateway.genblk1.node_en_r ;
  wire \fsb_node[3].murn_gateway.genblk1.node_reset_r ;
  wire \fsb_node[3].murn_gateway.node_en_r_o ;
  wire \fsb_node[3].murn_gateway.node_reset_r_o ;
  wire \fsb_node[3].murn_gateway.ready_i ;
  wire \fsb_node[3].murn_gateway.reset_i ;
  wire \fsb_node[3].murn_gateway.v_o ;
  wire [15:0] \fsb_node[3].node_data_o_int ;
  wire \fsb_node[3].node_en_r_int ;
  wire [15:0] \fsb_node[3].out_hop_data_m1 ;
  wire \fsb_node[4].hopin.clk_i ;
  wire [15:0] \fsb_node[4].hopin.data_i ;
  wire [31:0] \fsb_node[4].hopin.data_o ;
  wire [15:0] \fsb_node[4].hopin.data_o_tmp ;
  wire \fsb_node[4].hopin.fifo.clk_i ;
  wire [15:0] \fsb_node[4].hopin.fifo.data_i ;
  wire [15:0] \fsb_node[4].hopin.fifo.data_o ;
  reg \fsb_node[4].hopin.fifo.empty_r ;
  reg \fsb_node[4].hopin.fifo.full_r ;
  wire [15:0] \fsb_node[4].hopin.fifo.mem_1r1w.r_data_o ;
  wire [15:0] \fsb_node[4].hopin.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[4].hopin.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[4].hopin.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[4].hopin.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[4].hopin.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[4].hopin.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[4].hopin.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[4].hopin.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[4].hopin.fifo.reset_i ;
  wire [1:0] \fsb_node[4].hopin.ready_i ;
  wire \fsb_node[4].hopin.reset_i ;
  reg [1:0] \fsb_node[4].hopin.sent_r ;
  wire [1:0] \fsb_node[4].hopin.v_o ;
  wire [1:0] \fsb_node[4].hopin.v_o_tmp ;
  wire \fsb_node[4].hopout.clk_i ;
  wire [31:0] \fsb_node[4].hopout.data_i ;
  wire [15:0] \fsb_node[4].hopout.data_o ;
  wire \fsb_node[4].hopout.fifo.clk_i ;
  wire [15:0] \fsb_node[4].hopout.fifo.data_i ;
  wire [15:0] \fsb_node[4].hopout.fifo.data_o ;
  wire \fsb_node[4].hopout.fifo.deq_i ;
  reg \fsb_node[4].hopout.fifo.empty_r ;
  wire \fsb_node[4].hopout.fifo.enq_i ;
  reg \fsb_node[4].hopout.fifo.full_r ;
  wire [15:0] \fsb_node[4].hopout.fifo.mem_1r1w.r_data_o ;
  wire [15:0] \fsb_node[4].hopout.fifo.mem_1r1w.synth.r_data_o ;
  wire \fsb_node[4].hopout.fifo.mem_1r1w.synth.unused0 ;
  wire \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_addr_i ;
  wire \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_clk_i ;
  wire [15:0] \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_data_i ;
  wire \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_reset_i ;
  wire \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_v_i ;
  wire \fsb_node[4].hopout.fifo.mem_1r1w.w_addr_i ;
  wire \fsb_node[4].hopout.fifo.mem_1r1w.w_clk_i ;
  wire [15:0] \fsb_node[4].hopout.fifo.mem_1r1w.w_data_i ;
  wire \fsb_node[4].hopout.fifo.mem_1r1w.w_reset_i ;
  wire \fsb_node[4].hopout.fifo.mem_1r1w.w_v_i ;
  wire \fsb_node[4].hopout.fifo.reset_i ;
  wire \fsb_node[4].hopout.fifo.tail_r ;
  wire \fsb_node[4].hopout.fifo.v_i ;
  wire \fsb_node[4].hopout.fifo.yumi_i ;
  wire \fsb_node[4].hopout.reset_i ;
  wire \fsb_node[4].hopout.source_sel ;
  wire [1:0] \fsb_node[4].hopout.v_i ;
  wire \fsb_node[4].hopout.yumi_o ;
  wire \fsb_node[4].hopout.yumi_o_tmp ;
  wire \fsb_node[4].murn_gateway.clk_i ;
  wire [15:0] \fsb_node[4].murn_gateway.data_i ;
  wire [15:0] \fsb_node[4].murn_gateway.genblk1.data_RPT ;
  wire \fsb_node[4].murn_gateway.genblk1.for_switch ;
  wire \fsb_node[4].murn_gateway.genblk1.for_this_node ;
  wire \fsb_node[4].murn_gateway.genblk1.id_match ;
  wire \fsb_node[4].murn_gateway.genblk1.node_en_r ;
  wire \fsb_node[4].murn_gateway.genblk1.node_reset_r ;
  wire \fsb_node[4].murn_gateway.node_en_r_o ;
  wire \fsb_node[4].murn_gateway.node_reset_r_o ;
  wire \fsb_node[4].murn_gateway.ready_i ;
  wire \fsb_node[4].murn_gateway.ready_o ;
  wire \fsb_node[4].murn_gateway.reset_i ;
  wire \fsb_node[4].murn_gateway.v_i ;
  wire \fsb_node[4].murn_gateway.v_o ;
  wire [15:0] \fsb_node[4].node_data_o_int ;
  wire \fsb_node[4].node_en_r_int ;
  wire \fsb_node[4].node_ready_int ;
  wire \fsb_node[4].node_v_int ;
  wire [15:0] \fsb_node[4].out_hop_data_m1 ;
  wire [4:0] in_hop_v;
  input [79:0] node_data_i;
  wire [79:0] node_data_i;
  output [79:0] node_data_o;
  wire [79:0] node_data_o;
  output [4:0] node_en_r_o;
  wire [4:0] node_en_r_o;
  input [4:0] node_ready_i;
  wire [4:0] node_ready_i;
  output [4:0] node_reset_r_o;
  wire [4:0] node_reset_r_o;
  input [4:0] node_v_i;
  wire [4:0] node_v_i;
  output [4:0] node_v_o;
  wire [4:0] node_v_o;
  output [4:0] node_yumi_o;
  wire [4:0] node_yumi_o;
  wire [15:0] \out_hop_data[0] ;
  wire [15:0] \out_hop_data[1] ;
  wire [15:0] \out_hop_data[2] ;
  wire [15:0] \out_hop_data[3] ;
  wire [15:0] \out_hop_data[4] ;
  input reset_i;
  wire reset_i;
  assign _030_ = ~\fsb_node[2].hopout.fifo.head_r ;
  assign \fsb_node[1].hopout.fifo.enq_i  = ~(\fsb_node[1].hopout.fifo.full_r  | \fsb_node[2].hopout.fifo.empty_r );
  assign _010_ = \fsb_node[1].hopout.fifo.enq_i  ^ \fsb_node[2].hopout.fifo.head_r ;
  assign asm_data_o[0] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [0] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign asm_data_o[1] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [1] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign asm_data_o[2] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [2] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign asm_data_o[3] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [3] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [3];
  assign asm_data_o[4] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [4] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [4];
  assign asm_data_o[5] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [5] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [5];
  assign asm_data_o[6] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [6] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [6];
  assign asm_data_o[7] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [7] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [7];
  assign asm_data_o[8] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [8] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [8];
  assign asm_data_o[9] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [9] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [9];
  assign asm_data_o[10] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [10] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [10];
  assign asm_data_o[11] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [11] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [11];
  assign asm_data_o[12] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [12] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [12];
  assign asm_data_o[13] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [13] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [13];
  assign asm_data_o[14] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [14] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [14];
  assign asm_data_o[15] = _000_ ? \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [15] : \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [15];
  assign _037_ = ~\fsb_node[3].hopout.fifo.head_r ;
  assign \fsb_node[2].hopout.fifo.enq_i  = ~(\fsb_node[2].hopout.fifo.full_r  | \fsb_node[3].hopout.fifo.empty_r );
  assign _011_ = \fsb_node[2].hopout.fifo.enq_i  ^ \fsb_node[3].hopout.fifo.head_r ;
  assign _054_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [0] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [0] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[0] : _054_;
  assign _055_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [1] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [1] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[1] : _055_;
  assign _056_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [2] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [2] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[2] : _056_;
  assign _057_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [3] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [3];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [3] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[3] : _057_;
  assign _058_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [4] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [4];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [4] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[4] : _058_;
  assign _059_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [5] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [5];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [5] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[5] : _059_;
  assign _060_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [6] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [6];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [6] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[6] : _060_;
  assign _061_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [7] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [7];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [7] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[7] : _061_;
  assign _062_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [8] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [8];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [8] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[8] : _062_;
  assign _063_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [9] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [9];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [9] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[9] : _063_;
  assign _064_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [10] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [10];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [10] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[10] : _064_;
  assign _065_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [11] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [11];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [11] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[11] : _065_;
  assign _066_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [12] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [12];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [12] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[12] : _066_;
  assign _067_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [13] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [13];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [13] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[13] : _067_;
  assign _068_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [14] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [14];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [14] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[14] : _068_;
  assign _069_ = _001_ ? \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [15] : \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [15];
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [15] = \fsb_node[1].hopout.fifo.empty_r  ? node_data_i[15] : _069_;
  assign _070_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [0] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [0] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[16] : _070_;
  assign _071_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [1] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [1] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[17] : _071_;
  assign _072_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [2] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [2] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[18] : _072_;
  assign _073_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [3] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [3];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [3] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[19] : _073_;
  assign _074_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [4] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [4];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [4] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[20] : _074_;
  assign _075_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [5] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [5];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [5] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[21] : _075_;
  assign _076_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [6] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [6];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [6] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[22] : _076_;
  assign _077_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [7] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [7];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [7] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[23] : _077_;
  assign _078_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [8] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [8];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [8] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[24] : _078_;
  assign _079_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [9] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [9];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [9] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[25] : _079_;
  assign _080_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [10] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [10];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [10] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[26] : _080_;
  assign _081_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [11] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [11];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [11] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[27] : _081_;
  assign _082_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [12] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [12];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [12] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[28] : _082_;
  assign _083_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [13] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [13];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [13] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[29] : _083_;
  assign _084_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [14] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [14];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [14] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[30] : _084_;
  assign _085_ = _002_ ? \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [15] : \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [15];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [15] = \fsb_node[2].hopout.fifo.empty_r  ? node_data_i[31] : _085_;
  assign _086_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [0] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [0];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [0] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[32] : _086_;
  assign _087_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [1] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [1];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [1] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[33] : _087_;
  assign _088_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [2] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [2];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [2] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[34] : _088_;
  assign _089_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [3] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [3];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [3] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[35] : _089_;
  assign _090_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [4] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [4];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [4] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[36] : _090_;
  assign _091_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [5] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [5];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [5] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[37] : _091_;
  assign _092_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [6] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [6];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [6] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[38] : _092_;
  assign _093_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [7] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [7];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [7] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[39] : _093_;
  assign _094_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [8] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [8];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [8] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[40] : _094_;
  assign _095_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [9] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [9];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [9] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[41] : _095_;
  assign _096_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [10] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [10];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [10] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[42] : _096_;
  assign _097_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [11] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [11];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [11] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[43] : _097_;
  assign _098_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [12] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [12];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [12] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[44] : _098_;
  assign _099_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [13] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [13];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [13] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[45] : _099_;
  assign _100_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [14] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [14];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [14] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[46] : _100_;
  assign _101_ = _003_ ? \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [15] : \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [15];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [15] = \fsb_node[3].hopout.fifo.empty_r  ? node_data_i[47] : _101_;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [0] = \fsb_node[4].hopout.fifo.empty_r  & node_data_i[48];
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [1] = node_data_i[49] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [2] = node_data_i[50] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [3] = node_data_i[51] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [4] = node_data_i[52] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [5] = node_data_i[53] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [6] = node_data_i[54] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [7] = node_data_i[55] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [8] = node_data_i[56] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [9] = node_data_i[57] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [10] = node_data_i[58] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [11] = node_data_i[59] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [12] = node_data_i[60] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [13] = node_data_i[61] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [14] = node_data_i[62] & \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [15] = node_data_i[63] & \fsb_node[4].hopout.fifo.empty_r ;
  assign _016_ = ~\fsb_node[0].hopout.fifo.head_r ;
  assign \fsb_node[0].hopout.fifo.deq_i  = asm_ready_i & ~(\fsb_node[0].hopout.fifo.empty_r );
  assign _008_ = \fsb_node[0].hopout.fifo.deq_i  ^ \fsb_node[0].hopout.fifo.head_r ;
  assign _023_ = ~\fsb_node[1].hopout.fifo.head_r ;
  assign \fsb_node[0].hopout.fifo.enq_i  = ~(\fsb_node[0].hopout.fifo.full_r  | \fsb_node[1].hopout.fifo.empty_r );
  assign _009_ = \fsb_node[0].hopout.fifo.enq_i  ^ \fsb_node[1].hopout.fifo.head_r ;
  assign _005_ = ~\fsb_node[1].hopout.fifo.tail_r ;
  assign \fsb_node[3].hopout.fifo.enq_i  = ~(\fsb_node[3].hopout.fifo.full_r  | \fsb_node[4].hopout.fifo.empty_r );
  assign _004_ = ~\fsb_node[0].hopout.fifo.tail_r ;
  assign _006_ = ~\fsb_node[2].hopout.fifo.tail_r ;
  assign _007_ = ~\fsb_node[3].hopout.fifo.tail_r ;
  assign asm_yumi_o = asm_v_i & ~(\fsb_node[0].hopin.fifo.full_r );
  assign asm_v_o = ~\fsb_node[0].hopout.fifo.empty_r ;
  assign _102_ = ~(\fsb_node[2].hopin.fifo.empty_r  | \fsb_node[2].hopin.sent_r [0]);
  assign _103_ = _102_ & ~(\fsb_node[3].hopin.fifo.full_r );
  assign _104_ = ~(_103_ | \fsb_node[2].hopin.sent_r [0]);
  assign _105_ = \fsb_node[2].hopin.fifo.empty_r  & ~(\fsb_node[2].hopin.sent_r [1]);
  assign _026_ = _105_ & ~(_104_);
  assign _048_ = \fsb_node[1].hopout.fifo.enq_i  & ~(\fsb_node[1].hopout.fifo.tail_r );
  assign _106_ = \fsb_node[2].hopout.fifo.empty_r  & ~(\fsb_node[2].hopout.fifo.enq_i );
  assign _107_ = ~\fsb_node[2].hopout.fifo.enq_i ;
  assign _108_ = \fsb_node[2].hopout.fifo.full_r  | ~(\fsb_node[1].hopout.fifo.enq_i );
  assign _109_ = _107_ & ~(_108_);
  assign _032_ = _109_ | _106_;
  assign _110_ = ~\fsb_node[1].hopout.fifo.enq_i ;
  assign _111_ = \fsb_node[2].hopout.fifo.empty_r  | ~(\fsb_node[2].hopout.fifo.enq_i );
  assign _112_ = _110_ & ~(_111_);
  assign _113_ = \fsb_node[2].hopout.fifo.full_r  & ~(\fsb_node[1].hopout.fifo.enq_i );
  assign _031_ = _113_ | _112_;
  assign _046_ = \fsb_node[0].hopout.fifo.enq_i  & ~(\fsb_node[0].hopout.fifo.tail_r );
  assign _114_ = \fsb_node[3].hopin.fifo.empty_r  & ~(_103_);
  assign _115_ = ~(\fsb_node[3].hopin.sent_r [0] | \fsb_node[3].hopin.fifo.empty_r );
  assign _116_ = _115_ & ~(\fsb_node[4].hopin.fifo.full_r );
  assign _117_ = ~(_116_ | \fsb_node[3].hopin.sent_r [0]);
  assign _118_ = \fsb_node[3].hopin.fifo.empty_r  & ~(\fsb_node[3].hopin.sent_r [1]);
  assign _119_ = _118_ | _117_;
  assign _120_ = _119_ | \fsb_node[3].hopin.fifo.full_r ;
  assign _121_ = ~(_120_ | _103_);
  assign _036_ = _121_ | _114_;
  assign _122_ = \fsb_node[3].hopin.fifo.empty_r  | ~(_103_);
  assign _123_ = _119_ & ~(_122_);
  assign _124_ = _119_ & \fsb_node[3].hopin.fifo.full_r ;
  assign _035_ = _124_ | _123_;
  assign _034_ = _117_ & ~(_118_);
  assign _033_ = _118_ & ~(_117_);
  assign _125_ = \fsb_node[3].hopout.fifo.empty_r  & ~(\fsb_node[3].hopout.fifo.enq_i );
  assign _126_ = ~\fsb_node[3].hopout.fifo.enq_i ;
  assign _127_ = \fsb_node[3].hopout.fifo.full_r  | ~(\fsb_node[2].hopout.fifo.enq_i );
  assign _128_ = _126_ & ~(_127_);
  assign _039_ = _128_ | _125_;
  assign _129_ = \fsb_node[3].hopout.fifo.empty_r  | ~(\fsb_node[3].hopout.fifo.enq_i );
  assign _130_ = _107_ & ~(_129_);
  assign _131_ = \fsb_node[3].hopout.fifo.full_r  & ~(\fsb_node[2].hopout.fifo.enq_i );
  assign _038_ = _131_ | _130_;
  assign _047_ = \fsb_node[0].hopout.fifo.enq_i  & ~(_004_);
  assign _051_ = \fsb_node[2].hopout.fifo.enq_i  & ~(_006_);
  assign _132_ = \fsb_node[4].hopin.fifo.empty_r  & ~(_116_);
  assign _133_ = \fsb_node[4].hopin.fifo.empty_r  & ~(\fsb_node[4].hopin.sent_r [0]);
  assign _134_ = \fsb_node[4].hopin.fifo.empty_r  & ~(\fsb_node[4].hopin.sent_r [1]);
  assign _135_ = _134_ | _133_;
  assign _136_ = _135_ | \fsb_node[4].hopin.fifo.full_r ;
  assign _137_ = ~(_136_ | _116_);
  assign _043_ = _137_ | _132_;
  assign _138_ = \fsb_node[4].hopin.fifo.empty_r  | ~(_116_);
  assign _139_ = _135_ & ~(_138_);
  assign _140_ = _135_ & \fsb_node[4].hopin.fifo.full_r ;
  assign _042_ = _140_ | _139_;
  assign _041_ = _133_ & ~(_134_);
  assign _040_ = _134_ & ~(_133_);
  assign _049_ = \fsb_node[1].hopout.fifo.enq_i  & ~(_005_);
  assign _141_ = \fsb_node[3].hopout.fifo.enq_i  & ~(\fsb_node[4].hopout.fifo.full_r );
  assign _045_ = _141_ | \fsb_node[4].hopout.fifo.empty_r ;
  assign _050_ = \fsb_node[2].hopout.fifo.enq_i  & ~(\fsb_node[2].hopout.fifo.tail_r );
  assign _044_ = \fsb_node[4].hopout.fifo.full_r  & ~(\fsb_node[3].hopout.fifo.enq_i );
  assign _052_ = \fsb_node[3].hopout.fifo.enq_i  & ~(\fsb_node[3].hopout.fifo.tail_r );
  assign _142_ = \fsb_node[0].hopin.fifo.empty_r  & ~(asm_yumi_o);
  assign _143_ = ~asm_yumi_o;
  assign _144_ = ~(\fsb_node[0].hopin.sent_r [0] | \fsb_node[0].hopin.fifo.empty_r );
  assign _145_ = _144_ & ~(\fsb_node[1].hopin.fifo.full_r );
  assign _146_ = ~(_145_ | \fsb_node[0].hopin.sent_r [0]);
  assign _147_ = \fsb_node[0].hopin.fifo.empty_r  & ~(\fsb_node[0].hopin.sent_r [1]);
  assign _148_ = _147_ | _146_;
  assign _149_ = _148_ | \fsb_node[0].hopin.fifo.full_r ;
  assign _150_ = _143_ & ~(_149_);
  assign _015_ = _150_ | _142_;
  assign _151_ = \fsb_node[0].hopin.fifo.empty_r  | ~(asm_yumi_o);
  assign _152_ = _148_ & ~(_151_);
  assign _153_ = _148_ & \fsb_node[0].hopin.fifo.full_r ;
  assign _014_ = _153_ | _152_;
  assign _013_ = _146_ & ~(_147_);
  assign _012_ = _147_ & ~(_146_);
  assign _154_ = \fsb_node[0].hopout.fifo.empty_r  & ~(\fsb_node[0].hopout.fifo.enq_i );
  assign _155_ = ~\fsb_node[0].hopout.fifo.enq_i ;
  assign _156_ = \fsb_node[0].hopout.fifo.full_r  | ~(\fsb_node[0].hopout.fifo.deq_i );
  assign _157_ = _155_ & ~(_156_);
  assign _018_ = _157_ | _154_;
  assign _158_ = \fsb_node[0].hopout.fifo.enq_i  & ~(\fsb_node[0].hopout.fifo.empty_r );
  assign _159_ = _158_ & ~(\fsb_node[0].hopout.fifo.deq_i );
  assign _160_ = \fsb_node[0].hopout.fifo.full_r  & ~(\fsb_node[0].hopout.fifo.deq_i );
  assign _017_ = _160_ | _159_;
  assign _053_ = \fsb_node[3].hopout.fifo.enq_i  & ~(_007_);
  assign _161_ = \fsb_node[1].hopin.fifo.empty_r  & ~(_145_);
  assign _162_ = ~(\fsb_node[1].hopin.sent_r [0] | \fsb_node[1].hopin.fifo.empty_r );
  assign _163_ = _162_ & ~(\fsb_node[2].hopin.fifo.full_r );
  assign _164_ = ~(_163_ | \fsb_node[1].hopin.sent_r [0]);
  assign _165_ = \fsb_node[1].hopin.fifo.empty_r  & ~(\fsb_node[1].hopin.sent_r [1]);
  assign _166_ = _165_ | _164_;
  assign _167_ = _166_ | \fsb_node[1].hopin.fifo.full_r ;
  assign _168_ = ~(_167_ | _145_);
  assign _022_ = _168_ | _161_;
  assign _169_ = \fsb_node[1].hopin.fifo.empty_r  | ~(_145_);
  assign _170_ = _166_ & ~(_169_);
  assign _171_ = _166_ & \fsb_node[1].hopin.fifo.full_r ;
  assign _021_ = _171_ | _170_;
  assign _020_ = _164_ & ~(_165_);
  assign _019_ = _165_ & ~(_164_);
  assign _172_ = \fsb_node[1].hopout.fifo.empty_r  & ~(\fsb_node[1].hopout.fifo.enq_i );
  assign _173_ = \fsb_node[1].hopout.fifo.full_r  | ~(\fsb_node[0].hopout.fifo.enq_i );
  assign _174_ = _110_ & ~(_173_);
  assign _025_ = _174_ | _172_;
  assign _175_ = \fsb_node[1].hopout.fifo.empty_r  | ~(\fsb_node[1].hopout.fifo.enq_i );
  assign _176_ = _155_ & ~(_175_);
  assign _177_ = \fsb_node[1].hopout.fifo.full_r  & ~(\fsb_node[0].hopout.fifo.enq_i );
  assign _024_ = _177_ | _176_;
  assign _178_ = \fsb_node[2].hopin.fifo.empty_r  & ~(_163_);
  assign _179_ = _105_ | _104_;
  assign _180_ = _179_ | \fsb_node[2].hopin.fifo.full_r ;
  assign _181_ = ~(_180_ | _163_);
  assign _029_ = _181_ | _178_;
  assign _182_ = \fsb_node[2].hopin.fifo.empty_r  | ~(_163_);
  assign _183_ = _179_ & ~(_182_);
  assign _184_ = _179_ & \fsb_node[2].hopin.fifo.full_r ;
  assign _028_ = _184_ | _183_;
  assign _027_ = _104_ & ~(_105_);
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [0] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [1] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [2] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [3] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [4] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [5] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [6] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [7] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [8] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [9] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [10] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [11] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [12] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [13] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [14] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_046_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[0] [15] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (reset_i) \fsb_node[2].hopout.fifo.head_r  <= 1'h0;
    else if (\fsb_node[1].hopout.fifo.enq_i ) \fsb_node[2].hopout.fifo.head_r  <= _030_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[2].hopout.fifo.tail_r  <= 1'h0;
    else if (\fsb_node[2].hopout.fifo.enq_i ) \fsb_node[2].hopout.fifo.tail_r  <= _006_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[2].hopin.fifo.full_r  <= 1'h0;
    else \fsb_node[2].hopin.fifo.full_r  <= _028_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[2].hopout.fifo.empty_r  <= 1'h1;
    else \fsb_node[2].hopout.fifo.empty_r  <= _032_;
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [0] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [1] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [2] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [3] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [4] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [5] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [6] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [7] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [8] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [9] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [10] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [11] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [12] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [13] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [14] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_051_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[1] [15] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [0] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [1] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [2] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [3] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [4] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [5] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [6] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [7] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [8] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [9] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [10] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [11] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [12] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [13] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [14] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_050_) \fsb_node[2].hopout.fifo.mem_1r1w.synth.nz.mem[0] [15] <= \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (reset_i) \fsb_node[3].hopin.sent_r [0] <= 1'h0;
    else \fsb_node[3].hopin.sent_r [0] <= _033_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[3].hopin.fifo.empty_r  <= 1'h1;
    else \fsb_node[3].hopin.fifo.empty_r  <= _036_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[3].hopin.sent_r [1] <= 1'h0;
    else \fsb_node[3].hopin.sent_r [1] <= _034_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[2].hopout.fifo.full_r  <= 1'h0;
    else \fsb_node[2].hopout.fifo.full_r  <= _031_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[3].hopout.fifo.head_r  <= 1'h0;
    else if (\fsb_node[2].hopout.fifo.enq_i ) \fsb_node[3].hopout.fifo.head_r  <= _037_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[3].hopout.fifo.tail_r  <= 1'h0;
    else if (\fsb_node[3].hopout.fifo.enq_i ) \fsb_node[3].hopout.fifo.tail_r  <= _007_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[3].hopin.fifo.full_r  <= 1'h0;
    else \fsb_node[3].hopin.fifo.full_r  <= _035_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[3].hopout.fifo.empty_r  <= 1'h1;
    else \fsb_node[3].hopout.fifo.empty_r  <= _039_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[4].hopin.sent_r [0] <= 1'h0;
    else \fsb_node[4].hopin.sent_r [0] <= _040_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[4].hopin.fifo.empty_r  <= 1'h1;
    else \fsb_node[4].hopin.fifo.empty_r  <= _043_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[4].hopin.sent_r [1] <= 1'h0;
    else \fsb_node[4].hopin.sent_r [1] <= _041_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[3].hopout.fifo.full_r  <= 1'h0;
    else \fsb_node[3].hopout.fifo.full_r  <= _038_;
  always @(posedge clk_i)
    if (reset_i) _001_ <= 1'h0;
    else _001_ <= _009_;
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [0] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [1] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [2] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [3] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [4] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [5] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [6] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [7] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [8] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [9] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [10] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [11] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [12] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [13] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [14] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_049_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[1] [15] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [0] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [1] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [2] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [3] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [4] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [5] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [6] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [7] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [8] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [9] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [10] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [11] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [12] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [13] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [14] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_053_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[1] [15] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (reset_i) \fsb_node[4].hopin.fifo.full_r  <= 1'h0;
    else \fsb_node[4].hopin.fifo.full_r  <= _042_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[4].hopout.fifo.empty_r  <= 1'h1;
    else \fsb_node[4].hopout.fifo.empty_r  <= _045_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[4].hopout.fifo.full_r  <= 1'h0;
    else \fsb_node[4].hopout.fifo.full_r  <= _044_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[0].hopin.sent_r [0] <= 1'h0;
    else \fsb_node[0].hopin.sent_r [0] <= _012_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[0].hopin.fifo.empty_r  <= 1'h1;
    else \fsb_node[0].hopin.fifo.empty_r  <= _015_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[0].hopin.sent_r [1] <= 1'h0;
    else \fsb_node[0].hopin.sent_r [1] <= _013_;
  always @(posedge clk_i)
    if (reset_i) _002_ <= 1'h0;
    else _002_ <= _010_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[0].hopout.fifo.head_r  <= 1'h0;
    else if (\fsb_node[0].hopout.fifo.deq_i ) \fsb_node[0].hopout.fifo.head_r  <= _016_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[0].hopout.fifo.tail_r  <= 1'h0;
    else if (\fsb_node[0].hopout.fifo.enq_i ) \fsb_node[0].hopout.fifo.tail_r  <= _004_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[0].hopin.fifo.full_r  <= 1'h0;
    else \fsb_node[0].hopin.fifo.full_r  <= _014_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[0].hopout.fifo.empty_r  <= 1'h1;
    else \fsb_node[0].hopout.fifo.empty_r  <= _018_;
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [0] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [1] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [2] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [3] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [4] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [5] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [6] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [7] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [8] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [9] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [10] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [11] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [12] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [13] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [14] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_048_) \fsb_node[1].hopout.fifo.mem_1r1w.synth.nz.mem[0] [15] <= \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [0] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [1] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [2] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [3] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [4] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [5] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [6] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [7] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [8] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [9] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [10] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [11] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [12] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [13] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [14] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_047_) \fsb_node[0].hopout.fifo.mem_1r1w.synth.nz.mem[1] [15] <= \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (reset_i) _000_ <= 1'h0;
    else _000_ <= _008_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[1].hopin.sent_r [0] <= 1'h0;
    else \fsb_node[1].hopin.sent_r [0] <= _019_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[1].hopin.fifo.empty_r  <= 1'h1;
    else \fsb_node[1].hopin.fifo.empty_r  <= _022_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[1].hopin.sent_r [1] <= 1'h0;
    else \fsb_node[1].hopin.sent_r [1] <= _020_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[0].hopout.fifo.full_r  <= 1'h0;
    else \fsb_node[0].hopout.fifo.full_r  <= _017_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[1].hopout.fifo.head_r  <= 1'h0;
    else if (\fsb_node[0].hopout.fifo.enq_i ) \fsb_node[1].hopout.fifo.head_r  <= _023_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[1].hopout.fifo.tail_r  <= 1'h0;
    else if (\fsb_node[1].hopout.fifo.enq_i ) \fsb_node[1].hopout.fifo.tail_r  <= _005_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[1].hopin.fifo.full_r  <= 1'h0;
    else \fsb_node[1].hopin.fifo.full_r  <= _021_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[1].hopout.fifo.empty_r  <= 1'h1;
    else \fsb_node[1].hopout.fifo.empty_r  <= _025_;
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [0] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [0];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [1] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [1];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [2] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [2];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [3] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [3];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [4] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [4];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [5] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [5];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [6] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [6];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [7] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [7];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [8] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [8];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [9] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [9];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [10] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [10];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [11] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [11];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [12] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [12];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [13] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [13];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [14] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [14];
  always @(posedge clk_i)
    if (_052_) \fsb_node[3].hopout.fifo.mem_1r1w.synth.nz.mem[0] [15] <= \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i [15];
  always @(posedge clk_i)
    if (reset_i) _003_ <= 1'h0;
    else _003_ <= _011_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[2].hopin.sent_r [0] <= 1'h0;
    else \fsb_node[2].hopin.sent_r [0] <= _026_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[2].hopin.fifo.empty_r  <= 1'h1;
    else \fsb_node[2].hopin.fifo.empty_r  <= _029_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[2].hopin.sent_r [1] <= 1'h0;
    else \fsb_node[2].hopin.sent_r [1] <= _027_;
  always @(posedge clk_i)
    if (reset_i) \fsb_node[1].hopout.fifo.full_r  <= 1'h0;
    else \fsb_node[1].hopout.fifo.full_r  <= _024_;
  assign \fsb_node[0].hopin.clk_i  = clk_i;
  assign \fsb_node[0].hopin.data_i  = asm_data_i;
  assign \fsb_node[0].hopin.data_o  = 32'hxxxxxxxx;
  assign \fsb_node[0].hopin.data_o_tmp  = 16'hxxxx;
  assign \fsb_node[0].hopin.fifo.clk_i  = clk_i;
  assign \fsb_node[0].hopin.fifo.data_i  = asm_data_i;
  assign \fsb_node[0].hopin.fifo.data_o  = 16'hxxxx;
  assign \fsb_node[0].hopin.fifo.enq_i  = asm_yumi_o;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.r_data_o  = 16'hxxxx;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.synth.r_data_o  = 16'hxxxx;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.synth.w_data_i  = asm_data_i;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.synth.w_v_i  = asm_yumi_o;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.w_data_i  = asm_data_i;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[0].hopin.fifo.mem_1r1w.w_v_i  = asm_yumi_o;
  assign \fsb_node[0].hopin.fifo.reset_i  = reset_i;
  assign \fsb_node[0].hopin.fifo.v_i  = asm_v_i;
  assign \fsb_node[0].hopin.reset_i  = reset_i;
  assign \fsb_node[0].hopin.v_i  = asm_v_i;
  assign \fsb_node[0].hopout.clk_i  = clk_i;
  assign \fsb_node[0].hopout.data_i [31:16] = node_data_i[15:0];
  assign \fsb_node[0].hopout.data_o  = asm_data_o;
  assign \fsb_node[0].hopout.fifo.clk_i  = clk_i;
  assign \fsb_node[0].hopout.fifo.data_i  = \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i ;
  assign \fsb_node[0].hopout.fifo.data_o  = asm_data_o;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.r_addr_i  = \fsb_node[0].hopout.fifo.head_r ;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.r_data_o  = asm_data_o;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.r_addr_i  = \fsb_node[0].hopout.fifo.head_r ;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.r_data_o  = asm_data_o;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_addr_i  = \fsb_node[0].hopout.fifo.tail_r ;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_v_i  = \fsb_node[0].hopout.fifo.enq_i ;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.w_addr_i  = \fsb_node[0].hopout.fifo.tail_r ;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.w_data_i  = \fsb_node[0].hopout.fifo.mem_1r1w.synth.w_data_i ;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[0].hopout.fifo.mem_1r1w.w_v_i  = \fsb_node[0].hopout.fifo.enq_i ;
  assign \fsb_node[0].hopout.fifo.reset_i  = reset_i;
  assign \fsb_node[0].hopout.fifo.v_o  = asm_v_o;
  assign \fsb_node[0].hopout.fifo.yumi_i  = \fsb_node[0].hopout.fifo.deq_i ;
  assign \fsb_node[0].hopout.fifo_v  = asm_v_o;
  assign \fsb_node[0].hopout.ready_i  = asm_ready_i;
  assign \fsb_node[0].hopout.reset_i  = reset_i;
  assign \fsb_node[0].hopout.source_sel  = \fsb_node[1].hopout.fifo.empty_r ;
  assign \fsb_node[0].hopout.v1_blocked_r  = 1'h0;
  assign \fsb_node[0].hopout.v_i [1] = 1'h0;
  assign \fsb_node[0].hopout.v_o  = asm_v_o;
  assign \fsb_node[0].hopout.yumi_o  = 1'h0;
  assign \fsb_node[0].hopout.yumi_o_tmp  = 1'h0;
  assign \fsb_node[0].murn_gateway.clk_i  = clk_i;
  assign \fsb_node[0].murn_gateway.data_i  = 16'hxxxx;
  assign \fsb_node[0].murn_gateway.genblk1.data_RPT  = 16'hxxxx;
  assign \fsb_node[0].murn_gateway.genblk1.for_switch  = 1'h0;
  assign \fsb_node[0].murn_gateway.genblk1.for_this_node  = 1'h0;
  assign \fsb_node[0].murn_gateway.genblk1.id_match  = 1'hx;
  assign \fsb_node[0].murn_gateway.genblk1.node_en_r  = 1'h0;
  assign \fsb_node[0].murn_gateway.genblk1.node_reset_r  = 1'h1;
  assign \fsb_node[0].murn_gateway.node_en_r_o  = 1'h0;
  assign \fsb_node[0].murn_gateway.node_reset_r_o  = 1'h1;
  assign \fsb_node[0].murn_gateway.ready_i  = node_ready_i[0];
  assign \fsb_node[0].murn_gateway.reset_i  = reset_i;
  assign \fsb_node[0].murn_gateway.v_o  = 1'h0;
  assign \fsb_node[0].node_data_o_int  = 16'hxxxx;
  assign \fsb_node[0].node_en_r_int  = 1'h0;
  assign \fsb_node[0].out_hop_data_m1  = asm_data_o;
  assign \fsb_node[0].out_hop_v_m1  = asm_v_o;
  assign \fsb_node[1].hopin.clk_i  = clk_i;
  assign \fsb_node[1].hopin.data_i  = 16'hxxxx;
  assign \fsb_node[1].hopin.data_o  = 32'hxxxxxxxx;
  assign \fsb_node[1].hopin.data_o_tmp  = 16'hxxxx;
  assign \fsb_node[1].hopin.fifo.clk_i  = clk_i;
  assign \fsb_node[1].hopin.fifo.data_i  = 16'hxxxx;
  assign \fsb_node[1].hopin.fifo.data_o  = 16'hxxxx;
  assign \fsb_node[1].hopin.fifo.mem_1r1w.r_data_o  = 16'hxxxx;
  assign \fsb_node[1].hopin.fifo.mem_1r1w.synth.r_data_o  = 16'hxxxx;
  assign \fsb_node[1].hopin.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[1].hopin.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[1].hopin.fifo.mem_1r1w.synth.w_data_i  = 16'hxxxx;
  assign \fsb_node[1].hopin.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[1].hopin.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[1].hopin.fifo.mem_1r1w.w_data_i  = 16'hxxxx;
  assign \fsb_node[1].hopin.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[1].hopin.fifo.reset_i  = reset_i;
  assign \fsb_node[1].hopin.reset_i  = reset_i;
  assign \fsb_node[1].hopout.clk_i  = clk_i;
  assign \fsb_node[1].hopout.data_i [31:16] = node_data_i[31:16];
  assign \fsb_node[1].hopout.data_o  = \fsb_node[0].hopout.data_i [15:0];
  assign \fsb_node[1].hopout.fifo.clk_i  = clk_i;
  assign \fsb_node[1].hopout.fifo.data_i  = \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i ;
  assign \fsb_node[1].hopout.fifo.data_o  = \fsb_node[0].hopout.data_i [15:0];
  assign \fsb_node[1].hopout.fifo.deq_i  = \fsb_node[0].hopout.fifo.enq_i ;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.r_addr_i  = \fsb_node[1].hopout.fifo.head_r ;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.r_data_o  = \fsb_node[0].hopout.data_i [15:0];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.r_addr_i  = \fsb_node[1].hopout.fifo.head_r ;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.r_data_o  = \fsb_node[0].hopout.data_i [15:0];
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_addr_i  = \fsb_node[1].hopout.fifo.tail_r ;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_v_i  = \fsb_node[1].hopout.fifo.enq_i ;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.w_addr_i  = \fsb_node[1].hopout.fifo.tail_r ;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.w_data_i  = \fsb_node[1].hopout.fifo.mem_1r1w.synth.w_data_i ;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[1].hopout.fifo.mem_1r1w.w_v_i  = \fsb_node[1].hopout.fifo.enq_i ;
  assign \fsb_node[1].hopout.fifo.reset_i  = reset_i;
  assign \fsb_node[1].hopout.fifo.yumi_i  = \fsb_node[0].hopout.fifo.enq_i ;
  assign \fsb_node[1].hopout.reset_i  = reset_i;
  assign \fsb_node[1].hopout.source_sel  = \fsb_node[2].hopout.fifo.empty_r ;
  assign \fsb_node[1].hopout.v1_blocked_r  = 1'h0;
  assign \fsb_node[1].hopout.v_i [1] = 1'h0;
  assign \fsb_node[1].hopout.yumi_o  = 1'h0;
  assign \fsb_node[1].hopout.yumi_o_tmp  = 1'h0;
  assign \fsb_node[1].murn_gateway.clk_i  = clk_i;
  assign \fsb_node[1].murn_gateway.data_i  = 16'hxxxx;
  assign \fsb_node[1].murn_gateway.genblk1.data_RPT  = 16'hxxxx;
  assign \fsb_node[1].murn_gateway.genblk1.for_switch  = 1'h0;
  assign \fsb_node[1].murn_gateway.genblk1.for_this_node  = 1'h0;
  assign \fsb_node[1].murn_gateway.genblk1.id_match  = 1'hx;
  assign \fsb_node[1].murn_gateway.genblk1.node_en_r  = 1'h0;
  assign \fsb_node[1].murn_gateway.genblk1.node_reset_r  = 1'h1;
  assign \fsb_node[1].murn_gateway.node_en_r_o  = 1'h0;
  assign \fsb_node[1].murn_gateway.node_reset_r_o  = 1'h1;
  assign \fsb_node[1].murn_gateway.ready_i  = node_ready_i[1];
  assign \fsb_node[1].murn_gateway.reset_i  = reset_i;
  assign \fsb_node[1].murn_gateway.v_o  = 1'h0;
  assign \fsb_node[1].node_data_o_int  = 16'hxxxx;
  assign \fsb_node[1].node_en_r_int  = 1'h0;
  assign \fsb_node[1].out_hop_data_m1  = \fsb_node[0].hopout.data_i [15:0];
  assign \fsb_node[2].hopin.clk_i  = clk_i;
  assign \fsb_node[2].hopin.data_i  = 16'hxxxx;
  assign \fsb_node[2].hopin.data_o  = 32'hxxxxxxxx;
  assign \fsb_node[2].hopin.data_o_tmp  = 16'hxxxx;
  assign \fsb_node[2].hopin.fifo.clk_i  = clk_i;
  assign \fsb_node[2].hopin.fifo.data_i  = 16'hxxxx;
  assign \fsb_node[2].hopin.fifo.data_o  = 16'hxxxx;
  assign \fsb_node[2].hopin.fifo.mem_1r1w.r_data_o  = 16'hxxxx;
  assign \fsb_node[2].hopin.fifo.mem_1r1w.synth.r_data_o  = 16'hxxxx;
  assign \fsb_node[2].hopin.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[2].hopin.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[2].hopin.fifo.mem_1r1w.synth.w_data_i  = 16'hxxxx;
  assign \fsb_node[2].hopin.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[2].hopin.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[2].hopin.fifo.mem_1r1w.w_data_i  = 16'hxxxx;
  assign \fsb_node[2].hopin.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[2].hopin.fifo.reset_i  = reset_i;
  assign \fsb_node[2].hopin.reset_i  = reset_i;
  assign \fsb_node[2].hopout.clk_i  = clk_i;
  assign \fsb_node[2].hopout.data_i [31:16] = node_data_i[47:32];
  assign \fsb_node[2].hopout.data_o  = \fsb_node[1].hopout.data_i [15:0];
  assign \fsb_node[2].hopout.fifo.clk_i  = clk_i;
  assign \fsb_node[2].hopout.fifo.data_i  = \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i ;
  assign \fsb_node[2].hopout.fifo.data_o  = \fsb_node[1].hopout.data_i [15:0];
  assign \fsb_node[2].hopout.fifo.deq_i  = \fsb_node[1].hopout.fifo.enq_i ;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.r_addr_i  = \fsb_node[2].hopout.fifo.head_r ;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.r_data_o  = \fsb_node[1].hopout.data_i [15:0];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.r_addr_i  = \fsb_node[2].hopout.fifo.head_r ;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.r_data_o  = \fsb_node[1].hopout.data_i [15:0];
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_addr_i  = \fsb_node[2].hopout.fifo.tail_r ;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_v_i  = \fsb_node[2].hopout.fifo.enq_i ;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.w_addr_i  = \fsb_node[2].hopout.fifo.tail_r ;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.w_data_i  = \fsb_node[2].hopout.fifo.mem_1r1w.synth.w_data_i ;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[2].hopout.fifo.mem_1r1w.w_v_i  = \fsb_node[2].hopout.fifo.enq_i ;
  assign \fsb_node[2].hopout.fifo.reset_i  = reset_i;
  assign \fsb_node[2].hopout.fifo.yumi_i  = \fsb_node[1].hopout.fifo.enq_i ;
  assign \fsb_node[2].hopout.reset_i  = reset_i;
  assign \fsb_node[2].hopout.source_sel  = \fsb_node[3].hopout.fifo.empty_r ;
  assign \fsb_node[2].hopout.v1_blocked_r  = 1'h0;
  assign \fsb_node[2].hopout.v_i [1] = 1'h0;
  assign \fsb_node[2].hopout.yumi_o  = 1'h0;
  assign \fsb_node[2].hopout.yumi_o_tmp  = 1'h0;
  assign \fsb_node[2].murn_gateway.clk_i  = clk_i;
  assign \fsb_node[2].murn_gateway.data_i  = 16'hxxxx;
  assign \fsb_node[2].murn_gateway.genblk1.data_RPT  = 16'hxxxx;
  assign \fsb_node[2].murn_gateway.genblk1.for_switch  = 1'h0;
  assign \fsb_node[2].murn_gateway.genblk1.for_this_node  = 1'h0;
  assign \fsb_node[2].murn_gateway.genblk1.id_match  = 1'hx;
  assign \fsb_node[2].murn_gateway.genblk1.node_en_r  = 1'h0;
  assign \fsb_node[2].murn_gateway.genblk1.node_reset_r  = 1'h1;
  assign \fsb_node[2].murn_gateway.node_en_r_o  = 1'h0;
  assign \fsb_node[2].murn_gateway.node_reset_r_o  = 1'h1;
  assign \fsb_node[2].murn_gateway.ready_i  = node_ready_i[2];
  assign \fsb_node[2].murn_gateway.reset_i  = reset_i;
  assign \fsb_node[2].murn_gateway.v_o  = 1'h0;
  assign \fsb_node[2].node_data_o_int  = 16'hxxxx;
  assign \fsb_node[2].node_en_r_int  = 1'h0;
  assign \fsb_node[2].out_hop_data_m1  = \fsb_node[1].hopout.data_i [15:0];
  assign \fsb_node[3].hopin.clk_i  = clk_i;
  assign \fsb_node[3].hopin.data_i  = 16'hxxxx;
  assign \fsb_node[3].hopin.data_o  = 32'hxxxxxxxx;
  assign \fsb_node[3].hopin.data_o_tmp  = 16'hxxxx;
  assign \fsb_node[3].hopin.fifo.clk_i  = clk_i;
  assign \fsb_node[3].hopin.fifo.data_i  = 16'hxxxx;
  assign \fsb_node[3].hopin.fifo.data_o  = 16'hxxxx;
  assign \fsb_node[3].hopin.fifo.mem_1r1w.r_data_o  = 16'hxxxx;
  assign \fsb_node[3].hopin.fifo.mem_1r1w.synth.r_data_o  = 16'hxxxx;
  assign \fsb_node[3].hopin.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[3].hopin.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[3].hopin.fifo.mem_1r1w.synth.w_data_i  = 16'hxxxx;
  assign \fsb_node[3].hopin.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[3].hopin.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[3].hopin.fifo.mem_1r1w.w_data_i  = 16'hxxxx;
  assign \fsb_node[3].hopin.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[3].hopin.fifo.reset_i  = reset_i;
  assign \fsb_node[3].hopin.reset_i  = reset_i;
  assign \fsb_node[3].hopout.clk_i  = clk_i;
  assign \fsb_node[3].hopout.data_i  = { node_data_i[63:48], 16'hxxxx };
  assign \fsb_node[3].hopout.data_o  = \fsb_node[2].hopout.data_i [15:0];
  assign \fsb_node[3].hopout.fifo.clk_i  = clk_i;
  assign \fsb_node[3].hopout.fifo.data_i  = \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i ;
  assign \fsb_node[3].hopout.fifo.data_o  = \fsb_node[2].hopout.data_i [15:0];
  assign \fsb_node[3].hopout.fifo.deq_i  = \fsb_node[2].hopout.fifo.enq_i ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.r_addr_i  = \fsb_node[3].hopout.fifo.head_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.r_data_o  = \fsb_node[2].hopout.data_i [15:0];
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.r_addr_i  = \fsb_node[3].hopout.fifo.head_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.r_data_o  = \fsb_node[2].hopout.data_i [15:0];
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_addr_i  = \fsb_node[3].hopout.fifo.tail_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_v_i  = \fsb_node[3].hopout.fifo.enq_i ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.w_addr_i  = \fsb_node[3].hopout.fifo.tail_r ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.w_data_i  = \fsb_node[3].hopout.fifo.mem_1r1w.synth.w_data_i ;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[3].hopout.fifo.mem_1r1w.w_v_i  = \fsb_node[3].hopout.fifo.enq_i ;
  assign \fsb_node[3].hopout.fifo.reset_i  = reset_i;
  assign \fsb_node[3].hopout.fifo.yumi_i  = \fsb_node[2].hopout.fifo.enq_i ;
  assign \fsb_node[3].hopout.reset_i  = reset_i;
  assign \fsb_node[3].hopout.source_sel  = \fsb_node[4].hopout.fifo.empty_r ;
  assign \fsb_node[3].hopout.v1_blocked_r  = 1'h0;
  assign \fsb_node[3].hopout.v_i [1] = 1'h0;
  assign \fsb_node[3].hopout.yumi_o  = 1'h0;
  assign \fsb_node[3].hopout.yumi_o_tmp  = 1'h0;
  assign \fsb_node[3].murn_gateway.clk_i  = clk_i;
  assign \fsb_node[3].murn_gateway.data_i  = 16'hxxxx;
  assign \fsb_node[3].murn_gateway.genblk1.data_RPT  = 16'hxxxx;
  assign \fsb_node[3].murn_gateway.genblk1.for_switch  = 1'h0;
  assign \fsb_node[3].murn_gateway.genblk1.for_this_node  = 1'h0;
  assign \fsb_node[3].murn_gateway.genblk1.id_match  = 1'hx;
  assign \fsb_node[3].murn_gateway.genblk1.node_en_r  = 1'h0;
  assign \fsb_node[3].murn_gateway.genblk1.node_reset_r  = 1'h1;
  assign \fsb_node[3].murn_gateway.node_en_r_o  = 1'h0;
  assign \fsb_node[3].murn_gateway.node_reset_r_o  = 1'h1;
  assign \fsb_node[3].murn_gateway.ready_i  = node_ready_i[3];
  assign \fsb_node[3].murn_gateway.reset_i  = reset_i;
  assign \fsb_node[3].murn_gateway.v_o  = 1'h0;
  assign \fsb_node[3].node_data_o_int  = 16'hxxxx;
  assign \fsb_node[3].node_en_r_int  = 1'h0;
  assign \fsb_node[3].out_hop_data_m1  = \fsb_node[2].hopout.data_i [15:0];
  assign \fsb_node[4].hopin.clk_i  = clk_i;
  assign \fsb_node[4].hopin.data_i  = 16'hxxxx;
  assign \fsb_node[4].hopin.data_o  = 32'hxxxxxxxx;
  assign \fsb_node[4].hopin.data_o_tmp  = 16'hxxxx;
  assign \fsb_node[4].hopin.fifo.clk_i  = clk_i;
  assign \fsb_node[4].hopin.fifo.data_i  = 16'hxxxx;
  assign \fsb_node[4].hopin.fifo.data_o  = 16'hxxxx;
  assign \fsb_node[4].hopin.fifo.mem_1r1w.r_data_o  = 16'hxxxx;
  assign \fsb_node[4].hopin.fifo.mem_1r1w.synth.r_data_o  = 16'hxxxx;
  assign \fsb_node[4].hopin.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[4].hopin.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[4].hopin.fifo.mem_1r1w.synth.w_data_i  = 16'hxxxx;
  assign \fsb_node[4].hopin.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[4].hopin.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[4].hopin.fifo.mem_1r1w.w_data_i  = 16'hxxxx;
  assign \fsb_node[4].hopin.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[4].hopin.fifo.reset_i  = reset_i;
  assign \fsb_node[4].hopin.ready_i [0] = 1'h1;
  assign \fsb_node[4].hopin.reset_i  = reset_i;
  assign \fsb_node[4].hopin.v_o [1] = \fsb_node[4].hopin.ready_i [1];
  assign \fsb_node[4].hopin.v_o_tmp  = { \fsb_node[4].hopin.ready_i [1], \fsb_node[4].hopin.v_o [0] };
  assign \fsb_node[4].hopout.clk_i  = clk_i;
  assign \fsb_node[4].hopout.data_i  = { node_data_i[79:64], 16'h0000 };
  assign \fsb_node[4].hopout.data_o  = 16'hxxxx;
  assign \fsb_node[4].hopout.fifo.clk_i  = clk_i;
  assign \fsb_node[4].hopout.fifo.data_i  = node_data_i[79:64];
  assign \fsb_node[4].hopout.fifo.data_o  = 16'hxxxx;
  assign \fsb_node[4].hopout.fifo.deq_i  = \fsb_node[3].hopout.fifo.enq_i ;
  assign \fsb_node[4].hopout.fifo.enq_i  = 1'h0;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.r_data_o  = 16'hxxxx;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.synth.r_data_o  = 16'hxxxx;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.synth.unused0  = reset_i;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_addr_i  = 1'h0;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_clk_i  = clk_i;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_data_i  = node_data_i[79:64];
  assign \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_reset_i  = reset_i;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.synth.w_v_i  = 1'h0;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.w_addr_i  = 1'h0;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.w_clk_i  = clk_i;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.w_data_i  = node_data_i[79:64];
  assign \fsb_node[4].hopout.fifo.mem_1r1w.w_reset_i  = reset_i;
  assign \fsb_node[4].hopout.fifo.mem_1r1w.w_v_i  = 1'h0;
  assign \fsb_node[4].hopout.fifo.reset_i  = reset_i;
  assign \fsb_node[4].hopout.fifo.tail_r  = 1'h0;
  assign \fsb_node[4].hopout.fifo.v_i  = 1'h0;
  assign \fsb_node[4].hopout.fifo.yumi_i  = \fsb_node[3].hopout.fifo.enq_i ;
  assign \fsb_node[4].hopout.reset_i  = reset_i;
  assign \fsb_node[4].hopout.source_sel  = 1'h1;
  assign \fsb_node[4].hopout.v_i  = 2'h0;
  assign \fsb_node[4].hopout.yumi_o  = 1'h0;
  assign \fsb_node[4].hopout.yumi_o_tmp  = 1'h0;
  assign \fsb_node[4].murn_gateway.clk_i  = clk_i;
  assign \fsb_node[4].murn_gateway.data_i  = 16'hxxxx;
  assign \fsb_node[4].murn_gateway.genblk1.data_RPT  = 16'hxxxx;
  assign \fsb_node[4].murn_gateway.genblk1.for_switch  = 1'h0;
  assign \fsb_node[4].murn_gateway.genblk1.for_this_node  = 1'h0;
  assign \fsb_node[4].murn_gateway.genblk1.id_match  = 1'hx;
  assign \fsb_node[4].murn_gateway.genblk1.node_en_r  = 1'h0;
  assign \fsb_node[4].murn_gateway.genblk1.node_reset_r  = 1'h1;
  assign \fsb_node[4].murn_gateway.node_en_r_o  = 1'h0;
  assign \fsb_node[4].murn_gateway.node_reset_r_o  = 1'h1;
  assign \fsb_node[4].murn_gateway.ready_i  = node_ready_i[4];
  assign \fsb_node[4].murn_gateway.ready_o  = \fsb_node[4].hopin.ready_i [1];
  assign \fsb_node[4].murn_gateway.reset_i  = reset_i;
  assign \fsb_node[4].murn_gateway.v_i  = \fsb_node[4].hopin.ready_i [1];
  assign \fsb_node[4].murn_gateway.v_o  = 1'h0;
  assign \fsb_node[4].node_data_o_int  = 16'hxxxx;
  assign \fsb_node[4].node_en_r_int  = 1'h0;
  assign \fsb_node[4].node_ready_int  = \fsb_node[4].hopin.ready_i [1];
  assign \fsb_node[4].node_v_int  = \fsb_node[4].hopin.ready_i [1];
  assign \fsb_node[4].out_hop_data_m1  = 16'hxxxx;
  assign in_hop_v[4] = \fsb_node[4].hopin.v_o [0];
  assign node_data_o = 80'hxxxxxxxxxxxxxxxxxxxx;
  assign node_en_r_o = 5'h00;
  assign node_reset_r_o = 5'h1f;
  assign node_v_o = 5'h00;
  assign node_yumi_o = 5'h00;
  assign \out_hop_data[0]  = \fsb_node[0].hopout.data_i [15:0];
  assign \out_hop_data[1]  = \fsb_node[1].hopout.data_i [15:0];
  assign \out_hop_data[2]  = \fsb_node[2].hopout.data_i [15:0];
  assign \out_hop_data[3]  = 16'hxxxx;
  assign \out_hop_data[4]  = 16'h0000;
endmodule
