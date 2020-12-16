module ibex_decoder_tb (
    input logic clk_i,

    // to/from controller
    output logic                  illegal_insn_o,        // illegal instr encountered
    output logic                  ebrk_insn_o,           // trap instr encountered
    output logic                  mret_insn_o,           // return from exception instr encountered
    output logic                  dret_insn_o,           // return from debug instr encountered
    output logic                  ecall_insn_o,          // syscall instr encountered
    output logic                  wfi_insn_o,            // wait for interrupt instr encountered
    output logic                  jump_set_o,            // jump taken set signal
    output logic                  icache_inval_o,

    // immediates
    output ibex_pkg::imm_a_sel_e  imm_a_mux_sel_o,       // immediate selection for operand a
    output ibex_pkg::imm_b_sel_e  imm_b_mux_sel_o,       // immediate selection for operand b
    output ibex_pkg::op_a_sel_e   bt_a_mux_sel_o,        // branch target selection operand a
    output ibex_pkg::imm_b_sel_e  bt_b_mux_sel_o,        // branch target selection operand b
    output logic [31:0]           imm_i_type_o,
    output logic [31:0]           imm_s_type_o,
    output logic [31:0]           imm_b_type_o,
    output logic [31:0]           imm_u_type_o,
    output logic [31:0]           imm_j_type_o,
    output logic [31:0]           zimm_rs1_type_o,

    // register file
    output ibex_pkg::rf_wd_sel_e rf_wdata_sel_o,      // RF write data selection
    output logic                 rf_we_o,             // write enable for regfile
    output logic [4:0]           rf_raddr_a_o,
    output logic [4:0]           rf_raddr_b_o,
    output logic [4:0]           rf_waddr_o,
    output logic                 rf_ren_a_o,          // Instruction reads from RF addr A
    output logic                 rf_ren_b_o,          // Instruction reads from RF addr B

    // ALU
    output ibex_pkg::alu_op_e    alu_operator_o,        // ALU operation selection
    output ibex_pkg::op_a_sel_e  alu_op_a_mux_sel_o,    // operand a selection: reg value, PC, immediate or zero
    output ibex_pkg::op_b_sel_e  alu_op_b_mux_sel_o,    // operand b selection: reg value or immediate
    output logic                 alu_multicycle_o,      // ternary bitmanip instruction

    // MULT & DIV
    output logic                 mult_en_o,             // perform integer multiplication
    output logic                 div_en_o,              // perform integer division or remainder
    output logic                 mult_sel_o,            // as above but static, for data muxes
    output logic                 div_sel_o,             // as above but static, for data muxes

    output ibex_pkg::md_op_e     multdiv_operator_o,
    output logic [1:0]           multdiv_signed_mode_o,

    // CSRs
    output logic                 csr_access_o,          // access to CSR
    output ibex_pkg::csr_op_e    csr_op_o,              // operation to perform on CSR

    // LSU
    output logic                 data_req_o,            // start transaction to data memory
    output logic                 data_we_o,             // write enable
    output logic [1:0]           data_type_o,           // size of transaction: byte, half word or word
    output logic                 data_sign_extension_o, // sign extension for data read from memory

    // jump/branches
    output logic                 jump_in_dec_o,         // jump is being calculated in ALU
    output logic                 branch_in_dec_o
);
    import ibex_pkg::*;

    logic                 branch_taken_i;        // registered branch decision
    logic                 instr_first_cycle_i;   // instruction read is in its first cycle
    logic [31:0]          instr_rdata_i;         // instruction read from memory/cache
    logic [31:0]          instr_rdata_alu_i;     // instruction read from memory/cache
    logic                 illegal_c_insn_i;      // compressed instruction decode failed

    assign instr_rdata_alu_i = instr_rdata_i;

    initial begin
        branch_taken_i = 0;
        instr_first_cycle_i = 1;
        instr_rdata_i = 0;
        illegal_c_insn_i = 0;
    end

    integer cycle = 0;
    always_ff @(posedge clk_i) begin
        cycle++;      
        unique case (cycle)
            1:                 //    funct7,  rs2,  rs1,   funct3,   rd,     opcode
               instr_rdata_i = '{7'b0100000, 5'd3,  5'd2,  3'b000, 5'd1,  OPCODE_OP}; // SUB
            2: instr_rdata_i = '{7'b0000000, 5'd6,  5'd5,  3'b111, 5'd4,  OPCODE_OP}; // AND
            3: instr_rdata_i = '{7'b0000001, 5'd9,  5'd8,  3'b000, 5'd7,  OPCODE_OP}; // MUL
            4: instr_rdata_i = '{7'b0000001, 5'd12, 5'd11, 3'b100, 5'd10, OPCODE_OP}; // DIV
            5:                 //    imm,   rs1, funct3,    rd,      opcode
               instr_rdata_i = '{12'h00F, 5'd14, 3'b000, 5'd13, OPCODE_LOAD}; // LB
            7: instr_rdata_i = '{12'h0F0, 5'd16, 3'b001, 5'd15, OPCODE_LOAD}; // LH
            8: instr_rdata_i = '{12'hF00, 5'd18, 3'b010, 5'd17, OPCODE_LOAD}; // LW
            9:                 //  imm 11:5,  rs2,    rs1,  funct3,  imm 4:0,        opcode
               instr_rdata_i = '{7'b0000000, 5'd19, 5'd18,  3'b000, 5'b01111,  OPCODE_STORE}; // SB
           10: instr_rdata_i = '{7'b0000111, 5'd21, 5'd20,  3'b001, 5'b10000,  OPCODE_STORE}; // SH
           11: instr_rdata_i = '{7'b1111000, 5'd23, 5'd22,  3'b010, 5'b00000,  OPCODE_STORE}; // SW
        endcase;
    end

    ibex_decoder decoder(
        .clk_i                           ( clk_i                 ),
        .rst_ni                          ( 0                     ),
        .illegal_insn_o                  ( illegal_insn_o        ),
        .ebrk_insn_o                     ( ebrk_insn_o           ),
        .mret_insn_o                     ( mret_insn_o           ),
        .dret_insn_o                     ( dret_insn_o           ),
        .ecall_insn_o                    ( ecall_insn_o          ),
        .wfi_insn_o                      ( wfi_insn_o            ),
        .jump_set_o                      ( jump_set_o            ),
        .branch_taken_i                  ( branch_taken_i        ),
        .icache_inval_o                  ( icache_inval_o        ),
        .instr_first_cycle_i             ( instr_first_cycle_i   ),
        .instr_rdata_i                   ( instr_rdata_i         ),
        .instr_rdata_alu_i               ( instr_rdata_alu_i     ),
        .illegal_c_insn_i                ( illegal_c_insn_i      ),
        .imm_a_mux_sel_o                 ( imm_a_mux_sel_o       ),
        .imm_b_mux_sel_o                 ( imm_b_mux_sel_o       ),
        .bt_a_mux_sel_o                  ( bt_a_mux_sel_o        ),
        .bt_b_mux_sel_o                  ( bt_b_mux_sel_o        ),
        .imm_i_type_o                    ( imm_i_type_o          ),
        .imm_s_type_o                    ( imm_s_type_o          ),
        .imm_b_type_o                    ( imm_b_type_o          ),
        .imm_u_type_o                    ( imm_u_type_o          ),
        .imm_j_type_o                    ( imm_j_type_o          ),
        .zimm_rs1_type_o                 ( zimm_rs1_type_o       ),
        .rf_wdata_sel_o                  ( rf_wdata_sel_o        ),
        .rf_we_o                         ( rf_we_o               ),
        .rf_raddr_a_o                    ( rf_raddr_a_o          ),
        .rf_raddr_b_o                    ( rf_raddr_b_o          ),
        .rf_waddr_o                      ( rf_waddr_o            ),
        .rf_ren_a_o                      ( rf_ren_a_o            ),
        .rf_ren_b_o                      ( rf_ren_b_o            ),
        .alu_operator_o                  ( alu_operator_o        ),
        .alu_op_a_mux_sel_o              ( alu_op_a_mux_sel_o    ),
        .alu_op_b_mux_sel_o              ( alu_op_b_mux_sel_o    ),
        .alu_multicycle_o                ( alu_multicycle_o      ),
        .mult_en_o                       ( mult_en_o             ),
        .div_en_o                        ( div_en_o              ),
        .mult_sel_o                      ( mult_sel_o            ),
        .div_sel_o                       ( div_sel_o             ),
        .multdiv_operator_o              ( multdiv_operator_o    ),
        .multdiv_signed_mode_o           ( multdiv_signed_mode_o ),
        .csr_access_o                    ( csr_access_o          ),
        .csr_op_o                        ( csr_op_o              ),
        .data_req_o                      ( data_req_o            ),
        .data_we_o                       ( data_we_o             ),
        .data_type_o                     ( data_type_o           ),
        .data_sign_extension_o           ( data_sign_extension_o ),
        .jump_in_dec_o                   ( jump_in_dec_o         ),
        .branch_in_dec_o                 ( branch_in_dec_o       )
    );
endmodule
