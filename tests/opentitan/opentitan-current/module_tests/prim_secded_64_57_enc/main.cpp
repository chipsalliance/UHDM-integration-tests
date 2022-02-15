#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_secded_64_57_enc.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_secded_64_57_enc *top = new Vprim_secded_64_57_enc();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  while (!Verilated::gotFinish() && (main_time < 1024000)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->data_i += 1;

    std::cout << "time: " << main_time
      << " data_i: " << top->data_i
      << " data_o: " << top->data_o
      << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
