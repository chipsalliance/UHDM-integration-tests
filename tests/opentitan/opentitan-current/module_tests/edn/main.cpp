#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vedn.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vedn *top = new Vedn();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;

  while (!Verilated::gotFinish() && (main_time < 100240)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i ^= 1;
    if (main_time > 10)
      top->rst_ni = 1;

    if (main_time % 2)
      top->tl_i[0] += 1;
    if (main_time % 3)
      top->tl_i[1] += 1;
    if (main_time % 4)
      top->tl_i[2] += 1;
    if (main_time % 5)
      top->tl_i[3] += 1;
    if (main_time % 6)
      top->tl_i[4] += 1;
    if (main_time % 7)
      top->tl_i[5] += 1;

    if (main_time % 4)
      top->edn_i += 1;

    if (main_time % 8)
      top->csrng_cmd_i[0] += 1;
    if (main_time % 9)
      top->csrng_cmd_i[1] += 1;
    if (main_time % 10)
      top->csrng_cmd_i[2] += 1;
    if (main_time % 11)
      top->csrng_cmd_i[3] += 1;
    if (main_time % 12)
      top->csrng_cmd_i[4] += 1;

    std::cout << "time: " << main_time
      << " rst_ni: " << (top->rst_ni ? 1 : 0)
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " tl_i[0]: " << top->tl_i[0]
      << " tl_i[1]: " << top->tl_i[1]
      << " tl_i[2]: " << top->tl_i[2]
      << " tl_i[3]: " << top->tl_i[3]
      << " tl_i[4]: " << top->tl_i[4]
      << " tl_i[5]: " << top->tl_i[5]

      << " tl_o[0]: " << top->tl_o[0]
      << " tl_o[1]: " << top->tl_o[1]
      << " tl_o[2]: " << top->tl_o[2]
      << " tl_o[3]: " << top->tl_o[3]
      << " tl_o[4]: " << top->tl_o[4]
      << " tl_o[5]: " << top->tl_o[5]

      << " csrng_cmd_i[0]: " << top->csrng_cmd_i[0]
      << " csrng_cmd_i[1]: " << top->csrng_cmd_i[1]
      << " csrng_cmd_i[2]: " << top->csrng_cmd_i[2]
      << " csrng_cmd_i[3]: " << top->csrng_cmd_i[3]
      << " csrng_cmd_i[4]: " << top->csrng_cmd_i[4]
      << " edn_i: " << (int)top->edn_i
      << " edn_o: " << top->edn_o[0]
      << " edn_o: " << top->edn_o[1]
      << " intr_edn_cmd_req_done_o: " << (int)top->intr_edn_cmd_req_done_o
      << " intr_edn_fatal_err_o: "    << (int)top->intr_edn_fatal_err_o
      << " csrng_cmd_o: " << top->csrng_cmd_o
      << " alert_rx_i: "           << (int)top->alert_rx_i
      << " alert_tx_o: "           << (int)top->alert_tx_o
      << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
