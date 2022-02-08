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

  while (!Verilated::gotFinish() && (main_time < 1024)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->tl_i[0] += 1;
    if (main_time > 255)
    top->tl_i[1] += 1;
    if (main_time > 512)
    top->tl_i[2] += 1;

    std::cout << "time: " << main_time
      << " tl_i[0]: " << top->tl_i[0]
      << " tl_i[1]: " << top->tl_i[1]
      << " tl_i[2]: " << top->tl_i[2]
      << " tl_o[0]: " << top->tl_o[0]
      << " tl_o[1]: " << top->tl_o[1]
      << " tl_o[2]: " << top->tl_o[2]
      << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
