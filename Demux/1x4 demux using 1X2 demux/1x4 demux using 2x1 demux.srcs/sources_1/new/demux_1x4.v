`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2025 03:46:46 PM
// Design Name: 
// Module Name: demux_1x4
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


module demux_1x4(
    input i,
    input [1:0] sel,
    output  [3:0] y
    );
    
    wire d0, d1;
    
    demux_1x2 demux0 (.i(i), .sel(sel[0]), .y0(d0), .y1(d1));
    demux_1x2 demux1 (.i(d0), .sel(sel[1]), .y0(y[0]), .y1(y[1]));
    demux_1x2 demux2 (.i(d1), .sel(sel[1]), .y0(y[2]), .y1(y[3]));
    
    
    
endmodule
