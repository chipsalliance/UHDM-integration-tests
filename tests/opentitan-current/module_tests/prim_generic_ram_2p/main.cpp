#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_generic_ram_2p.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_generic_ram_2p *top = new Vprim_generic_ram_2p();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_a_i = 0;
  top->clk_b_i = 1;
  
  top->a_addr_i = 1;
  top->a_req_i = 1;
  top->a_write_i = 1;
  top->a_wdata_i = 0;
  top->a_wmask_i = 0xFFFFFFFF;
  
  top->b_addr_i = 1;
  top->b_req_i = 1;
  top->b_write_i = 0;
  top->b_wdata_i = 0;
  top->b_wmask_i = 0xFFFFFFFF;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    std::cout << "time: " << main_time
              << " clk_a_i: " << (top->clk_a_i ? 1 : 0)
              << " clk_b_i: " << (top->clk_b_i ? 1 : 0)
              << " a_write_i: " << (top->a_write_i ? 1 : 0)
              << " b_write_i: " << (top->b_write_i ? 1 : 0)
              << " a_wdata_i: " << top->a_wdata_i
              << " b_wdata_i: " << top->b_wdata_i
              << " a_rdata_o: " << top->a_rdata_o
              << " b_rdata_o: " << top->b_rdata_o
              << std::endl;

    main_time += 1;

    top->clk_a_i = main_time & 1;
    top->clk_b_i = main_time & 2;

    top->a_write_i = main_time & 3;
    top->b_write_i = main_time & 4;

    top->a_wdata_i = main_time;
    top->b_wdata_i = main_time * 2;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
