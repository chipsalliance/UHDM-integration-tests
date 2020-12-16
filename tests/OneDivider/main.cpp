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

  top->clk = 0;
  top->rstn = 0;
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;

    if (main_time == 35)
      top->rstn = 1;

    if (!(main_time%10))
      top->clk ^= 1;

    std::cout << "time: " << main_time
      << " rstn: " << (top->rstn ? 1 : 0)
      << " clk: " << (top->clk ? 1 : 0)
      << " div: " << (top->div?1:0)
      << std::endl;
  }
  top->final();
  tfp->close();
    delete top;

  return 0;
}
