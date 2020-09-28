TESTS = $(shell find tests -maxdepth 2 -name Makefile.in | cut -d\/ -f2 | sort -u)
TEST ?= tests/onenet

include $(TEST)/Makefile.in

list:
	@echo "Available tests:"
	@for TEST in $(TESTS); do echo "- tests/$$TEST"; done
	@echo "Please specify the TEST variable."

verilator/configure: verilator/configure.ac
	(cd verilator && autoconf)

verilator/Makefile: verilator/configure
	(cd verilator && ./configure --prefix=$(PWD)/image)

verilator/bin/verilator_bin: verilator/Makefile uhdm/build
	$(MAKE) -C verilator

image/bin/verilator: verilator/bin/verilator_bin
	$(MAKE) -C verilator install

yosys/yosys: yosys/Makefile uhdm/build
	$(MAKE) -C yosys yosys

prep: image/bin/verilator yosys/yosys

clean::
	rm -rf build

vcd:
	gtkwave build/dump.vcd &>/dev/null &

VERILATOR = ./image/bin/verilator
YOSYS = ./yosys/yosys

build-verilator:
	(cd verilator/src && make ../bin/verilator_bin)

veri: build-verilator image/bin/verilator

vcddiff/vcddiff:
	$(MAKE) -C vcddiff

# ------------ Surelog ------------
surelog:
	-(cd Surelog/third_party/UHDM && git apply ../../../UHDM.patch)
	make -C Surelog PREFIX=$(PWD)/image release install

surelog/regression: surelog
	$(MAKE) -C Surelog regression

surelog/parse: surelog
	mkdir -p build
	(cd build && \
		../image/bin/surelog -parse -sverilog -d coveruhdm ../$(TOP_FILE))
	cp build/slpp_all/surelog.uhdm build/top.uhdm

surelog/parse-ibex: surelog
	mkdir -p build
	(cd Surelog/third_party/tests/Earlgrey_0_1/sim-icarus && \
		../../../../../image/bin/surelog -parse -sverilog \
			-I../src/lowrisc_prim_assert_0.1/rtl \
			-I../src/lowrisc_prim_util_0.1/rtl \
			-I../src/lowrisc_prim_util_memload_0/rtl \
			../src/lowrisc_ibex_ibex_pkg_0.1/rtl/ibex_pkg.sv \
			../src/lowrisc_prim_generic_clock_gating_0/rtl/prim_generic_clock_gating.sv \
			../src/lowrisc_prim_abstract_clock_gating_0/prim_clock_gating.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_alu.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_compressed_decoder.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_controller.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_cs_registers.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_counter.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_decoder.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_ex_block.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_fetch_fifo.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_id_stage.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_if_stage.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_load_store_unit.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_multdiv_fast.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_multdiv_slow.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_prefetch_buffer.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_pmp.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_wb_stage.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_dummy_instr.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_register_file_ff.sv \
			../src/lowrisc_ibex_ibex_core_0.1/rtl/ibex_core.sv \
	)
	cp Surelog/third_party/tests/Earlgrey_0_1/sim-icarus/slpp_all/surelog.uhdm build/top.uhdm

surelog/parse-earlgrey: surelog
	mkdir -p build
	(cd Surelog/third_party/tests/Earlgrey_0_1/sim-icarus && \
		../../../../../image/bin/surelog -f Earlgrey_0_1.sl \
	)
	cp Surelog/third_party/tests/Earlgrey_0_1/sim-icarus/slpp_all/surelog.uhdm build/top.uhdm

surelog/ibex-verilator: surelog
	mkdir -p build
	-(cd Surelog/third_party/tests/Earlgrey_Verilator_0_1/sim-verilator && \
		../../../../../image/bin/surelog -f Earlgrey_Verilator_0_1.sl \
	)
	cp Surelog/third_party/tests/Earlgrey_Verilator_0_1/sim-verilator/slpp_all/surelog.uhdm build/top.uhdm

surelog/ibex-simplesystem: surelog
	mkdir -p build
	(cd tests/ibex/ibex/build/lowrisc_ibex_ibex_simple_system_0/sim-verilator \
		../../../../../../image/bin/surelog +define+VERILATOR \
			-f lowrisc_ibex_ibex_simple_system_0.vc \
			-parse -d coveruhdm -verbose \
	)
	cp tests/ibex/ibex/build/lowrisc_ibex_ibex_simple_system_0/sim-verilator/slpp_all/surelog.uhdm build/top.uhdm
# ------------ UHDM ------------ 

uhdm/clean:
	rm -rf obj_dir slpp_all build

