#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_generic_clock_inv.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_generic_clock_inv *top = new Vprim_generic_clock_inv();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->scanmode_i = 0;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i = (bool)(main_time & 1);
    top->scanmode_i = (bool)(main_time & 2);

    std::cout << "time: " << main_time
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " scanmode_i: " << (top->scanmode_i ? 1 : 0)
      << " clk_no: " << (top->clk_no ? 1 : 0)
      << std::endl;

  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
