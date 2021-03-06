`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:34 05/24/2016 
// Design Name: 
// Module Name:    PC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC(
	input [31:0] DataInA,
	input [31:0] DataInB, // outside PC input
	input	CLK,
	input RST,
	input WE,
	output reg [31:0] DataOut
	);
	initial begin
		DataOut = 0;
	end
	always @(negedge CLK or posedge RST) begin
		if (RST == 1)
			DataOut = DataInB;
		else begin
			if (WE == 1) begin
				DataOut = DataInA;
			end
		end
	end
endmodule
