module top(input logic [2:0] s, output logic [1:0] y);
always_comb
 casez (s)
  3'b1?? : y = 2'b11;
  3'b01? : y = 2'b10;
  3'b001 : y = 2'b01;
  default : y= 2'b00;
 endcase
endmodule : top
