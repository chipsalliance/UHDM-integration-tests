source ../yosys_common.tcl

prep -top \\top
hierarchy -check
procs
opt -full -purge -share_all
techmap
abc
clean
write_verilog -noattr
