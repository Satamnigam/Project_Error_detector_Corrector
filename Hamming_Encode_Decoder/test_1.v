`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:57 07/08/2019
// Design Name:   Hamming_code_decoder
// Module Name:   C:/Users/satyam/Desktop/my codes/HAMMING_Code_Decoder/test_1.v
// Project Name:  HAMMING_Code_Decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Hamming_code_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_1;

	// Inputs
	reg select;
	reg [6:0] x;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	Hamming_code_decoder uut (
		.select(select), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		select = 0;
		x = 7'b1110101;

		// Wait 100 ns for global reset to finish
		#100;
      // Initialize Inputs
		select = 1;
		x = 7'b1011110;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

