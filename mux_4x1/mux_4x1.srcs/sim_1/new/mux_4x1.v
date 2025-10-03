`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 03:28:14 PM
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
$monitor("i = %b, sel = %b, y = %b",i,sel,y);

i = 4'b0000 ; sel = 2'b00; #5;
i = 4'b0011 ; sel = 2'b10; #5;
i = 4'b1010 ; sel = 2'b01; #5;
i = 4'b1100 ; sel = 2'b11; #5;
i = 4'b1111 ; sel = 2'b11; #5;

$finish;

end

endmodule

