`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 05:06:15 PM
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

$monitor ("i = %b , sel = %b , y = %b" , i,sel,y);

i = 8'b0000_0001 ;  sel = 3'b000 ; #10;
i = 8'b0000_0011 ;  sel = 3'b001 ; #10;
i = 8'b0000_0101 ;  sel = 3'b010 ; #10;
i = 8'b0000_0111 ;  sel = 3'b011 ; #10;
i = 8'b0000_1001 ;  sel = 3'b100 ; #10;
i = 8'b0000_1011 ;  sel = 3'b101 ; #10;
i = 8'b0000_1101 ;  sel = 3'b110 ; #10;
i = 8'b0000_1111 ;  sel = 3'b111 ; #10;
i = 8'b0001_0001 ;  sel = 3'b000 ; #10;
i = 8'b0001_0011 ;  sel = 3'b111 ; #10;




end
endmodule
