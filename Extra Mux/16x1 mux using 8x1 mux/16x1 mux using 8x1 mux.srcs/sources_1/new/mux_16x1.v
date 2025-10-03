`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 08:03:10 PM
// Design Name: 
// Module Name: mux_16x1
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


module mux_16x1(
    input [15:0] i,
    input [3:0] sel,
    output y
    );
    
    wire [1:0] w;
    
    mux_8x1 mux0 (.i(i[7:0]), .sel(sel[2:0]), .y(w[0]));
    mux_8x1 mux1 (.i(i[15:8]), .sel(sel[2:0]), .y(w[1]));
    mux_2x1 mux2 (.i(w[1:0]), .sel(sel[3]), .y(y));
    
endmodule
