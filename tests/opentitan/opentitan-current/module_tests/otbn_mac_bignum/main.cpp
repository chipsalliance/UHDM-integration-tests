#include <iostream>
#include <bitset>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Votbn_mac_bignum.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Votbn_mac_bignum *top = new Votbn_mac_bignum();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->operation_i[0] = 0x1234;
  top->operation_i[8] = 0x5678;
  top->operation_i[16] = 0x9ABC;
  top->ispr_acc_wr_data_i[0] = 0xDEF0;
  top->ispr_acc_wr_en_i = 1;
  top->mac_en_i = 1;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i ^= 1;
    if (main_time > 10)
      top->rst_ni = 1;

    std::cout << "time: " << main_time
              << " clk_i: " << (top->clk_i ? 1 : 0)
              << " rst_ni: " << (top->rst_ni ? 1 : 0)
              << " operation_result_o: " << (int)top->operation_result_o[0]
              << " ispr_acc_o: " << (int)top->ispr_acc_o[0]
              << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
