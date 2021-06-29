module top(output logic o);
   struct packed {
      logic [0:0] b;
   } a;

   assign a.b[0] = 1;

   assign o = a.b[0+:1];

endmodule
