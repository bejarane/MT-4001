module main_tb;
	// Inputs
	reg CLK;
	reg RST;
	reg Start;
	// Outputs
	wire [7:0] Count;
	// Instantiate the Unit Under Test (UUT)
	main uut (
		.CLK(CLK),
		.RST(RST),
		.Start(Start),
		.Count(Count)
		);
	initial begin
		// Initialize Inputs
		Start = 0;RST = 0;
		CLK = 0;
		#100 RST = 1;
		#100 RST = 0;
		#100 Start = 1;
		#10 Start = 0;
		#200000000 Start = 1;
		#10 Start = 0;
		// Wait 100 ns for global reset to finish
		#100;
	end
	always #5 CLK = ~CLK;
endmodule
