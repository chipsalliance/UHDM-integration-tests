#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_ram_1p_scr.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_ram_1p_scr *top = new Vprim_ram_1p_scr();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->key_valid_i = 0;

  top->key_i[0] = 0x1234;
  top->nonce_i = 0x5678;
  top->wdata_i = 0xABCD;
  top->addr_i = 0x2222;
  top->cfg_i = 0;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    std::cout << "time: " << main_time
              << " clk_i: " << (top->clk_i ? 1 : 0)
              << " rst_ni: " << (top->rst_ni ? 1 : 0)
              << " key_valid_i: " << (top->key_valid_i ? 1 : 0)
              << " wdata_i: " << top->wdata_i
              << " key_i: " << top->key_i[0]
              << " cfg_i: " << (top->cfg_i ? 1 : 0)
              << " gnt_o: " << (top->gnt_o ? 1 : 0)
              << " rvalid_o: " << (top->rvalid_o ? 1 : 0)
              << " rdata_o: " << top->rdata_o
              << std::endl;

    main_time += 1;

    top->clk_i = main_time & 1;
    top->rst_ni = main_time & 2;
    top->key_valid_i = main_time & 3;
    top->cfg_i = main_time & 4;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
