#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vibex_if_stage.h"

vluint64_t main_time = 0;

int main(int argc, char* argv[])
{
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;

  Vibex_if_stage* top = new Vibex_if_stage;
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
      top->boot_addr_i = 0x0;
      top->instr_rdata_i = 0x63;
      top->branch_target_ex_i = 0xFF;
      top->req_i = 0;
      top->instr_gnt_i = 0;
      top->instr_rvalid_i = 1;
      top->id_in_ready_i = 1;
      top->pc_set_i = 0;
      top->pc_set_spec_i = 0;
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
