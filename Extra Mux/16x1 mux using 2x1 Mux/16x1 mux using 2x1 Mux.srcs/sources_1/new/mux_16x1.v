`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 06:38:00 PM
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
    
    wire [13:0] w;
    
    mux_2x1 mux0(.i(i[1:0]), .sel(sel[0]), .y(w[0]));
    mux_2x1 mux1(.i(i[3:2]), .sel(sel[0]), .y(w[1]));
    mux_2x1 mux2(.i(i[5:4]), .sel(sel[0]), .y(w[2]));
    mux_2x1 mux3(.i(i[7:6]), .sel(sel[0]), .y(w[3]));
    mux_2x1 mux4(.i(i[9:8]), .sel(sel[0]), .y(w[4]));
    mux_2x1 mux5(.i(i[11:10]), .sel(sel[0]), .y(w[5]));
    mux_2x1 mux6(.i(i[13:12]), .sel(sel[0]), .y(w[6]));
    mux_2x1 mux7(.i(i[15:14]), .sel(sel[0]), .y(w[7]));
    mux_2x1 mux8(.i(w[1:0]), .sel(sel[1]), .y(w[8]));
    mux_2x1 mux9(.i(w[3:2]), .sel(sel[1]), .y(w[9]));
    mux_2x1 mux10(.i(w[5:4]), .sel(sel[1]), .y(w[10]));
    mux_2x1 mux11(.i(w[7:6]), .sel(sel[1]), .y(w[11]));
    mux_2x1 mux12(.i(w[9:8]), .sel(sel[2]), .y(w[12]));
    mux_2x1 mux13(.i(w[11:10]), .sel(sel[2]), .y(w[13]));
    mux_2x1 mux14(.i(w[13:12]), .sel(sel[3]), .y(y));
  
endmodule
