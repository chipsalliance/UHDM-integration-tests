yosys -import
plugin -i systemverilog
yosys -import

if {$::env(PARSER) == "surelog" } {
	puts "Using Yosys read_uhdm command"
	read_uhdm -debug top.uhdm
} elseif {$::env(PARSER) == "yosys-plugin" } {
	puts "Using Yosys read_systemverilog command"
	read_systemverilog -debug $::env(TOP_FILE)
} elseif {$::env(PARSER) == "yosys" } {
	puts "Using Yosys read_verilog command"
	read_verilog -debug $::env(TOP_FILE)
} else {
	error "Invalid PARSER"
}

hierarchy -check -top \\top
proc_clean
proc_rmdead
proc_prune
proc_init
proc_arst
proc_mux
proc_dff
proc_clean
proc_dlatch
opt

opt_expr -keepdc
opt_clean
check
opt -noff -keepdc
wreduce -keepdc
opt_clean
memory_collect
opt -noff -keepdc -fast
stat
check

write_verilog yosys.sv
sim -rstlen 10 -vcd dump.vcd
