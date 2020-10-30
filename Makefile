TESTS = $(shell find tests -maxdepth 2 -name Makefile.in | cut -d\/ -f2 | sort -u)
TEST ?= tests/onenet

root_dir:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
IBEX = ${root_dir}/tests/ibex/ibex
IBEX_BUILD = ${IBEX}/build/lowrisc_ibex_top_artya7_0.1

SURELOG_BIN = ${root_dir}/image/bin/surelog
YOSYS_BIN = ${root_dir}/yosys/yosys
COVARAGE_REPORT = ${root_dir}/build/coverage
TOP_UHDM = ${root_dir}/build/top.uhdm

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
		${SURELOG_BIN} -parse -sverilog -d coveruhdm ../$(TOP_FILE))
	cp build/slpp_all/surelog.uhdm build/top.uhdm


IBEX_INCLUDE = \
        -I$(IBEX_BUILD)/src/lowrisc_prim_assert_0.1/rtl \
        -I$(IBEX_BUILD)/src/lowrisc_prim_util_memload_0/rtl \

IBEX_PKG_SOURCES = \
        $(shell \
                cat ${IBEX_BUILD}/synth-vivado/lowrisc_ibex_top_artya7_0.1.tcl | \
                grep read_verilog | cut -d' ' -f3  | grep _pkg.sv | \
                sed 's@^..@${IBEX_BUILD}@')

#Sources that will be skipped by Surelog uhdm
SKIP_SOURCES=ibex_if_stage.sv\|ibex_id_stage.sv\|ibex_ex_block.sv\|ibex_cs_registers.sv\|ram_1p.sv\|clkgen_xil7series.sv\|ibex_alu.sv\|prim_lfsr.sv\|ibex_fetch_fifo.sv\|ibex_decoder.sv\|ibex_prefetch_buffer.sv\|ibex_pmp.sv\|ibex_core.sv\|top_artya7.sv

IBEX_SOURCES = \
        $(shell \
                cat ${IBEX_BUILD}/synth-vivado/lowrisc_ibex_top_artya7_0.1.tcl | \
                grep read_verilog | cut -d' ' -f3 | grep -v _pkg.sv | \
		grep -v '${SKIP_SOURCES}' | \
                sed 's@^..@${IBEX_BUILD}@')

IBEX_SOURCES_SKIPPED = \
        $(shell \
                cat ${IBEX_BUILD}/synth-vivado/lowrisc_ibex_top_artya7_0.1.tcl | \
                grep read_verilog | cut -d' ' -f3 | grep -v _pkg.sv | \
		grep '${SKIP_SOURCES}' | \
                sed 's@^..@${IBEX_BUILD}@')

surelog/parse-ibex: surelog
	mkdir -p build
	virtualenv venv-ibex
	(source ${root_dir}/venv-ibex/bin/activate && \
		cd ${IBEX} && pip install -r python-requirements.txt && \
		fusesoc --cores-root=. run --target=synth --setup lowrisc:ibex:top_artya7 --part xc7a35ticsg324-1L && \
	${root_dir}/image/bin/surelog -parse -sverilog \
		$(IBEX_INCLUDE) \
		$(IBEX_SOURCES) ${IBEX_PKG_SOURCES} && \
	cp ${IBEX}/slpp_all/surelog.uhdm ${root_dir}/build/top.uhdm)

surelog/parse-earlgrey: surelog
	mkdir -p build
	(cd Surelog/third_party/tests/Earlgrey_0_1/sim-icarus && \
		${SURELOG_BIN} -f Earlgrey_0_1.sl \
	)
	cp Surelog/third_party/tests/Earlgrey_0_1/sim-icarus/slpp_all/surelog.uhdm build/top.uhdm

surelog/ibex-verilator: surelog
	mkdir -p build
	-(cd Surelog/third_party/tests/Earlgrey_Verilator_0_1/sim-verilator && \
		${SURELOG_BIN} -f Earlgrey_Verilator_0_1.sl \
	)
	cp Surelog/third_party/tests/Earlgrey_Verilator_0_1/sim-verilator/slpp_all/surelog.uhdm build/top.uhdm

