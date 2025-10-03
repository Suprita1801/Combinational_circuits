`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 04:59:03 PM
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    input [3:0] i,
    input [1:0] sel,
    output y
    );
    
    wire [1:0] w;
    
    mux_2x1 mux0 (.i(i[1:0]) , .sel(sel[0]) ,.y(w[0]));
    mux_2x1 mux1 (.i(i[3:2]) , .sel(sel[0]) ,.y(w[1]));
    mux_2x1 mux2 (.i(w[1:0]) , .sel(sel[1]) ,.y(y));
    
endmodule
