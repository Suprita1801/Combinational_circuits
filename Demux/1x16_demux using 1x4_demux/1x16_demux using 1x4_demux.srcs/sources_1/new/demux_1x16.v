`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 11:34:48 AM
// Design Name: 
// Module Name: demux_1x16
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


module demux_1x16(
    input i,
    input [3:0] sel,
    output [15:0] y
    );
    
    wire [3:0] d;
    
    demux_1x4 demux0 (.i(i), .sel(sel[3:2]), .y(d));
    
    demux_1x4 demux1 (.i(d[0]), .sel(sel[1:0]), .y(y[3:0]));
    demux_1x4 demux2 (.i(d[1]), .sel(sel[1:0]), .y(y[7:4]));
    demux_1x4 demux3 (.i(d[2]), .sel(sel[1:0]), .y(y[11:8]));
    demux_1x4 demux4 (.i(d[3]), .sel(sel[1:0]), .y(y[15:12]));
    
endmodule
