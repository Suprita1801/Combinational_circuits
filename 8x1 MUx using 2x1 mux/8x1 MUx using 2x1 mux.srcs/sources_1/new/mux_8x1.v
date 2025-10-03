`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 04:36:49 PM
// Design Name: 
// Module Name: mux_8x1
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


module mux_8x1(
    input [7:0] i,
    input [2:0] sel,
    output y
    );
    
    wire [5:0]w;
    
    mux_2x1 mux0 (.i(i[1:0]), .sel(sel[0]), .y(w[0]));
    mux_2x1 mux1 (.i(i[3:2]), .sel(sel[0]), .y(w[1]));
    mux_2x1 mux2 (.i(i[5:4]), .sel(sel[0]), .y(w[2]));
    mux_2x1 mux3 (.i(i[7:6]), .sel(sel[0]), .y(w[3]));
    mux_2x1 mux4 (.i(w[1:0]), .sel(sel[1]), .y(w[4]));
    mux_2x1 mux5 (.i(w[3:2]), .sel(sel[1]), .y(w[5]));
    mux_2x1 mux6 (.i(w[5:4]), .sel(sel[2]), .y(y));
    
endmodule

