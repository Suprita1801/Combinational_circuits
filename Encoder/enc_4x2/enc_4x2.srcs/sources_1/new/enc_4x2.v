`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 12:39:10 PM
// Design Name: 
// Module Name: enc_4x2
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


module enc_4x2(
    input [3:0] i,
    output [1:0] y
    );
    
    assign y[0] = i[3] | i[1];
    assign y[1] = i[3] | i[2];
    
endmodule
