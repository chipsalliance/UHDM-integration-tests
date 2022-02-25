module top(output int o);
   genvar i;
   generate
      for (i = 0; i < 1; i = i + 1) begin : blk
	 wire [i:i] z = '1;
      end
   endgenerate

   assign o = $bits(blk[0].z);
endmodule
