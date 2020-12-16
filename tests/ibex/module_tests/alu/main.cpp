#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vibex_alu.h"

vluint64_t main_time = 0;

int main(int argc, char* argv[])
{
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;

  Vibex_alu* top = new Vibex_alu;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->instr_first_cycle_i = 0;

  while (!Verilated::gotFinish()) {
    if (main_time >= 5000) break;

    if (main_time && main_time % 100 == 0)
      top->operator_i += 1;

    switch (main_time) {
      case 50:
        top->operand_a_i = 0x01234567;
        top->operand_b_i = 0xdeadbeef;
        break;

      default: break;
    }

    top->eval();
    tfp->dump(main_time);
    ++main_time;
  }

  top->final();
  tfp->close();

  return 0;
}
