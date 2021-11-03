#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_clock_gating_sync.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_clock_gating_sync *top = new Vprim_clock_gating_sync();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->test_en_i = 0;
  top->async_en_i = 0;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i = (bool)(main_time & 1);
    top->rst_ni = (bool)(main_time & 2);
    top->test_en_i = (bool)(main_time & 4);
    top->async_en_i = (bool)(main_time & 8);
    
    std::cout << "time: " << main_time
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " rst_ni: " << (top->rst_ni ? 1 : 0)
      << " test_en_i: " << (top->test_en_i ? 1 : 0)
      << " async_en_i: " << (top->async_en_i ? 1 : 0)
      << " en_o: " << (top->en_o ? 1 : 0)
      << " clk_o: " << (top->clk_o ? 1 : 0)
      << std::endl;

  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
