yosys -import
plugin -i systemverilog
yosys -import

if {$::env(PARSER) == "surelog" } {
	puts "Using Yosys read_uhdm command"
	read_uhdm -debug dut.uhdm
} elseif {$::env(PARSER) == "yosys-plugin" } {
	puts "Using Yosys read_systemverilog command"
	set files [split $::env(TOP_FILE)]
	set file0 [ lindex $files 0 ]
	set file1 [ lindex $files 1 ]
	read_systemverilog -debug $file0 $file1
} elseif {$::env(PARSER) == "yosys" } {
	puts "Using Yosys read_verilog command"
	read_verilog -debug $::env(TOP_FILE)
} else {
	error "Invalid PARSER"
}

#prep -top \\dut
#write_verilog
#write_verilog yosys.sv
