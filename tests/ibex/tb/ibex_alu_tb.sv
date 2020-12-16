module ibex_alu_tb (
    input  logic        clk_i,
    output logic [31:0] adder_result_o,
    output logic [33:0] adder_result_ext_o,
    output logic [31:0] result_o,
    output logic        cmp_result_o,
    output logic is_equal_result_o
);
    ibex_pkg::alu_op_e operator_i;
    logic [31:0]       operand_a_i;
    logic [31:0]       operand_b_i;
    logic              instr_first_cycle_i;

    logic [31:0] imd_val_q_i[2];
    logic [ 1:0] imd_val_we_o;
    logic [31:0] imd_val_d_o[2];

    logic [32:0] multdiv_operand_b_i, multdiv_operand_a_i;
    logic        multdiv_sel_i;

    for (genvar i=0; i<2; i++) begin : gen_intermediate_val_reg
        always_ff @(posedge clk_i) begin : intermediate_val_reg
            if (imd_val_we_o[i]) begin
                imd_val_q_i[i] <= imd_val_d_o[i];
            end
        end
    end

    assign operator_i          = ibex_pkg::ALU_AND;
    assign operand_a_i         = 32'hFFFFFF00;
    assign operand_b_i         = 32'h00FFFFFF;
    assign instr_first_cycle_i = 0;
    assign multdiv_sel_i       = 0;

    ibex_alu alu(
        .operator_i          ( operator_i          ),
        .operand_a_i         ( operand_a_i         ),
        .operand_b_i         ( operand_b_i         ),
        .instr_first_cycle_i ( instr_first_cycle_i ),
        .imd_val_q_i         ( imd_val_q_i         ),
        .imd_val_we_o        ( imd_val_we_o        ),
        .imd_val_d_o         ( imd_val_d_o         ),
        .multdiv_operand_a_i ( multdiv_operand_a_i ),
        .multdiv_operand_b_i ( multdiv_operand_b_i ),
        .multdiv_sel_i       ( multdiv_sel_i       ),
        .adder_result_o      ( adder_result_o      ),
        .adder_result_ext_o  ( adder_result_ext_o  ),
        .result_o            ( result_o            ),
        .comparison_result_o ( cmp_result_o        ),
        .is_equal_result_o   ( is_equal_result_o   )
    );
endmodule
