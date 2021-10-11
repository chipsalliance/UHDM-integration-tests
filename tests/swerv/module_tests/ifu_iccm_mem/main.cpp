#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vifu_iccm_mem.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vifu_iccm_mem *top = new Vifu_iccm_mem();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk = 0;
  top->free_clk = 0;
  top->rst_l = 0;
  top->clk_override = 0;

  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk = main_time & 1;
    top->free_clk = main_time & 2;
    top->rst_l = main_time & 4;
    top->clk_override = main_time & 8;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
