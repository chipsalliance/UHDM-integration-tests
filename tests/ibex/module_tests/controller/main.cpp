#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vibex_controller.h"

vluint64_t main_time = 0;

int main(int argc, char* argv[])
{
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;

  Vibex_controller* top = new Vibex_controller;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;

  // decoder related signals
  top->illegal_insn_i = 0;
  top->ecall_insn_i = 0;
  top->mret_insn_i = 0;
  top->dret_insn_i = 0;
  top->wfi_insn_i = 0;
  top->ebrk_insn_i = 0;
  top->csr_pipe_flush_i = 0;
  // from IF-ID pipeline stage
  top->instr_valid_i = 0;
  top->instr_i = 0;
  top->instr_compressed_i = 0;
  top->instr_is_compressed_i = 0;
  top->instr_fetch_err_i = 0;
  top->instr_fetch_err_plus2_i = 0;
  top->pc_id_i = 0;

  // LSU
  top->lsu_addr_last_i = 0;
  top->load_err_i = 0;
  top->store_err_i = 0;
  // jump/branch signals
  top->branch_set_i = 0;
  top->branch_set_spec_i = 0;
  top->jump_set_i = 0;
  // interrupt signals
  top->csr_mstatus_mie_i = 0;
  top->irq_pending_i = 0;
  top->irqs_i = 0;
  top->irq_nm_i = 0;
  // debug signals
  top->debug_req_i = 0;
  top->debug_single_step_i = 0;
  top->debug_ebreakm_i = 0;
  top->debug_ebreaku_i = 0;
  top->trigger_match_i = 0;
  top->priv_mode_i = 0;
  top->csr_mstatus_tw_i = 0;

  // stall & flush signals
  top->lsu_req_in_id_i = 0;
  top->stall_id_i = 0;
  top->stall_wb_i = 0;
  top->ready_wb_i = 0;

  while (!Verilated::gotFinish()) {
    if (main_time >= 5000) break;

    if (main_time && main_time % 5 == 0) top->clk_i = !top->clk_i;
    switch (main_time) {
    case 100: top->rst_ni = 1; break;

    case 200:
      top->debug_req_i = 1;
      top->instr_i = 0xdeadbeef;
      top->instr_valid_i = 1;
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
