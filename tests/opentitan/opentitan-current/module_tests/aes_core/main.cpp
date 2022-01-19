#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vaes_core.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vaes_core *top = new Vaes_core();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    std::cout << "time: " << main_time
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " rst_ni: " << (top->rst_ni ? 1 : 0)
      << std::endl;

    main_time += 1;
    top->clk_i = main_time & 1;
    top->rst_ni = main_time & 2;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
