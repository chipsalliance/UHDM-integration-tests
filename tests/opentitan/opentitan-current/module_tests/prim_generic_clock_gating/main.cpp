#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_clock_gating.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_clock_gating *top = new Vprim_clock_gating();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
