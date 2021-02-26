#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vtop.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vtop *top = new Vtop();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk ^= 1;
    if (top->clk%2)
      top->wire_i ^= 1;
    std::cout << "Time: " << main_time
      << " clk: " << (top->clk ? 1 : 0)
      << " wire_i: "     << (top->wire_i ? 1 : 0)
      << " wire_o: "     << (top->wire_o ? 1 : 0)
      << " register_o: " << (top->register_o ? 1 : 0)
      << std::endl;

  }
  top->final();
  tfp->close();
    delete top;

  return 0;
}
