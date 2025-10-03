`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 04:23:54 PM
// Design Name: 
// Module Name: mux_4x1_tb
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


module mux_4x1_tb();

reg [3:0] i;
reg [1:0] sel;
wire y;

mux_4x1 uut(.i(i), .sel(sel), .y(y));

initial begin

$monitor("i = %b, sel = %b, y = %b" , i, sel, y);

i = 4'b1010 ; sel = 2'b00 ; #2;
i = 4'b1011 ; sel = 2'b01 ; #2;
i = 4'b1110 ; sel = 2'b10 ; #2;
i = 4'b1000 ; sel = 2'b11 ; #2;
i = 4'b1111 ;  sel = 2'b00 ; #2;
i = 4'b0110 ; sel = 2'b01 ; #2;
i = 4'b0010 ; sel = 2'b10 ; #2;
i = 4'b0011 ; sel = 2'b11 ; #2;
i = 4'b0100 ; sel = 2'b00 ; #2;
i = 4'b0000 ; sel = 2'b00 ; #2;

$finish;

end




endmodule
