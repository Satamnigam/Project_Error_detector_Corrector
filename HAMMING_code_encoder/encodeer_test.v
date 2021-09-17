`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:57:11 07/08/2019
// Design Name:   encoder
// Module Name:   C:/Users/satyam/Desktop/my codes/HAMMING_code_encoder/encodeer_test.v
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

module encodeer_test;

	// Inputs
	reg select;
	reg [3:0] a;

	// Outputs
	wire [6:0] b;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
		.select(select), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		select = 0;
		a = 4'b1000;

		// Wait 500 ns for global reset to finish
		#500;
        
		// Initialize Inputs
		select = 1;
		a = 4'b1000;

		// Wait 500 ns for global reset to finish
		#500;
		// Add stimulus here

	end
      
endmodule

