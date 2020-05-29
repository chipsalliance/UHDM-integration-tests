TESTS = $(shell find tests -name *.sv | cut -d\/ -f2 | sort)
TEST ?= tests/onenet

include $(TEST)/Makefile.in

all:
	@echo "Available tests: $(TESTS)"

verilator/configure: verilator/configure.ac
	(cd verilator && autoconf)

verilator/Makefile: verilator/configure
	(cd verilator && ./configure --prefix=$(PWD)/image)

verilator/bin/verilator_bin: verilator/Makefile
	(cd verilator && make -j`nproc`)

image/bin/verilator: verilator/bin/verilator_bin
	(cd verilator && make install)

yosys/yosys: yosys/Makefile uhdm/build
	(cd yosys && make -j`nproc`)

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
	cd vcddiff && make

# ------------ Surelog ------------ 
surelog: Surelog/build/dist/Release/hellosureworld

Surelog/build/dist/Release/hellosureworld:
	(cd Surelog && make PREFIX=$(PWD)/image && make install)

surelog/parse: surelog
	mkdir -p build
	(cd build && \
		../Surelog/build/bin/hellosureworld -parse -sverilog ../$(TOP_FILE))
	cp build/slpp_all/surelog.uhdm build/top.uhdm

# ------------ UHDM ------------ 

uhdm/clean:
	rm -rf obj_dir slpp_all build

uhdm/cleanall: uhdm/clean
	rm -rf ./image
	(cd UHDM && make clean)
	(cd verilator && make clean)
	(cd Surelog && make clean)
	(cd yosys && make clean)
	(cd vcddiff && make clean)

uhdm/build:
	mkdir -p UHDM/build
	(cd UHDM/build && cmake \
		-DCMAKE_INSTALL_PREFIX=$(PWD)/image \
		-D_GLIBCXX_DEBUG=1 \
		-DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_CXX_FLAGS='-D_GLIBCXX_USE_CXX11_ABI=1 -DWITH_LIBCXX=Off' \
		../)
	(cd UHDM && make install)

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
			--exe ../$(MAIN_FILE) --xml-only --debug)

uhdm/verilator/test-ast: uhdm/verilator/build surelog/parse
	mkdir -p build
	(cd build && \
		../image/bin/verilator --uhdm-ast --cc ./top.uhdm \
			--top-module $(TOP_MODULE) \
			--exe ../$(MAIN_FILE) --trace && \
		 make -j -C obj_dir -f $(TOP_MAKEFILE) $(VERILATED_BIN) && \
		 obj_dir/$(VERILATED_BIN))

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

uhdm/vcddiff: vcddiff/vcddiff
	make uhdm/verilator/test-ast
	mv build/dump.vcd build/dump_verilator.vcd
	rm -rf build/obj_dir
	make uhdm/yosys/verilate-ast
	mv build/dump.vcd build/dump_yosys.vcd
	vcddiff/vcddiff build/dump_yosys.vcd build/dump_verilator.vcd
