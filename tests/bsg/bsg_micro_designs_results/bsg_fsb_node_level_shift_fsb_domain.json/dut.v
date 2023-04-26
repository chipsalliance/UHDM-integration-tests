/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */


module \$paramod\bsg_level_shift_up_down_sink\width_p=s32'00000000000000000000000000000001 (v0_data_i, v1_en_i, v1_data_o);
  
  input v0_data_i;
  wire v0_data_i;
  
  output v1_data_o;
  wire v1_data_o;
  
  input v1_en_i;
  wire v1_en_i;
  assign v1_data_o = v1_en_i & v0_data_i;
endmodule


module \$paramod\bsg_level_shift_up_down_sink\width_p=s32'00000000000000000000000000000101 (v0_data_i, v1_en_i, v1_data_o);
  
  input [4:0] v0_data_i;
  wire [4:0] v0_data_i;
  
  output [4:0] v1_data_o;
  wire [4:0] v1_data_o;
  
  input v1_en_i;
  wire v1_en_i;
  assign v1_data_o[4] = v1_en_i & v0_data_i[4];
  assign v1_data_o[0] = v0_data_i[0] & v1_en_i;
  assign v1_data_o[1] = v0_data_i[1] & v1_en_i;
  assign v1_data_o[2] = v0_data_i[2] & v1_en_i;
  assign v1_data_o[3] = v0_data_i[3] & v1_en_i;
endmodule


module \$paramod\bsg_level_shift_up_down_source\width_p=s32'00000000000000000000000000000001 (v0_en_i, v0_data_i, v1_data_o);
  
  input v0_data_i;
  wire v0_data_i;
  
  input v0_en_i;
  wire v0_en_i;
  
  output v1_data_o;
  wire v1_data_o;
  assign v1_data_o = v0_en_i & v0_data_i;
endmodule


module \$paramod\bsg_level_shift_up_down_source\width_p=s32'00000000000000000000000000000101 (v0_en_i, v0_data_i, v1_data_o);
  
  input [4:0] v0_data_i;
  wire [4:0] v0_data_i;
  
  input v0_en_i;
  wire v0_en_i;
  
  output [4:0] v1_data_o;
  wire [4:0] v1_data_o;
  assign v1_data_o[0] = v0_en_i & v0_data_i[0];
  assign v1_data_o[1] = v0_data_i[1] & v0_en_i;
  assign v1_data_o[2] = v0_data_i[2] & v0_en_i;
  assign v1_data_o[3] = v0_data_i[3] & v0_en_i;
  assign v1_data_o[4] = v0_data_i[4] & v0_en_i;
endmodule

(* top =  1  *)

module bsg_fsb_node_level_shift_fsb_domain(en_ls_i, clk_i, reset_i, clk_o, reset_o, fsb_v_i_o, fsb_data_i_o, fsb_yumi_o_i, fsb_v_o_i, fsb_data_o_i, fsb_ready_i_o, node_v_i_o, node_data_i_o, node_ready_o_i, node_v_o_i, node_data_o_i, node_yumi_i_o);
  
  input clk_i;
  wire clk_i;
  
  output clk_o;
  wire clk_o;
  
  input en_ls_i;
  wire en_ls_i;
  
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
  
  output reset_o;
  wire reset_o;
  (* module_not_derived = 32'd1 *)
  
  \$paramod\bsg_level_shift_up_down_source\width_p=s32'00000000000000000000000000000001  clk_ls_inst (
    .v0_data_i(clk_i),
    .v0_en_i(1'h1),
    .v1_data_o(clk_o)
  );
  (* module_not_derived = 32'd1 *)
  
  \$paramod\bsg_level_shift_up_down_source\width_p=s32'00000000000000000000000000000101  f2n_data_ls_inst (
    .v0_data_i(fsb_data_o_i),
    .v0_en_i(en_ls_i),
    .v1_data_o(node_data_i_o)
  );
  (* module_not_derived = 32'd1 *)
  
  \$paramod\bsg_level_shift_up_down_source\width_p=s32'00000000000000000000000000000001  f2n_v_ls_inst (
    .v0_data_i(fsb_v_o_i),
    .v0_en_i(en_ls_i),
    .v1_data_o(node_v_i_o)
  );
  (* module_not_derived = 32'd1 *)
  
  \$paramod\bsg_level_shift_up_down_source\width_p=s32'00000000000000000000000000000001  f2n_yumi_ls_inst (
    .v0_data_i(fsb_yumi_o_i),
    .v0_en_i(en_ls_i),
    .v1_data_o(node_yumi_i_o)
  );
  (* module_not_derived = 32'd1 *)
  
  \$paramod\bsg_level_shift_up_down_sink\width_p=s32'00000000000000000000000000000101  n2f_data_ls_inst (
    .v0_data_i(node_data_o_i),
    .v1_data_o(fsb_data_i_o),
    .v1_en_i(en_ls_i)
  );
  (* module_not_derived = 32'd1 *)
  
  \$paramod\bsg_level_shift_up_down_sink\width_p=s32'00000000000000000000000000000001  n2f_ready_ls_inst (
    .v0_data_i(node_ready_o_i),
    .v1_data_o(fsb_ready_i_o),
    .v1_en_i(en_ls_i)
  );
  (* module_not_derived = 32'd1 *)
  
  \$paramod\bsg_level_shift_up_down_sink\width_p=s32'00000000000000000000000000000001  n2f_v_ls_inst (
    .v0_data_i(node_v_o_i),
    .v1_data_o(fsb_v_i_o),
    .v1_en_i(en_ls_i)
  );
  (* module_not_derived = 32'd1 *)
  
  \$paramod\bsg_level_shift_up_down_source\width_p=s32'00000000000000000000000000000001  reset_ls_inst (
    .v0_data_i(reset_i),
    .v0_en_i(1'h1),
    .v1_data_o(reset_o)
  );
endmodule

