#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_subreg.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_subreg *top = new Vprim_subreg();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->rst_ni = 0;
  top->clk_i = 0;
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i ^= 1;

    if (main_time > 10)
      top->rst_ni = 1;
      top->wd += 1;
      top->we ^= 1;

    if (main_time > 80)
      top->d += 1;
      top->de ^= 1;

    std::cout << std::dec
      << "time: "    << main_time
      << " clk_i: "  << (int)top->clk_i
      << std::hex
      << " rst_ni: " << (int)top->rst_ni
      << " wd: "     << top->wd
      << " we: "     << (int)top->we
      << " d: "      << top->d
      << " de: "     << (int)top->de
      << " qe: "     << (int)top->qe
      << " q: "      << top->q
      << " qs: "     << top->qs
      << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
