module ibex_alu_tb (
    input  logic        clk,
    output logic [31:0] adder_result,
    output logic [33:0] adder_result_ext,
    output logic [31:0] result,
    output logic        cmp_result,
    output logic is_equal_result
);
    ibex_pkg::alu_op_e operator;
    logic [31:0]       operand_a;
    logic [31:0]       operand_b;
    logic              instr_first_cycle;

    logic [31:0] imd_val_q[2];
    logic [ 1:0] imd_val_we;
    logic [31:0] imd_val_d[2];

    logic [32:0] multdiv_operand_b, multdiv_operand_a;
    logic        multdiv_sel;

    for (genvar i=0; i<2; i++) begin : gen_intermediate_val_reg
        always_ff @(posedge clk) begin : intermediate_val_reg
            if (imd_val_we[i]) begin
                imd_val_q[i] <= imd_val_d[i];
            end
        end
    end

    assign operator          = ibex_pkg::ALU_AND;
    assign operand_a         = 32'hFFFFFF00;
    assign operand_b         = 32'h00FFFFFF;
    assign instr_first_cycle = 0;
    assign multdiv_sel       = 0;

    ibex_alu alu(
        .operator_i          ( operator          ),
        .operand_a_i         ( operand_a         ),
        .operand_b_i         ( operand_b         ),
        .instr_first_cycle_i ( instr_first_cycle ),
        .imd_val_q_i         ( imd_val_q         ),
        .imd_val_we_o        ( imd_val_we        ),
        .imd_val_d_o         ( imd_val_d         ),
        .multdiv_operand_a_i ( multdiv_operand_a ),
        .multdiv_operand_b_i ( multdiv_operand_b ),
        .multdiv_sel_i       ( multdiv_sel       ),
        .adder_result_o      ( adder_result      ),
        .adder_result_ext_o  ( adder_result_ext  ),
        .result_o            ( result            ),
        .comparison_result_o ( cmp_result        ),
        .is_equal_result_o   ( is_equal_result   )
    );
endmodule
