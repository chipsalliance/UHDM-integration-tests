module bsg_array_concentrate_static(i, o);
  input [511:0] i;
  wire [511:0] i;
  output [255:0] o;
  wire [255:0] o;
  assign o = i[255:0];
endmodule
