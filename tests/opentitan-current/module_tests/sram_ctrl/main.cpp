#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vsram_ctrl.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vsram_ctrl *top = new Vsram_ctrl();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->clk_otp_i = 0;
  top->rst_otp_ni = 0;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i = (bool)(main_time & 1);
    top->rst_ni = (bool)(main_time & 2);
    top->clk_otp_i = (bool)(main_time & 4);
    top->rst_otp_ni = (bool)(main_time & 8);
    
    std::cout << "time: " << main_time
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " rst_ni: " << (top->rst_ni ? 1 : 0)
      << " clk_otp_i: " << (top->clk_otp_i ? 1 : 0)
      << " rst_otp_ni: " << (top->rst_otp_ni ? 1 : 0)
      << std::endl;

  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
