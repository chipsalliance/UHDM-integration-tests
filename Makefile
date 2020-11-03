TESTS = $(shell find tests -maxdepth 2 -name Makefile.in | cut -d\/ -f2 | sort -u)
TEST ?= tests/onenet

root_dir:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

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
	(cd yosys && \
		$(MAKE))

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
			--top-module work_$(TOP_MODULE) \
			--dump-uhdm \
			--exe ../$(MAIN_FILE) --xml-only --debug)

uhdm/verilator/test-ast: uhdm/verilator/build surelog/parse
	mkdir -p build
	(cd build && \
		../image/bin/verilator --uhdm-ast --cc ./top.uhdm \
			--top-module work_$(TOP_MODULE) \
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


uhdm/vcddiff: vcddiff/vcddiff
	$(MAKE) uhdm/verilator/test-ast
	mv build/dump.vcd build/dump_verilator.vcd
	rm -rf build/obj_dir
	$(MAKE) uhdm/yosys/verilate-ast
	mv build/dump.vcd build/dump_yosys.vcd
	vcddiff/vcddiff build/dump_yosys.vcd build/dump_verilator.vcd
