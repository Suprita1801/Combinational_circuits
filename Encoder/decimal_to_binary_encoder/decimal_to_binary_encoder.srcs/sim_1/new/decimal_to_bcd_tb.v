`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 04:02:31 PM
// Design Name: 
// Module Name: decimal_to_bcd_tb
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


module decimal_to_bcd_tb();

reg [9:0] i;
wire [3:0] y;

decimal_to_bcd uut (.i(i), .y(y));

initial begin

$monitor("Time = %0t | i = %b | y = %b",$time,i,y);

i = 10'b0000000000 ; #5;
i = 10'b0000000100 ; #5;
i = 10'b0000000101 ; #5;
i = 10'b0000000111 ; #5;
i = 10'b0110001001 ; #5;

$finish;

end
endmodule
