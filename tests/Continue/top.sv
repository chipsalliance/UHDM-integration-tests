module top(output int o);
   initial begin
      o = 0;
      repeat(15) begin
	 if(o > 100)
            continue;
         o += 10;
      end
   end
endmodule
