#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_otp.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_otp *top = new Vprim_otp();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->cmd_i = 0;
  top->addr_i = 1;
  top->wdata_i = 1;

  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    std::cout << "time: " << main_time
              << " clk_i: " << (top->clk_i ? 1 : 0)
              << " rst_ni: " << (top->rst_ni ? 1 : 0)
              << " cmd_i: " << (top->cmd_i ? 1 : 0)     
              << " wdata_i: " << top->wdata_i
              << " rdata_o: " << top->rdata_o
              << " err_o: " << (top->err_o ? 1 : 0)
              << std::endl;

    main_time += 1;

    top->clk_i = main_time & 1;
    top->rst_ni = main_time & 2;
    top->cmd_i = main_time & 3;
    top->wdata_i = main_time;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
