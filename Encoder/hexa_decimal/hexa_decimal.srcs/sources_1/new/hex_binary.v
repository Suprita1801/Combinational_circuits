`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 06:25:05 PM
// Design Name: 
// Module Name: hex_binary
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


module hex_binary(
    input [15:0] i,
    output [3:0] y
    );
    
    assign y[0] = i[1] | i[3] | i[5] | i[7] | i[9] | i[11] | i[13] | i[11];
    assign y[1] = i[2] | i[3] | i[5] | i[7] | i[10] | i[11] | i[14] | i[15];
    assign y[2] = i[4] | i[6] | i[6] | i[7] | i[12] | i[13] | i[14] | i[15];
    assign y[3] = i[8] | i[9] | i[10] | i[11] | i[12] | i[13] | i[14] | i[15];
    
endmodule
