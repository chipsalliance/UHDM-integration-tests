/* Generated by Yosys 0.30+16 (git sha1 8b2a00102, gcc 11.3.0-1ubuntu1~22.04.1 -fPIC -Os) */

module bsg_binary_plus_one_to_gray(binary_i, gray_o);
  input [15:0] binary_i;
  wire [15:0] binary_i;
  wire [15:0] binary_scan;
  wire [15:0] edge_detect;
  output [15:0] gray_o;
  wire [15:0] gray_o;
  wire [15:0] \scan_and.i ;
  wire [15:0] \scan_and.o ;
  wire [15:0] \scan_and.scanN.row[0].fill ;
  wire [15:0] \scan_and.scanN.row[0].shifted ;
  wire [15:0] \scan_and.scanN.row[1].fill ;
  wire [15:0] \scan_and.scanN.row[1].shifted ;
  wire [15:0] \scan_and.scanN.row[2].fill ;
  wire [15:0] \scan_and.scanN.row[2].shifted ;
  wire [15:0] \scan_and.scanN.row[3].fill ;
  wire [15:0] \scan_and.scanN.row[3].shifted ;
  wire [79:0] \scan_and.t ;
  wire [16:0] temp;
  assign gray_o[0] = ~(binary_i[0] ^ binary_i[1]);
  assign gray_o[3] = binary_i[3] ^ binary_i[4];
  assign gray_o[4] = binary_i[5] ^ binary_i[4];
  assign gray_o[5] = binary_i[6] ^ binary_i[5];
  assign gray_o[6] = binary_i[7] ^ binary_i[6];
  assign gray_o[7] = binary_i[8] ^ binary_i[7];
  assign gray_o[8] = binary_i[9] ^ binary_i[8];
  assign gray_o[9] = binary_i[10] ^ binary_i[9];
  assign gray_o[10] = binary_i[11] ^ binary_i[10];
  assign gray_o[11] = binary_i[12] ^ binary_i[11];
  assign gray_o[12] = binary_i[13] ^ binary_i[12];
  assign gray_o[13] = binary_i[14] ^ binary_i[13];
  assign gray_o[14] = binary_i[15] ^ binary_i[14];
  assign gray_o[1] = binary_i[2] ^ binary_i[1];
  assign gray_o[2] = binary_i[2] ^ binary_i[3];
  assign binary_scan = 16'h0000;
  assign edge_detect = 16'h0001;
  assign gray_o[15] = binary_i[15];
  assign \scan_and.i  = binary_i;
  assign \scan_and.o  = 16'h0000;
  assign \scan_and.scanN.row[0].fill  = 16'hffff;
  assign \scan_and.scanN.row[0].shifted  = 16'h8000;
  assign \scan_and.scanN.row[1].fill  = 16'hffff;
  assign \scan_and.scanN.row[1].shifted  = 16'hc000;
  assign \scan_and.scanN.row[2].fill  = 16'hffff;
  assign \scan_and.scanN.row[2].shifted  = 16'hf000;
  assign \scan_and.scanN.row[3].fill  = 16'hffff;
  assign \scan_and.scanN.row[3].shifted  = 16'hff00;
  assign \scan_and.t  = 80'b0000000000000000000000000000000000000000000000000000000000000000000000000000000x;
  assign temp = 17'h00001;
endmodule
