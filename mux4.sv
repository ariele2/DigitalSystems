// 4->1 multiplexer template
module mux4 (
    input logic[3:0] d0,    // Data input 0
    input logic[3:0] d1,    // Data input 1
    input logic[3:0] d2,    // Data input 2
    input logic[3:0] d3,    // Data input 3
    input logic[1:0] sel,	// Select input
    output logic[3:0] z     // Output
);

// Put your code here
// ------------------
	logic d0_d1_out[3:0], d2_d3_out[3:0];
	mux2 mux2(.d0(d0), .d1(d1), .sel(sel[0]), .z(d0_d1_out);
	mux2 mux2(.d0(d2), .d1(d3), .sel(sel[0]), .z(d2_d3_out);
	mux2 mux2(.d0(d0_d1_out), .d1(d2_d3_out), .sel(sel[1]), .z(z);
// End of your code

endmodule
