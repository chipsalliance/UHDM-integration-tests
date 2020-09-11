interface ibex_decoder_if (input logic clk_i);
    logic                  rst_ni;

    // to/from controller
    logic                  illegal_insn_o;        // illegal instr encountered
    logic                  ebrk_insn_o;           // trap instr encountered
    logic                  mret_insn_o;           // return from exception instr encountered
    logic                  dret_insn_o;           // return from debug instr encountered
    logic                  ecall_insn_o;          // syscall instr encountered
    logic                  wfi_insn_o;            // wait for interrupt instr encountered
    logic                  jump_set_o;            // jump taken set signal
    logic                  branch_taken_i;        // registered branch decision
    logic                  icache_inval_o;

    // from IF-ID pipeline register
    logic                 instr_first_cycle_i;   // instruction read is in its first cycle
    logic [31:0]          instr_rdata_i;         // instruction read from memory/cache

    logic                 illegal_c_insn_i;      // compressed instruction decode failed

    // immediates
    ibex_pkg::imm_a_sel_e  imm_a_mux_sel_o;       // immediate selection for operand a
    ibex_pkg::imm_b_sel_e  imm_b_mux_sel_o;       // immediate selection for operand b
    ibex_pkg::op_a_sel_e   bt_a_mux_sel_o;        // branch target selection operand a
    ibex_pkg::imm_b_sel_e  bt_b_mux_sel_o;        // branch target selection operand b
    logic [31:0]           imm_i_type_o;
    logic [31:0]           imm_s_type_o;
    logic [31:0]           imm_b_type_o;
    logic [31:0]           imm_u_type_o;
    logic [31:0]           imm_j_type_o;
    logic [31:0]           zimm_rs1_type_o;

    // register file
    ibex_pkg::rf_wd_sel_e rf_wdata_sel_o;      // RF write data selection
    logic                 rf_we_o;             // write enable for regfile
    logic [4:0]           rf_raddr_a_o;
    logic [4:0]           rf_raddr_b_o;
    logic [4:0]           rf_waddr_o;
    logic                 rf_ren_a_o;          // Instruction reads from RF addr A
    logic                 rf_ren_b_o;          // Instruction reads from RF addr B

    // ALU
    ibex_pkg::alu_op_e    alu_operator_o;        // ALU operation selection
    ibex_pkg::op_a_sel_e  alu_op_a_mux_sel_o;    // operand a selection: reg value, PC, immediate or zero
    ibex_pkg::op_b_sel_e  alu_op_b_mux_sel_o;    // operand b selection: reg value or immediate
    logic                 alu_multicycle_o;      // ternary bitmanip instruction

    // MULT & DIV
    logic                 mult_en_o;             // perform integer multiplication
    logic                 div_en_o;              // perform integer division or remainder
    logic                 mult_sel_o;            // as above but static, for data muxes
    logic                 div_sel_o;             // as above but static, for data muxes

    ibex_pkg::md_op_e     multdiv_operator_o;
    logic [1:0]           multdiv_signed_mode_o;

    // CSRs
    logic                 csr_access_o;          // access to CSR
    ibex_pkg::csr_op_e    csr_op_o;              // operation to perform on CSR

    // LSU
    logic                 data_req_o;            // start transaction to data memory
    logic                 data_we_o;             // write enable
    logic [1:0]           data_type_o;           // size of transaction: byte, half word or word
    logic                 data_sign_extension_o; // sign extension for data read from memory

    // jump/branches
    logic                 jump_in_dec_o;         // jump is being calculated in ALU
    logic                 branch_in_dec_o;
endinterface

