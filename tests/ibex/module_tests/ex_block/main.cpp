#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vibex_ex_block.h"

vluint64_t main_time = 0;

int main(int argc, char* argv[])
{
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;

  Vibex_ex_block* top = new Vibex_ex_block;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->alu_operator_i = 0;

  while (!Verilated::gotFinish()) {
    if (main_time >= 5000) break;

    if (main_time && main_time % 5 == 0) top->clk_i = !top->clk_i;
    if (main_time >=200 && main_time % 100 == 0)
      top->alu_operator_i += 1;

    switch (main_time) {
    case 100: top->rst_ni = 1; break;

    case 200:
      top->alu_operand_a_i = 8;
      top->alu_operand_b_i = 7;
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