uhdm/cleanall: uhdm/clean
	rm -rf ./image
	$(MAKE) -C UHDM clean
	$(MAKE) -C verilator clean
	$(MAKE) -C Surelog clean
	$(MAKE) -C yosys clean
	$(MAKE) -C vcddiff clean

uhdm/build:
	-(cd UHDM && git apply ../UHDM.patch)
	mkdir -p UHDM/build
	(cd UHDM/build && cmake \
		-DCMAKE_INSTALL_PREFIX=$(PWD)/image \
		-D_GLIBCXX_DEBUG=1 \
		-DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_CXX_FLAGS='-D_GLIBCXX_USE_CXX11_ABI=1 -DWITH_LIBCXX=Off' \
		../)
	$(MAKE) -C UHDM install

uhdm/verilator/build: uhdm/build image/bin/verilator

uhdm/verilator/get-ast: uhdm/verilator/build
	mkdir -p build
	(cd build && \
		../image/bin/verilator --cc ../$(TOP_FILE) \
			--exe ../$(MAIN_FILE) --xml-only)

uhdm/verilator/ast-xml: uhdm/verilator/build surelog/parse
	mkdir -p build
	(cd build && \
		../image/bin/verilator --uhdm-ast --cc ./top.uhdm \
			--top-module $(TOP_MODULE) \
			--dump-uhdm \
			--exe ../$(MAIN_FILE) --xml-only --debug)

uhdm/verilator/test-ast: uhdm/verilator/build surelog/parse
	mkdir -p build
	(cd build && \
		../image/bin/verilator --uhdm-ast --cc ./top.uhdm \
			--top-module $(TOP_MODULE) \
			--dump-uhdm \
			--exe ../$(MAIN_FILE) --trace && \
		 make -j -C obj_dir -f $(TOP_MAKEFILE) $(VERILATED_BIN) && \
		 obj_dir/$(VERILATED_BIN))

uhdm/verilator/coverage: uhdm/verilator/build
	mkdir -p build
	-(cd build && \
		../image/bin/verilator --uhdm-ast --cc ./top.uhdm \
			--uhdm-cov uhdm.cov \
			--xml-only)
	python3 gen_coverage_report.py --verilator-uhdm build/uhdm.cov \
		--output-file build/coverage.out

uhdm/yosys/test-ast: yosys/yosys surelog/parse
	mkdir -p build
	(cd build && \
		../yosys/yosys -s ../$(YOSYS_SCRIPT))

uhdm/yosys/verilate-ast: uhdm/yosys/test-ast uhdm/verilator/build
	(cd build && \
		../image/bin/verilator --cc ./yosys.sv \
			--top-module \$(TOP_MODULE) \
			--exe ../$(MAIN_FILE) --trace && \
		 make -j -C obj_dir -f $(TOP_MAKEFILE) $(VERILATED_BIN) && \
		 obj_dir/$(VERILATED_BIN))

uhdm/yosys/coverage: yosys/yosys surelog/parse-earlgrey
	mkdir -p build
	-(cd Surelog/third_party/tests/Earlgrey_0_1/sim-icarus && \
		../../../../../yosys/yosys -p \
		"read_uhdm -debug -report ../../../../../build/coverage ../../../../../build/top.uhdm")

uhdm/vcddiff: vcddiff/vcddiff
	$(MAKE) uhdm/verilator/test-ast
	mv build/dump.vcd build/dump_verilator.vcd
	rm -rf build/obj_dir
	$(MAKE) uhdm/yosys/verilate-ast
	mv build/dump.vcd build/dump_yosys.vcd
	vcddiff/vcddiff build/dump_yosys.vcd build/dump_verilator.vcd


#############################
####      SYNTHESIS      ####
#############################

uhdm/yosys/synth-ibex: yosys/yosys surelog/parse-ibex
	mkdir -p build
	-(cd Surelog/third_party/tests/Earlgrey_0_1/sim-icarus && \
		../../../../../yosys/yosys -p \
		"read_uhdm -debug -report ../../../../../build/coverage ../../../../../build/top.uhdm" \
		-p 'synth_xilinx -top \work_ibex_core -iopad -family xc7' \
		-p 'write_edif -top \work_ibex_core -pvector bra ../../../../../build/top.edif' )

IBEX_DIR := ../tests/ibex/ibex/rtl
EARLGREY_DIR := ../Surelog/third_party/tests/Earlgrey_0_1/src
SYNTH_FILE ?= ibex_alu.sv
SYNTH_FILES := $(IBEX_DIR)/$(SYNTH_FILE)
ifeq ($(SYNTH_FILE),ibex_alu.sv)
	SYNTH_FILES := $(SYNTH_FILES) $(IBEX_DIR)/ibex_pkg.sv
