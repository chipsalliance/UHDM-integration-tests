#include <iostream>
#include <bitset>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_alert_receiver.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_alert_receiver *top = new Vprim_alert_receiver();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 0;
  top->rst_ni = 0;
  top->ping_req_i = 0;
  top->alert_tx_i = 0;
  
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i = (bool)(main_time & 1);
    top->rst_ni = (bool)(main_time & 2);
    top->ping_req_i = (bool)(main_time & 4);
    top->alert_tx_i = (CData)((main_time & (3 << 3)) >> 3);
    
    std::cout << "time: " << main_time
      << " clk_i: " << (top->clk_i ? 1 : 0)
      << " rst_ni: " << (top->rst_ni ? 1 : 0)
      << " ping_req_i: " << (top->ping_req_i ? 1 : 0)
      << " alert_tx_i: " << std::bitset<2>(top->alert_tx_i)
      << " ping_ok_o: " << (top->ping_ok_o ? 1 : 0)
      << " integ_fail_o: " << (top->integ_fail_o ? 1 : 0)
      << " alert_o: " << (top->alert_o ? 1 : 0)
      << " alert_rx_o: " << std::bitset<2>(top->alert_rx_o)
      << std::endl;

  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
