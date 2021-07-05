plugin -i uhdm
read_uhdm -debug fsm_using_function.uhdm
prep -top \fsm_using_function
write_verilog
write_verilog yosys.sv
sim -clock clock -rstlen 10 -vcd dump.vcd
