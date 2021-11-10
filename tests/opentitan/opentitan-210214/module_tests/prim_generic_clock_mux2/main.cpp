#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_generic_clock_mux2.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_generic_clock_mux2 *top = new Vprim_generic_clock_mux2();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk0_i = 0;
  top->clk1_i = 1;
  top->sel_i = 0;
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk0_i ^= 1;

    if (main_time % 2)
      top->clk1_i ^= 1;

    if (!(main_time % 10))
      top->sel_i ^= 1;

    std::cout << "time: " << main_time
      << " clk0_i: " << (top->clk0_i ? 1 : 0)
      << " clk1_i: " << (top->clk1_i ? 1 : 0)
      << " sel_i: " << (top->sel_i ? 1 : 0)
      << " clk_o: " << (top->clk_o ? 1 : 0)
      << std::endl;

  }
  top->final();
  tfp->close();
    delete top;

  return 0;
}
