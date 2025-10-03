`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 04:43:26 PM
// Design Name: 
// Module Name: mux_8x1_tb
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


module mux_8x1_tb();

reg [7:0] i;
reg [2:0] sel;
wire y;

mux_8x1 uut(.i(i), .sel(sel), .y(y));

initial begin

$monitor("i = %b , sel = %b , y = %b" , i,sel,y);

i = 8'b0000_0010 ; sel = 3'b000 ; #4;
i = 8'b0000_0100 ; sel = 3'b001 ; #4;
i = 8'b0000_0110 ; sel = 3'b010 ; #4;
i = 8'b0000_1000 ; sel = 3'b011 ; #4;
i = 8'b0000_1010 ; sel = 3'b100 ; #4;
i = 8'b0000_1100 ; sel = 3'b101 ; #4;
i = 8'b0000_1110 ; sel = 3'b110 ; #4;
i = 8'b0001_0000 ; sel = 3'b111 ; #4;


end
endmodule
