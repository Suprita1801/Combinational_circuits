`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 12:51:56 PM
// Design Name: 
// Module Name: mux_2x1_tb
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


module mux_2x1_tb();

reg [1:0] i;
reg s;
wire y;

mux_2x1 uut(.i(i), .s(s), .y(y));

initial begin
$monitor("i = %b, s = %b, y=%b",i,s,y);

i = 2'b00 ; s = 0 ; #5;
i = 2'b01 ; s = 0 ; #5;
i = 2'b10 ; s = 1 ; #5;
i = 2'b11 ; s = 0 ; #5;
i = 2'b11 ; s = 1 ; #5;
i = 2'b00 ; s = 1 ; #5;

$finish;
end

endmodule
