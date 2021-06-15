#!/usr/bin/env bash

MODULES="$MODULES ibex_alu.sv"
MODULES="$MODULES ibex_branch_predict.sv"
MODULES="$MODULES ibex_compressed_decoder.sv"
MODULES="$MODULES ibex_controller.sv"
MODULES="$MODULES ibex_core.sv"
MODULES="$MODULES ibex_core_tracing.sv"
MODULES="$MODULES ibex_counter.sv"
MODULES="$MODULES ibex_cs_registers.sv"
MODULES="$MODULES ibex_csr.sv"
MODULES="$MODULES ibex_decoder.sv"
MODULES="$MODULES ibex_dummy_instr.sv"
MODULES="$MODULES ibex_ex_block.sv"
MODULES="$MODULES ibex_fetch_fifo.sv"
MODULES="$MODULES ibex_icache.sv"
MODULES="$MODULES ibex_id_stage.sv"
MODULES="$MODULES ibex_if_stage.sv"
MODULES="$MODULES ibex_load_store_unit.sv"
MODULES="$MODULES ibex_multdiv_fast.sv"
MODULES="$MODULES ibex_multdiv_slow.sv"
MODULES="$MODULES ibex_pmp.sv"
MODULES="$MODULES ibex_prefetch_buffer.sv"
MODULES="$MODULES ibex_register_file_ff.sv"
MODULES="$MODULES ibex_register_file_fpga.sv"
MODULES="$MODULES ibex_register_file_latch.sv"
MODULES="$MODULES ibex_tracer.sv"
MODULES="$MODULES ibex_wb_stage.sv"

for MODULE in $MODULES; do
    ./equiv_ibex.sh $MODULE > out-$MODULE.txt 2>&1
done
