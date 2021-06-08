#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_prince.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_prince *top = new Vprim_prince();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->valid_i = 0;
  top->dec_i = 0;

  top->data_i = 0xABCD;
  top->key_i[0] = 0x1234;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    std::cout << "time: " << main_time
              << " clk_i: " << (top->clk_i ? 1 : 0)
              << " rst_ni: " << (top->rst_ni ? 1 : 0)
              << " valid_i: " << (top->valid_i ? 1 : 0)
              << " data_i: " << top->data_i
              << " key_i: " << top->key_i
              << " dec_i: " << (top->dec_i ? 1 : 0)
              << " valid_o: " << (top->valid_o ? 1 : 0)
              << " data_o: " << top->data_o
              << std::endl;

    main_time += 1;

    top->clk_i = main_time & 1;
    top->rst_ni = main_time & 2;
    top->valid_i = main_time & 3;
    top->dec_i = main_time & 4;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
