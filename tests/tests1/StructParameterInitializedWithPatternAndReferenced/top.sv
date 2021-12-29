package my_pkg;
   typedef struct packed {
      logic [3:0] addr;
   } page_addr_t;

   parameter bit [1:0] SeedBank = 0;

   parameter page_addr_t SeedInfoPageSel = '{
      addr: {SeedBank, 2'b11}
   };
endpackage

module top(output int o);
   assign o = int'(my_pkg::SeedInfoPageSel);
endmodule // top
