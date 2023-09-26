module bsg_concentrate_static(i, o);
  input [31:0] i;
  wire [31:0] i;
  output [12:0] o;
  wire [12:0] o;
  assign o = { i[15:13], i[11:10], i[8:7], i[5:0] };
endmodule
