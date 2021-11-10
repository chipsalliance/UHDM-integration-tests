#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_subreg_shadow.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_subreg_shadow *top = new Vprim_subreg_shadow();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->re = 0;
  top->we = 0;
  top->wd = 0x1234;
  top->de = 0;
  top->d = 0x5678;

  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    std::cout << "time: " << main_time
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " rst_ni: " << (top->rst_ni ? 1 : 0)
      << " re: " << (top->re ? 1 : 0)
      << " we: " << (top->we ? 1 : 0)
      << " de: " << (top->de ? 1 : 0)
      << " qe: " << (top->qe ? 1 : 0)
      << " q: " << (int) top->q
      << " qs: " << (int) top->qs
      << " err_update: " << (top->err_update ? 1 : 0)
      << " err_storage: " << (top->err_storage ? 1 : 0)
      << std::endl;

    main_time += 1;
    top->clk_i = main_time & 1;
    top->rst_ni = main_time & 2;
    top->re = main_time & 4;
    top->we = main_time & 8;
    top->de = main_time & 16;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
