#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_edn_req.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_edn_req *top = new Vprim_edn_req();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->req_i = 0;
  top->clk_edn_i = 0;
  top->rst_edn_ni = 0;

  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    std::cout << "time: " << main_time
              << " clk_i: " << (top->clk_i ? 1 : 0)
              << " rst_ni: " << (top->rst_ni ? 1 : 0)
              << " req_i: " << (top->req_i ? 1 : 0)
              << " clk_edn_i: " << (top->clk_edn_i ? 1 : 0)
              << " rst_edn_ni: " << (top->rst_edn_ni ? 1 : 0)
              << " data_o: " << (int) top->data_o
              << std::endl;

    main_time += 1;
    top->clk_i = main_time & 1;
    top->rst_ni = main_time & 2;
    top->req_i = main_time & 4;
    top->clk_edn_i = main_time & 8;
    top->rst_edn_ni = main_time & 16;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
