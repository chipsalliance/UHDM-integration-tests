module top #(
    localparam paddr_width_p = 2
) (
);
    typedef struct packed
    {
      logic [paddr_width_p-1:0]      addr;
    } test_struct_t;

    typedef struct packed
    {
      logic [$bits(test_struct_t)-1:0] pad;
    }  test_struct2_t;

endmodule
