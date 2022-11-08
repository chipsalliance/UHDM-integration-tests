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
              << " out_1: " << (int)top->out_1
              << " out_2: " << (int)top->out_2
              << " out_3: " << (int)top->out_3
              << " out_4: " << (int)top->out_4
              << " out_5: " << (int)top->out_5
              << " out_6: " << (int)top->out_6
              << " out_7: " << (int)top->out_7
              << " out_8: " << (int)top->out_8
              << " out_9: " << (int)top->out_9
              << " out_10: " << (int)top->out_10
              << " out_11: " << (int)top->out_11
              << " out_12: " << (int)top->out_12
              << " out_13: " << (int)top->out_13
              << " out_14: " << (int)top->out_14
              << " out_15: " << (int)top->out_15
              << " out_16: " << (int)top->out_16
              << " out_17: " << (int)top->out_17
              << " out_18: " << (int)top->out_18
              << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