else ifeq ($(SYNTH_FILE),ibex_controller.sv)
	SYNTH_FILES := $(SYNTH_FILES)  $(IBEX_DIR)/ibex_pkg.sv
else ifeq ($(SYNTH_FILE),ibex_core.sv)
	SYNTH_FILES := $(SYNTH_FILES) $(IBEX_DIR)/ibex_pkg.sv
else ifeq ($(SYNTH_FILE),ibex_core_tracing.sv)
	SYNTH_FILES := $(SYNTH_FILES)  $(IBEX_DIR)/ibex_pkg.sv $(IBEX_DIR)/ibex_tracer.sv
else ifeq ($(SYNTH_FILE),ibex_cs_registers.sv)
	SYNTH_FILES := $(SYNTH_FILES)  $(IBEX_DIR)/ibex_pkg.sv $(IBEX_DIR)/ibex_counter.sv
else ifeq ($(SYNTH_FILE),ibex_decoder.sv)
	SYNTH_FILES := $(SYNTH_FILES)  $(IBEX_DIR)/ibex_pkg.sv
else ifeq ($(SYNTH_FILE),ibex_dummy_instr.sv)
	SYNTH_FILES := $(SYNTH_FILES) $(EARLGREY_DIR)/lowrisc_prim_all_0.1/rtl/prim_lfsr.sv
else ifeq ($(SYNTH_FILE),ibex_ex_block.sv)
	SYNTH_FILES := $(SYNTH_FILES) $(IBEX_DIR)/ibex_pkg.sv $(IBEX_DIR)/ibex_multdiv_fast.sv $(IBEX_DIR)/ibex_alu.sv
else ifeq ($(SYNTH_FILE),ibex_icache.sv)
	SYNTH_FILES := $(SYNTH_FILES) $(EARLGREY_DIR)/lowrisc_prim_abstract_ram_1p_0/prim_ram_1p.sv $(EARLGREY_DIR)/lowrisc_prim_abstract_prim_pkg_0.1/prim_pkg.sv
else ifeq ($(SYNTH_FILE),ibex_id_stage.sv)
	SYNTH_FILES := $(SYNTH_FILES) $(IBEX_DIR)/ibex_pkg.sv
else ifeq ($(SYNTH_FILE),ibex_if_stage.sv)
	SYNTH_FILES := $(SYNTH_FILES) $(IBEX_DIR)/ibex_compressed_decoder.sv $(IBEX_DIR)/ibex_fetch_fifo.sv $(IBEX_DIR)/ibex_prefetch_buffer.sv
else ifeq ($(SYNTH_FILE),ibex_multdiv_fast.sv)
	SYNTH_FILES := $(SYNTH_FILES) $(IBEX_DIR)/ibex_pkg.sv
else ifeq ($(SYNTH_FILE),ibex_prefetch_buffer.sv)
	SYNTH_FILES := $(SYNTH_FILES) $(IBEX_DIR)/ibex_fetch_fifo.sv
endif

surelog/parse-synth: surelog
	mkdir -p build
	(cd build && \
		../image/bin/surelog -parse -sverilog \
			-I../tests/ibex/ibex/rtl \
			$(SYNTH_FILES))
	cp build/slpp_all/surelog.uhdm build/top.uhdm

uhdm/yosys/test-synth: surelog/parse-synth yosys/yosys
	yosys/yosys \
		-p 'read_uhdm -debug build/top.uhdm' \
		-p 'synth_xilinx -iopad -family xc7' \
		-p 'write_edif -pvector bra build/top.edif'

#############################
#### SIMULATION  (YOSYS) ####
#############################

IBEX_TOP_DIR := ../tests/ibex/top
SIM_FILE ?= ibex_alu.sv
SIM_FILES := $(IBEX_DIR)/$(SIM_FILE)
ifeq ($(SIM_FILE),ibex_alu.sv)
	SIM_FILES := $(SIM_FILES) $(IBEX_TOP_DIR)/ibex_alu_top.sv $(IBEX_DIR)/ibex_pkg.sv
endif

surelog/parse-sim: surelog
	mkdir -p build
	(cd build && \
		../image/bin/surelog -parse -sverilog \
			-I../tests/ibex/ibex/rtl \
			$(SIM_FILES))
	cp build/slpp_all/surelog.uhdm build/top.uhdm

uhdm/yosys/test-sim: surelog/parse-sim yosys/yosys
	yosys/yosys \
		-p 'read_uhdm -debug build/top.uhdm' \
		-p 'prep -auto-top' \
		-p 'sim -clock clk -rstlen 10 -vcd dump.vcd'
