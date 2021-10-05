# UHDM-integration
Repository for testing SystemVerilog support status in Yosys/Verilator via UHDM

## Setup

### Install dependencies
Ensure you have [latest CMake](https://cmake.org/download/) (needed for Surelog/UHDM).

```
sudo apt install g++-7 cmake build-essential tclsh \
 ant default-jre swig google-perftools libgoogle-perftools-dev \
 python3 python3-dev
```

### Verilator setup:

```
git clone https://github.com/antmicro/verilator.git -b uhdm-verilator
cd verilator
git submodule update --init --recursive
./build_binaries.sh
cd uhdm-integration
```

### Yosys setup:

```
git clone https://github.com/antmicro/yosys.git -b uhdm-yosys
cd yosys
git submodule update --init --recursive
./build_binaries.sh
cd uhdm-integration
```

## Running tests

These are the main kinds of test cases:
### Surelog-UHDM-Verilator flow

```
make uhdm/verilator/test-ast
```

SystemVerilog file is parsed by Surelog and stored in UHDM file. Then it's parsed by Verilator using UHDM frontend and simulated.

### Surelog-UHDM-Yosys flow

```
make uhdm/yosys/test-ast
```

SystemVerilog file is parsed by Surelog and stored in UHDM file. Then it's imported into Yosys using UHDM frontend and a simple script is executed.

### Full flow

```
make uhdm/vcddiff
```

* SystemVerilog file is parsed by Surelog and stored in UHDM file. UHDM file is imported into Verilator and simulated.
* UHDM file is imported into Yosys, `hierachy` and `prep` steps are executed, then resulting verilog code is stored in the file.
* Verilog output from Yosys is imported into Verilator and simulated.
* Two VCD files from simulation (Surelog-UHDM-Verilator and Surelog-UHDM-Yosys-Verilator) are compared using `vcddiff` utility.

### UHDM-Verilator cmake flow
```
make uhdm/verilator/test-cmake
```

This is the same flow as `uhdm/verilator/test-ast`, but makes use of Verilator's `cmake` functionality instead of default `make`. It allows bypassing some platform-specific quirks in Verilator makefiles and makes it easier to run tests on different platforms. Currently it is the only supported way to run tests on MacOS.

Note that to run this flow the test needs to have a dedicated CMakeLists file. At this point only the ones in `tests/cmake` directory are supported.

## Test cases

Available test cases are in the `tests` directory. They are chosen using `TEST_CASE` variable on make invocation, like so:
```
TEST=tests/OneNetModport make uhdm/verilator/test-ast
```
Test results will be stored in `./build`.

Tools are expected to be in `../images` folder. They can be built using `build_binaries.sh` found in Yosys/Verilator repository referenced in Setup.

### Module tests
`tests/ibex` and `tests/opentitan` contain special tests intended to test support for individual modules of [Ibex](https://github.com/lowRISC/ibex) and [OpenTitan](https://github.com/lowRISC/opentitan) designs. They make some assumptions regarding the location of the source files and so may need extra steps before running. Please refer to their makefiles for details.

## Integration details

### UHDM-Yosys

In Yosys, the UHDM frontend walks the design tree and converts its nodes into Yosys AST nodes. The Yosys AST representation has previously been used by Yosys’ Verilog frontend, which parses Verilog code and generates the AST. However, this is not what Yosys operates on. The internal representation used for all of Yosys’ passes and backends is the RTL Intermediate Language, or RTLIL.

RTLIL represents netlist data with the addition of addressable memories and processes (i.e. Verilog always blocks). More information on it can be found in [Yosys’ manual](http://www.clifford.at/yosys/files/yosys_manual.pdf) (section 4.2). To convert the AST we generate from UHDM to RTLIL, we use another, already existing, frontend, which accepts the AST (not as a file, but as an in-memory structure) and generates the appropriate RTLIL. The reason for using it is that the AST is much easier to generate from UHDM, as it already supports many Verilog features, whereas the RTLIL provides only very simple primitives.

This approach allows us to only add new functionality to Yosys (which is the new frontend) and not modify any of the existing code, at least for now. Certainly, adding support for more SystemVerilog features will require a lot of additional work in Yosys internals in the future. Nevertheless, supporting the core Verilog syntax has been fairly straightforward.

The UHDM frontend uses two helper functions, `visit_one_to_one` (for traversing 1-1 relations in VPI) and `visit_one_to_many` (for traversing 1-many relations in VPI). Each node is then handled according to its type, and the appropriate AST is created. These helper functions also accept a lambda that is executed for each of the encountered nodes.

### UHDM-Verilator

Verilator follows the same basic principle (including the helper functions), although without the additional step of converting the Verilator AST into another internal representation, as all Verilator passes are performed on the AST.

Minimal changes needed to be done in the Verilator itself, mostly having to do with using another frontend - mainline Verilator only uses its own grammar, so a couple of command line switches and logic when loading the file were added:

* `--uhdm-ast <file>` - read provided UHDM \<file\>
* `--dump-uhdm` - print entire UHDM tree for debugging
* `--uhdm-cov <file>` - print visited UHDM nodes to \<file\> (see below)
 
Currently the design can be read either from UHDM or using the normal parser, but it would be possible to introduce support for mixed designs relatively easily.

The frontend can also be used to generate a coverage report. An intermediary file can be created, that lists nodes present in the UHDM tree and which of those were visited by the frontend, which is then fed to a script available [here](./gen_coverage_report.py). Note that it is not the aim to visit each and every node, as not all of them have a directly corresponding AST node. Nevertheless, it is useful for identifying potentially missed nodes.

Verilator already has some support for SystemVerilog features, including basic support for classes. There’s ongoing progress in parallel to the frontend work to bring more of them, especially related to the UVM, to the simulator.