module ibex_decoder_wrapper (ibex_decoder_if dec_if);
    ibex_decoder decoder(
        .clk_i                           ( dec_if.clk_i                 ),
        .rst_ni                          ( dec_if.rst_ni                ),
        .illegal_insn_o                  ( dec_if.illegal_insn_o        ),
        .ebrk_insn_o                     ( dec_if.ebrk_insn_o           ),
        .mret_insn_o                     ( dec_if.mret_insn_o           ),
        .dret_insn_o                     ( dec_if.dret_insn_o           ),
        .ecall_insn_o                    ( dec_if.ecall_insn_o          ),
        .wfi_insn_o                      ( dec_if.wfi_insn_o            ),
        .jump_set_o                      ( dec_if.jump_set_o            ),
        .branch_taken_i                  ( dec_if.branch_taken_i        ),
        .icache_inval_o                  ( dec_if.icache_inval_o        ),
        .instr_first_cycle_i             ( dec_if.instr_first_cycle_i   ),
        .instr_rdata_i                   ( dec_if.instr_rdata_i         ),
        .instr_rdata_alu_i               ( dec_if.instr_rdata_i         ),
        .illegal_c_insn_i                ( dec_if.illegal_c_insn_i      ),
        .imm_a_mux_sel_o                 ( dec_if.imm_a_mux_sel_o       ),
        .imm_b_mux_sel_o                 ( dec_if.imm_b_mux_sel_o       ),
        .bt_a_mux_sel_o                  ( dec_if.bt_a_mux_sel_o        ),
        .bt_b_mux_sel_o                  ( dec_if.bt_b_mux_sel_o        ),
        .imm_i_type_o                    ( dec_if.imm_i_type_o          ),
        .imm_s_type_o                    ( dec_if.imm_s_type_o          ),
        .imm_b_type_o                    ( dec_if.imm_b_type_o          ),
        .imm_u_type_o                    ( dec_if.imm_u_type_o          ),
        .imm_j_type_o                    ( dec_if.imm_j_type_o          ),
        .zimm_rs1_type_o                 ( dec_if.zimm_rs1_type_o       ),
        .rf_wdata_sel_o                  ( dec_if.rf_wdata_sel_o        ),
        .rf_we_o                         ( dec_if.rf_we_o               ),
        .rf_raddr_a_o                    ( dec_if.rf_raddr_a_o          ),
        .rf_raddr_b_o                    ( dec_if.rf_raddr_b_o          ),
        .rf_waddr_o                      ( dec_if.rf_waddr_o            ),
        .rf_ren_a_o                      ( dec_if.rf_ren_a_o            ),
        .rf_ren_b_o                      ( dec_if.rf_ren_b_o            ),
        .alu_operator_o                  ( dec_if.alu_operator_o        ),
        .alu_op_a_mux_sel_o              ( dec_if.alu_op_a_mux_sel_o    ),
        .alu_op_b_mux_sel_o              ( dec_if.alu_op_b_mux_sel_o    ),
        .alu_multicycle_o                ( dec_if.alu_multicycle_o      ),
        .mult_en_o                       ( dec_if.mult_en_o             ),
        .div_en_o                        ( dec_if.div_en_o              ),
        .mult_sel_o                      ( dec_if.mult_sel_o            ),
        .div_sel_o                       ( dec_if.div_sel_o             ),
        .multdiv_operator_o              ( dec_if.multdiv_operator_o    ),
        .multdiv_signed_mode_o           ( dec_if.multdiv_signed_mode_o ),
        .csr_access_o                    ( dec_if.csr_access_o          ),
        .csr_op_o                        ( dec_if.csr_op_o              ),
        .data_req_o                      ( dec_if.data_req_o            ),
        .data_we_o                       ( dec_if.data_we_o             ),
        .data_type_o                     ( dec_if.data_type_o           ),
        .data_sign_extension_o           ( dec_if.data_sign_extension_o ),
        .jump_in_dec_o                   ( dec_if.jump_in_dec_o         ),
        .branch_in_dec_o                 ( dec_if.branch_in_dec_o       )
    );
endmodule