surelog/ibex-simplesystem: surelog
	mkdir -p build
	(cd tests/ibex/ibex/build/lowrisc_ibex_ibex_simple_system_0/sim-verilator \
		${SURELOG_BIN} +define+VERILATOR \
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

uhdm/patch: surelog # Needed to prevent overwriting the patched UHDM libs by Surelog
	-(cd ${root_dir}/UHDM && git apply ${root_dir}/UHDM.patch)

uhdm/build: uhdm/patch
	mkdir -p ${root_dir}/UHDM/build
	(cd ${root_dir}/UHDM/build && cmake \
		-DCMAKE_INSTALL_PREFIX=$(PWD)/image \
		-DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_CXX_FLAGS='-D_GLIBCXX_USE_CXX11_ABI=1 -DWITH_LIBCXX=Off' \
		../ && \
	 $(MAKE) install)

uhdm/verilator/build: uhdm/build image/bin/verilator

uhdm/verilator/get-ast: uhdm/verilator/build
	mkdir -p build
	(cd build && \
		../image/bin/verilator --cc ../$(TOP_FILE) \
			--exe ../$(MAIN_FILE) --debug --xml-only)

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
		${YOSYS_BIN} -s ../$(YOSYS_SCRIPT))

uhdm/yosys/verilate-ast: uhdm/yosys/test-ast uhdm/verilator/build
	(cd build && \
		../image/bin/verilator --cc ./yosys.sv \
			--top-module \$(TOP_MODULE) \
			--exe ../$(MAIN_FILE) --trace && \
		 make -j -C obj_dir -f $(TOP_MAKEFILE) $(VERILATED_BIN) && \
		 obj_dir/$(VERILATED_BIN))

uhdm/yosys/coverage: yosys/yosys surelog/parse-ibex
	mkdir -p build
	-(cd ${IBEX}/slpp_all && \
		${YOSYS_BIN} \
		-p "read_uhdm -report ${COVARAGE_REPORT} ${TOP_UHDM}")

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
	mkdir -p ${root_dir}/build
	(cd ${root_dir}/build && \
	${YOSYS_BIN} \
		     -p 'read_uhdm -debug ${TOP_UHDM}' \
		     -p 'read_verilog ${IBEX_INCLUDE} -sv ${IBEX_SOURCES_SKIPPED}' \
		     -p 'chparam -set SRAMInitFile "${root_dir}/led.vmem" top_artya7' \
		     -p 'synth_xilinx -iopad -family xc7' \
		     -p 'write_edif -pvector bra ${root_dir}/build/top_artya7.edif' \
		     -p 'write_json ${root_dir}/top.json')
	#vivado -nojournal -log ${root_dir}/top.log -mode batch -source ${root_dir}/build.tcl


#############################
#### SIMULATION  (YOSYS) ####
#############################

IBEX_TOP_DIR := ${root_dir}/tests/ibex/top
SIM_FILE ?= ibex_alu.sv
SIM_FILES := $(IBEX_DIR)/$(SIM_FILE)
ifeq ($(SIM_FILE),ibex_alu.sv)
	SIM_FILES := $(SIM_FILES) $(IBEX_TOP_DIR)/ibex_alu_top.sv $(IBEX_DIR)/ibex_pkg.sv
endif

surelog/parse-sim: surelog
	mkdir -p build
	(cd build && \
		${SURELOG_BIN} -parse -sverilog \
			-I${root_dir}/tests/ibex/ibex/rtl \
			$(SIM_FILES) \
	)
	cp build/slpp_all/surelog.uhdm build/top.uhdm

surelog/parse-sim: surelog
	mkdir -p build
	(cd build && \
		${SURELOG_BIN} -parse -sverilog \
			-I${root_dir}/tests/ibex/ibex/rtl \
			$(SIM_FILES))
	cp build/slpp_all/surelog.uhdm build/top.uhdm

uhdm/yosys/test-sim: surelog/parse-sim yosys/yosys
	${YOSYS_BIN} \
		-p 'read_uhdm -debug build/top.uhdm' \
		-p 'prep -auto-top' \
		-p 'sim -clock clk -rstlen 10 -vcd dump.vcd'
