/*
:name: if
:description: A module testing if statement
:tags: 12.4
*/
module top (b);
	wire a = 1;
	output reg b = 0;
	always @* begin
		if(a) b = 1;
	end
endmodule