`include "uvm_macros.svh"
import uvm_pkg::*;

class ibex_decoder_test extends uvm_test;
    `uvm_component_utils(ibex_decoder_test)

    virtual ibex_decoder_if dut_if;

    function new(string name, uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        uvm_config_db #(virtual ibex_decoder_if)::get(null, "*", "dut_if", dut_if);
        if (dut_if == null) begin
            `uvm_error("", "Ibex decoder interface is null!");
        end
    endfunction

    task run_phase(uvm_phase phase);
        `uvm_info("", "Ibex decoder test started", UVM_MEDIUM);
        phase.raise_objection(this);

        @(posedge dut_if.clk_i);
        dut_if.branch_taken_i = 0;
        dut_if.instr_first_cycle_i = 1;
        dut_if.illegal_c_insn_i = 0;
        dut_if.instr_rdata_i = 32'b0100000_00011_00010_000_00001_0110011;

        @(negedge dut_if.clk_i);
        assert(dut_if.alu_operator_o == ibex_pkg::ALU_SUB);
        assert(dut_if.mult_en_o == 1'b0);
        assert(dut_if.mult_sel_o == 1'b0);
        assert(dut_if.div_en_o == 1'b0);
        assert(dut_if.div_sel_o == 1'b0);
        assert(dut_if.data_req_o == 1'b0);
        assert(dut_if.data_we_o == 1'b0);
        assert(dut_if.rf_we_o == 1'b1);
        assert(dut_if.rf_waddr_o == 5'b00001);
        assert(dut_if.rf_raddr_a_o == 5'b00010);
        assert(dut_if.rf_raddr_b_o == 5'b00011);
        `uvm_info("", $sformatf("SUB: op=%0h, rd=%0d, rs1=%0d, rs2=%0d", dut_if.alu_operator_o, dut_if.rf_waddr_o, dut_if.rf_raddr_a_o, dut_if.rf_raddr_b_o), UVM_MEDIUM);

        @(posedge dut_if.clk_i);
        dut_if.instr_rdata_i = 32'b0000000_00110_00101_111_00100_0110011;

        @(negedge dut_if.clk_i);
        assert(dut_if.alu_operator_o == ibex_pkg::ALU_AND);
        assert(dut_if.mult_en_o == 1'b0);
        assert(dut_if.mult_sel_o == 1'b0);
        assert(dut_if.div_en_o == 1'b0);
        assert(dut_if.div_sel_o == 1'b0);
        assert(dut_if.data_req_o == 1'b0);
        assert(dut_if.data_we_o == 1'b0);
        assert(dut_if.rf_we_o == 1'b1);
        assert(dut_if.rf_waddr_o == 5'b00100);
        assert(dut_if.rf_raddr_a_o == 5'b00101);
        assert(dut_if.rf_raddr_b_o == 5'b00110);
        `uvm_info("", $sformatf("AND: op=%0h, rd=%0d, rs1=%0d, rs2=%0d", dut_if.alu_operator_o, dut_if.rf_waddr_o, dut_if.rf_raddr_a_o, dut_if.rf_raddr_b_o), UVM_MEDIUM);

        @(posedge dut_if.clk_i);
        dut_if.instr_rdata_i = 32'b0000001_01001_01000_000_00111_0110011;

        @(negedge dut_if.clk_i);
        assert(dut_if.mult_en_o == 1'b1);
        assert(dut_if.mult_sel_o == 1'b1);
        assert(dut_if.div_en_o == 1'b0);
        assert(dut_if.div_sel_o == 1'b0);
        assert(dut_if.data_req_o == 1'b0);
        assert(dut_if.data_we_o == 1'b0);
        assert(dut_if.rf_we_o == 1'b1);
        assert(dut_if.rf_waddr_o == 5'b00111);
        assert(dut_if.rf_raddr_a_o == 5'b01000);
        assert(dut_if.rf_raddr_b_o == 5'b01001);
        `uvm_info("", $sformatf("MUL: mult_en=%0b, rd=%0d, rs1=%0d, rs2=%0d", dut_if.mult_en_o, dut_if.rf_waddr_o, dut_if.rf_raddr_a_o, dut_if.rf_raddr_b_o), UVM_MEDIUM);

        @(posedge dut_if.clk_i);
        dut_if.instr_rdata_i = 32'b0000001_01100_01011_100_01010_0110011;

        @(negedge dut_if.clk_i);
        assert(dut_if.mult_en_o == 1'b0);
        assert(dut_if.mult_sel_o == 1'b0);
        assert(dut_if.div_en_o == 1'b1);
        assert(dut_if.div_sel_o == 1'b1);
        assert(dut_if.data_req_o == 1'b0);
        assert(dut_if.data_we_o == 1'b0);
        assert(dut_if.rf_we_o == 1'b1);
        assert(dut_if.rf_waddr_o == 5'b01010);
        assert(dut_if.rf_raddr_a_o == 5'b01011);
        assert(dut_if.rf_raddr_b_o == 5'b01100);
        `uvm_info("", $sformatf("DIV: div_en=%0b, rd=%0d, rs1=%0d, rs2=%0d", dut_if.div_en_o, dut_if.rf_waddr_o, dut_if.rf_raddr_a_o, dut_if.rf_raddr_b_o), UVM_MEDIUM);

        @(posedge dut_if.clk_i);
        dut_if.instr_rdata_i = 32'b000000000000_01110_000_01101_0000011;

        @(negedge dut_if.clk_i);
        assert(dut_if.mult_en_o == 1'b0);
        assert(dut_if.mult_sel_o == 1'b0);
        assert(dut_if.div_en_o == 1'b0);
        assert(dut_if.div_sel_o == 1'b0);
        assert(dut_if.data_req_o == 1'b1);
        assert(dut_if.data_we_o == 1'b0);
        assert(dut_if.rf_we_o == 1'b0);
        assert(dut_if.rf_waddr_o == 5'b01101);
        assert(dut_if.rf_raddr_a_o == 5'b01110);
        `uvm_info("", $sformatf("LB: data_req=%0b, data_we=%0b, rd=%0d, rs1=%0d", dut_if.data_req_o, dut_if.data_we_o, dut_if.rf_waddr_o, dut_if.rf_raddr_a_o), UVM_MEDIUM);

        @(posedge dut_if.clk_i);
        dut_if.instr_rdata_i = 32'b00000000000_10000_000_01111_0100011;

        @(negedge dut_if.clk_i);
        assert(dut_if.mult_en_o == 1'b0);
        assert(dut_if.mult_sel_o == 1'b0);
        assert(dut_if.div_en_o == 1'b0);
        assert(dut_if.div_sel_o == 1'b0);
        assert(dut_if.data_req_o == 1'b1);
        assert(dut_if.data_we_o == 1'b1);
        assert(dut_if.rf_we_o == 1'b0);
        assert(dut_if.rf_waddr_o == 5'b01111);
        assert(dut_if.rf_raddr_a_o == 5'b10000);
        `uvm_info("", $sformatf("SB: data_req=%0b, data_we=%0b, rd=%0d, rs1=%0d", dut_if.data_req_o, dut_if.data_we_o, dut_if.rf_waddr_o, dut_if.rf_raddr_a_o), UVM_MEDIUM);

        phase.drop_objection(this);
        `uvm_info("", "Ibex decoder test ended", UVM_MEDIUM);
    endtask

endclass

module ibex_decoder_tb (input logic clk_i);
    import ibex_pkg::*;

    ibex_decoder_test test;
    ibex_decoder_if dut_if(clk_i);
    ibex_decoder_wrapper dut_wr(.dec_if (dut_if));

    initial begin
        test = new("ibex_decoder_test");
        uvm_config_db #(virtual ibex_decoder_if)::set(null, "*", "dut_if", dut_if);
        run_test();
    end

endmodule
