#!/usr/bin/env bash

IBEX_RTL=tests/ibex/ibex/rtl
MODULES="$IBEX_RTL/ibex_pkg.sv "
INCLUDE=tests/ibex/ibex/vendor/lowrisc_ip/ip/prim/rtl/
case $1 in
    "ibex_cs_registers.sv") MODULES="$MODULES $IBEX_RTL/ibex_csr.sv $IBEX_RTL/ibex_counter.sv";;
    "ibex_core_tracing.sv") MODULES="$MODULES $IBEX_RTL/ibex_tracer_pkg.sv $IBEX_RTL/ibex_tracer.sv";;
    "ibex_ex_block.sv") MODULES="$MODULES $IBEX_RTL/ibex_alu.sv $IBEX_RTL/ibex_multdiv_fast.sv";;
    "ibex_id_stage.sv") MODULES="$MODULES $IBEX_RTL/ibex_controller.sv $IBEX_RTL/ibex_decoder.sv";;
    "ibex_if_stage.sv") MODULES="$MODULES $IBEX_RTL/ibex_compressed_decoder.sv $IBEX_RTL/ibex_prefetch_buffer.sv $IBEX_RTL/ibex_fetch_fifo.sv";;
    "ibex_prefetch_buffer.sv") MODULES="$MODULES $IBEX_RTL/ibex_fetch_fifo.sv";;
    "ibex_tracer.sv") MODULES="$MODULES $IBEX_RTL/ibex_tracer_pkg.sv";;
esac
MODULES="$MODULES $IBEX_RTL/$1"

OUT_DIR=build-equiv

rm -rf $OUT_DIR
mkdir -p $OUT_DIR

sv2v -I$INCLUDE $MODULES >> $OUT_DIR/test.v

../image/bin/surelog -parse -sverilog $MODULES -I$INCLUDE -odir $OUT_DIR

echo $MODULES
../image/bin/yosys -p "\
    read_verilog -sv $OUT_DIR/test.v; \
    prep -auto-top; \
    rename -top gold; \
    design -stash gold; \
    read_uhdm -debug $OUT_DIR/slpp_all/surelog.uhdm; \
    prep -auto-top; \
    rename -top gate; \
    design -stash gate; \
    design -copy-from gold -as gold gold; \
    design -copy-from gate -as gate gate; \
    equiv_make gold gate equiv; \
    hierarchy -top equiv; \
    flatten; \
    equiv_struct; \
    equiv_induct; \
    equiv_status -assert;"
