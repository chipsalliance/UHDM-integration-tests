/*
:name: if_else
:description: A module testing if-else statement
:tags: 12.4
*/
module top (b);
	wire a = 1;
	output reg b = 0;
	always @* begin
		if(a) b = 1;
		else b = 0;
	end
endmodule
