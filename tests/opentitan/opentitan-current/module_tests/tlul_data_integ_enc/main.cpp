#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vtlul_data_integ_enc.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vtlul_data_integ_enc *top = new Vtlul_data_integ_enc();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  while (!Verilated::gotFinish() && (main_time < 1024)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->data_i += 1;

    std::cout << "time: " << main_time
      << " data_i: " << (int)top->data_i
      << " data_intg_o: " << (int)top->data_intg_o
      << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
