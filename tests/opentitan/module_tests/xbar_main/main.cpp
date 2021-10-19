#include <iostream>
#include <bitset>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vxbar_main.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vxbar_main *top = new Vxbar_main();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_main_i = 0;
  top->rst_main_ni = 0;
  top->clk_fixed_i = 0;
  top->rst_fixed_ni = 0;

  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    std::cout << "time: " << main_time
      << " clk_main_i: " << (top->clk_main_i ? 1 : 0)
      << " rst_main_ni: " << (top->rst_main_ni ? 1 : 0)
      << " clk_fixed_i: " << (top->clk_fixed_i ? 1 : 0)
      << " rst_fixed_ni: " << (top->rst_fixed_ni ? 1 : 0)
      << std::endl;

    main_time += 1;
    top->clk_main_i = (bool)(main_time & 1);
    top->rst_main_ni = (bool)(main_time & 2);
    top->clk_fixed_i = (bool)(main_time & 4);
    top->rst_fixed_ni = (bool)(main_time & 8);
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
