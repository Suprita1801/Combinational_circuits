`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 12:45:51 PM
// Design Name: 
// Module Name: enc_4x2_tb
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


module enc_4x2_tb();

reg [3:0] i;
wire [1:0] y;

enc_4x2 uut(.i(i), .y(y));

initial begin

$monitor("Time = %0t | i = %b | y = %b",$time,i,y);

i = 4'b0001 ; #5;
i = 4'b0010 ; #5;
i = 4'b0100 ; #5;
i = 4'b1000 ; #5;

$finish;

end
endmodule
