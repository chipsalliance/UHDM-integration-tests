package pkg; // verilog_lint: waive package-filename

  parameter int J = 3;
  parameter int K = 2;

  typedef struct packed {
    logic a;
    logic b;
    logic c;
  } my_packed_struct_t;

  typedef union packed {
    my_packed_struct_t [K:0][J:0] my_array;
    my_packed_struct_t [K:0][J:0] my_array2;
  } my_packed_struct_with_array_t;

endpackage : pkg

module top;
endmodule : top
