#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_diff_decode.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_diff_decode *top = new Vprim_diff_decode();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->diff_pi = 0;
  top->diff_ni = 0;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i = (bool)(main_time & 1);
    top->rst_ni = (bool)(main_time & 2);
    top->diff_pi = (bool)(main_time & 4);
    top->diff_ni = (bool)(main_time & 8);

    std::cout << "time: " << main_time
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " rst_ni: " << (top->rst_ni ? 1 : 0)
      << " diff_pi: " << (top->diff_pi ? 1 : 0)
      << " diff_ni: " << (top->diff_ni ? 1 : 0)
      << " level_o: " << (top->level_o ? 1 : 0)
      << " rise_o: " << (top->rise_o ? 1 : 0)
      << " fall_o: " << (top->fall_o ? 1 : 0)
      << " event_o: " << (top->event_o ? 1 : 0)
      << " sigint_o: " << (top->sigint_o ? 1 : 0)
      << std::endl;

  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
