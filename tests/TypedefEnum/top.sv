package pkg;
   typedef enum logic {
      x = 1
   } a;
   typedef a b;
endpackage
   
module top(output pkg::b o);
   assign o = pkg::x;
endmodule   
