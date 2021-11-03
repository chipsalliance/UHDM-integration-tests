#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_lc_sync.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_lc_sync *top = new Vprim_lc_sync();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->lc_en_i = 0;
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i ^= 1;
    if (main_time > 10)
      top->rst_ni = 1;
    if (top->clk_i % 2)
      top->lc_en_i ^= 1;

    std::cout << "time: " << main_time
      << " rst_ni: " << (top->rst_ni ? 1 : 0)
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " lc_en_i: " << (int)top->lc_en_i
      << " lc_en_o: " << (int)top->lc_en_o
      << std::endl;

  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
