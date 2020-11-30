TESTS = $(shell find tests -maxdepth 2 -name Makefile.in | cut -d\/ -f2 | sort -u)
TEST ?= tests/onenet

root_dir:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

SURELOG_BIN = ${root_dir}/image/bin/surelog
YOSYS_BIN = ${root_dir}/image/bin/yosys
VERILATOR_BIN = ${root_dir}/image/bin/verilator
VCDDIFF_BIN = ${root_dir}/image/bin/vcddiff
COVARAGE_REPORT = ${root_dir}/build/coverage
TOP_UHDM = ${root_dir}/build/top.uhdm

TEST_DIR := $(root_dir)/$(TEST)
MAIN_FILE := $(TEST_DIR)/main.cpp
YOSYS_SCRIPT := $(TEST_DIR)/yosys_script

# this include should set $(TOP_FILE) and $(TOP_MODULE) variables
include $(TEST)/Makefile.in

# this variables uses $(TOP_MODULE) that is set in included Makefile.in
VERILATED_BIN := Vwork_$(TOP_MODULE)
TOP_MAKEFILE := $(VERILATED_BIN).mk

list:
	@echo "Available tests:"
	@for TEST in $(TESTS); do echo "- tests/$$TEST"; done
	@echo "Please specify the TEST variable."

# ------------ Binaries build targets ------------

Surelog/third_party/UHDM/.gitpatch: ${root_dir}/UHDM.patch
	(cd ${root_dir}/Surelog/third_party/UHDM && git apply ${root_dir}/UHDM.patch) && touch $@

image/bin/verilator: verilator/configure.ac image/bin/surelog
	(cd ${root_dir}/verilator && autoconf && ./configure --prefix=$(root_dir)/image && \
		$(MAKE) install)

image/bin/yosys: yosys/Makefile image/bin/surelog
	(cd ${root_dir}/yosys && $(MAKE) PREFIX=$(root_dir)/image install)

image/bin/surelog: Surelog/third_party/UHDM/.gitpatch
	(cd ${root_dir}/Surelog && \
		$(MAKE) PREFIX=${root_dir}/image release install)

image/bin/vcddiff:
	$(MAKE) -C vcddiff PREFIX=$(root_dir)/image
	mkdir -p $(root_dir)/image/bin
	cp -p vcddiff/vcddiff $(VCDDIFF_BIN)

prep: image/bin/verilator image/bin/yosys image/bin/surelog image/bin/vcddiff

# ------------ Test targets ------------

uhdm/vcddiff: image/bin/vcddiff uhdm/verilator/test-ast uhdm/yosys/verilate-ast
	$(VCDDIFF_BIN) $(root_dir)/build/dump_yosys.vcd $(root_dir)/build/dump_verilator.vcd

uhdm/verilator/test-ast: image/bin/verilator surelog/parse
	(cd $(root_dir)/build && \
		$(VERILATOR_BIN) --uhdm-ast --cc $(TOP_UHDM) \
			--top-module work_$(TOP_MODULE) \
			--dump-uhdm \
			--exe $(MAIN_FILE) --trace && \
		 make -j -C obj_dir -f $(TOP_MAKEFILE) $(VERILATED_BIN) && \
		 obj_dir/$(VERILATED_BIN))
	cp $(root_dir)/build/dump.vcd $(root_dir)/build/dump_verilator.vcd

uhdm/yosys/test-ast: image/bin/yosys surelog/parse clean-build
	(cd $(root_dir)/build && ${YOSYS_BIN} -s $(YOSYS_SCRIPT))

# ------------ Test helper targets ------------

surelog/parse: image/bin/surelog clean-build
	(cd ${root_dir}/build && \
		${SURELOG_BIN} -parse -sverilog -d coveruhdm $(TOP_FILE))
	cp ${root_dir}/build/slpp_all/surelog.uhdm ${root_dir}/build/top.uhdm

uhdm/yosys/verilate-ast: uhdm/yosys/test-ast image/bin/verilator
	(cd $(root_dir)/build && \
		$(VERILATOR_BIN) --cc ./yosys.sv \
			--top-module \$(TOP_MODULE) \
			--exe $(MAIN_FILE) --trace && \
		 make -j -C obj_dir -f $(TOP_MAKEFILE) $(VERILATED_BIN) && \
		 obj_dir/$(VERILATED_BIN))
	cp $(root_dir)/build/dump.vcd $(root_dir)/build/dump_yosys.vcd

# ------------ Coverage targets ------------

uhdm/verilator/coverage: image/bin/verilator surelog/parse
	(cd $(root_dir)/build && \
		$(VERILATOR_BIN) --uhdm-ast --cc $(TOP_UHDM) \
			--uhdm-cov uhdm.cov \
			--xml-only)
	python3 gen_coverage_report.py --verilator-uhdm $(root_dir)/build/uhdm.cov \
		--output-file $(root_dir)/build/coverage.out

uhdm/yosys/coverage: image/bin/yosys surelog/parse
	(cd ${root_dir}/build && ${YOSYS_BIN} -p "read_uhdm -report ${COVARAGE_REPORT} ${TOP_UHDM}")

# ------------ Clean targets ------------

clean-build:
	rm -rf $(root_dir)/build
	mkdir -p $(root_dir)/build

clean: clean-build
	rm -rf $(root_dir)/image

cleanall: clean
	$(MAKE) -C verilator clean
	$(MAKE) -C Surelog clean
	$(MAKE) -C yosys clean
	$(MAKE) -C vcddiff clean

# ------------ Other targets ------------

surelog/parse-earlgrey: image/bin/surelog clean-build
	(cd ${root_dir}/Surelog/third_party/tests/Earlgrey_0_1/sim-icarus && \
		${SURELOG_BIN} -f Earlgrey_0_1.sl \
	)
	cp ${root_dir}/Surelog/third_party/tests/Earlgrey_0_1/sim-icarus/slpp_all/surelog.uhdm ${root_dir}/build/top.uhdm

surelog/ibex-verilator: image/bin/surelog clean-build
	(cd ${root_dir}/Surelog/third_party/tests/Earlgrey_Verilator_0_1/sim-verilator && \
		${SURELOG_BIN} -f Earlgrey_Verilator_0_1.sl)
	cp ${root_dir}/Surelog/third_party/tests/Earlgrey_Verilator_0_1/sim-verilator/slpp_all/surelog.uhdm ${root_dir}/build/top.uhdm

surelog/ibex-simplesystem: image/bin/surelog clean-build
	(cd ${root_dir}/tests/ibex/ibex/build/lowrisc_ibex_ibex_simple_system_0/sim-verilator \
		${SURELOG_BIN} +define+VERILATOR \
			-f lowrisc_ibex_ibex_simple_system_0.vc \
			-parse -d coveruhdm -verbose)
	cp ${root_dir}/tests/ibex/ibex/build/lowrisc_ibex_ibex_simple_system_0/sim-verilator/slpp_all/surelog.uhdm ${root_dir}/build/top.uhdm

uhdm/verilator/get-ast: image/bin/verilator clean-build
	(cd $(root_dir)/build && \
		$(VERILATOR_BIN) --cc $(TOP_FILE) \
			--exe $(MAIN_FILE) --debug --xml-only)

uhdm/verilator/ast-xml: image/bin/verilator surelog/parse
	(cd $(root_dir)/build && \
		$(VERILATOR_BIN) --uhdm-ast --cc ./top.uhdm \
			--top-module work_$(TOP_MODULE) \
			--dump-uhdm \
			--exe $(MAIN_FILE) --xml-only --debug)

vcd:
	gtkwave $(root_dir)/build/dump.vcd &>/dev/null &
