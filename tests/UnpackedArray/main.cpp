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
  }
  std::cout << "o:" << std::endl;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 4; j++)
      std::cout << top->o[i][j] << " ";
    std::cout << std::endl;
  }

  top->final();
  tfp->close();
  delete top;

  return 0;
}
