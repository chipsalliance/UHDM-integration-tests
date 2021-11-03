#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_buf.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_buf *top = new Vprim_buf();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->in_i = 0;
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->in_i ^= 1;

    std::cout << "time: " << main_time
      << " in_i: " << (top->in_i ? 1 : 0)
      << " out_o: " << (top->out_o ? 1 : 0)
      << std::endl;

  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
