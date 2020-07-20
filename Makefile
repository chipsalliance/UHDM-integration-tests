TESTS = $(shell find tests -name *.sv | cut -d\/ -f2 | sort -u)
TEST ?= tests/onenet

include $(TEST)/Makefile.in

all:
	@echo "Available tests: $(TESTS)"

verilator/configure: verilator/configure.ac
	(cd verilator && autoconf)

verilator/Makefile: verilator/configure
	(cd verilator && ./configure --prefix=$(PWD)/image)

verilator/bin/verilator_bin: verilator/Makefile
	$(MAKE) -C verilator

image/bin/verilator: verilator/bin/verilator_bin
	$(MAKE) -C verilator install

yosys/yosys: yosys/Makefile uhdm/build
	$(MAKE) -C yosys

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
	(cd Surelog && make PREFIX=$(PWD)/image release install)

surelog/regression: surelog
	$(MAKE) -C Surelog regression

surelog/parse: surelog
	mkdir -p build
	(cd build && \
		../image/bin/surelog -parse -sverilog -d coveruhdm ../$(TOP_FILE))
	cp build/slpp_all/surelog.uhdm build/top.uhdm

surelog/ibex-current: surelog
	mkdir -p build
	(cd Surelog/third_party/tests/Earlgrey_0_1/sim-icarus && \
		../../../../../image/bin/surelog -f Earlgrey_0_1.sl \
	)
	cp Surelog/third_party/tests/Earlgrey_0_1/sim-icarus/slpp_all/surelog.uhdm build/top.uhdm

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
	mkdir -p UHDM/build
	-(cd UHDM && git apply ../UHDM.patch)
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

uhdm/verilator/coverage: uhdm/verilator/build surelog/ibex-current
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

uhdm/yosys/coverage: yosys/yosys surelog/ibex-current
	mkdir -p build
	-(cd Surelog/third_party/tests/Earlgrey_0_1/sim-icarus && \
		../../../../../yosys/yosys -p \
		"read_uhdm -report ../../../../../build/coverage ../../../../../build/top.uhdm")

uhdm/vcddiff: vcddiff/vcddiff
	$(MAKE) uhdm/verilator/test-ast
	mv build/dump.vcd build/dump_verilator.vcd
	rm -rf build/obj_dir
	$(MAKE) uhdm/yosys/verilate-ast
	mv build/dump.vcd build/dump_yosys.vcd
	vcddiff/vcddiff build/dump_yosys.vcd build/dump_verilator.vcd
