#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vibex_multdiv_fast.h"

vluint64_t main_time = 0;

int main(int argc, char* argv[])
{
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;

  Vibex_multdiv_fast* top = new Vibex_multdiv_fast;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;

  top->mult_en_i = 0;
  top->div_en_i = 0;
  top->div_sel_i = 0;
  top->operator_i = 0;

  top->signed_mode_i = 0;
  top->op_a_i = 0;
  top->op_b_i = 0;
  top->alu_adder_ext_i = 0;
  top->alu_adder_i = 0;

  top->equal_to_zero_i = 0;
  top->data_ind_timing_i = 0;

  top->multdiv_ready_id_i = 0;

  while (!Verilated::gotFinish()) {
    if (main_time >= 5000) break;

    if (main_time && main_time % 5 == 0) top->clk_i = !top->clk_i;
    switch (main_time) {
    case 100:
      top->rst_ni = 1;
      break;

    case 200:
      top->op_a_i = 0x0000002;
      top->op_b_i = 0x0000003;
      top->operator_i = 0;
      top->mult_en_i = 1;
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
