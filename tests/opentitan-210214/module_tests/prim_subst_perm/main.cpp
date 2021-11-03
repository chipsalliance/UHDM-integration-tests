#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_subst_perm.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_subst_perm *top = new Vprim_subst_perm();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->data_i = 0xABCD;
  top->key_i = 0x1234;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    std::cout << "time: " << main_time
              << " data_i: " << top->data_i
              << " key_i: " << top->key_i
              << " data_o: " << top->data_o
              << std::endl;

    main_time += 1;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
