module ibex_register_file_tb(
    input logic clk_i,
    output logic [31:0] rdata_a_o,
    output logic [31:0] rdata_b_o
);
    logic test_en_i;
    logic dummy_instr_id_i;
    logic [4:0] raddr_a_i;
    logic [4:0] raddr_b_i;
    logic  [4:0] waddr_a_i;
    logic [31:0] wdata_a_i;
    logic we_a_i;

    initial begin
        test_en_i = 0;
        dummy_instr_id_i = 0;
        raddr_a_i = 0;
        raddr_b_i = 0;
        waddr_a_i = 0;
        wdata_a_i = 0;
        we_a_i = 0;
    end

    integer cycle = 0;
    always_ff @(posedge clk_i) begin
        cycle++;
        unique case(cycle)
            11: begin
               raddr_a_i = 0;
               raddr_b_i = 0;
               waddr_a_i = 5'd1;
               wdata_a_i = 32'h0F0F0F0F;
               we_a_i = 1;
            end
            12: begin
               raddr_a_i = 0;
               raddr_b_i = 0;
               waddr_a_i = 5'd2;
               wdata_a_i = 32'hF0F0F0F0;
               we_a_i = 1;
            end
            13: begin
               raddr_a_i = 5'd1;
               raddr_b_i = 5'd2;
               waddr_a_i = 0;
               wdata_a_i = 0;
               we_a_i = 0;
            end
        endcase;
    end

    ibex_register_file register_file(
        .clk_i            ( clk_i            ),
        .rst_ni           ( 0                ),
        .test_en_i        ( test_en_i        ),
        .dummy_instr_id_i ( dummy_instr_id_i ),
        .raddr_a_i        ( raddr_a_i        ),
        .rdata_a_o        ( rdata_a_o        ),
        .raddr_b_i        ( raddr_b_i        ),
        .rdata_b_o        ( rdata_b_o        ),
        .waddr_a_i        ( waddr_a_i        ),
        .wdata_a_i        ( wdata_a_i        ),
        .we_a_i           ( we_a_i           )
    );
endmodule
