#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_generic_flop.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_generic_flop *top = new Vprim_generic_flop();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->d_i = 0;
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    top->clk_i ^= 1;
    if (main_time > 10)
      top->rst_ni = 1;
    if (main_time%2)
      top->d_i ^= 1;

    main_time += 1;
  }
  top->final();
  tfp->close();
    delete top;

  return 0;
}
