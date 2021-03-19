module top;

typedef struct packed {
  logic        q;
} type_t;

typedef struct packed {
  type_t [7:0] array;
} array_t;

endmodule
