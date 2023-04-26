/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */


module \$paramod$6566df952032f0f7569efece42babe0c1f2fc313\bsg_circular_ptr (clk, reset_i, add_i, o, n_o);
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
  
  input add_i;
  wire add_i;
  
  input clk;
  wire clk;
  
  output [5:0] n_o;
  wire [5:0] n_o;
  
  output [5:0] o;
  wire [5:0] o;
  
  wire [5:0] ptr_n;
  
  reg [5:0] ptr_r;
  
  input reset_i;
  wire reset_i;
  assign n_o[0] = add_i ^ ptr_r[0];
  assign _00_ = ptr_r[1] ^ ptr_r[0];
  assign n_o[1] = add_i ? _00_ : ptr_r[1];
  assign _01_ = ~(ptr_r[1] & ptr_r[0]);
  assign _02_ = ~(_01_ ^ ptr_r[2]);
  assign n_o[2] = add_i ? _02_ : ptr_r[2];
  assign _03_ = ptr_r[2] & ~(_01_);
  assign _04_ = _03_ ^ ptr_r[3];
  assign n_o[3] = add_i ? _04_ : ptr_r[3];
  assign _05_ = ~(ptr_r[3] & ptr_r[2]);
  assign _06_ = _05_ | _01_;
  assign _07_ = ~(_06_ ^ ptr_r[4]);
  assign n_o[4] = add_i ? _07_ : ptr_r[4];
  assign _08_ = ptr_r[4] & ~(_06_);
  assign _09_ = _08_ ^ ptr_r[5];
  assign n_o[5] = add_i ? _09_ : ptr_r[5];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk)
    if (reset_i) ptr_r[0] <= 1'h0;
    else ptr_r[0] <= n_o[0];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk)
    if (reset_i) ptr_r[1] <= 1'h0;
    else ptr_r[1] <= n_o[1];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk)
    if (reset_i) ptr_r[2] <= 1'h0;
    else ptr_r[2] <= n_o[2];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk)
    if (reset_i) ptr_r[3] <= 1'h0;
    else ptr_r[3] <= n_o[3];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk)
    if (reset_i) ptr_r[4] <= 1'h0;
    else ptr_r[4] <= n_o[4];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk)
    if (reset_i) ptr_r[5] <= 1'h0;
    else ptr_r[5] <= n_o[5];
  assign o = ptr_r;
  assign ptr_n = n_o;
endmodule

(* top =  1  *)

module bsg_fifo_tracker(clk_i, reset_i, enq_i, deq_i, wptr_r_o, rptr_r_o, rptr_n_o, full_o, empty_o);
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
  
  input clk_i;
  wire clk_i;
  
  input deq_i;
  wire deq_i;
  
  reg deq_r;
  
  wire empty;
  
  output empty_o;
  wire empty_o;
  
  input enq_i;
  wire enq_i;
  
  reg enq_r;
  
  wire full;
  
  output full_o;
  wire full_o;
  
  input reset_i;
  wire reset_i;
  
  wire [5:0] rptr_n;
  
  output [5:0] rptr_n_o;
  wire [5:0] rptr_n_o;
  
  wire [5:0] rptr_r;
  
  output [5:0] rptr_r_o;
  wire [5:0] rptr_r_o;
  
  wire [5:0] wptr_r;
  
  output [5:0] wptr_r_o;
  wire [5:0] wptr_r_o;
  assign _00_ = wptr_r[0] ^ rptr_r[0];
  assign _01_ = wptr_r[1] ^ rptr_r[1];
  assign _02_ = _01_ | _00_;
  assign _03_ = wptr_r[2] ^ rptr_r[2];
  assign _04_ = wptr_r[3] ^ rptr_r[3];
  assign _05_ = _04_ | _03_;
  assign _06_ = _05_ | _02_;
  assign _07_ = wptr_r[4] ^ rptr_r[4];
  assign _08_ = wptr_r[5] ^ rptr_r[5];
  assign _09_ = _08_ | _07_;
  assign _10_ = _09_ | _06_;
  assign empty_o = deq_r & ~(_10_);
  assign full_o = enq_r & ~(_10_);
  assign _11_ = deq_i | enq_i;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (reset_i) enq_r <= 1'h0;
    else if (_11_) enq_r <= enq_i;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (reset_i) deq_r <= 1'h1;
    else if (_11_) deq_r <= deq_i;
  (* module_not_derived = 32'd1 *)
  
  \$paramod$6566df952032f0f7569efece42babe0c1f2fc313\bsg_circular_ptr  rptr (
    .add_i(deq_i),
    .clk(clk_i),
    .n_o(rptr_n),
    .o(rptr_r),
    .reset_i(reset_i)
  );
  (* module_not_derived = 32'd1 *)
  
  \$paramod$6566df952032f0f7569efece42babe0c1f2fc313\bsg_circular_ptr  wptr (
    .add_i(enq_i),
    .clk(clk_i),
    .o(wptr_r),
    .reset_i(reset_i)
  );
  assign empty = empty_o;
  assign full = full_o;
  assign rptr_n_o = rptr_n;
  assign rptr_r_o = rptr_r;
  assign wptr_r_o = wptr_r;
endmodule

