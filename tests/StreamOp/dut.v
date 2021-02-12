module dut;
  logic[31:0] x;
  logic[31:0] y;
  logic[31:0] a;
  logic[31:0] b;
  logic[63:0] c;

  initial begin
     x = { 8'd23, 8'd42, 8'd127, 8'd255 };
     a = { << 8 {x} };
  end

  assign y = { 8'd255, 8'd127, 8'd42, 8'd23 };
  assign b = { << 8 {y} };

  // Add once supported by Surelog (https://github.com/alainmarcel/Surelog/issues/1067):
  //logic[63:0] c;
  //assign c = { << 8 {x, y} };
  // { >> {} } is the same as concat
  //logic[63:0] d;
  //assign d = { 8 >> {x, y} };

endmodule
