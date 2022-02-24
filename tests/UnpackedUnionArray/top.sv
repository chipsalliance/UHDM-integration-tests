module top(output logic [3:0] o);
   typedef union {
      bit [7:0] v1;
      bit [3:0] v2;
   } my_union_t;

   initial begin
      my_union_t un [9:0];
      un[5].v1 = 8'hAB;
      o = un[5].v2;
   end
endmodule
