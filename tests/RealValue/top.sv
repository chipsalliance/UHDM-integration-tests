module top(output a);
   real b = 0.5;
   if (b + b == 1)
      assign a = 1;
   else
      assign a = 0;
endmodule
