TESTS = $(shell find tests -name *.sv | cut -d\/ -f2 | sort)
TEST ?= tests/onenet

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

# ------------ Surelog ------------ 
surelog: Surelog/build/dist/Release/hellosureworld

Surelog/build/dist/Release/hellosureworld:
	(cd Surelog && make PREFIX=$(PWD)/image && make install)

surelog/parse: surelog
	mkdir -p build
	(cd build && \
		../Surelog/build/dist/Release/hellosureworld -parse ../$(TEST)/top.sv)
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
		../image/bin/verilator --cc ../$(TEST)/top.sv \
			--exe ../$(TEST)/main.cpp --xml-only)

uhdm/verilator/ast-xml: uhdm/verilator/build surelog/parse
	mkdir -p build
	(cd build && \
		../image/bin/verilator --uhdm-ast --cc ../$(TEST)/top.uhdm \
			--exe ../$(TEST)/main.cpp --xml-only --debug)

uhdm/verilator/test-ast: uhdm/verilator/build surelog/parse
	mkdir -p build
	(cd build && \
		../image/bin/verilator --uhdm-ast --cc ../$(TEST)/top.uhdm \
			--exe ../$(TEST)/main.cpp --trace && \
		 make -j -C obj_dir -f Vtop.mk Vtop && \
		 obj_dir/Vtop)

uhdm/yosys/test-ast: yosys/yosys surelog/parse
	mkdir -p build
	(cd build && \
		../yosys/yosys -s ../$(TEST)/yosys_script)
