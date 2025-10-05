`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 11:03:10 AM
// Design Name: 
// Module Name: demux_1x8
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


module demux_1x8(
    input i,
    input [2:0] sel,
    output [7:0] y
    );
    
    wire [3:0]d;
    
    demux_1x4 demux0 (.i(i) , .sel(sel[2:1]), .y(d));
    
    demux_1x2 demux1 (.i(d[0]) , .sel(sel[0]), .y(y[1:0]));
    demux_1x2 demux2 (.i(d[1]) , .sel(sel[0]), .y(y[3:2]));
    demux_1x2 demux3 (.i(d[2]) , .sel(sel[0]), .y(y[5:4]));
    demux_1x2 demux4 (.i(d[3]) , .sel(sel[0]), .y(y[7:6]));
    
    

endmodule
