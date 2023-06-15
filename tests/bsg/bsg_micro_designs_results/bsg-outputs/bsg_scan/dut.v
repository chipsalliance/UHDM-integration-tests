module bsg_scan(i, o);
  input [15:0] i;
  wire [15:0] i;
  output [15:0] o;
  wire [15:0] o;
  wire [14:0] \scanN.row[0].shifted ;
  wire [79:0] t;
  assign o = 16'hxxxx;
  assign \scanN.row[0].shifted  = i[15:1];
  assign t = { 64'hxxxxxxxxxxxxxxxx, i };
endmodule
