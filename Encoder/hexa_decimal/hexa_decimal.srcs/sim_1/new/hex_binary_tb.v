`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 06:34:16 PM
// Design Name: 
// Module Name: hex_binary_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hex_binary_tb();

reg [15:0] i;
wire [3:0] y;

hex_binary uut(.i(i), .y(y));

initial begin

$monitor("Time = %0t | i = %b | y = %b ", $time, i, y);

i = 16'b0000_0000_0000_0001 ; #5;
i = 16'b0000_0000_0000_0101 ; #5;
i = 16'b0000_0000_0000_1010 ; #5;
i = 16'b0000_0000_0000_1111 ; #5;
i = 16'b0000_0000_0001_0100 ; #5;

end
endmodule
