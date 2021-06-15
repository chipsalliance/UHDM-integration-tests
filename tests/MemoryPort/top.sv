module top(output logic [31:0] a [10]);
  logic [31:0] b;
  for(genvar i = 0; i < 10; i++) begin
     assign a[i] = i;
  end
  assign b = a[9]; //b should == 9
  always_comb begin
    assert(b == 32'b00000000000000000000000000001001);
  end
endmodule
