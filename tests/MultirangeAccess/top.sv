typedef logic [3:0][7:0] my_struct_packed_t;

module top (
    input  my_struct_packed_t x,
    output my_struct_packed_t y
);
   assign y[2][1] = x[1][0];
endmodule : top
