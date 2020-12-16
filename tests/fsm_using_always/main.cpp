#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vfsm_using_always.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vfsm_using_always *top = new Vfsm_using_always();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clock = 0;
  top->reset = 1;
  top->req_0 = 0;
  top->req_1 = 0;
  while (!Verilated::gotFinish() && (main_time < 101)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    if (!(main_time % 5)) {
      top->clock ^= 1;
    }

    if (main_time == 20) {
      top->reset = 0;
    }
    if (main_time == 27) {
      top->req_0 = 1;
    }
    if (main_time == 37) {
      top->req_0 = 0;
      top->req_1 = 1;
    }
    if (main_time == 47) {
      top->req_0 = 1;
    }
    if (main_time == 57) {
      top->req_0 = 0;
    }
    if (main_time == 87) {
      top->req_1 = 0;
    }

    std::cout << "time: " << main_time
      << " clock: " << (top->clock ? 1 : 0)
      << " reset: " << (top->reset ? 1 : 0)
      << " req_0: " << (top->req_0 ? 1 : 0)
      << " req_1: " << (top->req_1 ? 1 : 0)
      << " gnt_0: " << (top->gnt_0 ? 1 : 0)
      << " gnt_1: " << (top->gnt_1 ? 1 : 0)
      << std::endl;
  }
  top->final();
  tfp->close();
    delete top;

  return 0;
}
