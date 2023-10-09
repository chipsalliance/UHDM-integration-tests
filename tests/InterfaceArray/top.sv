interface sim_sram_if;   
   int start_addr = 32'h12345678;
endinterface

module top(output int o);
   sim_sram_if u_sim_sram_if[9:0]();
   assign o = u_sim_sram_if[9].start_addr;
endmodule // top
