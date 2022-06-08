yosys -import
plugin -i systemverilog
yosys -import

if {$::env(PARSER) == "surelog" } {
	puts "Using Yosys read_uhdm command"
	read_uhdm -debug dut.uhdm
} elseif {$::env(PARSER) == "yosys-plugin" } {
	puts "Using Yosys read_systemverilog command"
	read_systemverilog -debug $::env(TOP_FILE)
} elseif {$::env(PARSER) == "yosys" } {
	puts "Using Yosys read_verilog command"
	read_verilog -debug $::env(TOP_FILE)
} else {
	error "Invalid PARSER"
}

prep -top \\dut
write_verilog
write_verilog yosys.sv
sim -rstlen 10 -vcd dump.vcd
