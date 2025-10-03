`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 07:50:03 PM
// Design Name: 
// Module Name: mux_16x1_tb
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


module mux_16x1_tb();

reg [15:0] i;
reg [3:0] sel;
wire y;

mux_16x1 uut(.i(i), .sel(sel), .y(y));

initial begin

i = 16'd2468 ; sel = 4'b0000 ; #5;
i = 16'd1357 ; sel = 4'b0010 ; #5;
i = 16'd0357 ; sel = 4'b0011 ; #5;
i = 16'd1000 ; sel = 4'b0110 ; #5;
i = 16'd1500 ; sel = 4'b1010 ; #5;

end
endmodule
