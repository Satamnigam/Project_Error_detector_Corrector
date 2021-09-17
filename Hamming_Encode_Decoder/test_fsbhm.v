`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:47:15 07/08/2019
// Design Name:   Hamming_code_decoder
// Module Name:   C:/Users/satyam/Desktop/my codes/HAMMING_Code_Decoder/test_fsbhm.v
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

module test_fsbhm;

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
		x = 7'b1010101;

		// Wait 100 ns for global reset to finish
		#100;
        
		

	end
      
endmodule

