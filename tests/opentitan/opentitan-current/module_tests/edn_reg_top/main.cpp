#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vedn_reg_top.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vedn_reg_top *top = new Vedn_reg_top();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;

  while (!Verilated::gotFinish() && (main_time < 1000)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i ^= 1;
    if (main_time > 10)
      top->rst_ni = 1;

    top->tl_i[0] += 1;
    top->tl_i[1] += 1;
    top->tl_i[2] += 1;
    top->tl_i[3] += 1;
    top->hw2reg += 1;

    std::cout << "time: " << main_time
      << " rst_ni: " << (top->rst_ni ? 1 : 0)
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " tl_i[0]: " << top->tl_i[0]
      << " tl_o: " << top->tl_o[0]
      << " tl_o: " << top->tl_o[1]
      << " tl_o: " << top->tl_o[2]
      << " tl_o: " << top->tl_o[3]
      << " hw2reg: " << top->hw2reg
      << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
