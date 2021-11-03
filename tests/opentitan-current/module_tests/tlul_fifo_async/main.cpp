#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vtlul_fifo_async.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vtlul_fifo_async *top = new Vtlul_fifo_async();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_h_i = 1;
  top->rst_h_ni = 0;
  top->clk_d_i = 0;
  top->rst_d_ni = 0;
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_h_i ^= 1;
    top->clk_d_i ^= 1;

    if (main_time > 10) {
      top->rst_h_ni = 1;
      top->rst_d_ni = 1;
    }
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
