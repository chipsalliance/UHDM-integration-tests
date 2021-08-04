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
  std::cout << "i: " << (int) top->i
            << " j: " << (int) top->j
            << " k: " << (int) top->k
            << " l_r: " << (int) top->l_r
            << " l_th: " << (int) top->l_th
            << " m1: " << (int) top->m1
            << " m2: " << (int) top->m2
            << " m3: " << (int) top->m3
            << " n: " << (int) top->n
            << std::endl;

  top->final();
  tfp->close();
  delete top;

  return 0;
}
