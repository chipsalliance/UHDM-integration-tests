module top(input logic [2:0] s, output logic [1:0] y);
always_comb
 casex (s)
  3'bxx1  : y  = 2'b01;
  3'b01x  : y  = 2'b10;
  3'b001  : y  = 2'b11;
  default : y  = 2'b00;
endcase
endmodule : top
