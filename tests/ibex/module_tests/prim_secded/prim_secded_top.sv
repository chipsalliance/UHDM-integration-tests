module prim_secded_top (
  input logic [21:0] in_22,
  output logic [21:0] d_o_28,
  output logic [5:0] syndrome_o_28,
  output logic [1:0] err_o_28,

  input logic [31:0] in_32,
  output logic [31:0] d_o_32,
  output logic [6:0] syndrome_o_32,
  output logic [1:0] err_o_32,

  input logic [63:0] in_64,
  output logic [63:0] d_o_72,
  output logic [7:0] syndrome_o_64,
  output logic [1:0] err_o_64
);

  logic [27:0] enc_28;
  prim_secded_28_22_enc enc1 (
    .in  ( in_22 ),
    .out ( enc_28)
  );
  prim_secded_28_22_dec dec1 (
    .in ( enc_28),
    .d_o ( d_o_28),
    .syndrome_o ( syndrome_o_28),
    .err_o ( err_o_28)
  );

  logic [38:0] enc_39;
  prim_secded_39_32_enc enc2 (
    .in ( in_32),
    .out ( enc_39)
  );
  prim_secded_39_32_dec dec2 (
    .in ( enc_39),
    .d_o ( d_o_32),
    .syndrome_o ( syndrome_o_32),
    .err_o ( err_o_32)
  );

  logic [71:0] enc_72;
  prim_secded_72_64_enc enc3 (
    .in ( in_64),
    .out ( enc_72)
  );
  prim_secded_72_64_dec dec3 (
    .in ( enc_72),
    .d_o ( d_o_72),
    .syndrome_o ( syndrome_o_64),
    .err_o ( err_o_64)
  );
endmodule
