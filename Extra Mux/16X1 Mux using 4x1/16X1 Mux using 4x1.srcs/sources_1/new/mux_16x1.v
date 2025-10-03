`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 07:45:14 PM
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
    
    wire [3:0] w;
    
    mux_4x1 mux0(.i(i[3:0]), .sel(sel[1:0]), .y(w[0]));
    mux_4x1 mux1(.i(i[7:4]), .sel(sel[1:0]), .y(w[1]));
    mux_4x1 mux2(.i(i[11:8]), .sel(sel[1:0]), .y(w[2]));
    mux_4x1 mux3(.i(i[15:12]), .sel(sel[1:0]), .y(w[3]));
    mux_4x1 mux4(.i(w[3:0]), .sel(sel[3:2]), .y(y));
    
endmodule
