module top #(
parameter int unsigned      PMPNumRegions     = 4,
parameter int unsigned      DEPTH     = 8
)(
input logic [33:0]            csr_pmp_addr_o [PMPNumRegions],
input logic [31:0]            packed_port,
input logic [7:0]             h_array [2],
input logic                   i
);
logic [7:0] a, b, c;
logic [DEPTH-1:0] [7:0]  d;
logic [3:0] e;
logic [7:0] d_array[0:3];
logic [7:0] e_array[3:0];
logic [7:0] f_array [2];
logic [7:0] g_array [2];

logic [7:0] mult_array_a[3:0][3:0];
logic [7:0] mult_array_b[3:0][3:0];
logic [7:0] mult_array_c[3:0][3:0];
logic [7:0] mult_array_d[3:0][3:0];

logic packed_mult_array_a[3:0][3:0];
logic packed_mult_array_b[3:0][3:0];

assign a = 8'hf0;
assign b[0] = 1'b1;
assign c[7:4] = 4'hf;
assign d[0] = 8'hF;
assign e = 1'b1 ? {d[0][2:0], 1'b1} : {d[1][2:0], 1'b0};

assign d_array[3] = 8'hF;
assign e_array[0] = 8'hF;
assign f_array[0] = 8'hF;
assign f_array[1] = 8'hE;
assign g_array = f_array;

if (1'b1 == 1'b1) begin : test
  logic [7:0] i_array [2];
  assign i_array = h_array;
end

assign mult_array_a[3][3][3:0] = 4'b0101;
assign mult_array_b[3][3] = '{8'h0f};
assign mult_array_c[3] =    '{8'h0c, 8'h0d, 8'h0e, 8'h0f};
assign mult_array_d =       '{'{8'h00, 8'h01, 8'h02, 8'h03},
                              '{8'h04, 8'h05, 8'h06, 8'h07},
                              '{8'h08, 8'h09, 8'h0a, 8'h0b},
                              '{8'h0c, 8'h0d, 8'h0e, 8'h0f}};

assign packed_mult_array_a    = 16'h4321;
assign packed_mult_array_b[0] = 4'b0000;
assign packed_mult_array_b[1] = 4'b0001;
assign packed_mult_array_b[2] = 4'b0010;
assign packed_mult_array_b[3] = 4'b0100;

for (genvar i = 0; i < PMPNumRegions; i++) begin : g_pmp_csrs
  assign csr_pmp_addr_o[i] = '1;
end

assign packed_port[0] = 1'b1;

always_comb begin

  assert(a == 8'hf0);
  assert(b[0] == 1'b1);
  assert(c[7:4] == 4'hf);
  assert(d[0] == 8'hF);
  assert(d[0][3:0] == 4'b1111);
  assert(e == 4'b1111);

  assert(d_array[3] == 8'hF);
  assert(e_array[0] == 8'hF);
  assert(f_array[0] == 8'hF);
  assert(f_array[1] == 8'hE);
  assert(g_array == f_array);
  assert(test.i_array == h_array);

  assert(mult_array_a[3][3][3:0] == 4'b0101 );
  assert(mult_array_b[3][3]      == '{8'h0f});
  assert(mult_array_c[3] == '{8'h0c, 8'h0d, 8'h0e, 8'h0f});
  assert(mult_array_d == '{'{8'h00, 8'h01, 8'h02, 8'h03},
                         '{8'h04, 8'h05, 8'h06, 8'h07},
                         '{8'h08, 8'h09, 8'h0a, 8'h0b},
                         '{8'h0c, 8'h0d, 8'h0e, 8'h0f}});

  assert(packed_mult_array_a == 16'h4321);
  assert(packed_mult_array_b[0] == 4'b0000);
  assert(packed_mult_array_b[1] == 4'b0001);
  assert(packed_mult_array_b[2] == 4'b0010);
  assert(packed_mult_array_b[3] == 4'b0100);

  assert(csr_pmp_addr_o[0] == '1);
  assert(csr_pmp_addr_o[1] == '1);
  assert(csr_pmp_addr_o[2] == '1);

  assert(packed_port[0] == 1'b1);

end

endmodule
