# UHDM-integration
Repository for testing SystemVerilog support status in Yosys/Verilator via UHDM

## Setup

Clone the repository:

```
git clone https://github.com/antmicro/uhdm-integration.git
cd uhdm-integration
git submodule update --init --recursive
```

### Install dependencies
Ensure you have [latest CMake](https://cmake.org/download/) (needed for Surelog/UHDM).

```
sudo apt install g++-7 cmake build-essential tclsh \
 ant default-jre swig google-perftools libgoogle-perftools-dev \
 python3 python3-dev
```

## Running tests

There are three main kinds of test cases:
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

## Test cases

Available test cases are in the `tests` directory. They are chosen using `TEST_CASE` variable on make invocation, like so:
```
TEST=tests/OneNetModport make uhdm/verilator/test-ast
```

Tools are built automatically and are installed to `./images` folder. Test results will be stored in `./build`.
