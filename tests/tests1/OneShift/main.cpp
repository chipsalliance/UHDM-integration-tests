#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vdut.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vdut *top = new Vdut();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->a = 0;
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;

    // Test AND logic
    if (!(main_time % 10)) {
      top->a += 1;
    }


    std::cout << "time: " << main_time
      << " a: " << (top->a ? 1 : 0)
      << " o: " << (top->o ? 1 : 0)
      << std::endl;
  }
  top->final();
  tfp->close();
    delete top;

  return 0;
}
