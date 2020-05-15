#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vwork_dut.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vwork_dut *top = new Vwork_dut();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->fsm1clk = 0;
  top->fsm2clk = 0;
  top->fsm3clk = 0;

  top->fsm1rst = 0;
  top->fsm2rst = 0;

  top->SlowRam = 0;

  top->ctrl = 0;
  top->keys = 0;
  top->brake = 0;
  top->accelerate = 0;

  while (!Verilated::gotFinish() && (main_time < 51)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;

    // Clock generation
    if (main_time %= 2) {
      top->fsm1clk ^= 1;
      top->fsm2clk ^= 1;
      top->fsm3clk ^= 1;
    }

    if (main_time == 10) {
      top->fsm1rst = 1;
      top->fsm2rst = 1;
    }

    if (main_time == 30) {
      top->keys = 1;
    }
    if (main_time == 40) {
      top->accelerate = 1;
    }
    if (main_time == 60) {
      top->accelerate = 0;
    }
    if (main_time == 70) {
      top->brake = 1;
    }

    std::cout << "time: " << main_time
      << " ctrl: " << (top->ctrl ? 1 : 0)
      << " keys: " << (top->keys ? 1 : 0)
      << " brake: " << (top->brake ? 1 : 0)
      << " accelerate: " << (top->accelerate ? 1 : 0)
      << " | "
      << " rd: " << (top->rd ? 1 : 0)
      << " wr: " << (top->wr ? 1 : 0)
      << " Fsm2Out: " << (top->Fsm2Out ? 1 : 0)
      << " speed: " << (top->speed ? 1 : 0)
      << std::endl;
  }
  top->final();
  tfp->close();
    delete top;

  return 0;
}
