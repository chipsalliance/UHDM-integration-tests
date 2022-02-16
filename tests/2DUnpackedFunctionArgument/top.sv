module top(output logic a);
   logic x [1:0][0:0] = '{'{1}, '{0}};

   function automatic logic my_func(logic arg [1:0][0:0]);
      return arg[1][0];
   endfunction

   assign a = my_func(x);
endmodule
