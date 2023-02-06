module top #(
)(
);
    typedef int unsigned ASSIGN_VADDR_RET_T[2];
    function static ASSIGN_VADDR_RET_T ASSIGN_VADDR();
        for (int i = 0; i < 2; i++) begin
            ASSIGN_VADDR[i] = 5;
        end
    endfunction

    localparam int unsigned VADDR = ASSIGN_VADDR();
	if (VADDR[0] != 5) begin
		$fatal(1,"--[0] should be 5 ");
	end;
	if (VADDR[1] != 5) begin
		$fatal(1,"--[1] should be 5");
	end;
endmodule

module main;
    top #() top1;
endmodule
