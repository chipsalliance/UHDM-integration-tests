module top(output logic [7:0] o);
   logic [7:0] a = '{4{0, 1}};
   logic [7:0] b = '{2{0, 0, 1, 1}};
   logic [7:0] c = {4'b0000, 4'b1111};

   // implication associate right to left
   initial begin
      for (int i = 0; i < 8; i++)
         o[i] = a[i] -> b[i] -> c[i];
   end
endmodule
