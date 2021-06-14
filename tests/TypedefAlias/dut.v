package pkg;
  typedef enum logic[7:0] {
    ONE,
    TWO,
    THREE
  } enum_t;

  typedef enum_t alias_t;

  typedef struct packed {
     logic[7:0] x;
  } struct_t;

  typedef struct_t second_alias_t;

  typedef logic [7:0] third_alias_t;
endpackage;

module dut (input pkg::enum_t a, output pkg::alias_t b);
   pkg::second_alias_t c;
   pkg::third_alias_t d;
   assign c = a;
   assign d = c;
   assign b = d;
endmodule
