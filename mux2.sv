// 2->1 multiplexer template
module mux2 (
    input logic[3:0] d0,	// Data input 0
    input logic[3:0] d1,    // Data input 1
    input logic sel,        // Select input
    output logic[3:0] z     // Output
);

// Put your code here
// ------------------
genvar i;
logic not_d0, d0_or_sel, not_d0_or_sel;
logic not_d1, not_sel, d1_or_not_sel, not_d1_sel;
generate
	for (i=0; i<4; i++)
	begin
		// the part of d0
		NOT not1(.S(not_d0), .A(d0[i]));
		OR2 or1(.S(d0_or_sel), .A(not_d0), .B(sel));
		NOT not1(.S(not_d0_or_sel), .A(d0_or_sel));
		//the part of d1
		NOT not1(.S(not_d1), .A(d1[i]));
		NOT not1(.S(not_sel), .A(sel);
		OR2 or1(.S(d1_or_not_sel), .A(not_d1), .B(not_sel));
		NOT not1(.S(not_d1_sel), .A(d1_or_not_sel));
		//connect both parts to the output
		OR2 or1(.S(z[i], .A(not_d0_or_sel), B(not_d1_sel);
	end
	endgenerate
// End of your code

endmodule
