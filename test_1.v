`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:38:06 07/08/2019
// Design Name:   encoder
// Module Name:   C:/Users/satyam/Desktop/my codes/HAMMING_code_encoder/test_1.v
// Project Name:  HAMMING_code_encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder
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
	reg [3:0] a;

	// Outputs
	wire [6:0] b;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

