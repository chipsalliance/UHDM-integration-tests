module top(output [3:0] b);
   reg [7:0] a;
   assign a = 8'h0F;
   assign b = a[2+:4];
endmodule
