#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vibex_dummy_instr.h"

vluint64_t main_time = 0;

int main(int argc, char* argv[])
{
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;

  Vibex_dummy_instr* top = new Vibex_dummy_instr;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;

  while (!Verilated::gotFinish()) {
    if (main_time >= 5000) break;

    if (main_time && main_time % 5 == 0) top->clk_i = !top->clk_i;
    switch (main_time) {
    case 100: top->rst_ni = 1; break;

    case 200:
      top->dummy_instr_en_i = 1;
      top->dummy_instr_mask_i = 0x3;
      top->dummy_instr_seed_en_i = 1;
      top->dummy_instr_seed_i = 0x12345678;
      break;
    case 300:
      top->fetch_valid_i = 1;
      top->id_in_ready_i = 1;
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
