module bsg_fsb_node_level_shift_node_domain(en_ls_i, clk_i, reset_i, clk_o, reset_o, fsb_v_i_o, fsb_data_i_o, fsb_yumi_o_i, fsb_v_o_i, fsb_data_o_i, fsb_ready_i_o, node_v_i_o, node_data_i_o, node_ready_o_i, node_v_o_i, node_data_o_i, node_yumi_i_o);
  input clk_i;
  wire clk_i;
  wire \clk_ls_inst.v0_data_i ;
  wire \clk_ls_inst.v1_data_o ;
  wire \clk_ls_inst.v1_en_i ;
  output clk_o;
  wire clk_o;
  input en_ls_i;
  wire en_ls_i;
  wire [4:0] \f2n_data_ls_inst.v0_data_i ;
  wire [4:0] \f2n_data_ls_inst.v1_data_o ;
  wire \f2n_data_ls_inst.v1_en_i ;
  wire \f2n_v_ls_inst.v0_data_i ;
  wire \f2n_v_ls_inst.v1_data_o ;
  wire \f2n_v_ls_inst.v1_en_i ;
  wire \f2n_yumi_ls_inst.v0_data_i ;
  wire \f2n_yumi_ls_inst.v1_data_o ;
  wire \f2n_yumi_ls_inst.v1_en_i ;
  output [4:0] fsb_data_i_o;
  wire [4:0] fsb_data_i_o;
  input [4:0] fsb_data_o_i;
  wire [4:0] fsb_data_o_i;
  output fsb_ready_i_o;
  wire fsb_ready_i_o;
  output fsb_v_i_o;
  wire fsb_v_i_o;
  input fsb_v_o_i;
  wire fsb_v_o_i;
  input fsb_yumi_o_i;
  wire fsb_yumi_o_i;
  wire [4:0] \n2f_data_ls_inst.v0_data_i ;
  wire \n2f_data_ls_inst.v0_en_i ;
  wire [4:0] \n2f_data_ls_inst.v1_data_o ;
  wire \n2f_ready_ls_inst.v0_data_i ;
  wire \n2f_ready_ls_inst.v0_en_i ;
  wire \n2f_ready_ls_inst.v1_data_o ;
  wire \n2f_v_ls_inst.v0_data_i ;
  wire \n2f_v_ls_inst.v0_en_i ;
  wire \n2f_v_ls_inst.v1_data_o ;
  output [4:0] node_data_i_o;
  wire [4:0] node_data_i_o;
  input [4:0] node_data_o_i;
  wire [4:0] node_data_o_i;
  input node_ready_o_i;
  wire node_ready_o_i;
  output node_v_i_o;
  wire node_v_i_o;
  input node_v_o_i;
  wire node_v_o_i;
  output node_yumi_i_o;
  wire node_yumi_i_o;
  input reset_i;
  wire reset_i;
  wire \reset_ls_inst.v0_data_i ;
  wire \reset_ls_inst.v1_data_o ;
  wire \reset_ls_inst.v1_en_i ;
  output reset_o;
  wire reset_o;
  assign fsb_v_i_o = en_ls_i & node_v_o_i;
  assign fsb_data_i_o[0] = node_data_o_i[0] & en_ls_i;
  assign fsb_data_i_o[1] = node_data_o_i[1] & en_ls_i;
  assign fsb_data_i_o[2] = node_data_o_i[2] & en_ls_i;
  assign fsb_data_i_o[3] = node_data_o_i[3] & en_ls_i;
  assign fsb_data_i_o[4] = node_data_o_i[4] & en_ls_i;
  assign node_yumi_i_o = fsb_yumi_o_i & en_ls_i;
  assign node_v_i_o = fsb_v_o_i & en_ls_i;
  assign node_data_i_o[0] = fsb_data_o_i[0] & en_ls_i;
  assign node_data_i_o[1] = fsb_data_o_i[1] & en_ls_i;
  assign node_data_i_o[2] = fsb_data_o_i[2] & en_ls_i;
  assign node_data_i_o[3] = fsb_data_o_i[3] & en_ls_i;
  assign node_data_i_o[4] = fsb_data_o_i[4] & en_ls_i;
  assign fsb_ready_i_o = node_ready_o_i & en_ls_i;
  assign \clk_ls_inst.v0_data_i  = clk_i;
  assign \clk_ls_inst.v1_data_o  = clk_i;
  assign \clk_ls_inst.v1_en_i  = 1'h1;
  assign clk_o = clk_i;
  assign \f2n_data_ls_inst.v0_data_i  = fsb_data_o_i;
  assign \f2n_data_ls_inst.v1_data_o  = node_data_i_o;
  assign \f2n_data_ls_inst.v1_en_i  = en_ls_i;
  assign \f2n_v_ls_inst.v0_data_i  = fsb_v_o_i;
  assign \f2n_v_ls_inst.v1_data_o  = node_v_i_o;
  assign \f2n_v_ls_inst.v1_en_i  = en_ls_i;
  assign \f2n_yumi_ls_inst.v0_data_i  = fsb_yumi_o_i;
  assign \f2n_yumi_ls_inst.v1_data_o  = node_yumi_i_o;
  assign \f2n_yumi_ls_inst.v1_en_i  = en_ls_i;
  assign \n2f_data_ls_inst.v0_data_i  = node_data_o_i;
  assign \n2f_data_ls_inst.v0_en_i  = en_ls_i;
  assign \n2f_data_ls_inst.v1_data_o  = fsb_data_i_o;
  assign \n2f_ready_ls_inst.v0_data_i  = node_ready_o_i;
  assign \n2f_ready_ls_inst.v0_en_i  = en_ls_i;
  assign \n2f_ready_ls_inst.v1_data_o  = fsb_ready_i_o;
  assign \n2f_v_ls_inst.v0_data_i  = node_v_o_i;
  assign \n2f_v_ls_inst.v0_en_i  = en_ls_i;
  assign \n2f_v_ls_inst.v1_data_o  = fsb_v_i_o;
  assign \reset_ls_inst.v0_data_i  = reset_i;
  assign \reset_ls_inst.v1_data_o  = reset_i;
  assign \reset_ls_inst.v1_en_i  = 1'h1;
  assign reset_o = reset_i;
endmodule
