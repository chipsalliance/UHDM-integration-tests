#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vibex_register_file_ff.h"

vluint64_t main_time = 0;

int main(int argc, char* argv[])
{
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;

  Vibex_register_file_ff* top = new Vibex_register_file_ff;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;

  while (!Verilated::gotFinish()) {
    if (main_time >= 5000) break;

    if (main_time && main_time % 5 == 0) top->clk_i = !top->clk_i;
    switch (main_time) {
    case 100: top->rst_ni = 1; break;

    case 200: top->raddr_a_i = 3; break;

    case 400:
      top->waddr_a_i = 3;
      top->wdata_a_i = 0xdeadbeef;
      top->we_a_i = 1;
      break;
    case 410: top->we_a_i = 0; break;
    case 500: top->raddr_b_i = 3; break;

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
