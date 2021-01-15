#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vprim_secded_top.h"

vluint64_t main_time = 0;

int main(int argc, char* argv[])
{
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;

  Vprim_secded_top* top = new Vprim_secded_top;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->in_22 = 0;
  top->in_32 = 0;
  top->in_64 = 0;

  while (!Verilated::gotFinish()) {
    if (main_time >= 5000) break;

    if (main_time && main_time % 5 == 0){
      top->in_22 += 1;
      top->in_32 += 1;
      top->in_64 += 1;
    }

    top->eval();
    tfp->dump(main_time);
    ++main_time;
  }

  top->final();
  tfp->close();

  return 0;
}
