/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */


module \$paramod\bsg_decode\num_out_p=s32'00000000000000000000000000010000 (i, o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  
  input [3:0] i;
  wire [3:0] i;
  
  output [15:0] o;
  wire [15:0] o;
  assign _00_ = ~i[3];
  assign _01_ = i[0] | i[1];
  assign _02_ = _01_ | i[2];
  assign o[0] = _00_ & ~(_02_);
  assign _03_ = i[1] | ~(i[0]);
  assign _04_ = _03_ | i[2];
  assign o[1] = _00_ & ~(_04_);
  assign _05_ = i[0] | ~(i[1]);
  assign _06_ = _05_ | i[2];
  assign o[2] = _00_ & ~(_06_);
  assign _07_ = ~(i[0] & i[1]);
  assign _08_ = _07_ | i[2];
  assign o[3] = _00_ & ~(_08_);
  assign _09_ = ~i[2];
  assign _10_ = _01_ | _09_;
  assign o[4] = _00_ & ~(_10_);
  assign _11_ = _03_ | _09_;
  assign o[5] = _00_ & ~(_11_);
  assign _12_ = _05_ | _09_;
  assign o[6] = _00_ & ~(_12_);
  assign _13_ = _07_ | _09_;
  assign o[7] = _00_ & ~(_13_);
  assign o[8] = i[3] & ~(_02_);
  assign o[9] = i[3] & ~(_04_);
  assign o[10] = i[3] & ~(_06_);
  assign o[11] = i[3] & ~(_08_);
  assign o[12] = i[3] & ~(_10_);
  assign o[13] = i[3] & ~(_11_);
  assign o[14] = i[3] & ~(_12_);
  assign o[15] = i[3] & ~(_13_);
endmodule

(* top =  1  *)

module bsg_decode_with_v(i, v_i, o);
  
  input [3:0] i;
  wire [3:0] i;
  
  wire [15:0] lo;
  
  output [15:0] o;
  wire [15:0] o;
  
  input v_i;
  wire v_i;
  assign o[0] = lo[0] & v_i;
  assign o[1] = lo[1] & v_i;
  assign o[2] = lo[2] & v_i;
  assign o[3] = lo[3] & v_i;
  assign o[4] = lo[4] & v_i;
  assign o[5] = lo[5] & v_i;
  assign o[6] = lo[6] & v_i;
  assign o[7] = lo[7] & v_i;
  assign o[8] = lo[8] & v_i;
  assign o[9] = lo[9] & v_i;
  assign o[10] = lo[10] & v_i;
  assign o[11] = lo[11] & v_i;
  assign o[12] = lo[12] & v_i;
  assign o[13] = lo[13] & v_i;
  assign o[14] = lo[14] & v_i;
  assign o[15] = lo[15] & v_i;
  (* module_not_derived = 32'd1 *)
  
  \$paramod\bsg_decode\num_out_p=s32'00000000000000000000000000010000  bd (
    .i(i),
    .o(lo)
  );
endmodule

