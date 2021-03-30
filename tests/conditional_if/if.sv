/*
:name: if
:description: A module testing if statement
:tags: 12.4
*/
module top ();
	wire a = 1;
	reg b = 0;
	always @* begin
		if(a) b = 1;
	end
endmodule
