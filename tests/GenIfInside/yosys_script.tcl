yosys -import
plugin -i uhdm
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

write_json
prep -top \\top
write_verilog
write_verilog yosys.sv
sim -rstlen 10 -vcd dump.vcd
