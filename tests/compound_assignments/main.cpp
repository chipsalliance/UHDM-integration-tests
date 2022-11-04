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

    std::cout << "time: " << main_time
              << " a: " << (int)top->a
              << " b: " << (int)top->b
              << " c: " << (int)top->c
              << " d: " << (int)top->d
              << " e: " << (int)top->e
              << " f: " << (int)top->f
              << " g: " << (int)top->g
              << " h: " << (int)top->h
              << " i: " << (int)top->i
              << " j: " << (int)top->j
              << " k: " << (int)top->k
              << " l: " << (int)top->l
              << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
