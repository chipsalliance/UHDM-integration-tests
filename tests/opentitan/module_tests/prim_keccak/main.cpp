#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_keccak.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_keccak *top = new Vprim_keccak();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->rnd_i = 0;
  top->s_i = 0xABCD;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->rnd_i ^= 1;

    std::cout << "time: " << main_time
              << " rnd_i: " << (int) top->rnd_i
              << " s_i: " << (long long) top->s_i
              << " s_o: " << (long long) top->s_o
              << std::endl;

  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
