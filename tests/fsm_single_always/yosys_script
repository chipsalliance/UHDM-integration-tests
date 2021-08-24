plugin -i uhdm
read_uhdm -debug fsm_using_single_always.uhdm
prep -top \fsm_using_single_always
write_verilog
write_verilog yosys.sv
sim -clock clock -rstlen 10 -vcd dump.vcd
